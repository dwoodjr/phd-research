#!/usr/bin/env bash
# =============================================================================
# reorganize.sh
# Organic Memory (Triptych) — Project Restructure
#
# Collapses the old dual-model structure (sculpture-* + organic-memory-triptych)
# into a single unified movement-based structure.
#
# BEFORE RUNNING:
#   1. Read through this entire script first.
#   2. Make sure you are in the dissertation-sonic-sculptures/ directory.
#   3. Make sure you have no open Max patches from this project.
#   4. Run: bash reorganize.sh
#
# WHAT THIS DOES:
#   Step 1 — Commits all current uncommitted changes as a baseline snapshot.
#   Step 2 — Creates the new folder structure.
#   Step 3 — Moves files using git mv (preserves git history).
#   Step 4 — Removes empty old folders.
#   Step 5 — Commits the reorganization as a single atomic commit.
#
# SAFE TO ABORT: If anything looks wrong, Ctrl+C to stop. Nothing is pushed
# to GitHub until you explicitly run git push. You can roll back with:
#   git reset --hard HEAD~2
# (This undoes both the baseline commit and the reorganization commit.)
#
# =============================================================================

set -e  # Exit immediately if any command fails

# --- Verify location ---
if [ ! -f "README.md" ] || [ ! -d "organic-memory-triptych" ]; then
  echo "ERROR: Run this script from inside dissertation-sonic-sculptures/"
  echo "  cd projects/dissertation-sonic-sculptures"
  echo "  bash reorganize.sh"
  exit 1
fi

echo ""
echo "============================================================"
echo "  Organic Memory — Project Restructure"
echo "============================================================"
echo ""
echo "Git root: $(git rev-parse --show-toplevel)"
echo "Working directory: $(pwd)"
echo ""

# =============================================================================
# STEP 1 — Commit current state as baseline
# =============================================================================
echo "--- STEP 1: Committing current state as baseline snapshot ---"
echo ""

# Stage everything in this subtree plus the new build guides
git add \
  "organic-memory-triptych/max/water-movement/build-guides/03-material-cell.md" \
  "organic-memory-triptych/max/water-movement/build-guides/04-cell-voice.md" \
  "organic-memory-triptych/max/water-movement/build-guides/02-dk-drone.md" \
  "organic-memory-triptych/" \
  "sculpture-buffalo-soldier/" \
  "sculpture-sun-ra-cryosleep/" \
  "sculpture-dont-play-hair/" \
  "docs/" \
  "shared/" \
  "README.md" \
  "check-backup-status.sh" \
  ".gitattributes" \
  ".gitignore"

git commit -m "chore: baseline snapshot before project restructure

Captures current working state of all three sculpture branches and the
organic-memory-triptych folder before collapsing into unified movement
structure. Includes new build guides 02 (revised drone), 03 (material-cell),
and 04 (cell-voice) for Movement II water-movement system."

echo ""
echo "✓ Baseline committed."
echo ""

# =============================================================================
# STEP 2 — Create new directory structure
# =============================================================================
echo "--- STEP 2: Creating new directory structure ---"
echo ""

# Movement I — Buffalo Soldier
mkdir -p movement-I-buffalo-soldier/max
mkdir -p movement-I-buffalo-soldier/firmware/esp32/{include,lib,src}
mkdir -p movement-I-buffalo-soldier/firmware/teensy/{include,lib,src}
mkdir -p movement-I-buffalo-soldier/documentation/{circuit-diagrams,performance-notes}
mkdir -p movement-I-buffalo-soldier/media/{audio,photos,videos}
mkdir -p movement-I-buffalo-soldier/plugdata
mkdir -p movement-I-buffalo-soldier/touchdesigner/assets

