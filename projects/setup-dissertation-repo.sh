#!/bin/bash

# Dissertation Sonic Sculptures Repository Setup Script
# Usage: ./setup-dissertation-repo.sh "buffalo-soldier" "sun-ra-cryosleep" "dont-play-hair"

set -e # Exit on any error

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if three arguments are provided
if [ "$#" -ne 3 ]; then
    echo -e "${YELLOW}Usage: $0 \"sculpture-1-name\" \"sculpture-2-name\" \"sculpture-3-name\"${NC}"
    echo "Example: $0 \"buffalo-soldier\" \"sun-ra-cryosleep\" \"dont-play-hair\""
    exit 1
fi

SCULPTURE_01="$1"
SCULPTURE_02="$2"
SCULPTURE_03="$3"

REPO_NAME="dissertation-sonic-sculptures"

echo -e "${BLUE}=== Dissertation Sonic Sculptures Repository Setup ===${NC}"
echo -e "${GREEN}Creating repository structure...${NC}"
echo ""
echo "Sculpture 01: $SCULPTURE_01"
echo "Sculpture 02: $SCULPTURE_02"
echo "Sculpture 03: $SCULPTURE_03"
echo ""

# Create main directory
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

# Create documentation structure
echo -e "${GREEN}Creating documentation structure...${NC}"
mkdir -p docs/research-notes
mkdir -p docs/technical-documentation
mkdir -p docs/media/images

# Create shared resources
echo -e "${GREEN}Creating shared resources...${NC}"
mkdir -p shared/max-abstractions
mkdir -p shared/libraries
mkdir -p shared/utilities

# Function to create sculpture structure
create_sculpture_structure() {
    local name=$1
    echo -e "${GREEN}Creating structure for: $name${NC}"

    mkdir -p "sculpture-$name/max/abstractions"
    mkdir -p "sculpture-$name/max/data"
    mkdir -p "sculpture-$name/plugdata"
    mkdir -p "sculpture-$name/touchdesigner/assets"
    mkdir -p "sculpture-$name/firmware/teensy/src"
    mkdir -p "sculpture-$name/firmware/teensy/lib"
    mkdir -p "sculpture-$name/firmware/teensy/include"
    mkdir -p "sculpture-$name/firmware/esp32/src"
    mkdir -p "sculpture-$name/firmware/esp32/lib"
    mkdir -p "sculpture-$name/firmware/esp32/include"
    mkdir -p "sculpture-$name/documentation/circuit-diagrams"
    mkdir -p "sculpture-$name/documentation/performance-notes"
    mkdir -p "sculpture-$name/media/photos"
    mkdir -p "sculpture-$name/media/videos"
    mkdir -p "sculpture-$name/media/audio"

    # Create sculpture-specific README
    cat >"sculpture-$name/README.md" << 'SCULPTURE_EOF'
# Sculpture: SCULPTURE_NAME

## Overview
[Brief description of the sculpture, its concept, and interaction model]

## Technical Components

### Sensors
- [ ] Electret microphone
- [ ] Piezoelectric sensors
- [ ] [Other sensors]

### Software
- [ ] Max/MSP patches
- [ ] Plugdata/Pure Data patches
- [ ] TouchDesigner project
- [ ] Microcontroller firmware

### Hardware
- [ ] Microcontroller: [Teensy/ESP32]
- [ ] Audio interface: [Model]
- [ ] [Other hardware]

## Setup Instructions

### 1. Hardware Setup
[Describe physical setup, connections, power requirements]

### 2. Software Setup
[Describe software dependencies, configuration]

### 3. Calibration
[Describe sensor calibration procedures]

## Performance Notes
- [Pre-performance checklist]
- [Known issues and workarounds]
- [Troubleshooting tips]

## Documentation
- Circuit diagrams: `documentation/circuit-diagrams/`
- Performance notes: `documentation/performance-notes/`
- Media: `media/`

## Version History
- [Date]: Initial development
- [Date]: [Milestone]

## Related Research
[Links to relevant research notes, papers, references]
SCULPTURE_EOF

    # Replace placeholder with actual name
    sed -i "s/SCULPTURE_NAME/$name/g" "sculpture-$name/README.md"
}

# Create all three sculptures
create_sculpture_structure "$SCULPTURE_01"
create_sculpture_structure "$SCULPTURE_02"
create_sculpture_structure "$SCULPTURE_03"

# Create main README
echo -e "${GREEN}Creating main README...${NC}"
cat >README.md << 'MAIN_EOF'
# Dissertation: Sonic Sculptures

## Overview
This repository contains three interactive sonic sculptures created as part of my doctoral dissertation research. Each sculpture explores the intersection of physical interaction, sensor technology, and real-time audio processing to create immersive sonic experiences.

## Sculptures

### Sculpture 01: SCULPTURE_01_NAME
[Brief description - replace with your actual description]

