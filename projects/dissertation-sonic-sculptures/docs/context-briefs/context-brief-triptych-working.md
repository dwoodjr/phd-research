# Context Brief: Organic Memory (Triptych)
*Speculocultural Technopoiesis — Triptych-Level Overview*
*Last updated: 2026-02-26*

---

## What This Document Is

A self-contained context brief for use at the start of any new working session or chat focused on the triptych as a whole. Paste this document (or link to it) to orient a fresh conversation without needing to re-explain the full project. For work-specific sessions, use the individual sculpture briefs in each `sculpture-*/documentation/` folder.

---

## Dissertation Context

**Title:** Sonic Speculocultural Technopoiesis: Black Speculative Tradition as Modification for Embodied Practice
**Researcher:** Darren Woodland Jr. (DJ), Ph.D. Candidate, Westphal College of Media Arts & Design, Drexel University
**Status:** Dissertation proposal approved (January 2026). IRB approved. Active creation phase beginning.
**Supervisor:** Emil Polyak | Committee: Dr. Michael Wagner, Dr. Arianna Gass, Dr. Raja Schaar, Prof. Valerie Ifill

**Core Framework — Speculocultural Technopoiesis (ST):**
The cyclical relationship between cultural speculation and embodied technological practice, where imagination guides making and making generates new knowledge that reshapes cultural imagination. Grounded in Black/Afro-diasporic sonic epistemologies. The ST cycle has four phases: **Unsettling → Remixing → Embodying → Transmitting**. Four analytical domains run concurrently: **Fugitive Speculation, Material Memory, Sensory Worlding, Intimate Witnessing**.

---

## The Triptych: Organic Memory

**Full title:** *Organic Memory (Triptych)*
**Conference paper title:** "Material Synthesis Composition: Speculocultural Technopoiesis as a Framework for Human-Material-AI Co-Creativity" (submitted UCR 2026)

Three interactive sonic sculptures functioning as a single spatial composition in three movements. Each movement generates sound through material transformation captured via sensors, processed through culturally modified DSP chains, and elaborated by AI (Somax2) trained on culturally specific corpora. A shared compositional motif threads through all three movements.

**Shared thematic concern:** The metamorphosis and transfiguration of Black being across space and time. All three works use sound as primary expressive medium, involve material interfaces demanding embodied interaction, and operate speculatively to refuse dominant historical and technological narratives.

**Methodology term — Material Synthesis Composition (MSC):** Relational material substrates (organic matter, inorganic data from cultural accumulations) positioned as primary compositional feed alongside human performers and AI/ML systems.

---

## The Three Movements

| | Movement I | Movement II | Movement III |
|---|---|---|---|
| **Title** | Buffalo Soldier | Did Sun Ra Fear Cryosleep? | Don't Play with My Hair |
| **Material substrate** | Earth / rock / soil | Water / sediment / dissolution | Hair / gesture |
| **Primary sensor** | Piezoelectric contact mics | Hydrophones | Computer vision + capacitive touch |
| **Sonic identity** | Geological, ambiguous, gritty | Unstable, transitional, cosmic+earthly | Textural, intimate, mechanical-organic |
| **Motif tempo** | Geological (seconds per beat) | Chemical (minutes per cycle) | Human (natural gesture) |
| **Motif recognition** | Subliminal | Emerging | Explicit |
| **Somax2 corpus** | Field hollers, work songs, bugle calls | NASA sonifications, water-imagery spirituals | Barbershop ambience, hair care oral tradition |
| **ST domain foregrounded** | Material Memory | Fugitive Speculation | Sensory Worlding |
| **Listener relationship** | Felt in body | Witnessed | Participated |

---

## The Shared Motif

**Source:** The final melodic phrase of *When Johnny Comes Marching Home* (also known as *The Ants Go Marching*) — a Civil War-era song directly contemporaneous with the formation of the Buffalo Soldier regiments (1866).

**Cell:** `tri-pa-let | dah dah dah da daaa` — a triplet anacrusis leading into four short notes resolving to one long note. In rhythmic notation: three-beat pickup + [short-short-short-short-LONG].

