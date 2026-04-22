# Dissolution Sphere: Materials Research & Techniques
**Movement II — Did Sun Ra Fear Cryosleep?**
Darren Woodland Jr. | PhD Dissertation Research
*Speculocultural Technopoiesis — Research-Creation*
March 2026 | v0.1

---

## Conceptual Stakes

The dissolution sphere is not decoration or prop — it *is* the instrument. Its material composition determines the sonic events the hydrophone captures, the sensor data the ESP32 transmits, and the granular cloud the RNBO patch generates. The choice of clay, salt, pigment, and binder is an act of Speculocultural Technopoiesis: selecting materials with cultural resonance (obsidian, earth tones, water-soluble minerals from Black geographies) and encoding that resonance into the acoustic logic of the piece.

The sphere format is deliberate: spherical objects dissolve from the outside in, creating a temporal arc — intact surface, then fracture, then dissolution, then suspension, then settling. This arc is the score.

---

## Part I — The Binding Framework: Bath Bomb Chemistry

The most practical and field-tested approach for forming dense, stable spheres that dissolve on water contact is the **bath bomb method**. This is a well-established craft chemistry technique that accepts a wide range of additives.

### Base Formula (by volume ratio)
```
2 parts  — Baking soda (NaHCO₃)        [structural mass + effervescent base]
1 part   — Citric acid                  [triggers CO₂ effervescence on water contact]
0.5 part — Cornstarch                   [slows reaction, adds body, improves mold release]
Small amount — Coconut oil OR cocoa butter [binder: holds mixture together, melts in water]
```

**How it works:** Dry, the baking soda and citric acid are inert — they only react in the presence of water. The oil/butter binder holds the compressed powder in sphere form. On contact with water, the acid-base reaction produces CO₂ gas (fizzing) while the binder melts and releases the structural additives (clay, salt, pigment) into suspension.

### Sphere Molding Process
1. Mix all dry ingredients thoroughly before adding oil (any moisture triggers premature reaction)
2. Add oil dropwise while mixing — the mixture should hold its shape when squeezed but crumble when pressed hard ("wet sand" consistency)
3. Pack firmly into silicone sphere molds (ice sphere molds, 2.5"–3" diameter work well)
4. Overfill each half slightly, press together firmly, clear excess from seam
5. Let cure 24–48 hours at room temperature, away from humidity
6. Pop from mold carefully — spheres are firm but not rock-hard

### Key Cautions
- **Avoid Epsom salts and Dead Sea salts** in the bath bomb base — magnesium content draws atmospheric moisture and triggers premature fizzing during curing
- **Work in low-humidity conditions** — even ambient moisture can start the reaction
- **Don't add water directly** — all liquids should be oils; color should be dry powder pigment, not liquid dye
- **Coconut oil melts at ~76°F** — cocoa butter (melts ~93°F) is more stable in warm room conditions and produces a firmer sphere

---

## Part II — Structural & Acoustic Layers

These materials are compressed into the bath bomb base and determine the dissolution profile, acoustic character, and sensor response of each sphere.

### 2.1 Clay Types

Clay particles create turbidity (affecting the turbidity sensor) and produce distinct acoustic signatures as they suspend, settle, and interact with the vessel walls. Different clays have measurably different acoustic attenuation and scattering profiles in water — kaolinite particles are larger and scatter/attenuate more signal than bentonite at the same concentration.

| Clay | Dissolution Profile | Acoustic Signature | Sensor Effect | Notes |
|------|--------------------|--------------------|---------------|-------|
| **Bentonite** | Swells first (expands 10–15x), then slowly disperses | Low-frequency, slow — swelling creates sustained pressure micro-events | Gradual TDS rise; high turbidity due to colloidal suspension | Dark grey/brown color; excellent for slow temporal arcs; thixotropic gel phase is sonically unique |
| **Kaolin (China clay)** | Rapid fine-particle suspension, very little swelling | Higher frequency scatter as fine particles release; "whispering" character | Moderate TDS; distinct turbidity peak then gradual clearing | White/cream color; fast visual effect; well-documented acoustic spectroscopy |
| **Ball clay** | Similar to kaolin but finer, more plastic | Fine-grained suspension sounds, slightly denser than kaolin | Similar to kaolin, slightly higher TDS | Dark grey-brown naturally; adds earth tone without pigment |
| **Red earthenware clay** | Medium; partly dissolves, partly suspends | Mid-range scatter events; good complexity | Moderate turbidity; TDS rise from dissolved minerals | Iron oxide content natural — earth red color |

