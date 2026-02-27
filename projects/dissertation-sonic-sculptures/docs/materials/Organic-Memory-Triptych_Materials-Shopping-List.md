## Inventory: What You Already Have

Before listing needs, here is the confirmed existing hardware from the dissertation proposal:

**Microcontrollers:**  Teensy 4.1, ESP32-S3 WROOM, Adafruit HUZZAH32 Feather ESP32 V2

**Sensors:**  Piezoelectric Disks (27mm, 50mm), GY-MAX4466 Electret Mic Module, Adafruit MPR121 Capacitive Touch (12-channel), Seeed Studio Grove GSR Sensor

**Audio:**  Steinberg UR22C (2-in/2-out USB-C), Zoom H5 Studio Handy Recorder, Metal Marshmallow DIY-PH-29 Piezo Preamp Kit, AKG K371 Headphones

**MIDI/Control:**  Akai MPK Mini

**Connectors/Cables:**  SparkFun Qwiic 4-Port, 2.54mm Pin Headers, 3.5mm Aux Cables (3m)

**Tools/Materials:**  TS101 Soldering Iron, 24 AWG Solid Core Wire, Copper Conductive Tape (2-inch)

**Key Gap to note immediately:**  The UR22C is only 2-in/2-out. For 8-channel or ambisonics output, a multi-channel audio interface is **essential** and is the single most important acquisition across all three works.

---

## Priority Key

- 🔴 **ESSENTIAL** — Cannot proceed without this
- 🟠 **HIGH** — Core to the work's sonic/material identity
- 🟡 **EXPLORATORY** — Important but can be deferred or substituted

---

---

# Movement I: Buffalo Soldier

## Already Have (Applicable)

- Piezoelectric Disks (27mm + 50mm) ✓
- GY-MAX4466 Electret Mic Module ✓
- Metal Marshmallow Piezo Preamp Kit ✓
- Teensy 4.1 (for sensor data routing) ✓
- TS101 Soldering Iron ✓
- 24 AWG Wire, Copper Tape ✓
- Zoom H5 (field recording of substrate sounds) ✓

## Still Needed

### Audio / Spatialization

| Item                                                | Notes                                                                                                                                                                                  | Priority     |
| :-------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------- |
| **Multi-channel audio interface** (8+ outputs)      | The single most critical acquisition for the whole triptych. Options: MOTU UltraLite mk5 (10 out), Focusrite Scarlett 18i20 (18 out), RME Babyface Pro FS (12 out). Budget \~$400–$900 | 🔴 ESSENTIAL |
| **8 small full-range speakers**                     | For 8-channel spatial field. Options: Genelec 8010 (studio, expensive), Dayton Audio B652 (budget, \~$30/pair), or Yamaha HS5 (mid-range). Can start with 4 and expand.                | 🔴 ESSENTIAL |
| **Speaker stands or mounting hardware**             | For positioning speakers in spatial array                                                                                                                                              | 🟠 HIGH      |
| **Balanced XLR or TRS cables** (8x, \~3–6m)         | One per speaker output from interface                                                                                                                                                  | 🟠 HIGH      |
| **Ambisonics/spatialization software or externals** | IRCAM Spat\~ (free for Max), or spat5 package. Also consider IEM Plugin Suite (free, works in Reaper)                                                                                  | 🔴 ESSENTIAL |

### Physical Substrate / Sculpture

| Item                                          | Notes                                                                                                                                   | Priority       |
| :-------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **Additional wooden boxes** (2–3 more)        | Different sizes. Untreated/raw wood preferred — pine, oak, or reclaimed. Hardware store or lumber yard. Roughly 12"x8"x4" to 18"x12"x6" | 🟠 HIGH        |
| **Earth materials: soil, sand, gravel, clay** | Multiple types for different sonic characters. River rocks (smooth), rough stones, red clay soil, fine sand, coarse gravel              | 🟠 HIGH        |
| **Mesh or hardware cloth**                    | For covering box openings while allowing interaction — keeps materials in, hands can reach through                                      | 🟠 HIGH        |
| **Additional piezo disks** (x6–10 more)       | For multiple boxes with multiple sensors each. Cheap in bulk — \~$1–3 each                                                              | 🟠 HIGH        |
| **Foam or rubber mounting material**          | For isolating piezos from box walls (reduces structural noise, improves sensitivity to surface interaction)                             | 🟠 HIGH        |
| **Small hinges + latches**                    | If boxes have lids for transport/storage                                                                                                | 🟡 EXPLORATORY |

