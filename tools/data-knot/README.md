# Data Knot - Machine Learning tools for low latency real-time performance
Data Knot is a set of machine learning tools that are optimized for low latency and real-time performance. The tools can be used with any type of audio input, including optimizations for [Sensory Percussion](http://sunhou.se) sensors and ordinary drum triggers.

Data Knot includes low latency onset detection, onset-based and real-time descriptor analysis, classification and clustering, regression and prediction, corpus analysis and querying, synthesis and modeling, audio, data, and CV processing, and a slew of other abstractions that are optimized for low latency applications.

Data Knot is built around the [FluCoMa Toolkit](http://flucoma.org) and requires v1.0.9 or higher to be installed for this package to work.  

## Discord Server
You can join the Data Knot Discord server to keep up on future updates/news as well as make suggestions, share corpora and musical examples etc...  
[https://discord.gg/Vy2zuKQkqN](https://discord.gg/Vy2zuKQkqN)  

## Requirements
Max 8.6.5 or higher (Mac/Windows).  
FluCoMa v1.0.9 or higher - installed from Package manager or [here](https://github.com/flucoma/flucoma-max/releases/latest)  
All abstractions work in Windows, 64-bit, and M1/Universal Binary 2.  

## Useful Videos
[Intro to Data Knot](https://www.youtube.com/watch?v=iF-BwwEdrk4)  
[What's New in Data Knot v1.0](https://www.youtube.com/watch?v=1alVsrmSuEk)  
[Performance and Musical Examples](https://www.youtube.com/watch?v=rpSPZ40XamM)  

[Onset Detection Tutorial](https://www.youtube.com/watch?v=kjgr-g9pXmQ)  
[Descriptors Tutorial](https://www.youtube.com/watch?v=1KjZwNC49c4) 
[Creating a Corpus](https://www.youtube.com/watch?v=XqORfK4NBUo) 
[Classification Tutorial](https://www.youtube.com/watch?v=Sm7aWdD22pM) 
[Regression Tutorial](https://www.youtube.com/watch?v=RIX-0C5oEls) 
[Sensory Percussion Setup](https://www.youtube.com/watch?v=GcGU62Sj-vc) 

## Changelog
### Data Knot v1.0.1
* **BREAKING CHANGE** - `@enable` renamed to `@active` in `dk.datagranular`, keeping it in line with other parameter names elsewhere
* **BREAKING CHANGE** - `@roundrobin` now only has two options, `0` or `1`, removing the option to manually set how many values are used for the `@roundrobin` attribute
* added `dk.metro~`, a metro alternative with some quirky features
* added `dk.onsetdisplay~`, a UI utility for fine tuning `dk.onset~`
* added new buffer/list utilities (`dk.buf2list` and `dk.list2buf`) for changing formats from buffers/lists while remaining in the high-priority thread
* added a new `@extractmode` (sinusoidal decomposition) to `dk.transientextract~` via the `@extractmode sines` attribute
* added `@inputfilter` to all `dk.descriptors~` variants (`d.descriptorframe`, `dk.descriptors~`, `dk.descriptorsrt~`) that allows you to use the same filter messages as you would with `dk.filter`
* added new `@matchcount` attribute to `dk.controllermatch`, `dk.corpusmatch`, `dk.corpussampler~`, and `dk.gridmatch` that sets the number of matches that are returned as iterated items playing them back as a "chord"
* added new bending modes to `dk.databending` (`@jitter` for timing jitter, and `@repeat` for data repeating)
* added a new outlet to `dk.corpusmatch` and all other corpus-based objects (`dk.controllermatch`, `dk.gridmatch`, etc...)
* added new `dump` and `dumpdict` messages to all corpus-based objects that outputs the current entries (filtered or otherwise)
* added a new outlet to `dk.filter` which reports whether the criteria was met or not
* `dk.filter` now allows you to filter messages from `dk.spectralshape~` and it's variants (`dk.spectralframe`, `dk.spectralframert~`)
* `dk.filter` now accepts a `filter reset` message to clear the current filter
* `dk.regressorcreate~` now accepts messages for `fluid.mlpregressor~`, allowing you to fine tune the regressor settings as desired
* added new `@maxbuffertime` to `dk.onsetframe~` and `dk.realtimeframe~` for setting the recording time in the circular buffer
* added a new sample folder of CD-skipping samples (for `dk.metro~` helpfile)
* added 32 sample window analysis to `dk.setupcreate~` for future additions (you should reanalyze your setups)
* added new flags to `dk.classcreate` and `dk.clustercreate` for future additions and improved metadata accuracy (you should recreate your classifications)
* all files that load `.json` files will now check to see if the right type of file is being loaded and throw an error if not (e.g. loading a concat analysis `.json` into `dk.corpusmatch`)
* all descriptor objects (`dk.descriptors~`, `dk.melbandframe`, `dk.classspectralshape~`, etc...) now return buffer names that reflect the contains of the buffer (e.g. `22233descriptorbuffer`)
* all synthesis algorithms (`dk.avdog~`, `dk.rungler~`, etc...) can how accept all the `@outputmode` options (`iterated`, `lacedlist`, `rawlist`) from `dk.regressor`
* all synthesis algorithms (`dk.avdog~`, `dk.rungler~`, etc...) can now accept the output from the `dump` outlet of the same algorithm directly for chaining synths or for manually storing the preset `dict` for recalling
* you can now stop and restart training in `dk.classcreate`, allowing you to build up the classes slowly rather than having to do them all at once
* `dk.filter` will now accept arguments in addition to `@filter` attributes, simplifying using `dk.filter`
* `dk.plotter` can how highlight multiple items at once
* `dk.corpusplayer~` / `dk.sampler~` should respond more quickly to `killall` and `stop` messages
* added more clarification for creating a `dict` for your own synthesis algorithm in the `dk.regressorcreate~` helpfile
* fixed a bug where many corpus loading objects were not properly filtering based on `index`


### Data Knot v1.0 - [What's New in Data Knot v1.0](https://www.youtube.com/watch?v=1alVsrmSuEk)
* **BREAKING CHANGE** - Project name changed from SP-Tools to Data Knot. All abstraction names changed from `sp.*` to `dk.*`.
* **BREAKING CHANGE** - `dk.corpusconvolver~` now contains internal onset and descriptor analysis, no longer requiring input from `dk.descriptors~`
* **BREAKING CHANGE** - `@xy` renamed to `@xyout` in `dk.gridscale` allowing for more scaling options
* **BREAKING CHANGE** - `@ramp` renamed to `@ramptime` in `dk.scatter~`, `dk.scramble~`, and `dk.waveguidemesh~` to disambiguate it from a synthesis parameter
* **BREAKING CHANGE** - `@absolutelength` renamed to `@lengthabsolute` in `dk.triggerlength~` keeping it consistent with the order of words elsewhere
* **BREAKING CHANGE** - `@train` renamed to `@trainmlp`in `dk.setupcreate~` keeping it consistent with `dk.classcreate` and `dk.clustercreate`
* **BREAKING CHANGE** - `@gain` in `dk.sampler~` changed from dB to %, keeping it consistent with all other uses of `@gain` across the package
* **BREAKING CHANGE** - `@pitch`, `@loudness`, and `@spectral` renamed to `@pitchcomp`, `@loudnesscomp`, and `@spectralcomp` across all concat/corpus players (`dk.concatplayer~`, `dk.corpusplayer~`, etc...) to avoid conflicting naming overlap when nested in abstractions
* **BREAKING CHANGE** - `load` and `loadfolder` deprecated for all objects that load files (`.json` or audio files). Instead you now send a `read` or `readfolder` message no additional arguments and it will open the file dialog menu
* **BREAKING CHANGE** - `read` and `load` functionality renamed to `readfolder` and `loadfolder` in `dk.corpuscreate` to accomadate for the ability to load a single sample
* **BREAKING CHANGE** - `reset` message deprecated for all objects that accepted both `reset` and `clear` messages
* **BREAKING CHANGE** - `slew` in `dk.melbandfilter~` renamed to `ramptime`, keeping it in line with other parameter names elsewhere
* added `dk.avdog~` as an AVDog-inspired synth voice
* added `dk.corpusclustersampler~` as an all-in-one version of corpus clustering and playback (in line with `dk.corpussampler~` and `dk.concatsynth~`)
* added `dk.crosstalk~` as a way to remove crosstalk from multiple simultaneous sources 
* added `dk.cvcontrollers~` as a way to extract meta-signals from control voltage input
* added `dk.cvcross~` as a way to seperate control voltage into low and high frequency components
* added `dk.cvgate~` as a way to send incoming control voltage to mutilple outputs
* added `dk.cvonset~`as CV-based onset detection
* added `dk.cvscatter~` as a way to send incoming control voltage to mutilple outputs
* added `dk.cvsmear~` as a way to send incoming control voltage to mutilple outputs
* added `dk.fourses~` as a Fourses-inspired oscillator
* added `dk.gongue~` as a Gongue-inspired drum voice
* added `dk.justfriends~` as a Just Friends-inspired oscillator/modulator
* added `dk.mangrove~` as a Mangrove-inspired oscillator
* added `dk.melbandfilter~` to allow for melband analysis-based filtering
* added `dk.onsetfreeze~` as an onset-based freeze
* added `dk.onsettap~` as onset-based delay taps
* added `dk.quantussy~` as a Quantussy-inspired oscillator
* added `dk.regressor` as a way to output parameter regression based on new input
* added `dk.regressorcreate~` as a way to create a regressor based on training data
* added `dk.rungler~` as a Rungler-inspired oscillator
* added `dk.snare~` as a Plumbutter snare-inpsired snare voice
* added new descriptor type (spectral shape) and corresponding objects (`dk.specltralshapeframe`, `dk.spectralshape~`, `dk.spectralshapert~`, `dk.classspectralshape~`)  
* added `dk.spectralshapefilter~` as a way to create filters from the output of any of the spectral shape objects
* added `dk.transientextract~` as a way to extract transients from incoming audio
* added `dk.transientreplace~` as a way to replace transients in incoming audio
* added `dk.triggerdelay~` to create additional timed triggers/gates from incoming triggers/gates
* added `dk.ultrasound~` as a Plumbutter-inspired Ultrasound filter
* added `dk.waveguidesnare~` as a physical model of a snare
* added `weights` messages to all corpus/concat matching abstractions (`dk.corpusmatch`, `dk.corpusconvolver~`, `dk.concatmatch`, etc...) for varying the relative weight of each descriptor
* added `dump` message and corresponding outlets to all synthesis objects (`dk.karplus~`, `dk.waveguidemesh~`, etc...), dumping out parameter names, ranges, and values  
* added the ability to load a folder of files into `dk.concatcreate` via the `readfolder` and `loadfolder` allowing all concat synthesis abstractions to load the folder of samples for resynthesis
* changed analysis hop size in `dk.concatcreate` (from an overlap of 8 to an overlap of 4) to make analysis faster and shrink analysis file - you should renalayze your concat corpora
* added the ability to load a single file into `dk.corpuscreate` via the `read` and `load` messages which will then be sliced for corpus-based playback elsewhere in the library (`dk.corpusmatch`, `dk.corpussampler~`, etc...) - you should reanalyze all your corpora
* added onset detection messages/attributes (`sensitivity`, `lockout`, `floor`, etc...) to `dk.corpuscreate` to slice a single file when loaded via the `read` and `load` messages
* added a new outlet to corpus matching abstractions (`dk.controllermatch`, `dk.corpusmatch`, etc...) showing the `buffer~` slicing
* added `@invertmatching` to `dk.corpusmatch` and `dk.corpusconvolver~` that allows you to return the *furthest* matches in the corpus (rather than nearest)
* added `@active` attribute to all matching-based abstractions (`dk.classmatch`, `dk.corpusmatch`, `dk.concatmatch`, and all their variants, etc...) allowing for quickly enabling/disabling the matching process
* added the `refer` message to all corpus and concat match objects (`dk.corpusmatch`, `dk.corpussampler~`, `dk.concatmatch`, `dk.concatsynth~`, etc...) allowing you to point the abstractions to an existing `buffer~` causing it to be immediately analyzed and made available for playback/resynthesis without having to save anything to disk first
* added outputs to trigger-based objects (`dk.triggerbounce~`, `dk.triggercloud~`) for indicating when process is complete (for chaining processes)
* `dk.filter` can now parse messages from the class-based descriptor objects (`dk.classdescriptors~`, `dk.classkitchensink~`)
* added `@select` attribute to `dk.descriptorframe`, `dk.descriptors~`, and `dk.descriptorsrt~` allowing for selecting only a subset of the descriptors to come out of the list output (buffer output is unaffected)
* added `@select` attribute to `dk.controllers`, and `dk.speed` allowing for selecting only a subset of the meta-descriptors to come out
* added gamepad-specific features to `dk.gridscale` making it a more general purpose 2d scaling and transformation abstraction, including `@deadzone`, `@curve`, `@zoom`, `@transformation`,  etc...
* added `@input` modes to `dk.spectralonset~` allowing for optional filters optimized for different input types
* added `@every` attribute to `dk.probability~` allowing for passing on only every nth event (similar to `dk.sift~`)
* added `@smearcurve` attribute to `dk.smear~` allowing for further shaping of the smearing envelope
* added `@envelope` attribute to all onset-based objects (`dk.onset~`, `dk.descriptors~`, `dk.corpusconvolver~`, etc...) to allow for the use of logarithmic (default) or linear differential thresholding in amplitude-based onset detection `@mode` (primarily useful for material with large/loud sustain like cymbals and gongs)
* added `@offsetmute` attribute to `dk.lpg~` allowing for the use of the `offset` parameter to manually control the lpg filter
* added `overdub` message to `dk.datalooper~` allowing the layering of data onto existing loops
* added `train` message to `dk.clustercreate` and `dk.setupcreate~` to have parity to `dk.classcreate` (`dk.setupcreate~` no longer has a `done` message)
* added `midinote` to `dk.sampler~` to change the default MIDI note when transposing samples
* added `@size`, `@color`, and `@algorithm` attributes to `dk.plotter` and made a 4d projection the default for corpus matching
* added `@threshold` to `dk.descriptorstrt~` allowing loudness thresholding below which no descriptors will be output
* added `@range` to `dk.triggerdelay~` allowing for random selection of delay times from a given range
* all `..create` objects (`dk.classcreate`, `dk.clustercreate`, `dk.setupcreate~`) now show entries counting from 1 instead of 0
* `dk.classcreate` now shows the amount of entries per class, rather than a running total, as you create a classifier
* added `clear` message to `dk.shattercreate~`
* added `clear` and `reset` messages to `dk.scramble~` allowing you to directly control active components
* added a new corpus (`corpus_banjo.json`)
* the included Voice corpus has had all samples increased by 6dB so it more closely matches the level of other corpora
* created `dk.demosound` to use as the main musical example UI across all the help files and musical examples
* all help files revamped and consolidated in many places to make them as light-weight as possible
* `dk.plotter` can now take messages prepended with `dictionary` allowing you to connect the output of `dict` and `fluid.dataset~`'s `dump` outlet directly to it
* `dk.concatcreate`/`dk.corpuscreate` now have their metadata prompt window happen when sending a `write` message, rather than when loading files to analyze
* `dk.boppad` had a number of bugs that were fixed with regards to quadrant recognition
* made metadata pop-up window more consistent with a pop-up window (no toolbars along the sides etc...)
* added progress bar to `dk.corpuscreate`
* added `@scale` attribute to `dk.melbandframe` and all melband objects to output units in dB rather than amplitude
* all melband-based objects (`dk.melbandfilter~`, `dk.descriptordisplay`, etc...) will all auto-adapt their functionality based on the incoming melband range
* `dk.triggerlength~` only updates the length of the triggers at the start of the trigger
* `dk.sampler~` can now take messages directly from `dk.plotter` for corpus playback
* exposed control parameters for UMAP for the objects that use dimensionality reduction (`dk.controllermatch`, `dk.gridmatch`, `dk.plotter`)
* the `read` message now allows you to load a file directly from `live.drop` to `dk.corpuscreate` and `dk.concatcreate`
* `dk.corpussampler~` now takes input from `dk.plotter` directly for navigating corpora
* improved and fixed bugs in how values of 0. to 1. are parsed by sample/class selecting objects (improving interoperability)
* changed how sample rate is reported within the objects to fix inconsistency issues when working inside Ableton Live
* changed contact mic EQ filter used in `@input` modes across all onset detection objects (`dk.onset~`, `dk.spectralonset~`, etc...) so it also works with contact mics on cymbals
* `dk.speed` can now take signal input as well as bangs/lists
* improved gate duration accuracy in `dk.triggerlength~`
* improved how `attack` and `hold` are computed in `dk.triggershape~`
* improved how the `rate` parameter in `dk.sequenceclock~` works, allowing for faster changes when at slower tempos
* renamed `num_files` to `num_samples` in `dk.corpuscreate` to make more sense with segment-based corpus analysis
* added mic correction example (if you have HIRT installed) to the helpfile of `dk.convolver~`
* fixed bug in `dk.clustercreate` where `clear`-ing was not working properly
* fixed bug in `dk.mfccrt~` that was causing it to output all of the time
* fixed a bug in `dk.sampler~` which meant that `refer`'d `buffer~`s weren't triggering properly
* fixed bugs in the `zoom` function of `dk.gridscale`
* fixed bug when analyzing a single long file in `dk.corpuscreate` where the amount of slices were capped to 256. if you have used this with long files, try again
* fixed bug where `dk.shattercreate~` was not working properly
* fixed bug(s) in `dk.triggeralign~` that stopped working under certain circumstances (heavy CPU load primarily) and improved timing accuracy overall
* fixed bugs in pitch analysis when working with sample rates that are multiples of 48k
* slightly improved the audio quality of some of the built-in musical examples (declicking and denoising a few)
* removed Snippets from package
* added "collections" in the sidebar inspector, for UI objects, and all the patches that were once snippets

### SP-Tools v0.9 - [Scope, Ease of Use, and Audio Processing](https://www.youtube.com/watch?v=aqcKn0WowiQ)  
* **BREAKING CHANGE** - objects with "train" in the name (`sp.classtrain`, `sp.clustertrain`, `sp.setuptrain~`) have been renamed to be more consistent with other objects (`sp.classcreate`, `sp.clustercreate`, `sp.setupcreate~`)
* **BREAKING CHANGE** - `sensitivity` parameter in all onset-based objects has been fine-tuned to work across a wider range of instruments and materials so your previous settings may likely need adjusting
* **BREAKING CHANGE** - `threshold` parameter renamed to `floor` in all onset-based objects (`sp.onset~`, `sp.onsetframe`, `sp.descriptors~`, `sp.melbands~`, `sp.mfcc~`, `sp.sines~`, etc...)
* **BREAKING CHANGE** - `threshold` parameter renamed to `sensitivity` in `sp.novelty~` keeping it inline with other onset detection objects macro controls (`sp.onset~`, `sp.spectralonset~`)
* **BREAKING CHANGE** - `mode` parameter renamed to `timestretchmode` in sample playback objects keeping to remove clash with the new `mode` attribute
* **BREAKING CHANGE** - `input` mode order and modes changed on all onset-based object (`sp.onsetframe`, `sp.descriptors~`, `sp.melbands~`, `sp.mfcc~`, `sp.sines~`, etc...)
* **BREAKING CHANGE** - clusters trained with `sp.clustertrain` now count from 1 instead of 0 and are returned as ints instead of a symbols (so a 1 instead of a "1")
* **BREAKING CHANGE** - `sp.classifierdisplay` `@drum` attribute reworked to `@defaultdisplay`
* **BREAKING CHANGE** - fade in/out and curve parameters renamed in `sp.corpusplayer~` to be consistent with the new `sp.sampler~` (`attack`=`in`, `hold`=`out`(and inverted), `attackcurve`=`incurve`, `holdcurve`=`outcurve`)
* overview patch (`SP-Tools Overview.maxpat`) completely revamped with better discoverability and package navigation
* added snippets for common use cases to SP-Tools package (accessible via the snippets side panel)
* restructured Max Package folders to make it easier to navigate and add additional corpora
* restructured github repo to separate versions (Max, pd), Max for Live devices, and additional corpora
* added class-combined versions of all descriptor analysis objects making it easier to get classification combined with descriptor analysis (`sp.classdescriptors~`, `sp.classmfccs~`, etc...)
* added `sp.controllermatch` to browse corpora using a single parameter
* added `sp.controllerptich` to create pitch-quantized melodic phrases from a single parameter
* added zero-latency convolution (`sp.convolver~`) which allows for reverb, amp sim, mic correction, and any other convolution-based audio processes
* added convolution-based corpus matching via `sp.corpusconvolver~` which combines corpus matching and realtime convolution
* added combined abstractions for common processes (`sp.corpusanalysis~`, `sp.corpussampler~`)
* substantially improved core concatenation algorithm
* added radius and neighbor selection in concat matching
* added pitch and loudness compensation to concat playback
* added `transpose` and `pretranspose` to concat playback
* added `sp.corpusclustermatch` for creating clusters from corpora, allowing for grouping of similar sounds within a corpus (e.g. kick, snare, hat, etc...)
* added objects for shaping and processing descriptor lists (`sp.descriptorcurves`, `sp.descriptorreplace`)
* added an envelope follower with some quirky features (`sp.envelope~`)
* added `sp.gridscale` for scaling and shifting XY-based controller inputs (combines well with `sp.gridmatch` and the new `sp.boppad`)
* added pitch and time quantization with `sp.quantizepitch` and `sp.quantizetime~`
* added data and clock sequencers with `sp.sequenceclock~` and `sp.sequencedata~`
* added Schmitt filter for descriptor filtering for when you need hysterisis in the filtering (`sp.schmitt`)
* added various audio processes for splitting and decomposing signals (`sp.scatter~`, `sp.scramble~`, `sp.shatter~`, `sp.shattercreate~`, `sp.sift~`, `sp.smear`)
* added spectral-difference onset detection (`sp.spectralonset~`)
* added new kitchensink descriptor type, as a combination of descriptor/melband/MFCC buffers which comes in onset, real-time, and class-based variants (`sp.kitchensink~`, `sp.kitchensinkrt~`, `sp.classkitchensink~`)
* added neural network classifier type to `sp.classtrain`, `sp.clustertrain`, and `sp.classmatch` for greatly improved speed and accuracy
* added support for the BopPad controller (`sp.boppad`)
* added input modes to all the physical modeling objects (`sp.karplus~`, `sp.resonators~`, `sp.shaker~`, `sp.waveguidemesh~`) allowing for realtime actuation of the models, in addition to onset/trigger-based actuation
* added ability to reverse and loop samples, and jump directly to sample position in `sp.corpusplayer~`
* added `@mode` attribute to `sp.onsetframe~` to switch between amplitude and spectral onset detection (also impacts all onset-based descriptors objects (`sp.descriptors~`, `sp.melbands~`, `sp.mfcc~`, `sp.sines~`, etc...))
* added ability to seed clusters in `sp.clustertrain`
* added utility for subdividing a spaces of arbitrary size and steps (`sp.slicecurve`)
* added utility for time-alining trigger/gates with descriptor output (`sp.triggeralign~`)
* added utility for increasing the length of triggers and gates (`sp.triggerlength~`)
* added AHR-style envelope with `sp.triggershape~`
* improved time-alignment for trigger/gate outputs of descriptors objects (`sp.descriptors~`, `sp.melbands~`, `sp.mfcc~`, `sp.sines~`, etc...)
* reworked `sp.classifierdisplay` to automatically load class names from all class matching objects
* reworked `sp.descriptordisplay` to automatically display the correct type of descriptor
* added `dump` output message to all class-based objects (`sp.classmatch`, `sp.classdescriptors`, etc...)
* added mic correction (via a new input mode attribute `@input 5`) to all onset-based descriptor analysis objects for better descriptor results when using only an SP sensor
* added `@buffer` attribute to `sp.corpusplayer~` to simplify non corpus-based sample playback
* added `@history` attributes to all realtime descriptor objects (`sp.descriptorsrt~`, `sp.melbandsrt~`, `sp.mfccrt~`, `sp.sinesrt~`) to smooth descriptors
* added `@input` modes to `sp.onset~` allowing for optional filters optimized for different input types
* added `onthreshold` and `offthreshold` to `sp.novelty~` given you finer grain control of thresholding
* improved (and fixed) melband transposition in `sp.datatranspose`
* added optional arguments to all corpus matching abstractions to load corpus and setups automatically (e.g. `sp.corpusmatch corpus_china setup_snare` will automatically load the China Cymbal corpus and load/enable the snare setup)
* added ability to load default files to *all* `.json` loading objects (e.g. `sp.resonators~ resonators_bell`)
* added header to every `.json` file to differentiate them (you should reanalyze all your corpora, classes, and setups)
* when loading a setup into any corpus matching abstraction (`sp.corpusmatch`, `sp.corpusconvolver~`, `sp.corpussampler~`) it will automatically enable that setup
* improved default starting values in `sp.controllers` so it gives useful results while it autocalibrates
* added ability to trigger `sp.triggerbounce~` and `sp.triggercloud~` with bangs as well as trigger/gates
* added ability to trigger synthesis objects (`sp.lpg~`, `sp.karplus~`, `sp.resonators~`, `sp.waveguidemesh~`) with bangs as well as triggers/gates
* added 8 more abstractions to the puredata version
* changed FFT settings for `medium` and `all` sizes for corpus and setup analysis to have better pitch accuracy in the larger time scales. You should re-analyze all your own corpora and setups.
* you can now load mp3 files into `sp.corpuscreate`
* fixed M4L device loading bug(s)
* abstractions that only function as part of an existing abstraction (`sp.lpgcore~`, `sp.folderloop`, etc...) have had their `sp.` prefix replaced with `widget` and have had their help/reference pages removed

### SP-Tools v0.8 - [Sines, Synthesis/Modeling, and Documentation](https://www.youtube.com/watch?v=-zulgaFZNH4)  
* added synthesis and physical modeling objects (`sp.karplus~`, `sp.resonators~`, `sp.resonaroscreate~`, `sp.shaker~`, `sp.sinusoidplayer~`, `sp.sinusoids~`, `sp.waveguidemesh~`, `sp.lpg~`, `sp.lpgcore~`)  
* added Max for Live devices for some of the new processes (`Resonators`, `Sinusoids`, `Waveguide Mesh`)  
* added new descriptor type (sines) and corresponding objects (`sp.sineframe`, `sp.sines~`, `sp.sinesrt~`) (you should reanalyze all your corpora)  
* added utilities for filtering and creating clusters of triggers and gates (`sp.probability~`, `sp.triggerbounce~`, `sp.triggercloud~`, `sp.triggerframe~`)  
* added absolute start and length parameters to `sp.corpusplayer~` (via `startabsolute` and `lengthabsolute` messages)  
* added scramble transformation to `sp.databending`  
* added slew parameter to `sp.speed`  
* added ability to loop floats and ints (as well as conventional descriptors) to `sp.datalooper~` 
* added proper Max documentation via reference files, autocomplete, etc... 
* added sample rate adaptation to all realtime and offline analyses. previously things were optimized and assumed for 44.1k/48k but now everything works at every sample rate (up to 192k)
* added some puredata abstractions and help files to the package (in the `puredata` folder)

### SP-Tools v0.7 - [Ramps, Data Processing, Novelty, and Timestretching](https://www.youtube.com/watch?v=yCWKemdfm78)  
* **BREAKING CHANGES** - all objects that had a separate control inlet, now take those messages in the left-most inlet
* added new "ramp" objects for structural and gestural changes (`sp.ramp`, `sp.ramp~`)
* added new "data" objects for transforming, looping, and delaying descriptors (`sp.databending`, `sp.datadelay`, `sp.datagranular`, `sp.datalooper~`, `sp.datatranspose`)
* added novelty-based segmentation for determining changes in material type (`sp.novelty~`)
* added timestretching functionality to `sp.corpusplayer~` and the `Corpus Match` M4L device

### SP-Tools v0.6 - [Max for Live Walkthrough](https://www.youtube.com/watch?v=OVByXZEaebo)  
* added Max for Live devices (16 total) which cover (nearly) all the functionality of SP-Tools  
* Max codebase further commented and tidied  

### SP-Tools v0.5 - [Grid-Based Matching, Erae Touch, and Max for Live](https://www.youtube.com/watch?v=W2N_XyrVvrc)  
* added Max for Live devices for some of the main/flagship functionality (`Concat Match`, `Controllers`, `Corpus Match`, `Descriptors`, `Speed`)  
* added `sp.gridmatch` abstraction for generic controller-based navigation of corpora
* added support for the Erae Touch controller (`sp.eraetouch`)
* improved path stability when loading example corpora

### SP-Tools v0.4 - [Concatenation and Realtime Filtering](https://www.youtube.com/watch?v=q20wLzf8RVU)  
* added "concat" objects for real-time mosaicking and concatenative synthesis (`sp.concatanalysis~`, `sp.concatcreate`, `sp.concatmatch`, `sp.concatplayer~`, `sp.concatsynth~`)
* added ability to apply filtering to any descriptor list (via `sp.filter`)
* improved filtering to allow for multiple chained criteria (using `and` and `or` joiners)
* updated/improved pitch and loudness analysis algorithms slightly (you should reanalyze corpora/setups/etc...)

### SP-Tools v0.3 - [Filtering, Playback, and Realtime Analysis](https://www.youtube.com/watch?v=FSUcIMrjy7c)  
* added ability to filter corpora by descriptors (baked into `sp.corpusmatch` via `filter` messages)  
* added improved/unified corpus playback with `sp.corpusplayer~`  
* add realtime analysis abstractions (`sp.realtimeframe~`, `sp.descriptorsrt~`, `sp.melbandsrt~`, `sp.mfccrt~`)  
* added new stereo corpus (`corpus_plumbutter.json`)  
* improved corpus analysis to work with stereo files and files shorter than 100ms as well as adding more comprehensive metadata
* added `sp.corpuslist` abstraction for visualizing and playing samples in a corpus in list form  
* removed old playback abstractions (`sp.corpussimpleplayer~`, `sp.corpusloudnessplayer~`, `sp.corpusmelbandplayer~`)

### SP-Tools v.02 - [Controllers and Setups](https://www.youtube.com/watch?v=luLl4eJdezQ)  
* added "setups" (corpus scaling and neural network prediction/regression)  
* added "controllers" (meta-parameters extracted from onset timings and descriptor analysis)  
* added four new abstractions (`sp.controllers`, `sp.speed`, `sp.setupanalysis`, `sp.setuptrain~`)  
* added new corpus (`corpus_voice.json`)  
* added `@roundrobin` mode to `sp.corpusmatch`  