**Recommendation for initial testing:** Start with **bentonite** (dramatic, slow, sonically rich swelling phase) and **kaolin** (fast, visually clean, well-understood) as contrasting poles.

### 2.2 Salt Types

Salt raises TDS dramatically and immediately — the TDS sensor will see a sharp spike on dissolution. Different salts have different crystal structures that create different acoustic events as they fracture and dissolve.

| Salt | Dissolution Rate | Acoustic Notes | Visual / Sensor Notes |
|------|-----------------|----------------|----------------------|
| **Himalayan pink salt (fine)** | Fast | Crackling fracture sounds as crystals break; high-frequency events | Pink/rose tint to water; sharp TDS spike |
| **Himalayan pink salt (coarse)** | Slow to medium | Longer fracture arc; individual crystal events audible | Visual drama as large crystals shift and fragment |
| **Black Hawaiian sea salt** | Fast | Similar to Himalayan; activated charcoal carrier adds suspension events | Dense black color bleed; very high visual impact; TDS spike with turbidity increase from charcoal |
| **Fleur de sel / sea salt flakes** | Fast | Delicate, layered fracture sounds; flake structure | Clean, no color |
| **Rock salt (coarse)** | Slow | Grinding, structural sounds; very low frequency as large crystals shift | Minimal color; maximum acoustic drama |

**Note:** Fine vs. coarse grain of the same salt produces completely different hydrophone events. Testing both granularities is worthwhile.

**Avoid:** Epsom salts and Dead Sea salts in the sphere base (see § 1 above). These can be used in separate test recordings outside the sphere context.

### 2.3 Sugar Types

Sugar adds a secondary fast-dissolving layer that interacts with the slower clay and salt dissolution. Dissolves fully (no suspension), creating a brief TDS spike before the clay/salt dynamics take over.

| Sugar | Dissolution Rate | Notes |
|-------|-----------------|-------|
| **Brown sugar (fine)** | Very fast | Warm caramel color briefly; treacle-like cloudiness on initial contact |
| **Demerara / turbinado (large crystals)** | Medium | Individual crystal fracture events; amber color flash |
| **Jaggery (unrefined cane)** | Medium-slow | Dark brown, complex; earthy aroma; minerals create longer TDS response |
| **Muscovado (dark)** | Fast | Deep brown; complex molasses flavor; interesting early acoustic events from high moisture content |

**Note:** Muscovado and jaggery have higher natural moisture content — use sparingly in the bath bomb base or they may trigger premature reaction. Best added as a compressed layer rather than mixed into the base.

---

## Part III — Color & Visual Bleed

These are the pigments that create the obsidian black and earth tone bleeding effects. All should be used as **dry powder** in the bath bomb base — not liquid dye — to prevent premature triggering.

### 3.1 Activated Charcoal (Obsidian Black)

The primary agent for the obsidian black bleed. Fine-particle activated carbon suspends beautifully in water, producing dense ink-like plumes that shift and eddy with water movement. It does not fully dissolve — it suspends, then slowly settles, creating a long visual arc.

- **Safe, non-toxic, food-grade** activated charcoal powder
- Used at **1–3% by weight** of the sphere mass (a little goes a long way)
- The turbidity sensor will register significant opacity change — this is mappable to synthesis parameters
- Adsorbs some ions, which may slightly affect TDS readings — account for this in calibration
- **Source:** Food-grade activated charcoal powder (bulk herb/supplement suppliers; Amazon); also available at Brambleberry and other soap supply retailers

### 3.2 Iron Oxide Pigments (Earth Tones)

Cosmetic-grade iron oxide pigments are the standard for natural earth tones. They are non-toxic, non-reactive in water, fine-particle suspended, and produce the characteristic red ochre, yellow ochre, and near-black sienna/umber tones of earth pigmentation.

| Pigment | Color | Behavior in Water |
|---------|-------|-------------------|
| **Red iron oxide (CI 77491)** | Red ochre to deep terracotta | Suspended plume, warm red cloud; settles slowly |
| **Yellow iron oxide (CI 77492)** | Ochre to golden yellow | Light suspension; warm tone |
| **Black iron oxide (CI 77499)** | Near-black, brownish-black | Dense suspension; combines with charcoal for depth |
| **Brown iron oxide (blend)** | Burnt umber, earth brown | Complex; typically red + black + yellow blend |

**Usage:** 1–5% by weight in sphere base. Cosmetic-grade from soap supply retailers (Brambleberry, Wholesale Supplies Plus, The Soap Kitchen).