### Field Recording / Source Material

| Item                                                     | Notes                                                                                                                                                      | Priority       |
| :------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **Field recording session: outdoor earth sounds**        | Wind, distant thunder, actual soil/rock manipulation sounds. Zoom H5 already owned — just need time and location                                           | 🟠 HIGH        |
| **Historical data: bison migration maps**                | Already identified: buffalofieldcampaign.org. Need to extract coordinate/path data into usable format (CSV or similar) for spatialization mapping          | 🟠 HIGH        |
| **Historical data: Buffalo Soldier fort/camp locations** | US Army records, National Archives, Buffalo Soldiers National Museum resources. Extract to coordinate data                                                 | 🟠 HIGH        |
| **Field hollers / work songs recordings**                | For Somax2 corpus. Sources: Smithsonian Folkways (free streaming, some downloads), Library of Congress American Folklife Center (free), Alan Lomax Archive | 🟠 HIGH        |
| **Bugle call recordings**                                | Period-accurate US Cavalry bugle calls. Available via military history archives and YouTube (high quality recordings exist)                                | 🟡 EXPLORATORY |

### Electronics / Sensing

| Item                                | Notes                                                                      | Priority       |
| :---------------------------------- | :------------------------------------------------------------------------- | :------------- |
| **Additional electret mic modules** | For boxes that need internal ambient capture alongside piezos              | 🟡 EXPLORATORY |
| **Piezo "wand" materials**          | Dowel rod, piezo disc, shielded cable, 1/4" jack. DIY build — minimal cost | 🟡 EXPLORATORY |

---

---

# Movement II: Did Sun Ra Fear Cryosleep?

## Already Have (Applicable)

- Zoom H5 (for above-water recording during development) ✓
- Teensy 4.1 or ESP32 (for sensor data / conductivity measurement) ✓
- UR22C (for development; multi-channel interface needed for final) ✓

## Still Needed

### Hydrophones (Most Critical Acquisition for This Work)

| Item                                      | Notes                                                                                                                                                                                                                                         | Priority     |
| :---------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------- |
| **Hydrophones** (x3–6)                    | One per vessel minimum. Options: DolphinEar DE200 (\~$80 each, good sensitivity), Aquarian Audio H2a (\~$100, widely used in experimental music), JrF Hydrophones (\~$150, higher quality). For budget: Aquarian Audio H2a is the sweet spot. | 🔴 ESSENTIAL |
| **Hydrophone preamp**                     | Most hydrophones output low-level signal needing preamp before interface. Options: use existing Metal Marshmallow PH-29 (check impedance compatibility), or dedicated mic preamp.                                                             | 🔴 ESSENTIAL |
| **XLR cables** (waterproof strain relief) | Hydrophone cables need to exit vessels cleanly. Gland fittings or cable management for vessel edges                                                                                                                                           | 🟠 HIGH      |

### Vessels / Containers

| Item                                       | Notes                                                                                                                                                                                                                                                          | Priority       |
| :----------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **Glass/transparent vessels** (x4–6)       | The cryopod array. Options: large glass bowls (IKEA, \~$10–20), glass lab beakers (Amazon/scientific supply, \~$15–40 for 1–2L), glass cylindrical vases (floral supply, \~$10–25). Aim for varied sizes and shapes — some tall/cylindrical, some wide/shallow | 🟠 HIGH        |
| **Dark display surface / table**           | Matte black surface for vessels to sit on. Black-painted plywood, or black fabric-covered table. Vessels should appear to float on darkness                                                                                                                    | 🟠 HIGH        |
| **Vessel mounting / positioning hardware** | Stands, risers, or custom mounts so vessels can be at different heights (reinforcing vertical spatialization concept physically)                                                                                                                               | 🟡 EXPLORATORY |
| **LED lighting for vessels**               | Subtle underlighting or edge lighting. Waterproof LED strip (IP67 rated), warm white or deep blue. \~$15–30 for a strip                                                                                                                                        | 🟡 EXPLORATORY |