# Movement II — Did Sun Ra Fear Cryosleep?
mkdir -p movement-II-sun-ra-cryosleep/max/water-movement/build-guides
mkdir -p movement-II-sun-ra-cryosleep/max/archive/organic-memory
mkdir -p movement-II-sun-ra-cryosleep/firmware/esp32/{include,lib,src}
mkdir -p movement-II-sun-ra-cryosleep/firmware/teensy/{include,lib,src}
mkdir -p movement-II-sun-ra-cryosleep/documentation/{circuit-diagrams,performance-notes}
mkdir -p movement-II-sun-ra-cryosleep/media/audio/{dissolution-tests,corpus}
mkdir -p movement-II-sun-ra-cryosleep/media/{photos,videos}
mkdir -p movement-II-sun-ra-cryosleep/plugdata
mkdir -p movement-II-sun-ra-cryosleep/touchdesigner/assets

# Movement III — Don't Play with My Hair
mkdir -p movement-III-dont-play-hair/max
mkdir -p movement-III-dont-play-hair/firmware/esp32/{include,lib,src}
mkdir -p movement-III-dont-play-hair/firmware/teensy/{include,lib,src}
mkdir -p movement-III-dont-play-hair/documentation/{circuit-diagrams,performance-notes}
mkdir -p movement-III-dont-play-hair/media/{audio,photos,videos}
mkdir -p movement-III-dont-play-hair/plugdata
mkdir -p movement-III-dont-play-hair/touchdesigner/assets
mkdir -p movement-III-dont-play-hair/vvvv

# Docs consolidation target
mkdir -p docs/research-notes
mkdir -p docs/technical-documentation
mkdir -p docs/materials

echo "✓ Directory structure created."
echo ""

# =============================================================================
# STEP 3 — Move files with git mv
# =============================================================================
echo "--- STEP 3: Moving files (git mv preserves history) ---"
echo ""

# ------------------------------------------------------------------
# MOVEMENT I — Buffalo Soldier
# ------------------------------------------------------------------
echo "  Moving Movement I (Buffalo Soldier)..."

git mv sculpture-buffalo-soldier/README.md \
       movement-I-buffalo-soldier/README.md

git mv sculpture-buffalo-soldier/documentation/circuit-diagrams/.gitkeep \
       movement-I-buffalo-soldier/documentation/circuit-diagrams/.gitkeep

git mv sculpture-buffalo-soldier/documentation/performance-notes/.gitkeep \
       movement-I-buffalo-soldier/documentation/performance-notes/.gitkeep

git mv sculpture-buffalo-soldier/firmware/esp32/include/.gitkeep \
       movement-I-buffalo-soldier/firmware/esp32/include/.gitkeep

git mv sculpture-buffalo-soldier/firmware/esp32/lib/.gitkeep \
       movement-I-buffalo-soldier/firmware/esp32/lib/.gitkeep

git mv sculpture-buffalo-soldier/firmware/esp32/src/.gitkeep \
       movement-I-buffalo-soldier/firmware/esp32/src/.gitkeep

git mv sculpture-buffalo-soldier/firmware/teensy/include/.gitkeep \
       movement-I-buffalo-soldier/firmware/teensy/include/.gitkeep

git mv sculpture-buffalo-soldier/firmware/teensy/lib/.gitkeep \
       movement-I-buffalo-soldier/firmware/teensy/lib/.gitkeep

git mv sculpture-buffalo-soldier/firmware/teensy/src/.gitkeep \
       movement-I-buffalo-soldier/firmware/teensy/src/.gitkeep

git mv sculpture-buffalo-soldier/max/abstractions/.gitkeep \
       movement-I-buffalo-soldier/max/.gitkeep

git mv sculpture-buffalo-soldier/media/audio/test-lfs.wav \
       movement-I-buffalo-soldier/media/audio/test-lfs.wav

git mv sculpture-buffalo-soldier/media/audio/.gitkeep \
       movement-I-buffalo-soldier/media/audio/.gitkeep 2>/dev/null || true

git mv sculpture-buffalo-soldier/media/photos/.gitkeep \
       movement-I-buffalo-soldier/media/photos/.gitkeep

git mv sculpture-buffalo-soldier/media/videos/.gitkeep \
       movement-I-buffalo-soldier/media/videos/.gitkeep

git mv sculpture-buffalo-soldier/plugdata/.gitkeep \
       movement-I-buffalo-soldier/plugdata/.gitkeep

