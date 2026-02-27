#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Find repository root if running from subdirectory
REPO_ROOT=$(git rev-parse --show-toplevel 2 >/dev/null)

if [ -z "$REPO_ROOT" ]; then
    echo "Error: Not in a Git repository"
    exit 1
fi

cd "$REPO_ROOT"

ONEDRIVE_PERSONAL="/c/Users/darre/OneDrive/Dissertation-Backup/dissertation-sonic-sculptures"
ONEDRIVE_DREXEL="/c/Users/darre/OneDrive - Drexel University/Research/Dissertation-Projects-Backup/dissertation-sonic-sculptures"

echo -e "${BLUE}=== Backup Status Check ===${NC}"
echo ""

# Function to check a backup location
check_backup() {
    local path="$1"
    local name="$2"

    echo -e "${BLUE}$name:${NC}"

    if [ -d "$path" ]; then
        echo -e "${GREEN}✓ Backup exists${NC}"
        echo "  Location: $path"

        if [ -f "$path/README.md" ]; then
            # Get last modified time
            if stat -c %y "$path/README.md" &>/dev/null; then
                LAST_MOD=$(stat -c %y "$path/README.md" 2 >/dev/null)
            elif stat -f "%Sm" "$path/README.md" &>/dev/null; then
                LAST_MOD=$(stat -f "%Sm" "$path/README.md" 2 >/dev/null)
            else
                LAST_MOD="Unknown"
            fi
            echo "  Last synced: $LAST_MOD"
        fi

        # Count files (with proper quoting)
        FILE_COUNT=$(find "$path" -type f 2 >/dev/null | wc -l | tr -d ' ')
        echo "  Files: $FILE_COUNT"

        # Check disk usage (with proper quoting)
        if command -v du &>/dev/null; then
            SIZE=$(du -sh "$path" 2 >/dev/null | cut -f1)
            echo "  Size: $SIZE"
        fi
    else
        echo -e "${RED}✗ Backup not found${NC}"
        echo "  Expected: $path"
    fi
    echo ""
}

# Check local repo
echo -e "${BLUE}Local Repository:${NC}"
LOCAL_COUNT=$(find . -type f -not -path '*/.git/*' 2 >/dev/null | wc -l | tr -d ' ')
echo "  Files: $LOCAL_COUNT"
if command -v du &>/dev/null; then
    LOCAL_SIZE=$(du -sh --exclude='.git' . 2 >/dev/null | cut -f1)
    if [ -z "$LOCAL_SIZE" ]; then
        LOCAL_SIZE=$(du -sh . 2 >/dev/null | cut -f1)
    fi
    echo "  Size: $LOCAL_SIZE"
fi
echo ""

# Check both backups
check_backup "$ONEDRIVE_PERSONAL" "Personal OneDrive"
check_backup "$ONEDRIVE_DREXEL" "Drexel OneDrive"

# GitHub status
echo -e "${BLUE}GitHub Remote:${NC}"
if git remote get-url origin &>/dev/null; then
    REMOTE_URL=$(git remote get-url origin)
    echo -e "${GREEN}✓ Remote configured${NC}"
    echo "  URL: $REMOTE_URL"

    # Check if we're ahead/behind (only if main branch exists on remote)
    if git ls-remote --exit-code --heads origin main &>/dev/null; then
        git fetch origin main 2 >/dev/null

        AHEAD=$(git rev-list --count origin/main..HEAD 2 >/dev/null || echo "0")
        BEHIND=$(git rev-list --count HEAD..origin/main 2 >/dev/null || echo "0")

        if [ "$AHEAD" -gt 0 ]; then
            echo -e "  ${YELLOW}⚠ $AHEAD commits ahead (need to push)${NC}"
        fi
        if [ "$BEHIND" -gt 0 ]; then
            echo -e "  ${YELLOW}⚠ $BEHIND commits behind (need to pull)${NC}"
        fi
        if [ "$AHEAD" -eq 0 ] && [ "$BEHIND" -eq 0 ]; then
            echo -e "  ${GREEN}✓ In sync with remote${NC}"
        fi
    else
        echo -e "  ${YELLOW}⚠ Remote branch 'main' not found (haven't pushed yet?)${NC}"
    fi
else
    echo -e "${YELLOW}⚠ No remote configured${NC}"
fi

echo ""
echo -e "${BLUE}=== Backup Summary ===${NC}"

BACKUP_COUNT=0
[ -d "$ONEDRIVE_PERSONAL" ] && ((BACKUP_COUNT++))
[ -d "$ONEDRIVE_DREXEL" ] && ((BACKUP_COUNT++))
git remote get-url origin &>/dev/null && ((BACKUP_COUNT++))

echo "Active backups: $BACKUP_COUNT/3"
if [ $BACKUP_COUNT -eq 3 ]; then
    echo -e "${GREEN}✓ Full redundancy (Local + 2 OneDrives + GitHub)${NC}"
elif [ $BACKUP_COUNT -eq 2 ]; then
    echo -e "${YELLOW}⚠ Partial redundancy${NC}"
else
    echo -e "${RED}⚠ Limited redundancy${NC}"
fi