### Dissolving Artifacts

| Item                                  | Notes                                                                                                                                                              | Priority       |
| :------------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **Effervescent/dissolving materials** | Alka-Seltzer tablets, bath bomb bases (unscented), salt tablets, sugar cubes, water-soluble paper (Dissolvo brand), compressed chalk                               | 🟠 HIGH        |
| **Mold-making materials**             | For custom artifact casting. Silicone mold putty (\~$20–30), plaster of Paris, beeswax, pigment powders. Allows control over dissolution rate and visual character | 🟠 HIGH        |
| **Symbolic casting materials**        | Items to embed in wax/plaster molds: small bones (craft supply), seeds, soil, thread, hair. These give artifacts material memory                                   | 🟠 HIGH        |
| **Water-soluble dye/pigment**         | Food coloring or watercolor pigment — makes dissolution visually dramatic without contaminating water badly                                                        | 🟡 EXPLORATORY |

### Sensors (Water)

| Item                                        | Notes                                                                                                                                                                                                                         | Priority       |
| :------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **Conductivity/TDS sensor**                 | Measures dissolved solids in water — tracks dissolution in real-time as a data stream. Atlas Scientific EZO-EC (\~$150, high quality) or cheaper TDS meter module (\~$5–10 for basic). This becomes a compositional parameter | 🟠 HIGH        |
| **Waterproof temperature sensor** (DS18B20) | Cheap (\~$3–5), useful for tracking thermal changes during dissolution                                                                                                                                                        | 🟡 EXPLORATORY |
| **Turbidity sensor**                        | Measures water clarity — another dissolution metric. DFRobot turbidity sensor (\~$15)                                                                                                                                         | 🟡 EXPLORATORY |

### Source Material / Corpus

| Item                                    | Notes                                                                                                                                               | Priority       |
| :-------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **NASA sonification data/audio**        | NASA Eyes on the Solar System, NASA SoundCloud (free), Voyager recordings, solar wind data. Already publicly available — need curation and download | 🟠 HIGH        |
| **Water-imagery spirituals recordings** | "Wade in the Water," "Deep River," "Go Down Moses" — historical recordings from Smithsonian Folkways, Library of Congress. For Somax2 corpus        | 🟠 HIGH        |
| **Ocean/ship ambient recordings**       | Freesound.org (Creative Commons), or field recording. Atlantic Ocean recordings specifically if possible                                            | 🟡 EXPLORATORY |

### Visual Component (Optional but Noted)

| Item                           | Notes                                                                                                       | Priority       |
| :----------------------------- | :---------------------------------------------------------------------------------------------------------- | :------------- |
| **Small projector or monitor** | For microscopic/archival imagery. Short-throw projector (\~$200–400) or repurposed monitor. Can be deferred | 🟡 EXPLORATORY |
| **USB microscope**             | For real-time close-up of dissolution. Plugs into laptop. \~$30–80. Could feed live video to projection     | 🟡 EXPLORATORY |

---

---

# Movement III: Don't Play with My Hair

## Already Have (Applicable)

- Adafruit MPR121 Capacitive Touch Sensor (12-channel) ✓
- ESP32-S3 or Teensy 4.1 (for sensor processing) ✓
- AKG K371 Headphones (for intimate headphone listening option) ✓
- UR22C (sufficient for stereo/headphone output for this work) ✓
- Copper Conductive Tape (for capacitive touch surfaces) ✓

## Still Needed

### The Hair Proxy / Interaction Object