**Why this cell:**
- Civil War-era, period-accurate to Buffalo Soldiers
- The triplet/compound meter sits at the intersection of European march tradition and African diasporic rhythmic DNA
- *The Ants Go Marching* variant connects soldiers → ants → bison (colonial logic treating bodies as interchangeable)
- Strong enough rhythmic identity to survive extreme transformation
- Short enough to function as a cell rather than a theme

**Transformation across movements:**
- **Buffalo Soldier:** Stretched to geological time — subsonic pulse, felt not heard. Tempo: ~1 beat per 4–8 seconds.
- **Did Sun Ra:** Dissolved — rhythm determined by chemistry of dissolution, not metronome. Duration variable.
- **Don't Play with My Hair:** Human scale — natural gesture rhythm. Most recognizable instantiation.

**The Sleigh Bells (after Julius Eastman's *Femenine*):**
A low, slightly irregular buzzing drone — present at the threshold of audibility throughout all three movements, sometimes in a distant speaker channel. Tuned to the fundamental pitch of the motif's long note. Timbral identity shifts per movement: subsonic rumble (Buffalo Soldier) → vessel resonance (Did Sun Ra) → clipper hum (Hair). Never fully absent.

**Compositional model:** Julius Eastman's *Femenine* — two structural elements: (1) a perceptual/atmospheric constant (the drone as sleigh bells), (2) a developmental cell that accumulates and transforms rather than resolves narratively. The motif operates at three levels simultaneously: always structurally present in Somax2's training corpus; conditionally emergent through material processing when alignment occurs; deliberately composed at transition points.

---

## AI Layer: Somax2

Somax2 (IRCAM) runs in Max as a corpus-based co-improvisation system. Each movement has its own corpus trained on culturally specific material. Somax2 listens to the material input (sensor-generated sound), recognizes the motif's rhythmic/intervallic DNA, and elaborates — finding responses, continuations, transformations — from within the cultural corpus. When material input aligns with the motif, Somax2 is active. When it doesn't, Somax2 waits.

---

## Technical Stack

**Software:** Max/MSP 9, PlugData, Reaper, TouchDesigner, Houdini, Unity, Python, Somax2
**Communication:** MIDI, OSC
**Microcontrollers:** Teensy 4.1, ESP32-S3 WROOM, Adafruit HUZZAH32 Feather ESP32 V2
**Audio interface:** Steinberg UR22C (development) → multi-channel interface needed for final (8+ outputs)
**Spatialization:** 8-channel minimum, ambisonics preferred (IRCAM Spat~ or spat5 in Max)
**Version control:** Git + GitHub, repo at `A:\Research\Projects\dissertation-sonic-sculptures`

---

## Key References

- Guerra & Ostergaard (2017) — Technopoiesis
- Eastman, Julius — *Femenine* (1974) — compositional model
- Eshun, Kodwo (1999) — Sonic Fiction
- Ihde, Don (1990) — Post-phenomenology, non-neutrality of technology
- Benjamin, Ruha (2019) — Race After Technology
- Manning & Massumi (2014) — Research-creation, speculative pragmatism
- Loveless, Natalie (2019) — Research-creation methodology
- Agre, Philip (1997) — Critical Technical Practice
- Franinović & Serafin (2013) — Sonic Interaction Design

---

## Current Status (as of 2026-02-26)

- Dissertation proposal: **approved**
- IRB: **approved**
- Buffalo Soldier: substrate box v1 built, basic Max patch, piezo sensitivity calibration ongoing
- Did Sun Ra: hydrophones in development, conceptual framework strong, vessels/artifacts not yet acquired
- Don't Play with My Hair: HairSynth v1 complete (CT scan → PlugData wavetable), gesture recognition in development
- Somax2 integration: not yet begun
- Multi-channel spatial audio system: not yet acquired
- Shared motif: defined, not yet implemented in patches

---

*For work-specific context, see:*
- `sculpture-buffalo-soldier/documentation/context-brief.md`
- `sculpture-sun-ra-cryosleep/documentation/context-brief.md`
- `sculpture-dont-play-hair/documentation/context-brief.md`