git mv sculpture-buffalo-soldier/touchdesigner/assets/.gitkeep \
       movement-I-buffalo-soldier/touchdesigner/assets/.gitkeep

echo "  ✓ Movement I done."

# ------------------------------------------------------------------
# MOVEMENT II — Sun Ra / water-movement (active Max work)
# ------------------------------------------------------------------
echo "  Moving Movement II (Sun Ra — active Max patches)..."

# water-movement main patch and docs
git mv organic-memory-triptych/max/water-movement/water-movement-main.maxpat \
       movement-II-sun-ra-cryosleep/max/water-movement/water-movement-main.maxpat

git mv organic-memory-triptych/max/water-movement/water-movement-main.md \
       movement-II-sun-ra-cryosleep/max/water-movement/water-movement-main.md

git mv organic-memory-triptych/max/water-movement/README.md \
       movement-II-sun-ra-cryosleep/max/water-movement/README.md

# water-movement build guides
git mv organic-memory-triptych/max/water-movement/build-guides/01-water-movement-main.md \
       movement-II-sun-ra-cryosleep/max/water-movement/build-guides/01-water-movement-main.md

git mv organic-memory-triptych/max/water-movement/build-guides/02-dk-drone.md \
       movement-II-sun-ra-cryosleep/max/water-movement/build-guides/02-dk-drone.md

git mv organic-memory-triptych/max/water-movement/build-guides/03-material-cell.md \
       movement-II-sun-ra-cryosleep/max/water-movement/build-guides/03-material-cell.md

git mv organic-memory-triptych/max/water-movement/build-guides/04-cell-voice.md \
       movement-II-sun-ra-cryosleep/max/water-movement/build-guides/04-cell-voice.md

# water-movement maxpats and pseudocode docs
git mv organic-memory-triptych/max/water-movement/dk-drone.maxpat \
       movement-II-sun-ra-cryosleep/max/water-movement/dk-drone.maxpat

git mv organic-memory-triptych/max/water-movement/dk-drone-alt.maxpat \
       movement-II-sun-ra-cryosleep/max/water-movement/dk-drone-alt.maxpat

git mv organic-memory-triptych/max/water-movement/dk-drone.md \
       movement-II-sun-ra-cryosleep/max/water-movement/dk-drone.md

git mv organic-memory-triptych/max/water-movement/dk-midi-bridge.md \
       movement-II-sun-ra-cryosleep/max/water-movement/dk-midi-bridge.md

git mv organic-memory-triptych/max/water-movement/phrase-buffer.md \
       movement-II-sun-ra-cryosleep/max/water-movement/phrase-buffer.md

git mv organic-memory-triptych/max/water-movement/s2-players.md \
       movement-II-sun-ra-cryosleep/max/water-movement/s2-players.md

# somax test patcher (root of organic-memory-triptych/max)
git mv organic-memory-triptych/max/somax-8-player-test.maxpat \
       movement-II-sun-ra-cryosleep/max/water-movement/somax-8-player-test.maxpat

# organic-memory (older project) → archive
git mv organic-memory-triptych/max/organic-memory/organic-memory.maxproj \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/organic-memory.maxproj

git mv organic-memory-triptych/max/organic-memory/data/Dissolve_Soul-00_HYPHN-00_0.json \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0.json

git mv organic-memory-triptych/max/organic-memory/data/Dissolve_Soul-00_HYPHN-00_0-1.json \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0-1.json

git mv organic-memory-triptych/max/organic-memory/data/Dissolve_Soul-00_HYPHN-00_0-2.json \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0-2.json

git mv organic-memory-triptych/max/organic-memory/data/Dissolve_Soul-00_HYPHN-00_0-3.json \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0-3.json

git mv organic-memory-triptych/max/organic-memory/data/filename.json \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/filename.json

git mv organic-memory-triptych/max/organic-memory/media/Dissolve_Soul-00_HYPHN-00_0.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0.wav

git mv organic-memory-triptych/max/organic-memory/media/Dissolve_Soul-00_HYPHN-00_0-1.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0-1.wav

git mv organic-memory-triptych/max/organic-memory/media/Dissolve_Soul-00_HYPHN-00_0-2.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0-2.wav