**Important:** Red iron oxide has a known tendency to bleed when ground finely in oil — this is normally a defect in cosmetic use, but for this piece it is a *feature*. The bleed/feather behavior in water is exactly the visual signature desired.

### 3.3 Mica / Pearlescent Pigments (Optional)

Interference mica pigments (cosmetic-grade) produce shimmer and iridescence in water. In the context of the cryosleep theme — temporal suspension, transformation — the interference shimmer reads as depth and otherworldliness. Use sparingly as an accent.

- **Pearl white mica** — ghostly, luminescent
- **Interference blue or violet** — shifts color depending on viewing angle
- **Gold / bronze mica** — warm, mineral warmth

Mica does not dissolve — it remains in suspension, creating a slowly settling reflective haze. The turbidity sensor will register it.

---

## Part IV — Shell & Delay Techniques

### 4.1 Beeswax Outer Shell (Delayed Onset)

A thin beeswax coating on the exterior of the cured sphere creates a waterproof barrier that delays the initial dissolution. The sphere sits in water with nothing happening for 15–60 seconds (depending on wax thickness), then the wax softens at the water surface contact line, cracks, and the interior suddenly begins to react. This dramatic delayed onset is a compositional event — a sustained silence before the acoustic cascade begins.

**Technique:**
1. Melt food-grade beeswax in a double boiler to ~160°F
2. Dip cured sphere quickly (1–2 seconds) and withdraw — the beeswax coats instantly
3. Let cool completely (2–3 minutes)
4. Repeat for thicker shell / longer delay

**Wax thickness → delay time (rough guide):**
- Single dip: ~15–30 second delay
- 3 dips: ~45–90 second delay
- 5+ dips: 2+ minutes delay

### 4.2 Layered Sphere Composition

Rather than mixing all materials uniformly, a layered approach creates temporal complexity: different materials at different depths of the sphere dissolve sequentially as the outer layers erode.

**Example layer sequence (outside → in):**
1. **Beeswax shell** — waterproof delay layer
2. **Activated charcoal + bentonite outer layer** — first visual event: black bleed + swelling
3. **Salt + brown sugar mid-layer** — TDS spike, crackling acoustic events
4. **Kaolin + iron oxide inner core** — final white/ochre cloud as sphere fully dissolves

**Construction:** Fill mold halfway, compact and cure partially (6–8 hours), add next layer on top, compact, complete curing.

---

## Part V — Prototype Recipes

Three specific formulations recommended for initial testing sessions, ordered by complexity.

### Recipe A: "The Swelling Dark" (Test First)
*Focus: Bentonite swelling + charcoal bleed. Simple, dramatically slow.*
```
Base:
  2 tsp  baking soda
  1 tsp  citric acid
  ½ tsp  cornstarch
  ½ tsp  coconut oil (melted)

Additives:
  1 tsp  bentonite clay
  ⅛ tsp  activated charcoal powder
  ¼ tsp  black iron oxide

Expected behavior:
  — Slow initial swelling (bentonite hydration)
  — Dense black-grey bleed from charcoal + iron oxide
  — Gradual CO₂ effervescence underneath the expanding clay layer
  — Long dissolution arc (10–20+ minutes)
  — Turbidity sensor: high and sustained
  — TDS sensor: gradual rise, peaks late
```

### Recipe B: "Crackling Salt" (Test Second)
*Focus: Coarse salt fracture acoustics + fast effervescence. High hydrophone yield.*
```
Base:
  2 tsp  baking soda
  1 tsp  citric acid
  ½ tsp  cornstarch
  ½ tsp  cocoa butter (melted, firmer binder for salt's weight)

Additives:
  1 tsp  coarse Himalayan pink salt (keep crystals intact, don't grind)
  ½ tsp  kaolin clay
  ¼ tsp  red iron oxide
  ⅛ tsp  activated charcoal

Expected behavior:
  — Fast, dramatic CO₂ effervescence
  — Salt crystal fracture events: high-frequency crackling (rich hydrophone material)
  — Rose-red water from iron oxide bleed
  — Black accent plumes from charcoal
  — Turbidity: peaks fast then clears (kaolin settles, salt dissolves fully)
  — TDS sensor: sharp, fast spike
```

