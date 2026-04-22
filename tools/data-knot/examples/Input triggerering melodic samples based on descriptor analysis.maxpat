{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 134.0, 174.0, 889.0, 855.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.0, 22.0, 496.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "In this example dk.controllerpitch is being used to transpose a single sample to create melodic phrases. The melody then has a different reverb applied to every first and fourth hit in a repeating pattern of seven to create a shifting ambience behind the melodic lines."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 588.0, 189.0, 49.0, 22.0 ],
                    "text": "floor $1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 533.0, 189.0, 63.0, 22.0 ],
                    "text": "lockout $1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.0, 189.0, 77.0, 22.0 ],
                    "text": "sensitivity $1"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 489.0, 85.0, 135.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "onset detection settings"
                }
            },
            {
                "box": {
                    "fontsize": 10.55553416410818,
                    "id": "obj-1",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 588.0, 116.0, 47.0, 51.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[3]",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -99.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "floor",
                            "parameter_type": 0,
                            "parameter_units": "dB",
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "fontsize": 10.55553416410818,
                    "id": "obj-59",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 533.0, 116.0, 47.0, 51.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [ 30.00000000000001 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[1]",
                            "parameter_mmax": 1000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "lockout",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "fontsize": 10.55553416410818,
                    "id": "obj-58",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 478.0, 116.0, 47.0, 51.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "sensitivity",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
                    "border": 2,
                    "bordercolor": [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
                    "id": "obj-47",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 107.0, 169.0, 66.0 ],
                    "proportion": 0.5,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_accentcolor"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_contrast_frame"
                        }
                    }
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-49",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 84.0, 236.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "thru",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 84.0, 396.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 660.0, 415.0, 204.0, 22.0 ],
                    "text": "loadmess read Plumbutter-0624.wav"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 660.0, 415.0, 204.0, 22.0 ],
                    "text": "loadmess read HangDrum-0002.wav"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 528.0, 740.0, 308.0, 22.0 ],
                    "text": "dk.convolver~ rev_spring_medium_bright.wav @gain 20"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 210.0, 695.0, 84.0, 22.0 ],
                    "text": "mc.unpack~ 7"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "signal", "signal" ],
                    "patching_rect": [ 210.0, 651.0, 125.0, 22.0 ],
                    "text": "dk.scatter~ @chans 7"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 210.0, 740.0, 308.0, 22.0 ],
                    "text": "dk.convolver~ rev_spring_medium_bright.wav @gain 20"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 521.0, 415.0, 44.0, 22.0 ],
                    "text": "pak 1 i"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 521.0, 647.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "args": [ "@voices", 1, "@gain", 40, "@length", 75, "@out", 75, "@outcurve", 50 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-35",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.sampler~.maxpat",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 521.0, 459.0, 322.0, 169.0 ],
                    "varname": "rbtnk.autoBpatcher_2252[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "float", "" ],
                    "patching_rect": [ 546.0, 363.0, 313.0, 35.0 ],
                    "text": "dk.sequencedata~ @sequence 48 44 41 46 @restprob 0.3 0.25 0.15 0.25 @skipprob 1 0.25 0.25 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 165.0, 370.0, 43.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 215.0, 370.0, 55.0, 22.0 ],
                    "text": "zl slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 165.0, 415.0, 69.0, 22.0 ],
                    "text": "pack 1 i f"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 145.0, 57.0, 40.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "play audio"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 60,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 277.0, 370.0, 231.0, 49.0 ],
                    "range": 36
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 785.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 281.0, 44.0, 22.0 ],
                    "text": "key $1"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 366.0, 281.0, 53.0, 22.0 ],
                    "text": "scale $1"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "items": [ "ionian", ",", "dorian", ",", "phrygian", ",", "lydian", ",", "mixolydian", ",", "aeolian", ",", "chromatic", ",", "harmonic-minor", ",", "melodic-minor", ",", "major-pentatonic", ",", "minor-pentatonic", ",", "lydian-augmented", ",", "major-bebop", ",", "half-diminished", ",", "lydian-dominant", ",", "mixolydian-b6", ",", "altered", ",", "dorian-b2", ",", "blues", ",", "5th-mode-of-harmonic-minor", ",", "5th-mode-of-harmonic-major", ",", "dominant-bebop", ",", "dominant-diminished", ",", "whole-tone", ",", "major-triad", ",", "minor-triad", ",", "augmented-triad", ",", "diminished-triad", ",", "major-major-seventh", ",", "dominant-seventh", ",", "minor-seventh", ",", "half-diminished-seventh", ",", "fully-diminished-seventh", ",", "neopolitan-sixth", ",", "french-augmented-sixth", ",", "+", ",", "11", ",", "13", ",", "2", ",", "5", ",", "6", ",", "6/9", ",", "6add9", ",", "6sus4", ",", "7maj5", ",", "7sus", ",", "7sus4", ",", "9", ",", "9sus4", ",", "add2", ",", "add9", ",", "aug", ",", "dim", ",", "dim7", ",", "dom13", ",", "dom7", ",", "dom7(9)", ",", "dom7#11", ",", "dom7#5", ",", "dom7#5#9", ",", "dom7#9", ",", "dom7b5", ",", "dom7b5#9", ",", "dom7b5b9", ",", "dom7b9b13", ",", "dom9", ",", "m6", ",", "m9", ",", "maj", ",", "maj6", ",", "maj7", ",", "maj7(9)", ",", "maj7(9 13)", ",", "maj9", ",", "M9", ",", "M11", ",", "M13", ",", "min", ",", "min9", ",", "min11", ",", "min13", ",", "min6", ",", "min7", ",", "min7b5", ",", "m7b5", ",", "sus", ",", "sus2", ",", "sus4" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 366.0, 236.0, 110.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "ionian", "dorian", "phrygian", "lydian", "mixolydian", "aeolian", "chromatic", "harmonic-minor", "melodic-minor", "major-pentatonic", "minor-pentatonic", "lydian-augmented", "major-bebop", "half-diminished", "lydian-dominant", "mixolydian-b6", "altered", "dorian-b2", "blues", "5th-mode-of-harmonic-minor", "5th-mode-of-harmonic-major", "dominant-bebop", "dominant-diminished", "whole-tone", "major-triad", "minor-triad", "augmented-triad", "diminished-triad", "major-major-seventh", "dominant-seventh", "minor-seventh", "half-diminished-seventh", "fully-diminished-seventh", "neopolitan-sixth", "french-augmented-sixth", "+", "11", "13", "2", "5", "6", "6/9", "6add9", "6sus4", "7maj5", "7sus", "7sus4", "9", "9sus4", "add2", "add9", "aug", "dim", "dim7", "dom13", "dom7", "dom7(9)", "dom7#11", "dom7#5", "dom7#5#9", "dom7#9", "dom7b5", "dom7b5#9", "dom7b5b9", "dom7b9b13", "dom9", "m6", "m9", "maj", "maj6", "maj7", "maj7(9)", "maj7(9 13)", "maj9", "M9", "M11", "M13", "min", "min9", "min11", "min13", "min6", "min7", "min7b5", "m7b5", "sus", "sus2", "sus4" ],
                            "parameter_initial": [ 5.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "umenu",
                            "parameter_mmax": 87,
                            "parameter_modmode": 0,
                            "parameter_shortname": "umenu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "umenu"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "items": [ "C", ",", "C#/Db", ",", "D", ",", "D#/Eb", ",", "E", ",", "F", ",", "F#/Gb", ",", "G", ",", "G#/Ab", ",", "A", ",", "A#/Bb", ",", "B" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 490.0, 236.0, 63.0, 22.0 ],
                    "varname": "umenu[1]"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 165.0, 325.0, 185.0, 22.0 ],
                    "text": "dk.controllerpitch @scale aeolian"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "signal", "signal" ],
                    "patching_rect": [ 165.0, 236.0, 183.0, 22.0 ],
                    "text": "dk.descriptors~"
                }
            },
            {
                "box": {
                    "args": [ "@source", "Bledsoe-FluteArticulated.wav" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-97",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.demosound.maxpat",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "patching_rect": [ 84.0, 120.0, 343.0, 90.0 ],
                    "varname": "dk.demosound[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 165.0, 281.0, 183.0, 22.0 ],
                    "text": "dk.controllers"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-10",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.sampler~.maxpat",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 165.0, 459.0, 322.0, 169.0 ],
                    "varname": "rbtnk.autoBpatcher_2252",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-4",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 38.0, 120.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.lesson_step_circle"
                        }
                    },
                    "text": "1",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 174.5, 638.9000000000001, 219.5, 638.9000000000001 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 1 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "order": 2,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 0,
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 1,
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 499.5, 313.50000000000006, 174.5, 313.50000000000006 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 375.5, 313.50000000000006, 174.5, 313.50000000000006 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "midpoints": [ 669.5, 447.3000000000001, 174.5, 447.3000000000001 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "hidden": 1,
                    "midpoints": [ 669.5, 447.3000000000001, 530.5, 447.3000000000001 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 2 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 174.5, 401.9000000000001, 150.75, 401.9000000000001, 150.75, 352.9000000000001, 555.5, 352.9000000000001 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 1 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "order": 1,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 174.5, 363.1000000000001, 286.5, 363.1000000000001 ],
                    "order": 0,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 1 ],
                    "order": 0,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "order": 1,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "midpoints": [ 487.5, 224.6292128489011, 174.5, 224.6292128489011 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 252.0, 728.1000000000001, 537.5, 728.1000000000001 ],
                    "source": [ "obj-53", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 219.5, 766.0, 174.5, 766.0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "midpoints": [ 542.5, 224.6292128489011, 174.5, 224.6292128489011 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 1 ],
                    "midpoints": [ 537.5, 775.0, 200.5, 775.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "midpoints": [ 597.5, 224.6292128489011, 174.5, 224.6292128489011 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "midpoints": [ 93.5, 223.0, 174.5, 223.0 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "live.dial[3]", "floor", 0 ],
            "obj-10::obj-104": [ "live.drop[4]", "live.drop", 0 ],
            "obj-10::obj-11": [ "loop", "loop", 0 ],
            "obj-10::obj-126": [ "lengthabsolute", "lengthabsolute", 0 ],
            "obj-10::obj-128": [ "startabsolute", "startabsolute", 0 ],
            "obj-10::obj-138": [ "voices", "voices", 0 ],
            "obj-10::obj-140": [ "steal", "steal", 0 ],
            "obj-10::obj-167": [ "gain", "gain", 0 ],
            "obj-10::obj-173": [ "absoluteview", "absoluteview", 0 ],
            "obj-10::obj-193": [ "pitch", "pitch", 0 ],
            "obj-10::obj-197": [ "timestretch", "timestretch", 0 ],
            "obj-10::obj-2": [ "out", "out", 0 ],
            "obj-10::obj-216": [ "tabopen", "tabopen", 1 ],
            "obj-10::obj-255": [ "speed", "speed", 0 ],
            "obj-10::obj-38": [ "in", "in", 0 ],
            "obj-10::obj-46": [ "incurve", "incurve", 0 ],
            "obj-10::obj-52": [ "algorithm", "algorithm", 0 ],
            "obj-10::obj-55": [ "start", "start", 0 ],
            "obj-10::obj-58": [ "length", "length", 0 ],
            "obj-10::obj-67": [ "outcurve", "outcurve", 0 ],
            "obj-114": [ "umenu", "umenu", 0 ],
            "obj-35::obj-104": [ "live.drop[5]", "live.drop", 0 ],
            "obj-35::obj-11": [ "loop[1]", "loop", 0 ],
            "obj-35::obj-126": [ "lengthabsolute[1]", "lengthabsolute", 0 ],
            "obj-35::obj-128": [ "startabsolute[1]", "startabsolute", 0 ],
            "obj-35::obj-138": [ "voices[1]", "voices", 0 ],
            "obj-35::obj-140": [ "steal[1]", "steal", 0 ],
            "obj-35::obj-167": [ "gain[1]", "gain", 0 ],
            "obj-35::obj-173": [ "absoluteview[1]", "absoluteview", 0 ],
            "obj-35::obj-193": [ "pitch[1]", "pitch", 0 ],
            "obj-35::obj-197": [ "timestretch[1]", "timestretch", 0 ],
            "obj-35::obj-2": [ "out[1]", "out", 0 ],
            "obj-35::obj-216": [ "tabopen[1]", "tabopen", 1 ],
            "obj-35::obj-255": [ "speed[1]", "speed", 0 ],
            "obj-35::obj-38": [ "in[1]", "in", 0 ],
            "obj-35::obj-46": [ "incurve[1]", "incurve", 0 ],
            "obj-35::obj-52": [ "algorithm[1]", "algorithm", 0 ],
            "obj-35::obj-55": [ "start[1]", "start", 0 ],
            "obj-35::obj-58": [ "length[1]", "length", 0 ],
            "obj-35::obj-67": [ "outcurve[1]", "outcurve", 0 ],
            "obj-43::obj-4::obj-14::obj-71": [ "notes", "notes", 1 ],
            "obj-49": [ "live.gain~", "thru", 0 ],
            "obj-58": [ "live.dial", "sensitivity", 0 ],
            "obj-59": [ "live.dial[1]", "lockout", 0 ],
            "obj-97::obj-43": [ "live.gain~[1]", "live.gain~[1]", 0 ],
            "parameter_overrides": {
                "obj-35::obj-104": {
                    "parameter_longname": "live.drop[5]"
                },
                "obj-35::obj-11": {
                    "parameter_longname": "loop[1]"
                },
                "obj-35::obj-126": {
                    "parameter_longname": "lengthabsolute[1]"
                },
                "obj-35::obj-128": {
                    "parameter_longname": "startabsolute[1]"
                },
                "obj-35::obj-138": {
                    "parameter_longname": "voices[1]"
                },
                "obj-35::obj-140": {
                    "parameter_longname": "steal[1]"
                },
                "obj-35::obj-167": {
                    "parameter_longname": "gain[1]"
                },
                "obj-35::obj-173": {
                    "parameter_longname": "absoluteview[1]"
                },
                "obj-35::obj-193": {
                    "parameter_longname": "pitch[1]"
                },
                "obj-35::obj-197": {
                    "parameter_longname": "timestretch[1]"
                },
                "obj-35::obj-2": {
                    "parameter_longname": "out[1]"
                },
                "obj-35::obj-216": {
                    "parameter_longname": "tabopen[1]"
                },
                "obj-35::obj-255": {
                    "parameter_longname": "speed[1]"
                },
                "obj-35::obj-38": {
                    "parameter_longname": "in[1]"
                },
                "obj-35::obj-46": {
                    "parameter_longname": "incurve[1]"
                },
                "obj-35::obj-52": {
                    "parameter_longname": "algorithm[1]"
                },
                "obj-35::obj-55": {
                    "parameter_longname": "start[1]"
                },
                "obj-35::obj-58": {
                    "parameter_longname": "length[1]"
                },
                "obj-35::obj-67": {
                    "parameter_longname": "outcurve[1]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
    }
}