git mv organic-memory-triptych/max/organic-memory/media/Dissolve_Soul-00_HYPHN-00_0-3.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0-3.wav

git mv organic-memory-triptych/max/organic-memory/media/filename.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/filename.wav

git mv organic-memory-triptych/max/organic-memory/media/soul_dissolve_sample_00_120s.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/soul_dissolve_sample_00_120s.wav

git mv organic-memory-triptych/max/organic-memory/media/194496__sclolex__harmonicdrone.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/194496__sclolex__harmonicdrone.wav

git mv organic-memory-triptych/max/organic-memory/media/565416__redhatcreator__sleighbells-shaked-phase-corrected-120-bpm-15-4-lufs.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/565416__redhatcreator__sleighbells-shaked-phase-corrected-120-bpm-15-4-lufs.wav

git mv organic-memory-triptych/max/organic-memory/media/633716__hewnmarrow__crayongapdrone001-005.wav \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/633716__hewnmarrow__crayongapdrone001-005.wav

git mv organic-memory-triptych/max/organic-memory/other/Dissolve_Soul-00_HYPHN-00_0.wav.reapeaks \
       movement-II-sun-ra-cryosleep/max/archive/organic-memory/Dissolve_Soul-00_HYPHN-00_0.wav.reapeaks

# organic-memory-triptych documentation → docs/ (consolidate)
git mv organic-memory-triptych/documentation/context-brief-triptych.md \
       docs/context-briefs/context-brief-triptych-working.md

git mv organic-memory-triptych/documentation/ETA-SpeculativeProposal.canvas \
       docs/research-notes/ETA-SpeculativeProposal.canvas

# Sun Ra sculpture documentation
git mv "sculpture-sun-ra-cryosleep/documentation/Research Memo — Cryosleep, Colonial Ships, and the Refusal to Sleep.md" \
       "movement-II-sun-ra-cryosleep/documentation/Research Memo — Cryosleep, Colonial Ships, and the Refusal to Sleep.md"

git mv sculpture-sun-ra-cryosleep/documentation/circuit-diagrams/.gitkeep \
       movement-II-sun-ra-cryosleep/documentation/circuit-diagrams/.gitkeep

git mv sculpture-sun-ra-cryosleep/documentation/performance-notes/.gitkeep \
       movement-II-sun-ra-cryosleep/documentation/performance-notes/.gitkeep

# Sun Ra tech doc (from root docs/)
git mv docs/technical-documentation/SunRa_Cryosleep_TechDoc_v01.docx \
       movement-II-sun-ra-cryosleep/documentation/SunRa_Cryosleep_TechDoc_v01.docx

# Materials research note → docs/research-notes
git mv docs/research-notes/MovementII_DissolutionSphere_MaterialsResearch.md \
       movement-II-sun-ra-cryosleep/documentation/MovementII_DissolutionSphere_MaterialsResearch.md

# Dissolution test recordings → movement-II media
git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolution_Test_001.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolution_Test_001.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolution_Test_001.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolution_Test_001.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolution_Test_002.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolution_Test_002.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolution_Test_002.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolution_Test_002.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolution_Test_003.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolution_Test_003.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolution_Test_003.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolution_Test_003.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_001.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_001.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_001.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_001.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_Contact_001.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_Contact_001.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_Contact_001.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_Contact_001.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_Contact_Hydro_001.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_Contact_Hydro_001.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_Contact_Hydro_001.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_Contact_Hydro_001.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_Contact_Hydro_002.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_Contact_Hydro_002.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Parallel_Contact_Hydro_002.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Parallel_Contact_Hydro_002.json

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Series_001.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Series_001.wav

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/Dissolve_Test_PZT_Series_001.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Series_001.json

# Sleigh bells / drone test samples that ended up in Sun Ra folder
git mv "sculpture-sun-ra-cryosleep/media/audio/samples-test/565416__redhatcreator__sleighbells-shaked-phase-corrected-120-bpm-15-4-lufs.wav" \
       "movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/565416__redhatcreator__sleighbells-shaked-phase-corrected-120-bpm-15-4-lufs.wav"