### Recipe C: "Black Water Composite" (Layered — Test Third)
*Focus: Layered temporal arc, full visual drama, controlled delay.*
```
Outer layer (fill mold ⅓):
  1 tsp  baking soda
  ½ tsp  citric acid
  ¼ tsp  cornstarch
  ¼ tsp  coconut oil
  ½ tsp  activated charcoal
  ¼ tsp  black iron oxide
  → Cure 8 hours

Middle layer (fill mold ⅔):
  1 tsp  baking soda
  ½ tsp  citric acid
  ¼ tsp  cornstarch
  ¼ tsp  coconut oil
  ½ tsp  coarse rock salt
  ¼ tsp  brown sugar
  → Cure 8 more hours

Core (fill mold):
  1 tsp  baking soda
  ½ tsp  citric acid
  ¼ tsp  cornstarch
  ¼ tsp  coconut oil
  ½ tsp  bentonite clay
  ¼ tsp  red iron oxide
  ½ tsp  yellow iron oxide
  → Cure 24 hours, then apply 3 beeswax dips

Expected behavior:
  — 45–90 second silent hold (beeswax)
  — Black exterior bleed begins suddenly
  — Salt/sugar layer: crackling acoustic cascade + TDS spike
  — Inner clay core: sustained swelling, red-ochre cloud emerges last
  — Full dissolution arc: ~20–40 minutes
```

---

## Part VI — Dissolution Profile Comparison

| Sphere Type | Acoustic Character | Visual Arc | TDS Profile | Turbidity Profile | Ideal Mapping |
|------------|-------------------|------------|-------------|-------------------|---------------|
| Bentonite-dominant | Low-frequency sustained; gel-phase micro-events | Slow grey cloud, long dwell | Gradual rise | High, sustained | Grain density / cloud size |
| Kaolin-dominant | Fine scatter; "whispering" | Fast white cloud, quick clearing | Moderate | Sharp peak + clear | Playback position / time-stretch |
| Salt-dominant (coarse) | High-frequency crackle; structural fracture | Minimal color; optical clarity rises | Sharp fast spike | Low | Transposition / pitch shift |
| Charcoal-dominant | Effervescence through black cloud; suspension crinkle | Dense black ink-bleed | Moderate (charcoal adsorbs some ions) | Very high, sustained | Grain size / density |
| Layered composite | Temporal sequence of above | Sequential visual events | Step-wise increases | Multiple peaks | Multiple param mapping |

---

## Part VII — Materials Order List

Items to order alongside the electronics purchase. All estimated at current online retail.

### Binding & Base
| Item | Source | Est. Cost | Notes |
|------|--------|-----------|-------|
| Baking soda (bulk, 5 lb) | Amazon / grocery | $8–10 | Standard; arm & hammer fine |
| Citric acid (food-grade, 1 lb) | Amazon / homebrew supply | $8–12 | Fine ground |
| Cornstarch (1 lb) | Grocery | $3–5 | Any brand |
| Refined coconut oil (8 oz) | Grocery / Amazon | $8–10 | Refined = no coconut scent |
| Cocoa butter wafers (4 oz) | Brambleberry / Amazon | $6–8 | Higher melt point than coconut oil |
| Food-grade beeswax pellets (4 oz) | Amazon / craft store | $8–12 | Pellets melt faster than blocks |

### Clays
| Item | Source | Est. Cost | Notes |
|------|--------|-----------|-------|
| Bentonite clay powder (8 oz) | Brambleberry / Amazon | $5–8 | Cosmetic or food-grade; both fine |
| Kaolin clay powder (8 oz) | Brambleberry / Bulk Apothecary | $4–6 | White cosmetic kaolin |
| Ball clay (small sample) | Sheffield Pottery / Amazon | $5–10 | Often sold for ceramics; get small amount for testing |

### Salts (for spheres — NOT Epsom or Dead Sea)
| Item | Source | Est. Cost | Notes |
|------|--------|-----------|-------|
| Himalayan pink salt, fine (8 oz) | Grocery / Amazon | $4–6 | Fine grind for uniform distribution |
| Himalayan pink salt, coarse (8 oz) | Grocery / Amazon | $4–6 | Coarse for fracture acoustics |
| Black Hawaiian sea salt (4 oz) | Amazon / specialty food | $6–10 | Activated charcoal carrier; double duty |
| Fleur de sel or sea salt flakes (4 oz) | Grocery / specialty food | $6–10 | Delicate fracture character |

### Sugars
| Item | Source | Est. Cost | Notes |
|------|--------|-----------|-------|
| Demerara / turbinado sugar (8 oz) | Grocery | $4–6 | Large crystals; fracture events |
| Dark muscovado sugar (4 oz) | Specialty grocery / Amazon | $5–8 | High moisture — use sparingly |
| Jaggery (4 oz block) | Indian/South Asian grocery | $3–5 | Unrefined; earth mineral content |

