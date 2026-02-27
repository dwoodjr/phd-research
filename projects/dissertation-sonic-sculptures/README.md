# Dissertation: Sonic Sculptures

## Overview
This repository contains three interactive sonic sculptures created as part of my doctoral dissertation research. Each sculpture explores the intersection of physical interaction, sensor technology, and real-time audio processing to create immersive sonic experiences.

## Sculptures

### Sculpture 01: buffalo-soldier
[Brief description - replace with your actual description]

**Status:** 🚧 In Development
**Location:** `sculpture-buffalo-soldier/`

### Sculpture 02: sun-ra-cryosleep
[Brief description - replace with your actual description]

**Status:** 🚧 In Development
**Location:** `sculpture-sun-ra-cryosleep/`

### Sculpture 03: dont-play-hair
[Brief description - replace with your actual description]

**Status:** 🚧 In Development
**Location:** `sculpture-dont-play-hair/`

## Technical Stack

- **Max/MSP** 9.x - Primary audio processing and patch development
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
testing hook
testing hook
Testing correct sync hook
Testing correct sync hook
Testing correct sync hook
Testing simple sync
Testing simple copy sync
Testing simple copy sync
Testing merged hook
Testing merged hook