git mv sculpture-sun-ra-cryosleep/media/audio/samples-test/633716__hewnmarrow__crayongapdrone001-005.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/633716__hewnmarrow__crayongapdrone001-005.wav

# Sun Ra firmware stubs
git mv sculpture-sun-ra-cryosleep/firmware/esp32/include/.gitkeep \
       movement-II-sun-ra-cryosleep/firmware/esp32/include/.gitkeep

git mv sculpture-sun-ra-cryosleep/firmware/esp32/lib/.gitkeep \
       movement-II-sun-ra-cryosleep/firmware/esp32/lib/.gitkeep

git mv sculpture-sun-ra-cryosleep/firmware/esp32/src/.gitkeep \
       movement-II-sun-ra-cryosleep/firmware/esp32/src/.gitkeep

git mv sculpture-sun-ra-cryosleep/firmware/teensy/include/.gitkeep \
       movement-II-sun-ra-cryosleep/firmware/teensy/include/.gitkeep

git mv sculpture-sun-ra-cryosleep/firmware/teensy/lib/.gitkeep \
       movement-II-sun-ra-cryosleep/firmware/teensy/lib/.gitkeep

git mv sculpture-sun-ra-cryosleep/firmware/teensy/src/.gitkeep \
       movement-II-sun-ra-cryosleep/firmware/teensy/src/.gitkeep

git mv sculpture-sun-ra-cryosleep/media/photos/.gitkeep \
       movement-II-sun-ra-cryosleep/media/photos/.gitkeep

git mv sculpture-sun-ra-cryosleep/media/videos/.gitkeep \
       movement-II-sun-ra-cryosleep/media/videos/.gitkeep

git mv sculpture-sun-ra-cryosleep/plugdata/.gitkeep \
       movement-II-sun-ra-cryosleep/plugdata/.gitkeep

git mv sculpture-sun-ra-cryosleep/touchdesigner/assets/.gitkeep \
       movement-II-sun-ra-cryosleep/touchdesigner/assets/.gitkeep

git mv sculpture-sun-ra-cryosleep/README.md \
       movement-II-sun-ra-cryosleep/README.md

echo "  ✓ Movement II done."

# ------------------------------------------------------------------
# MOVEMENT III — Don't Play with My Hair
# ------------------------------------------------------------------
echo "  Moving Movement III (Don't Play with My Hair)..."

git mv sculpture-dont-play-hair/README.md \
       movement-III-dont-play-hair/README.md

# HairSynth Max project
git mv sculpture-dont-play-hair/max/HairSynth/HairSynth.maxproj \
       movement-III-dont-play-hair/max/HairSynth.maxproj

git mv sculpture-dont-play-hair/max/HairSynth/patchers/HairSynth_v1.maxpat \
       movement-III-dont-play-hair/max/HairSynth_v1.maxpat

git mv sculpture-dont-play-hair/max/HairSynth/media/wavetable_001.wav \
       movement-III-dont-play-hair/media/audio/wavetable_001.wav

git mv sculpture-dont-play-hair/max/HairSynth/media/wavetable_002.wav \
       movement-III-dont-play-hair/media/audio/wavetable_002.wav

git mv sculpture-dont-play-hair/max/HairSynth/media/wavetable_003.wav \
       movement-III-dont-play-hair/media/audio/wavetable_003.wav

git mv sculpture-dont-play-hair/max/HairSynth/media/wavetable_004.wav \
       movement-III-dont-play-hair/media/audio/wavetable_004.wav

git mv sculpture-dont-play-hair/max/HairSynth/media/wavetable_005.wav \
       movement-III-dont-play-hair/media/audio/wavetable_005.wav

# test-waves (duplicates of HairSynth media — move but note the duplication)
git mv sculpture-dont-play-hair/max/data/test-waves/wavetable_001.wav \
       movement-III-dont-play-hair/media/audio/wavetable_001_test.wav 2>/dev/null || true

git mv sculpture-dont-play-hair/max/data/test-waves/wavetable_002.wav \
       movement-III-dont-play-hair/media/audio/wavetable_002_test.wav 2>/dev/null || true

