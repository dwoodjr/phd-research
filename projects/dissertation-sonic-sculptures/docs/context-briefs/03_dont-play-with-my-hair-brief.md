# Context Brief: Don't Play with My Hair
### Module III — Organic Memory (Triptych) / One Instrument in Three Parts
*Sonic Speculocultural Technopoiesis | Darren Woodland Jr. | Drexel University*

---

## What This Work Is

**Don't Play with My Hair** is the third module of *Organic Memory (Triptych)* — a spatial composition performed on a single unified instrument built from three discrete but connectable modules. Each module is a complete instrument in its own right, with its own housing, sensing ecosystem, circuit logic, and performative affordances. Together they form one instrument, played by one performer (the researcher/builder), enclosed by a spatial audio array. This follows David Tudor's model: an instrument built to be played only by its maker, where the instrument and the performer's embodied knowledge are inseparable.

This module is the most intimate of the three. It is where the shared compositional motif — derived from the final phrase of *When Johnny Comes Marching Home* — appears at its most recognizable and human scale.

The work investigates the policing of Black hair by Western standards (workplace discrimination, school dress codes, the CROWN Act) alongside hair's deep importance within Black communities — the barbershop, intergenerational care knowledge, natural hair as political and aesthetic resistance. It treats hair simultaneously as a site of violation and intimate self-knowledge.

**The speculative premise:** hair itself becomes an instrument. Not metaphorically — literally. The structure, form, gesture, and materiality of hair directly generate sound through a custom synthesizer architecture called the **HairSynth**.

---

## Its Role in the Triptych

| | Buffalo Soldier | Did Sun Ra Fear Cryosleep? | **Don't Play with My Hair** |
|---|---|---|---|
| **Scale** | Collective / historical | Cosmic / transitional | **Personal / intimate** |
| **Motif tempo** | Geological (seconds/beat) | Chemical (minutes/cycle) | **Human (natural gesture)** |
| **Motif recognition** | Subliminal | Emerging | **Explicit** |
| **ST Domain** | Material Memory | Fugitive Speculation | **Sensory Worlding** |
| **Material** | Earth / rock / soil | Water / sediment | **Hair / gesture** |

This is the movement where the listener *understands* what they have been hearing across the whole triptych. The motif arrives at human scale, in the most culturally specific and bodily form. It is the most temporally immediate of the three — gesture-to-sound response is direct and present-tense.

---

## Shared Triptych Architecture (Relevant to This Work)

**The motif:** `tri-pa-let | dah dah dah da daaa` — the final phrase of *When Johnny Comes Marching Home* (also known as *The Ants Go Marching*). A triplet anacrusis leading into four short events resolving to one long note. In this movement it manifests as: three quick touches (pickup) → four distinct gestural events: touch, pull, twist, release → one held gesture / moment of stillness.

**The sleigh bells drone:** A low, slightly irregular buzzing drone tuned to the motif's long note — present at the threshold of audibility throughout all three movements. In this work it is the **clipper hum** — the most intimate and culturally specific instantiation of the drone.

**Somax2 (AI co-improvisation):** Trained on a culturally specific corpus for this movement: barbershop ambient recordings (clippers, conversation, laughter) and hair care oral tradition recordings. Somax2 listens for gestural input aligning with the motif and responds with elaborations drawn from this corpus.

---

## Material / Sonic Identity

**The HairSynth — current implementation (v1):**
- CT scan of a curly hair "fro" rendered as a VDB in Houdini → converted to point cloud → Python script extracts feature data → exported as WAV files (1024 samples) → used as wavetable source in a custom PlugData wavetable synthesizer
- Second version: vvvv + OpenCV extracts contour/blob/keypoint data from animated video → maps to synthesis parameters in Max/MSP
- Mappings encode embodied knowledge of hair — how it feels to touch, the sound of clippers. NOT simplistic correlations (more texture ≠ louder). Relationships are culturally informed.
- **Key accidental discovery:** the synthesis output resembles clipper/buzzer sound. This is now treated as the motif's timbral home — the most recognizable instantiation of the shared drone.

**What it refuses sonically:** Smooth, clean synthesis. Spa-like or ambient aesthetics. The sound should have texture — grain, buzz, the slight roughness of natural hair. Tactile even through speakers.

**Temporal character:** Intimate, close, immediate. Most present-tense of the three movements.

---

## Physical Interaction / The Proxy Object

**The core tension:** A purely screen-based Gaussian splat feels flat and disconnected. VHS tape strips as foley stand-in feel archival but less personal/intimate. The middle ground is a **physical proxy that carries the memory of hair without being only hair.**