| Item                             | Notes                                                                                                                                                                                                                     | Priority     |
| :------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | :----------- |
| **Wig form / head form**         | Styrofoam or canvas wig head (\~$10–20, craft/beauty supply). This is the sculptural base for the interaction object                                                                                                      | 🔴 ESSENTIAL |
| **Hair material**                | Options: (A) actual human hair — wig or hair extensions, type 3/4 curl pattern (beauty supply, \~$20–60); (B) synthetic hair with similar texture; (C) combination. The material should be *real enough* to feel intimate | 🔴 ESSENTIAL |
| **Capacitive touch wire/thread** | Conductive thread (Adafruit, \~$10) woven through hair strands to extend MPR121 sensing into the hair itself. Creates touch sensitivity distributed through the hair                                                      | 🟠 HIGH      |
| **Proximity sensor**             | For detecting hands approaching before contact. Options: Adafruit APDS-9960 gesture/proximity sensor (\~$8), or IR proximity sensor. Adds pre-touch sensitivity layer                                                     | 🟠 HIGH      |
| **Enclosure/base for head form** | The head form needs a stable, aesthetically considered base. Options: turned wood base, cast concrete, welded metal. Should feel deliberate, not like a wig stand                                                         | 🟠 HIGH      |

### VHS Tape / Archival Material Element

| Item                                              | Notes                                                                                                                                                                                | Priority       |
| :------------------------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **VHS tapes**                                     | Thrift stores, eBay (\~$1–5 each). The magnetic tape itself is the material — can be extracted from cassette housing. Black, ribbon-like, magnetic                                   | 🟡 EXPLORATORY |
| **Electromagnetic pickup / circuit sniffer coil** | For sonifying the magnetic tape directly. DIY build (coil of wire + preamp) or commercial: LOM Elektrosluch (\~$60), or Soma Ether (\~$100). Connects to existing piezo preamp chain | 🟡 EXPLORATORY |

### Computer Vision / Capture

| Item                                       | Notes                                                                                                                                                                                                                                                                                    | Priority |
| :----------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------- |
| **Webcam or USB camera** (high resolution) | For real-time gesture/hair capture. Logitech C920 or C922 (\~$60–80) — good low-light performance, widely supported in Max/MSP via `jit.grab`. Already may have one — check                                                                                                              | 🟠 HIGH  |
| **Consistent lighting setup**              | Small ring light or softbox for consistent CV capture conditions. \~$20–40                                                                                                                                                                                                               | 🟠 HIGH  |
| **Type 4 hair CT/scan data**               | The proposal notes this gap. Options: (A) commission or find existing medical/scientific hair structure scans; (B) photogrammetry of your own hair using phone + Polycam or similar app; (C) Gaussian splat capture using iPhone LiDAR + Luma AI (free app). Option C is most accessible | 🟠 HIGH  |

### Gaussian Splat / Visual Component

| Item                       | Notes                                                                                                                                          | Priority       |
| :------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------- | :------------- |
| **Luma AI or Polycam app** | Free/low-cost Gaussian splat capture on iPhone. Capture your own hair. Export to 3DGS format for use in TouchDesigner or Unity                 | 🟠 HIGH        |
| **Secondary display**      | Small monitor or tablet showing the Gaussian splat visualization responding to touch. iPad (\~$300–400 used) or small HDMI monitor (\~$80–120) | 🟡 EXPLORATORY |

### Corpus / Source Material

| Item                                    | Notes                                                                                                                                                | Priority     |
| :-------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------- | :----------- |
| **Barbershop ambient recordings**       | Field recording session at a Black barbershop (with permission). Clippers, conversation, music, laughter. Zoom H5 already owned                      | 🟠 HIGH      |
| **Hair care oral tradition recordings** | Can be self-recorded: narrate or record the sounds of your own hair care routine. Washing, conditioning, detangling, styling. Intimate, first-person | 🟠 HIGH      |
| **Clipper/buzzer recordings**           | Multiple clipper types at different guard lengths and speeds. Close-mic with H5 or contact mic. This is the motif's timbral source                   | 🔴 ESSENTIAL |

---

---

# Shared Infrastructure (Across All Three Works)

