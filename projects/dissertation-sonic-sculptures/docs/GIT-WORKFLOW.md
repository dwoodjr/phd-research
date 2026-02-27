# Git Workflow & Best Practices

## Table of Contents
1. [Overview](#overview)
2. [Daily Workflow](#daily-workflow)
3. [Commit Message Best Practices](#commit-message-best-practices)
4. [Branching Strategy](#branching-strategy)
5. [Backup System](#backup-system)
6. [Recovery Scenarios](#recovery-scenarios)
7. [Performance & Presentation Workflow](#performance--presentation-workflow)
8. [Git LFS for Large Files](#git-lfs-for-large-files)
9. [Troubleshooting](#troubleshooting)
10. [Quick Reference](#quick-reference)

---

## Overview

This repository uses Git for version control with a comprehensive backup strategy:
- **Local Git repository** - Full version control with complete history
- **Personal OneDrive** - Automatic backup after every commit
- **Drexel OneDrive** - Secondary automatic backup after every commit
- **GitHub** - Remote repository for off-site backup and collaboration

### Important Max/MSP Configuration

**Before working with Max patches, enable sorted dictionary saving:**

Add to `~/Documents/Max 8/max-startup.txt`:
```
max sortpatcherdictonsave 1
```

Or send to Max console each session:
```
;max sortpatcherdictonsave 1
```

This ensures Max patches save in a consistent format for better Git compatibility.

---

## Daily Workflow

### Starting Your Work Session

```bash
# Navigate to your repository
cd /a/Research/Projects/dissertation-sonic-sculptures

# Check current status
git status

# If working on multiple machines, pull latest changes
git pull origin main

# Check backup status (optional)
./check-backup-status.sh
```

### During Your Work

1. **Work normally** on your patches, code, and documentation
2. **Save frequently** in your applications
3. **Test your changes** before committing

### Ending Your Work Session

```bash
# Check what changed
git status

# Review changes (optional but recommended)
git diff

# Stage specific files
git add sculpture-buffalo-soldier/max/main-patch.maxpat
git add sculpture-buffalo-soldier/firmware/teensy/src/sensor-reader.cpp

# OR stage everything
git add .

# Commit with descriptive message
git commit -m "Buffalo-soldier: Added low-pass filter to piezo sensor input"

# The post-commit hook automatically syncs to both OneDrives!

# Push to GitHub (do this regularly)
git push origin main
```

---

## Commit Message Best Practices

Since visual diffs don't work well for Max patches, **commit messages are crucial** for understanding what changed.

### Format

```
[Sculpture-name]: Brief description of what changed

Optional longer explanation of why the change was made,
what problem it solves, or what feature it adds.
```

### Good Examples

```bash
# Feature additions
git commit -m "Buffalo-soldier: Implemented 3-band EQ on microphone input channel"

git commit -m "Sun-ra-cryosleep: Added granular synthesis engine for ambient textures"

git commit -m "Dont-play-hair: Created TouchDesigner OSC receiver for sensor data"

# Bug fixes
git commit -m "Buffalo-soldier: Fixed piezo sensor clipping at high amplitudes"

git commit -m "Shared: Corrected sensor-smoothing abstraction coefficient calculation"

# Documentation
git commit -m "Docs: Added performance setup checklist for all three sculptures"

git commit -m "Buffalo-soldier: Updated circuit diagram with new sensor connections"

# Firmware updates
git commit -m "Buffalo-soldier: Optimized Teensy ADC sampling rate for lower latency"

# Multiple changes
git commit -m "Sun-ra-cryosleep: Major update to synthesis engine

- Replaced simple oscillators with wavetable synthesis
- Added ADSR envelope control
- Implemented velocity sensitivity
- Updated TouchDesigner visual feedback"

# Configuration/setup
git commit -m "Config: Updated .gitignore to exclude TouchDesigner cache files"

git commit -m "Setup: Added Git LFS tracking for audio sample library"
```

### Bad Examples (Don't Do This)

```bash
# Too vague
git commit -m "updates"
git commit -m "fixed stuff"
git commit -m "changes"

# Not descriptive
git commit -m "wip"
git commit -m "asdf"
git commit -m "test"

# No context
git commit -m "updated patch"  # Which patch? What changed?
git commit -m "bug fix"  # What bug?
```

### Commit Message Guidelines

1. **Start with sculpture name** (if change is sculpture-specific)
2. **Use imperative mood** ("Add feature" not "Added feature")
3. **Be specific** about what changed
4. **Explain why** if the change isn't obvious
5. **Reference related commits** if building on previous work
6. **Keep first line under 72 characters** (summary)
7. **Add detailed explanation** in body if needed

---

## Branching Strategy

### Main Branch

- **`main`** - Stable, working versions
- Always keep `main` in a working state
- Test thoroughly before merging to `main`

### Experimental Branches

Use branches for risky experiments or major changes:

```bash
# Create and switch to experimental branch
git checkout -b experiment-granular-synthesis

# Work on your experiment...
# Make changes, commit frequently
git add .
git commit -m "Experiment: Testing granular synthesis approach"

# If experiment succeeds, merge back to main
git checkout main
git merge experiment-granular-synthesis

# If experiment fails, just switch back to main
git checkout main
# The experiment branch still exists if you want to revisit

# Delete failed experiment branch
git branch -d experiment-granular-synthesis
```

### Common Branch Types

```bash
# Feature development
git checkout -b feature-osc-communication

# Bug fixes
git checkout -b fix-sensor-calibration

# Major refactoring
git checkout -b refactor-audio-routing

# Performance-specific versions
git checkout -b performance-2024-03-15

# Backup before risky changes
git checkout -b backup-before-major-changes
```

### Branch Naming Conventions

- `experiment-*` - Experimental features, might not work
- `feature-*` - New features being developed
- `fix-*` - Bug fixes
- `refactor-*` - Code reorganization
- `backup-*` - Safety backups before major changes
- `performance-*` - Versions for specific performances

### Merging Best Practices

**⚠️ WARNING:** Do NOT use automatic Git merge for Max patches! It will create corrupted files.

**Instead, manually merge:**

```bash
# Switch to main
git checkout main

# For Max patches: Manually copy the working patch
cp experiment-branch/sculpture-01/max/patch.maxpat sculpture-01/max/patch.maxpat

# For code files: Git merge works fine
git merge experiment-branch -- sculpture-01/firmware/

# Commit the manual merge
git add .
git commit -m "Merge: Integrated granular synthesis experiment into main"
```

---

## Backup System

### How It Works

Every time you commit, a Git hook automatically syncs your work to both OneDrive accounts:

```
You commit → Git hook triggers → Files sync to Personal OneDrive
                               → Files sync to Drexel OneDrive
```

### What Gets Backed Up

✅ **Synced to OneDrive:**
- All Max/MSP patches
- Plugdata/Pure Data patches
- TouchDesigner projects
- Firmware source code
- Documentation (Markdown, images)
- Research notes
- Git LFS pointer files

❌ **Not synced (stays local only):**
- `.git/` folder (Git database)
- Temporary files (`.tmp`, `.temp`)
- Build artifacts (`.pio/`, `node_modules/`)
- OS files (`.DS_Store`)

### Checking Backup Status

```bash
# Run the backup status checker
./check-backup-status.sh
```

This shows:
- Local file count
- Personal OneDrive status and file count
- Drexel OneDrive status and file count
- GitHub sync status
- Overall backup health

### Manual Sync (Optional)

If you want to sync without committing:

```bash
# Run manual sync script (if created)
./sync-to-onedrive.sh
```

### Backup Locations

- **Personal OneDrive:** `C:\Users\darre\OneDrive\Dissertation-Backup\dissertation-sonic-sculptures`
- **Drexel OneDrive:** `C:\Users\darre\OneDrive - Drexel University\Research\Dissertation-Projects-Backup\dissertation-sonic-sculptures`
- **GitHub:** `https://github.com/dwoodjr/dissertation-sonic-sculptures`

---

## Recovery Scenarios

### "I broke everything!"

```bash
# See what changed
git status
git diff

# Discard changes to specific file
git checkout -- sculpture-01/max/main-patch.maxpat

# Discard ALL uncommitted changes (nuclear option)
git reset --hard HEAD
```

### "I need the version from 3 days ago"

```bash
# View commit history
git log --oneline --graph

# Check out old version of specific file
git checkout <commit-hash> -- sculpture-01/max/main-patch.maxpat

# Or create a new branch from that point
git checkout -b recovery-branch <commit-hash>
```

### "I committed something I shouldn't have"

```bash
# Undo last commit but keep changes
git reset --soft HEAD~1

# Undo last commit and discard changes
git reset --hard HEAD~1

# Already pushed? Revert instead
git revert HEAD
git push origin main
```

### "My hard drive died"

```bash
# On new machine, clone from GitHub
git clone https://github.com/dwoodjr/dissertation-sonic-sculptures.git

# Or restore from OneDrive
# Copy files from either OneDrive backup
# Then initialize Git:
cd dissertation-sonic-sculptures
git init
git remote add origin https://github.com/dwoodjr/dissertation-sonic-sculptures.git
git fetch
git reset --hard origin/main
```

### "OneDrive sync failed"

The OneDrive sync is a backup safety net. If it fails:
1. Your commit still succeeded
2. Your work is still in the local Git repository
3. You can manually copy files to OneDrive if needed
4. Push to GitHub for off-site backup

```bash
# Manual backup to OneDrive
cp -r . "/c/Users/darre/OneDrive/Dissertation-Backup/dissertation-sonic-sculptures/"
```

---

## Performance & Presentation Workflow

### Before a Performance or Presentation

**1. Create a tagged release:**

```bash
# Tag the current version
git tag -a v1.0-defense -m "Version for dissertation defense"
git push origin v1.0-defense

# Or for performances
git tag -a performance-2024-03-15 -m "ICMC 2024 performance version"
git push origin performance-2024-03-15
```

**2. Create a backup branch:**

```bash
# Create safety backup
git checkout -b backup-2024-03-15
git push origin backup-2024-03-15

# Return to main
git checkout main
```

**3. Test everything:**

- [ ] Open all patches and verify they load
- [ ] Test all hardware connections
- [ ] Verify sensor calibration
- [ ] Check audio routing
- [ ] Test TouchDesigner projects
- [ ] Upload and test firmware
- [ ] Document any last-minute changes

**4. Document the setup:**

```bash
# Create performance notes
echo "# Performance Setup - March 15, 2024" > sculpture-01/documentation/performance-notes/2024-03-15-setup.md
# Document everything!
git add .
git commit -m "Performance: Documented setup for ICMC 2024"
git push origin main
```

### After a Performance

```bash
# Document what happened
git commit -m "Performance: Post-ICMC notes and observations"

# Archive the performance version
git tag -a archive-icmc-2024 -m "Archived ICMC 2024 performance version"
```

### Performance Checklist Template

Create `docs/performance-checklist.md`:

```markdown
# Performance Checklist

## One Week Before
- [ ] Test all patches
- [ ] Verify all hardware
- [ ] Create tagged release
- [ ] Create backup branch
- [ ] Push everything to GitHub

## Day Before
- [ ] Final patch testing
- [ ] Sensor calibration
- [ ] Audio interface check
- [ ] Backup to external drive
- [ ] Print emergency contact info

## Day Of
- [ ] Arrive early for setup
- [ ] Test full system
- [ ] Document any last-minute changes
- [ ] Keep backup laptop ready

## After Performance
- [ ] Document observations
- [ ] Note any issues
- [ ] Commit changes
- [ ] Update research notes
```

---

## Git LFS for Large Files

### What is Git LFS?

Git Large File Storage (LFS) handles large media files efficiently by storing them separately from your Git repository.

### Setup (Already Done)

```bash
# Install Git LFS
git lfs install

# Files are automatically tracked based on .gitattributes
```

### Files Tracked by LFS

According to `.gitattributes`:
- Audio: `*.wav`, `*.aif`, `*.aiff`, `*.mp3`, `*.flac`
- Video: `*.mov`, `*.mp4`, `*.avi`, `*.mkv`
- TouchDesigner: `*.toe`, `*.tox`
- Images: `*.psd`, `*.tif`, `*.tiff`
- Archives: `*.zip`, `*.tar.gz`, `*.rar`

### Using LFS

**Just work normally!** Git LFS is transparent:

```bash
# Add large file (automatically handled by LFS)
git add sculpture-01/media/audio/recording.wav
git commit -m "Added performance recording"
git push origin main
```

### LFS Commands

```bash
# Check LFS status
git lfs status

# List files in LFS
git lfs ls-files

# See what patterns are tracked
git lfs track

# Manually track a new pattern
git lfs track "*.blend"
git add .gitattributes
git commit -m "Track Blender files with LFS"
```

### LFS Storage Limits

- **Free GitHub:** 1 GB storage, 1 GB/month bandwidth
- **GitHub Pro:** 2 GB storage, 2 GB/month bandwidth
- **Additional:** $5/month for 50 GB storage + 50 GB bandwidth

### Tips

- Don't put files in LFS that change frequently (like Max patches)
- Do put final renders, recordings, and media in LFS
- Keep sample libraries in LFS
- Large TouchDesigner projects go in LFS

---

## Troubleshooting

### Line Ending Warnings

```
warning: LF will be replaced by CRLF
```

**Solution:** Configure Git to handle line endings automatically:

```bash
git config --global core.autocrlf true
```

### OneDrive Sync Failed

If you see:
```
⚠ Both backups failed (check paths and permissions)
```

**Solutions:**
1. Check OneDrive is running
2. Verify paths exist
3. Check disk space
4. Your commit still succeeded - work is safe in Git
5. Push to GitHub as backup

### Git LFS Not Working

```bash
# Reinstall LFS
git lfs install --force

# Verify setup
git lfs env

# Check tracked files
git lfs ls-files
```

### Merge Conflicts in Max Patches

**Never use automatic merge!** Max patch JSON will be corrupted.

**Solution:**
1. Keep both versions of the patch
2. Open both in Max
3. Manually recreate changes in one patch
4. Delete the other

```bash
# During merge conflict
git checkout --ours sculpture-01/max/patch.maxpat  # Keep your version
# OR
git checkout --theirs sculpture-01/max/patch.maxpat  # Keep their version

# Then manually integrate changes
git add sculpture-01/max/patch.maxpat
git commit -m "Resolved merge conflict manually"
```

### Can't Push to GitHub
```bash
# If you get authentication errors
# Use Personal Access Token instead of password
# Generate at: https://github.com/settings/tokens
# Create token with 'repo' scope
# Use token as password when pushing
```

### Permission Denied

```bash
# Check your remote URL
git remote -v

# If using HTTPS, might need to update credentials
git config --global credential.helper manager

# Or switch to SSH (more secure for frequent use)
```

---

## Quick Reference

### Essential Commands

```bash
# Check status
git status

# Stage files
git add .                           # All files
git add file.maxpat                # Specific file
git add sculpture-01/              # Entire folder

# Commit
git commit -m "Message"

# Push to GitHub
git push origin main

# Pull from GitHub
git pull origin main

# View history
git log --oneline --graph
git log --oneline --graph --all    # Include all branches

# Discard changes
git checkout -- file.maxpat        # Single file
git reset --hard HEAD              # All files (dangerous!)

# Create branch
git checkout -b branch-name

# Switch branch
git checkout main
git checkout branch-name

# List branches
git branch

# Delete branch
git branch -d branch-name

# Tag a version
git tag -a v1.0 -m "Description"
git push origin v1.0

# Git LFS
git lfs status
git lfs ls-files
git lfs track "*.wav"
```

### File Operations

```bash
# Rename file (Git-aware)
git mv old-name.maxpat new-name.maxpat

# Delete file (Git-aware)
git rm file.maxpat

# Stop tracking file but keep it
git rm --cached file.maxpat
```

### Viewing Changes

```bash
# See what changed (unstaged)
git diff

# See what changed (staged)
git diff --cached

# See changes in specific file
git diff file.maxpat

# See changes between commits
git diff commit1 commit2

# See who changed what
git blame file.maxpat
```

### Undoing Things

```bash
# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Undo specific file
git checkout HEAD -- file.maxpat

# Revert a commit (creates new commit)
git revert commit-hash
```

### Backup & Recovery

```bash
# Check backup status
./check-backup-status.sh

# Manual sync to OneDrive (if needed)
./sync-to-onedrive.sh

# Clone from GitHub
git clone https://github.com/dwoodjr/dissertation-sonic-sculptures.git

# Fetch without merging
git fetch origin

# See remote branches
git branch -r
```

### Stashing (Temporary Storage)

```bash
# Save work temporarily
git stash

# List stashes
git stash list

# Apply most recent stash
git stash apply

# Apply and remove stash
git stash pop

# Stash with message
git stash save "Work in progress on feature X"
```

---

## Keyboard Shortcuts & Aliases

### Recommended Git Aliases

Add to `~/.gitconfig`:

```ini
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = log --oneline --graph --all --decorate

    # Dissertation-specific
    sculptures = log --oneline --all --graph --decorate
    backup-status = !./check-backup-status.sh
```

Usage:
```bash
git st              # Instead of git status
git co main         # Instead of git checkout main
git visual          # Pretty graph view
git backup-status   # Check backups
```

---

## Integration with Tools

### VS Code

1. Install "GitLens" extension for enhanced Git features
2. Use Source Control panel (Ctrl+Shift+G)
3. View file history, blame, and diffs visually

### Max/MSP

- Max patches are JSON text files
- Visual diffs won't work well
- Rely on commit messages for understanding changes
- Use abstractions to make changes more granular

### TouchDesigner

- `.toe` files are binary (tracked by Git LFS)
- No meaningful diffs possible
- Commit when features are complete
- Keep detailed notes in commit messages
- Consider exporting `.tox` components for version control

### PlatformIO (Firmware)

- Works perfectly with Git (text-based)
- Commit before uploading to hardware
- Tag versions that work well
- Document hardware-specific configurations

---

## Collaboration Workflow

### If Working with Advisors or Collaborators

```bash
# They clone your repo
git clone https://github.com/dwoodjr/dissertation-sonic-sculptures.git

# They create their own branch
git checkout -b advisor-feedback

# They make changes and push their branch
git add .
git commit -m "Advisor: Suggestions for sensor calibration"
git push origin advisor-feedback

# You review on GitHub
# If approved, merge (carefully for Max patches!)
git checkout main
git merge advisor-feedback  # Only for code/docs
# For Max patches, manually integrate changes

# Delete remote branch after merging
git push origin --delete advisor-feedback
```

### Pull Requests (GitHub)

For formal collaboration:
1. Collaborator forks your repo
2. They make changes in their fork
3. They create Pull Request on GitHub
4. You review and discuss
5. You merge (manually for Max patches)

---

## Maintenance Schedule

### Daily
- ✅ Commit at end of work session
- ✅ Push to GitHub (automatic OneDrive sync happens on commit)

### Weekly
- ✅ Review commit history: `git log --oneline --graph`
- ✅ Run backup status check: `./check-backup-status.sh`
- ✅ Clean up old branches: `git branch -d old-branch`
- ✅ Update documentation

### Monthly
- ✅ Tag significant milestones: `git tag -a v0.2 -m "Month 2 progress"`
- ✅ Review and update .gitignore if needed
- ✅ Check Git LFS usage (if using large files)
- ✅ Verify all backups are current

### Before Major Events
- ✅ Create tagged release
- ✅ Create backup branch
- ✅ Test clone on different machine
- ✅ Push everything to GitHub
- ✅ Verify OneDrive backups are current
- ✅ Export important patches to external drive

---

## Resources

### Git Learning
- [Pro Git Book (Free)](https://git-scm.com/book/en/v2)
- [GitHub Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)
- [Visualizing Git](https://git-school.github.io/visualizing-git/)

### Max/MSP & Version Control
- [Max Forum: Git Discussion](https://cycling74.com/forums/gitgithub-for-revision-control-of-max-patchesprojects)
- [CDM: Version Control for Patching](https://cdm.link/version-control-and-sharing-for-patching-keep-those-max-pd-patches-in-order-with-git/)

### Git LFS
- [Git LFS Documentation](https://git-lfs.github.com/)
- [GitHub LFS Guide](https://docs.github.com/en/repositories/working-with-files/managing-large-files)

---

## Appendix: Repository Structure

```
dissertation-sonic-sculptures/
├── .git/                          # Git database (local only)
│   └── hooks/
│       └── post-commit           # Auto-sync hook
├── .gitignore                    # Files to ignore
├── .gitattributes                # Git LFS configuration
├── README.md                     # Main documentation
├── check-backup-status.sh        # Backup status checker
├── sync-to-onedrive.sh          # Manual sync script (optional)
│
├── docs/                         # Documentation
│   ├── GIT-WORKFLOW.md          # This file
│   ├── research-notes/          # Research notes
│   ├── technical-documentation/ # Technical specs
│   └── media/                   # Documentation images
│
├── sculpture-buffalo-soldier/    # First sculpture
│   ├── README.md                # Sculpture-specific docs
│   ├── max/                     # Max/MSP patches
│   ├── plugdata/                # Pure Data patches
│   ├── touchdesigner/           # TouchDesigner projects
│   ├── firmware/                # Microcontroller code
│   ├── documentation/           # Circuit diagrams, notes
│   └── media/                   # Photos, videos, audio
│
├── sculpture-sun-ra-cryosleep/  # Second sculpture
│   └── [same structure]
│
├── sculpture-dont-play-hair/    # Third sculpture
│   └── [same structure]
│
└── shared/                      # Shared resources
    ├── max-abstractions/        # Reusable Max abstractions
    ├── libraries/               # Shared code libraries
    └── utilities/               # Helper scripts
```

---

## Version History

- **v1.0** (2025-11-23) - Initial documentation
- [Add versions as workflow evolves]

---

## Contact & Support

**Repository Owner:** Darren Woodland, Jr.
**Institution:** Drexel University
**Email:** dkw34@drexel.edu OR darrenwoodland3@gmail.com
**GitHub:** https://github.com/dwoodjr/dissertation-sonic-sculptures

**For Git Issues:**
- Check this documentation first
- Search GitHub/Stack Overflow
- Ask in Max/MSP forums for patch-specific issues

---

---

*This document is version controlled. Last updated: 2025-11-23*