git mv sculpture-dont-play-hair/max/data/test-waves/wavetable_003.wav \
       movement-III-dont-play-hair/media/audio/wavetable_003_test.wav 2>/dev/null || true

git mv sculpture-dont-play-hair/max/data/test-waves/wavetable_004.wav \
       movement-III-dont-play-hair/media/audio/wavetable_004_test.wav 2>/dev/null || true

git mv sculpture-dont-play-hair/max/data/test-waves/wavetable_005.wav \
       movement-III-dont-play-hair/media/audio/wavetable_005_test.wav 2>/dev/null || true

# vvvv
git mv sculpture-dont-play-hair/vvvv/HairProcessing.vl \
       movement-III-dont-play-hair/vvvv/HairProcessing.vl

git mv sculpture-dont-play-hair/vvvv/HairProcessing-Application_2025.12.02-14.16.09.png \
       movement-III-dont-play-hair/vvvv/HairProcessing-Application_2025.12.02-14.16.09.png

# Photos
git mv "sculpture-dont-play-hair/media/photos/Screenshot 2025-11-04 140103.png" \
       "movement-III-dont-play-hair/media/photos/Screenshot 2025-11-04 140103.png"

git mv "sculpture-dont-play-hair/media/photos/Screenshot 2025-11-04 140125.png" \
       "movement-III-dont-play-hair/media/photos/Screenshot 2025-11-04 140125.png"

git mv "sculpture-dont-play-hair/media/photos/Screenshot 2025-11-04 140138.png" \
       "movement-III-dont-play-hair/media/photos/Screenshot 2025-11-04 140138.png"

git mv "sculpture-dont-play-hair/media/photos/Screenshot 2025-11-04 140158.png" \
       "movement-III-dont-play-hair/media/photos/Screenshot 2025-11-04 140158.png"

# Videos
git mv sculpture-dont-play-hair/media/videos/hairsynth-0.mp4 \
       movement-III-dont-play-hair/media/videos/hairsynth-0.mp4

# Stubs
git mv sculpture-dont-play-hair/documentation/circuit-diagrams/.gitkeep \
       movement-III-dont-play-hair/documentation/circuit-diagrams/.gitkeep

git mv sculpture-dont-play-hair/documentation/performance-notes/.gitkeep \
       movement-III-dont-play-hair/documentation/performance-notes/.gitkeep

git mv sculpture-dont-play-hair/firmware/esp32/include/.gitkeep \
       movement-III-dont-play-hair/firmware/esp32/include/.gitkeep

git mv sculpture-dont-play-hair/firmware/esp32/lib/.gitkeep \
       movement-III-dont-play-hair/firmware/esp32/lib/.gitkeep

git mv sculpture-dont-play-hair/firmware/esp32/src/.gitkeep \
       movement-III-dont-play-hair/firmware/esp32/src/.gitkeep

git mv sculpture-dont-play-hair/firmware/teensy/include/.gitkeep \
       movement-III-dont-play-hair/firmware/teensy/include/.gitkeep

git mv sculpture-dont-play-hair/firmware/teensy/lib/.gitkeep \
       movement-III-dont-play-hair/firmware/teensy/lib/.gitkeep

git mv sculpture-dont-play-hair/firmware/teensy/src/.gitkeep \
       movement-III-dont-play-hair/firmware/teensy/src/.gitkeep

git mv sculpture-dont-play-hair/media/audio/.gitkeep \
       movement-III-dont-play-hair/media/audio/.gitkeep 2>/dev/null || true

git mv sculpture-dont-play-hair/media/photos/.gitkeep \
       movement-III-dont-play-hair/media/photos/.gitkeep 2>/dev/null || true

git mv sculpture-dont-play-hair/media/videos/.gitkeep \
       movement-III-dont-play-hair/media/videos/.gitkeep 2>/dev/null || true

git mv sculpture-dont-play-hair/plugdata/.gitkeep \
       movement-III-dont-play-hair/plugdata/.gitkeep