**Status:** 🚧 In Development
**Location:** `sculpture-SCULPTURE_01_NAME/`

### Sculpture 02: SCULPTURE_02_NAME
[Brief description - replace with your actual description]

**Status:** 🚧 In Development
**Location:** `sculpture-SCULPTURE_02_NAME/`

### Sculpture 03: SCULPTURE_03_NAME
[Brief description - replace with your actual description]

**Status:** 🚧 In Development
**Location:** `sculpture-SCULPTURE_03_NAME/`

## Technical Stack

- **Max/MSP** 8.x - Primary audio processing and patch development
- **Plugdata/Pure Data** - Modular audio processing components
- **TouchDesigner** - Visual elements and advanced interaction mapping
- **Microcontrollers:** Teensy 4.x / ESP32
- **Development:** VS Code, PlatformIO
- **Version Control:** Git with GitHub remote

## Repository Structure

```
dissertation-sonic-sculptures/
├── docs/                          # Research and technical documentation
│   ├── research-notes/           # Research notes, literature reviews
│   ├── technical-documentation/  # Technical specifications, APIs
│   └── media/                    # Documentation images, diagrams
├── sculpture-[name]/             # Individual sculpture projects
│   ├── max/                      # Max/MSP patches
│   ├── plugdata/                 # Pure Data patches
│   ├── touchdesigner/            # TouchDesigner projects
│   ├── firmware/                 # Microcontroller code
│   ├── documentation/            # Sculpture-specific docs
│   └── media/                    # Photos, videos, audio samples
└── shared/                       # Shared resources across sculptures
    ├── max-abstractions/         # Reusable Max abstractions
    ├── libraries/                # Shared code libraries
    └── utilities/                # Helper scripts and tools
```

## Quick Start

### Prerequisites
- Max/MSP 8.x or later
- Plugdata (latest version)
- TouchDesigner (if applicable)
- VS Code with PlatformIO extension
- Git and Git LFS

### Setup
1. Clone this repository
2. Install Git LFS: `git lfs install`
3. See individual sculpture README files for specific setup instructions
4. Review `docs/GIT-WORKFLOW.md` for version control best practices

### Max/MSP Configuration
**Important:** This repository uses sorted dictionary saving for better Git compatibility.

Add to your Max startup file (`~/Documents/Max 8/max-startup.txt`):
```
max sortpatcherdictonsave 1
```

Or send to Max console:
```
;max sortpatcherdictonsave 1
```

## Documentation

- **Git Workflow:** See `docs/GIT-WORKFLOW.md` for version control best practices
- **Research Notes:** `docs/research-notes/`
- **Technical Docs:** `docs/technical-documentation/`
- **Individual Sculptures:** See each `sculpture-*/README.md`

## Development Workflow

### Daily Practice
1. Start work session
2. Make changes to patches/code
3. Test thoroughly
4. Commit with descriptive message
5. Push to GitHub