These items serve the triptych as a whole and should be acquired once rather than per-work:

| Item                                         | Notes                                                                                                                                                                                                                                                         | Priority                      |
| :------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | :---------------------------- |
| **Multi-channel audio interface** (8–18 out) | Already listed under Buffalo Soldier but applies to all. Single most important purchase. Recommendation: **Focusrite Scarlett 18i20** (\~$500) for 8 analog outputs + ADAT expandability, or **MOTU UltraLite mk5** (\~$650) for more flexibility. Both USB-C | 🔴 ESSENTIAL                  |
| **Somax2 setup + Max package**               | Free download, runs in Max. Need to build corpora for all three movements. Time investment more than cost                                                                                                                                                     | 🔴 ESSENTIAL                  |
| **Laptop with sufficient RAM/CPU**           | Somax2 + Max + TouchDesigner simultaneously is demanding. 16GB RAM minimum, 32GB preferred. Check your current machine's specs                                                                                                                                | 🔴 ESSENTIAL (check existing) |
| **External SSD** (1TB+)                      | For audio corpora, video files, Gaussian splat data, field recordings. Samsung T7 (\~$80–100)                                                                                                                                                                 | 🟠 HIGH                       |
| **Cable management / organization**          | Velcro ties, cable labels, cable raceways. Critical for installation presentation                                                                                                                                                                             | 🟠 HIGH                       |
| **Soldering supplies**                       | Solder (rosin core, 60/40), flux, helping hands, desoldering wick. Supplement existing TS101 kit                                                                                                                                                              | 🟠 HIGH                       |
| **Breadboards + jumper wire kit**            | For prototyping sensor circuits before final build. Multiple sizes                                                                                                                                                                                            | 🟠 HIGH                       |
| **Enclosure materials**                      | Project boxes (Hammond Manufacturing), heat shrink tubing, hot glue gun for cable strain relief                                                                                                                                                               | 🟠 HIGH                       |
| **Documentation camera setup**               | For autoethnographic video documentation of practice sessions. Tripod + phone mount, or webcam on articulating arm. Already have H5 for audio documentation                                                                                                   | 🟠 HIGH                       |

---

---

# Rough Budget Tiers

This is approximate and assumes some items are sourced used/discounted:

| Tier                    | Items                                                                                                           | Estimated Range |
| :---------------------- | :-------------------------------------------------------------------------------------------------------------- | :-------------- |
| **Absolute Essentials** | Multi-channel interface, hydrophones (x4), speakers (x4 minimum), ambisonics software, wig form + hair material | $700 – $1,200   |
| **Core Build**          | All ESSENTIAL + HIGH items across three works                                                                   | $1,500 – $2,500 |
| **Full Realization**    | All items including EXPLORATORY                                                                                 | $2,500 – $4,000 |

**Cost reduction strategies:**

- Borrow/rent speakers from Drexel's equipment pool (Westphal likely has PA speakers, studio monitors)
- Check if Drexel has multi-channel interfaces available for loan (recording studios often do)
- Hydrophones can be DIY-built for \~$20–30 each (piezo disc in epoxy-sealed housing) — sacrifices some quality but functional for development
- Vessels, earth materials, and dissolving artifacts are low-cost
- Most corpus material (Smithsonian Folkways, Library of Congress, NASA) is free

---

# Immediate First Purchases (This Week)

If you were to order today, these are the items that unlock the most development across all three works simultaneously:

1. **Multi-channel audio interface** — unlocks spatial audio development for Buffalo Soldier and vertical mixing for Did Sun Ra
2. **Hydrophones x3** (Aquarian Audio H2a) — unlocks Did Sun Ra experimentation entirely
3. **Additional wooden boxes + earth materials** — unlocks Buffalo Soldier physical development
4. **Wig form + hair material** — unlocks Don't Play with My Hair physical interaction development
5. **Dissolving artifact materials** (wax, plaster, salt, water-soluble paper) — low cost, immediate experimentation for Did Sun Ra

Everything else can follow in sequence.