git mv sculpture-dont-play-hair/touchdesigner/assets/.gitkeep \
       movement-III-dont-play-hair/touchdesigner/assets/.gitkeep

echo "  ✓ Movement III done."

# ------------------------------------------------------------------
# SHARED — misplaced files in shared/max-abstractions
# ------------------------------------------------------------------
echo "  Cleaning up shared/..."

# These dissolution recordings ended up in max-abstractions by mistake
git mv shared/max-abstractions/pathDissolve_Test_PZT_Series_001.wav \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Series_001_b.wav 2>/dev/null || true

git mv shared/max-abstractions/pathDissolve_Test_PZT_Series_001.json \
       movement-II-sun-ra-cryosleep/media/audio/dissolution-tests/Dissolve_Test_PZT_Series_001_b.json 2>/dev/null || true

# These abstractions are legitimately shared — leave in place, no move needed
# shared/max-abstractions/dissolution-onset-checker.maxpat  → stays
# shared/max-abstractions/dissolve-sample-recorder.maxpat   → stays
# shared/max-patchers-json/onsetDetection-useCase-playback-subpatcher.json → stays

# Materials doc consolidation
git mv docs/materials/Organic-Memory-Triptych_Materials-Shopping-List.md \
       docs/materials/Organic-Memory-Triptych_Materials-Shopping-List.md 2>/dev/null || true
# (already in right place — no move needed)

echo "  ✓ Shared cleanup done."

echo ""
echo "✓ All files moved."
echo ""

# =============================================================================
# STEP 4 — Remove now-empty old directories
# =============================================================================
echo "--- STEP 4: Removing empty old directories ---"
echo ""