### Commit Strategy
- Commit feature-complete milestones
- Use descriptive commit messages (visual diffs don't work for patches)
- Tag important versions before performances/presentations

### Branching
- `main` - Stable, working versions
- `experiment-*` - Experimental branches for risky changes
- `backup-*` - Pre-performance backup branches

## Backup Strategy

This repository implements a 3-2-1 backup strategy:
1. **Local Git repository** (primary workspace)
2. **GitHub remote** (version control + off-site backup)
3. **OneDrive sync** (additional redundant backup)

## Performance Checklist

Before any performance or presentation:
- [ ] Create tagged release: `git tag -a v1.0-performance -m "Description"`
- [ ] Create backup branch: `git checkout -b backup-YYYY-MM-DD`
- [ ] Test all patches and firmware
- [ ] Verify all hardware connections
- [ ] Document any last-minute changes

## Version History

- **v0.1.0** - Initial repository structure
- [Add versions as you develop]

## License

[Choose appropriate license - consider CC BY-NC-SA 4.0 for academic/artistic work]

## Contact

[Your name]
[Your institution]
[Your email]

## Acknowledgments

[Advisors, collaborators, funding sources, etc.]
MAIN_EOF

# Replace placeholders with actual names
sed -i "s/SCULPTURE_01_NAME/$SCULPTURE_01/g" README.md
sed -i "s/SCULPTURE_02_NAME/$SCULPTURE_02/g" README.md
sed -i "s/SCULPTURE_03_NAME/$SCULPTURE_03/g" README.md

# Create .gitignore
echo -e "${GREEN}Creating .gitignore...${NC}"
cat >.gitignore << 'GITIGNORE_EOF'
# ============================================
# OS Files
# ============================================
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
desktop.ini
*~

# ============================================
# Max/MSP
# ============================================
# Compiled externals
*.mxo
*.mxe
*.mxe64

# Backup and temporary files
*~.maxpat
*~.maxhelp
*.autosave
.maxpat.orig
.maxhelp.orig
/max-startup.txt~
**/maxproject.maxpat.orig
**/maxproject.maxproj.orig

# Max cache and search
**/.search_cache/
**/saved_searches/
**/search.db
**/search.db-journal

# Max Project specific
**/data/cache/
**/recordings/
**/captures/

# ============================================
# Pure Data / Plugdata
# ============================================
*.pd_linux
*.pd_darwin
*.dll
*.pd~
*.pd.orig

# ============================================
# TouchDesigner
# ============================================
*.toe~
**/.backup/
**/backup/
*.1.toe
*.2.toe
*.3.toe
*.4.toe
*.5.toe
**/Backup/
**/Cache/
**/CrashAutoSave/
**/Palette/

# ============================================
# VS Code
# ============================================
.vscode/
*.code-workspace
.history/

# ============================================
# PlatformIO / Arduino
# ============================================
.pio/
.pioenvs/
.piolibdeps/
.clang_complete
.gcc-flags.json
lib/readme.txt

# ============================================
# Build Artifacts
# ============================================
*.o
*.obj
*.hex
*.bin
*.elf
*.map
*.lst

# ============================================
# Python (if used)
# ============================================
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
*.egg-info/

# ============================================
# Node.js (if used)
# ============================================
node_modules/
npm-debug.log
yarn-error.log

# ============================================
# Large Media Files
# ============================================
# Note: Using Git LFS for these

# ============================================
# Documentation Builds
# ============================================
**/_site/
**/dist/
**/build/

# ============================================
# Temporary Files
# ============================================
*.tmp
*.temp
*.log
*.swp
*.swo

# ============================================
# OneDrive
# ============================================
~$*
.~lock.*

# ============================================
# Project Specific
# ============================================
**/test-recordings/
**/scratch/
**/experiments/archive/
GITIGNORE_EOF

# Create .gitattributes for Git LFS
echo -e "${GREEN}Creating .gitattributes for Git LFS...${NC}"
cat >.gitattributes << 'GITATTRIBUTES_EOF'
# Git LFS Configuration
# Large media files

# Audio files
*.wav filter=lfs diff=lfs merge=lfs -text
*.aif filter=lfs diff=lfs merge=lfs -text
*.aiff filter=lfs diff=lfs merge=lfs -text
*.mp3 filter=lfs diff=lfs merge=lfs -text
*.flac filter=lfs diff=lfs merge=lfs -text

# Video files
*.mov filter=lfs diff=lfs merge=lfs -text
*.mp4 filter=lfs diff=lfs merge=lfs -text
*.avi filter=lfs diff=lfs merge=lfs -text
*.mkv filter=lfs diff=lfs merge=lfs -text

# TouchDesigner files
*.toe filter=lfs diff=lfs merge=lfs -text
*.tox filter=lfs diff=lfs merge=lfs -text

# Image files (large formats)
*.psd filter=lfs diff=lfs merge=lfs -text
*.tif filter=lfs diff=lfs merge=lfs -text
*.tiff filter=lfs diff=lfs merge=lfs -text

# Archives
*.zip filter=lfs diff=lfs merge=lfs -text
*.tar.gz filter=lfs diff=lfs merge=lfs -text
*.rar filter=lfs diff=lfs merge=lfs -text
GITATTRIBUTES_EOF

# Create placeholder files to preserve directory structure
echo -e "${GREEN}Creating placeholder files...${NC}"
find . -type d -empty -not -path '*/\.git/*' -exec touch {}/.gitkeep \;

# Initialize git repository
echo -e "${GREEN}Initializing Git repository...${NC}"
git init

# Install Git LFS
echo -e "${GREEN}Installing Git LFS...${NC}"
git lfs install

# Add all files
echo -e "${GREEN}Adding files to Git...${NC}"
git add .

# Initial commit
echo -e "${GREEN}Creating initial commit...${NC}"
git commit -m "Initial commit: Repository structure for dissertation sonic sculptures

- Created structure for three sculptures: $SCULPTURE_01, $SCULPTURE_02, $SCULPTURE_03
- Set up Max/MSP, Plugdata, TouchDesigner, and firmware directories
- Configured Git LFS for large media files
- Added comprehensive .gitignore for creative coding projects"

echo ""
echo -e "${BLUE}=== Repository Setup Complete! ===${NC}"
echo ""
echo -e "${GREEN}Next steps:${NC}"
echo "1. cd $REPO_NAME"
echo "2. Create GitHub repository at https://github.com/new"
echo "3. git remote add origin https://github.com/YOUR-USERNAME/$REPO_NAME.git"
echo "4. git push -u origin main"
echo ""
echo -e "${GREEN}Don't forget to:${NC}"
echo "- Set up Max sortpatcherdictonsave: See README.md"
echo "- Review docs/GIT-WORKFLOW.md for best practices"
echo "- Set up OneDrive sync (instructions in README)"