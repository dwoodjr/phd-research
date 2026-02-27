# Git Quick Reference Card

## Daily Workflow

```bash
# Start
cd /a/Research/Projects/dissertation-sonic-sculptures
git status

# Work on your files...

# End of session
git add .
git commit -m "Sculpture-name: What you did"
git push origin main
```

## Most Common Commands

| Command | What it does |
|---------|-------------|
| `git status` | See what changed |
| `git add .` | Stage all changes |
| `git commit -m "msg"` | Save changes |
| `git push origin main` | Upload to GitHub |
| `git pull origin main` | Download from GitHub |
| `git log --oneline` | View history |
| `./check-backup-status.sh` | Check backups |

## Emergency Commands

| Problem | Solution |
|---------|----------|
| "I broke everything!" | `git reset --hard HEAD` |
| "Undo last commit" | `git reset --soft HEAD~1` |
| "Get old version" | `git checkout <hash> -- file` |
| "Discard file changes" | `git checkout -- file` |

## Commit Message Templates

```bash
# Feature
"Buffalo-soldier: Added 3-band EQ to mic input"

# Bug fix
"Sun-ra-cryosleep: Fixed sensor clipping issue"

# Documentation
"Docs: Updated performance setup checklist"

# Multiple changes
"Dont-play-hair: Major synthesis engine update

- Replaced oscillators with wavetable
- Added ADSR envelopes
- Updated TouchDesigner visuals"
```

## Branching

```bash
# Create experiment branch
git checkout -b experiment-name

# Return to main
git checkout main

# Delete branch
git branch -d experiment-name
```

## Before Performance

```bash
# Tag version
git tag -a performance-2024-03-15 -m "ICMC performance"
git push origin performance-2024-03-15

# Backup branch
git checkout -b backup-2024-03-15
git push origin backup-2024-03-15
git checkout main
```

## File Operations

```bash
# Rename
git mv old.maxpat new.maxpat

# Delete
git rm file.maxpat

# Stop tracking but keep file
git rm --cached file.maxpat
```

## Viewing Changes

```bash
# What changed?
git diff

# Who changed it?
git blame file.maxpat

# Pretty history
git log --oneline --graph --all
```

## Git LFS

```bash
# Check LFS files
git lfs ls-files

# LFS status
git lfs status
```

## Backup Locations

- **Personal:** `C:\Users\darre\OneDrive\Dissertation-Backup\dissertation-sonic-sculptures`
- **Drexel:** `C:\Users\darre\OneDrive - Drexel University\Research\Dissertation-Projects-Backup\dissertation-sonic-sculptures`
- **GitHub:** `https://github.com/dwoodjr/dissertation-sonic-sculptures`

## Help

- Full guide: `docs/GIT-WORKFLOW.md`
- Check backups: `./check-backup-status.sh`
- Git help: `git help <command>`

---

**Remember:** Commit messages are crucial since visual diffs don't work for Max patches!