**Current thinking:** A wig form or sculptural head form (unmistakably hair-shaped) is the primary interaction surface. Capacitive touch sensors and proximity sensors embedded within or beneath the hair material. A Gaussian splat or visual representation of actual hair (captured from the researcher's own hair) responds on a nearby display — shaped and triggered by physical interaction with the proxy.

**VHS tape as secondary material:** Magnetic tape strips potentially incorporated into the hair form as a structural/hybrid element — simultaneously hair-like and archival. The tape's magnetic properties are also sonically interesting (electromagnetic pickup/circuit sniffing).

**Consent and boundaries:** The work raises questions about designing genuine (not performative) consent mechanisms if interpersonal hair interaction is included. Currently unresolved — solo interaction (your own hair / the proxy) is the safer starting point.

---

## Current Development State

**What exists:**
- HairSynth v1 pipeline functional (Houdini → Python → PlugData wavetable)
- 10-second development video demonstrating synthesis output
- vvvv/OpenCV contour extraction mapped to Max/MSP
- Accidental clipper-sound discovery documented

**Active challenges:**
- Real-time gesture capture for subtle interactions (gentle touch, finger-through-hair, twisting) — current system uses pre-processed video, not live input
- Type 4 hair dataset gap — current pipeline uses Type 3 (curly fro CT scan). Need scans/images of researcher's own hair
- Capacitive touch vs. refined vision approach — decision pending
- Visual feedback component needs expansion
- Consent mechanism design if interpersonal interaction is included

---

## Hardware (Owned)
- Adafruit MPR121 Capacitive Touch Sensor (12-channel) ✓
- ESP32-S3 / Teensy 4.1 ✓
- AKG K371 Headphones ✓
- Steinberg UR22C (sufficient for stereo/headphone output) ✓
- Copper Conductive Tape ✓

## Hardware (Still Needed)
- Wig form / head form (styrofoam or canvas, ~$10–20)
- Hair material — Type 3/4 curl pattern wig or extensions (~$20–60)
- Conductive thread (for distributing MPR121 sensing through hair strands)
- Proximity sensor (Adafruit APDS-9960 or IR, ~$8)
- Webcam / USB camera with good low-light performance (Logitech C920/C922, ~$60–80)
- Consistent lighting for CV capture (ring light or softbox, ~$20–40)
- Sculptural base for head form (wood, concrete, or metal — aesthetically considered)
- VHS tapes (thrift store, ~$1–5 each) — exploratory
- Electromagnetic pickup coil for tape sonification — exploratory
- Small secondary display for Gaussian splat visualization — exploratory

## Corpus / Source Material Needed
- **Barbershop ambient recordings** — field recording session (Zoom H5 owned). Clippers, conversation, laughter, music
- **Hair care oral tradition recordings** — self-recorded: sounds of own hair care routine (washing, detangling, styling)
- **Clipper/buzzer recordings** — multiple clipper types, guard lengths, speeds. Close-mic with H5 or contact mic. **This is the motif's timbral source — highest priority**

## Software / Data Needed
- Luma AI or Polycam — Gaussian splat capture of researcher's own hair (free, iPhone LiDAR)
- Type 4 hair scan data — photogrammetry or medical/scientific source
- Somax2 corpus preparation (Max package, free)

---

## Key Open Questions for Workshopping

1. **Gesture capture approach:** Capacitive touch sensors in the hair proxy vs. refined computer vision vs. hybrid? What level of subtlety is achievable with each?
2. **The proxy object:** How to build/fabricate a head form that feels aesthetically intentional rather than like a wig stand? Materials, finish, scale?
3. **Real-time vs. pre-processed:** Can the HairSynth pipeline run in real-time? What are the computational bottlenecks?
4. **Type 4 hair data:** Best approach to capturing researcher's own hair for the pipeline — photogrammetry, Gaussian splat, CT scan alternative?
5. **VHS tape integration:** If incorporated, how does it function — purely visual/tactile, or also sonic via electromagnetic pickup?
6. **Somax2 corpus:** How to record, edit, and format the barbershop/hair care recordings for Somax2 ingestion?
7. **Consent design:** If interpersonal interaction is included, what does a genuinely protective (not performative) consent mechanism look like in an installation context?

---

## The Instrument / Dissertation / Score Relationship

A key structural revelation (March 2026): the three modules are not installations or sculptures in the conventional gallery sense. They are:

- **Three instruments** — discrete, modular, each self-contained
- **One instrument** — when assembled into a shared performance console/housing with a surrounding speaker array
- **One composition** — *Organic Memory (Triptych)*, performed in sequence through the three modules, only by its maker
- **One dissertation** — whose structure is organic/non-formulaic, functioning as the *score* for the instrument/composition rather than documentation after the fact

The spatial layout of the three modules relative to each other and to the performer's body is still open — to be resolved through sketching and physical mockup. The performer's body should be drawn first; the instrument built around it.

**David Tudor** is the primary instrument-building reference: his philosophy that a piece written for "only something he could play" is not a limitation but a knowledge claim maps directly onto Speculocultural Technopoiesis. The cultural and embodied knowledge required to play this instrument cannot be separated from the person who holds it.

---

## Frameworks / References Active in This Work
- Speculocultural Technopoiesis (ST) — Woodland Jr. (dissertation framework)
- Sonic Interaction Design — Franinović & Serafin (2013)
- Research-Creation — Loveless (2019); Manning & Massumi (2014)
- Critical Technical Practice — Agre (1998)
- Afrofuturism / Black Speculative Traditions — Womack (2013), Nelson (2002)
- Sonic Fiction — Eshun (1999)
- Organic Music — Julius Eastman, *Femenine* (structural model for motif architecture)
- David Tudor — instrument-building philosophy; performer-as-instrument-maker; embodied knowledge inseparable from the instrument itself
- Race After Technology — Benjamin (2019)
- Post-phenomenology — Ihde (1990)