# These should now be empty — git will remove them automatically on commit
# but we force-remove any stragglers (empty dirs git doesn't track)
rmdir --ignore-fail-on-non-empty \
  sculpture-buffalo-soldier/documentation/circuit-diagrams \
  sculpture-buffalo-soldier/documentation/performance-notes \
  sculpture-buffalo-soldier/documentation \
  sculpture-buffalo-soldier/firmware/esp32/include \
  sculpture-buffalo-soldier/firmware/esp32/lib \
  sculpture-buffalo-soldier/firmware/esp32/src \
  sculpture-buffalo-soldier/firmware/esp32 \
  sculpture-buffalo-soldier/firmware/teensy/include \
  sculpture-buffalo-soldier/firmware/teensy/lib \
  sculpture-buffalo-soldier/firmware/teensy/src \
  sculpture-buffalo-soldier/firmware/teensy \
  sculpture-buffalo-soldier/firmware \
  sculpture-buffalo-soldier/max/abstractions \
  sculpture-buffalo-soldier/max/data \
  sculpture-buffalo-soldier/max \
  sculpture-buffalo-soldier/media/audio \
  sculpture-buffalo-soldier/media/photos \
  sculpture-buffalo-soldier/media/videos \
  sculpture-buffalo-soldier/media \
  sculpture-buffalo-soldier/plugdata \
  sculpture-buffalo-soldier/touchdesigner/assets \
  sculpture-buffalo-soldier/touchdesigner \
  sculpture-buffalo-soldier \
  sculpture-sun-ra-cryosleep/documentation/circuit-diagrams \
  sculpture-sun-ra-cryosleep/documentation/performance-notes \
  sculpture-sun-ra-cryosleep/documentation \
  sculpture-sun-ra-cryosleep/firmware/esp32/include \
  sculpture-sun-ra-cryosleep/firmware/esp32/lib \
  sculpture-sun-ra-cryosleep/firmware/esp32/src \
  sculpture-sun-ra-cryosleep/firmware/esp32 \
  sculpture-sun-ra-cryosleep/firmware/teensy/include \
  sculpture-sun-ra-cryosleep/firmware/teensy/lib \
  sculpture-sun-ra-cryosleep/firmware/teensy/src \
  sculpture-sun-ra-cryosleep/firmware/teensy \
  sculpture-sun-ra-cryosleep/firmware \
  sculpture-sun-ra-cryosleep/max/abstractions \
  sculpture-sun-ra-cryosleep/max/data \
  sculpture-sun-ra-cryosleep/max \
  sculpture-sun-ra-cryosleep/media/audio/samples-test \
  sculpture-sun-ra-cryosleep/media/audio \
  sculpture-sun-ra-cryosleep/media/photos \
  sculpture-sun-ra-cryosleep/media/videos \
  sculpture-sun-ra-cryosleep/media \
  sculpture-sun-ra-cryosleep/plugdata \
  sculpture-sun-ra-cryosleep/touchdesigner/assets \
  sculpture-sun-ra-cryosleep/touchdesigner \
  sculpture-sun-ra-cryosleep \
  sculpture-dont-play-hair/documentation/circuit-diagrams \
  sculpture-dont-play-hair/documentation/performance-notes \
  sculpture-dont-play-hair/documentation \
  sculpture-dont-play-hair/firmware/esp32/include \
  sculpture-dont-play-hair/firmware/esp32/lib \
  sculpture-dont-play-hair/firmware/esp32/src \
  sculpture-dont-play-hair/firmware/esp32 \
  sculpture-dont-play-hair/firmware/teensy/include \
  sculpture-dont-play-hair/firmware/teensy/lib \
  sculpture-dont-play-hair/firmware/teensy/src \
  sculpture-dont-play-hair/firmware/teensy \
  sculpture-dont-play-hair/firmware \
  sculpture-dont-play-hair/max/HairSynth/media \
  sculpture-dont-play-hair/max/HairSynth/patchers \
  sculpture-dont-play-hair/max/HairSynth \
  sculpture-dont-play-hair/max/abstractions \
  sculpture-dont-play-hair/max/data/test-waves \
  sculpture-dont-play-hair/max/data \
  sculpture-dont-play-hair/max \
  sculpture-dont-play-hair/media/audio \
  sculpture-dont-play-hair/media/photos \
  sculpture-dont-play-hair/media/videos \
  sculpture-dont-play-hair/media \
  sculpture-dont-play-hair/plugdata \
  sculpture-dont-play-hair/touchdesigner/assets \
  sculpture-dont-play-hair/touchdesigner \
  sculpture-dont-play-hair/vvvv \
  sculpture-dont-play-hair \
  organic-memory-triptych/max/organic-memory/data \
  organic-memory-triptych/max/organic-memory/media \
  organic-memory-triptych/max/organic-memory/other \
  organic-memory-triptych/max/organic-memory \
  organic-memory-triptych/max/water-movement/build-guides \
  organic-memory-triptych/max/water-movement \
  organic-memory-triptych/max \
  organic-memory-triptych/documentation \
  organic-memory-triptych \
  docs/technical-documentation \
  2>/dev/null || true

echo "✓ Empty directories removed."
echo ""

# =============================================================================
# STEP 5 — Commit the reorganization
# =============================================================================
echo "--- STEP 5: Committing reorganization ---"
echo ""

git add -A

git commit -m "refactor: reorganize into unified movement-based structure

Collapses sculpture-buffalo-soldier/, sculpture-sun-ra-cryosleep/,
sculpture-dont-play-hair/, and organic-memory-triptych/ into a single
coherent structure reflecting the triptych as one instrument in three parts.

New structure:
  movement-I-buffalo-soldier/
  movement-II-sun-ra-cryosleep/
    max/water-movement/       ← active Max patches + build guides
    max/archive/organic-memory/ ← older project, preserved
    media/audio/dissolution-tests/ ← hydrophone recordings
    documentation/            ← research memos, tech docs
  movement-III-dont-play-hair/
  shared/                     ← shared Max abstractions (unchanged)
  docs/                       ← triptych-wide context briefs (unchanged)

No files deleted. All content preserved, only paths changed.
Git history follows files through git mv."

echo ""
echo "============================================================"
echo "  Reorganization complete."
echo "============================================================"
echo ""
echo "New structure:"
find . -maxdepth 2 -not -path './.git/*' -not -name '.gitkeep' | sort
echo ""
echo "To push to GitHub:"
echo "  git push origin main"
echo ""
echo "To undo everything (rolls back both commits):"
echo "  git reset --hard HEAD~2"
echo ""