### Pigments & Color
| Item | Source | Est. Cost | Notes |
|------|--------|-----------|-------|
| Activated charcoal powder, food-grade (2 oz) | Amazon / Brambleberry | $6–10 | Fine particle; not capsules |
| Red iron oxide, cosmetic-grade (1 oz) | Brambleberry / Wholesale Supplies Plus | $3–5 | CI 77491 |
| Yellow iron oxide, cosmetic-grade (1 oz) | Brambleberry / Wholesale Supplies Plus | $3–5 | CI 77492 |
| Black iron oxide, cosmetic-grade (1 oz) | Brambleberry / Wholesale Supplies Plus | $3–5 | CI 77499 |
| Pearl white mica (1 oz) | Brambleberry / TKB Trading | $3–5 | Optional; cryosleep shimmer |
| Interference blue mica (1 oz) | TKB Trading / Amazon | $4–6 | Optional; deep water shimmer |

### Molds & Tools
| Item | Source | Est. Cost | Notes |
|------|--------|-----------|-------|
| Silicone sphere ice molds, 2.5" (set of 6) | Amazon | $10–15 | Tovolo or similar; silicone releases easily |
| Silicone sphere molds, 2" (smaller) | Amazon | $8–12 | For variety in sphere size |
| Digital kitchen scale (0.1g precision) | Amazon | $10–15 | Essential for consistent recipes |
| Nitrile gloves (box) | Hardware / Amazon | $10–15 | Iron oxide and charcoal stain |
| Small mixing bowls (set) | Dollar store / existing | $5–10 | Dedicated for pigment work |
| Double boiler or heat-safe bowl | Existing / dollar store | $0–10 | For beeswax melting |

### **Estimated Total (Materials):** $140–200

---

## Part VIII — Testing Protocol

### Session 1: Baseline Acoustics (Before Electronics Arrive)
*Can do this with Zoom H5 and any container. No ESP32 needed.*

1. Mix Recipe A and B as small test batches (½ quantities)
2. Drop into a glass bowl of water; record above-water audio with H5
3. Drop a hydrophone (or improvised contact mic) into the vessel
4. Note: the H5 has a hydrophone option via its mic input — check Metal Marshmallow PH-29 impedance compatibility
5. **Document:** dissolution rate, visual events, acoustic events, subjective impressions

### Session 2: Sensor Calibration (Once ESP32 + Grove Sensors Arrive)
1. Establish baseline readings in clean water (TDS, turbidity, temp)
2. Drop Recipe A sphere — log full sensor curve over complete dissolution
3. Drop Recipe B sphere — compare sensor curve profile
4. Identify which parameters produce the most *compositionally useful* variation
5. Map: TDS range → grain density range; turbidity range → playback position range; temp → transposition range

### Session 3: Composition Tests (Max/RNBO Patch Running)
1. Drop sphere, observe how granular parameters respond to sensor data
2. Adjust mapping curves: linear vs. exponential vs. logarithmic response
3. Identify which sphere recipe produces the most musically interesting sonic arc
4. Film for documentation and dissertation process log

### Session 4: Wax Shell Tests
1. Apply 1, 3, and 5 beeswax dips to identical spheres
2. Time the delay onset for each
3. Record the cracking/fracture moment acoustically — this is a key sonic event
4. Determine preferred delay duration for the piece's temporal structure

---

## References & Sources

- Brambleberry Bath Bomb Molding Guide: https://www.brambleberry.com/bath-and-body/bath-bomb-molding-tips.html
- Wholesale Supplies Plus — Bath Bomb Formulation: https://www.wholesalesuppliesplus.com/handmade101/learn-to-make-articles/formulating-perfect-bath-bombs.aspx
- Acoustic measurements of clay-size particles (JASA): https://pubs.aip.org/asa/jasa/article/126/6/EL190/627003/
- Characterization of kaolin dispersion using acoustic spectroscopy (ResearchGate): https://www.researchgate.net/publication/47393784
- Acoustic properties of aqueous suspensions of clay and calcium carbonate (ScienceDirect): https://www.sciencedirect.com/science/article/abs/pii/002197979090146F
- Iron Oxide Pigments — properties and behavior: https://www.911metallurgist.com/blog/iron-oxide-pigments/
- Natural Pigments and Suspension Media: https://www.skillshare.com/en/blog/drawn-from-nature-a-guide-to-natural-pigments/
- Drawing using pigments suspended in water: http://fineartdrawinglca.blogspot.com/2018/06/drawing-using-pigments-suspended-in.html
