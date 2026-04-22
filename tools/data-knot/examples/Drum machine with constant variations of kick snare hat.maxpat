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
        "rect": [ 59.0, 106.0, 1283.0, 623.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.0, 23.0, 501.0, 60.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "In this example a corpus of random/mixed drum sounds are loaded and clustered into three groups representing kicks, snares, and hats. You can then play a groove with constantly evolving sounds using the typing keyboard, class matching via beat boxing, a drum machine pattern."
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 95.0, 375.0, 100.0, 36.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-44",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 805.0, 198.0, 50.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[10]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "live.gain~[10]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 219.0, 149.0, 41.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg_off_zombie"
                        }
                    },
                    "text": "hat",
                    "textcolor": [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 141.0, 149.0, 41.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg_off_zombie"
                        }
                    },
                    "text": "snare",
                    "textcolor": [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 149.0, 31.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg_off_zombie"
                        }
                    },
                    "text": "kick",
                    "textcolor": [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ]
                }
            },
            {
                "box": {
                    "args": [ "@amount", 8, "@base", 1 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.keyboardUI.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "int" ],
                    "patching_rect": [ 41.0, 104.0, 700.9285714285716, 130.77917767431313 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 342.0, 168.0, 40.0, 22.0 ],
                    "text": "active"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 163.0, 435.0, 97.36884428571466, 40.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "browse each cluster"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 1.0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-151",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 604.0, 62.0, 120.0, 40.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "using the typing keyboard"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-149",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1145.0, 405.0, 102.0, 40.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "enable a drum pattern"
                }
            },
            {
                "box": {
                    "args": [ "@source", "Ferreira-BeatBoxing.wav" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-131",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.demosound.maxpat",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "patching_rect": [ 805.0, 100.0, 343.0, 90.0 ],
                    "varname": "dk.demosound[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 233.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "signal", "signal" ],
                    "patching_rect": [ 886.0, 205.0, 116.0, 22.0 ],
                    "text": "dk.mfcc~ @floor -55"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "", "" ],
                    "patching_rect": [ 918.0, 249.0, 251.0, 22.0 ],
                    "text": "dk.classmatch beatboxtraining @output index"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.869617819786072, 0.873409450054169, 0.516549587249756, 1.0 ],
                    "activefgdialcolor": [ 0.324816644191742, 0.306101977825165, 0.25969871878624, 1.0 ],
                    "activeneedlecolor": [ 0.324816644191742, 0.306101977825165, 0.25969871878624, 1.0 ],
                    "appearance": 1,
                    "bordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "dialcolor": [ 0.869617819786072, 0.873409450054169, 0.516549587249756, 1.0 ],
                    "fgdialcolor": [ 0.324816644191742, 0.306101977825165, 0.25969871878624, 1.0 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "id": "obj-110",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.324816644191742, 0.306101977825165, 0.25969871878624, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1095.0, 357.0, 37.0, 36.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.7,
                            "parameter_initial": [ 100 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 240.0,
                            "parameter_mmin": 60.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "BPM",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "tricolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "autosize": 1,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "color": [ 0.875907301902771, 0.0, 0.108862794935703, 1.0 ],
                    "columns": 16,
                    "elementcolor": [ 0.258823529411765, 0.258823529411765, 0.235294117647059, 1.0 ],
                    "id": "obj-77",
                    "ignoreclick": 1,
                    "maxclass": "matrixctrl",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "one/row": 1,
                    "outlettype": [ "list", "list" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 865.0, 440.0, 258.0, 18.0 ],
                    "rows": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-87",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1107.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-89",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1091.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-90",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1075.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.995629191398621, 1.0, 0.084727965295315, 1.0 ],
                    "id": "obj-91",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1043.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.995629191398621, 1.0, 0.084727965295315, 1.0 ],
                    "id": "obj-92",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1027.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.995629191398621, 1.0, 0.084727965295315, 1.0 ],
                    "id": "obj-93",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1011.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.965762495994568, 0.57892245054245, 0.218903407454491, 1.0 ],
                    "id": "obj-94",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 979.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.965762495994568, 0.57892245054245, 0.218903407454491, 1.0 ],
                    "id": "obj-95",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 963.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.965762495994568, 0.57892245054245, 0.218903407454491, 1.0 ],
                    "id": "obj-96",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 947.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.939210772514343, 0.186267703771591, 0.181866616010666, 1.0 ],
                    "id": "obj-97",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 915.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.939210772514343, 0.186267703771591, 0.181866616010666, 1.0 ],
                    "id": "obj-100",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 899.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.939210772514343, 0.186267703771591, 0.181866616010666, 1.0 ],
                    "id": "obj-101",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 883.0, 460.0, 13.000000000000114, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-103",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1059.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.995629191398621, 1.0, 0.084727965295315, 1.0 ],
                    "id": "obj-105",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 995.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.965762495994568, 0.57892245054245, 0.218903407454491, 1.0 ],
                    "id": "obj-106",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 931.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.939210772514343, 0.186267703771591, 0.181866616010666, 1.0 ],
                    "id": "obj-107",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 867.0, 460.0, 13.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 768.0, 48.0, 158.0, 40.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "play beat boxing example"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.324816644191742, 0.306101977825165, 0.25969871878624, 1.0 ],
                    "activebgoncolor": [ 0.960863053798676, 0.579444289207458, 0.219074755907059, 1.0 ],
                    "activetextcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activetextoncolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "bgcolor": [ 0.324816644191742, 0.306101977825165, 0.25969871878624, 1.0 ],
                    "bgoncolor": [ 0.960863053798676, 0.579444289207458, 0.219074755907059, 1.0 ],
                    "bordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.96 ],
                    "focusbordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.96 ],
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-51",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 859.0, 362.0, 58.0441429979619, 27.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextcolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "STOP",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoffcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "texton": "START",
                    "varname": "live.text"
                }
            },
            {
                "box": {
                    "bgstepcolor": [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
                    "bgstepcolor2": [ 0.254571110010147, 0.241014674305916, 0.199484646320343, 0.47 ],
                    "bordercolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "bordercolor2": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "direction": 0,
                    "direction_height": 4.0,
                    "directioncolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "hbgcolor": [ 1.0, 0.301960784313725, 0.301960784313725, 0.0 ],
                    "id": "obj-40",
                    "link": 1,
                    "marker_horizontal": 0,
                    "marker_vertical": 0,
                    "matrixmode": 1,
                    "maxclass": "live.grid",
                    "numinlets": 2,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 865.0, 399.0, 258.0, 31.73989059093128 ],
                    "rounded": 0.0,
                    "rows": 3,
                    "saved_attribute_attributes": {
                        "bgstepcolor": {
                            "expression": ""
                        },
                        "bgstepcolor2": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "bordercolor2": {
                            "expression": ""
                        },
                        "directioncolor": {
                            "expression": ""
                        },
                        "stepcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 3, 16, 3, 0, 16, 0, 1002, 2002, 3002, 4001, 5002, 6002, 7000, 8000, 9002, 10000, 11002, 12001, 13000, 14002, 15002, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "live.grid[7]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.grid",
                            "parameter_type": 3
                        }
                    },
                    "spacing": 2.0,
                    "stepcolor": [ 0.940689086914062, 0.50758284330368, 0.170662134885788, 1.0 ],
                    "varname": "live.grid[3]"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.corpuslist.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 517.0, 336.0, 235.0, 235.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 95.0, 249.0, 178.0, 22.0 ],
                    "text": "read corpus_randomdrums.json"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 95.0, 336.0, 100.0, 22.0 ],
                    "text": "dk.corpusplayer~"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 95.0, 432.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-102",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "dk.plotter.maxpat",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 271.0, 336.0, 235.0, 235.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "clear" ],
                    "patching_rect": [ 95.0, 292.0, 195.0, 22.0 ],
                    "text": "dk.corpusclustermatch @clusters 3"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 238.0, 109.0, 40.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "load analyzed corpus"
                }
            },
            {
                "box": {
                    "angle": 272.1055141888561,
                    "bgcolor": [ 0.121350206434727, 0.126715794205666, 0.102380186319351, 1.0 ],
                    "bordercolor": [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 0.33 ],
                    "id": "obj-108",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 859.0, 436.0, 270.08828599592334, 54.0 ],
                    "proportion": 0.766103342152152
                }
            },
            {
                "box": {
                    "angle": 272.1055141888561,
                    "bgcolor": [ 0.578802645206451, 0.595841467380524, 0.558408379554749, 1.0 ],
                    "bordercolor": [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 0.33 ],
                    "id": "obj-109",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 846.0, 350.0, 292.0, 150.3749614515982 ],
                    "proportion": 0.766103342152152
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 972.0, 350.0, 123.0, 22.0 ],
                    "text": "expr (60000 / $i1) / 4."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 928.0, 445.0, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 928.0, 477.0, 60.0, 22.0 ],
                    "text": "pack i 0 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hidden": 1,
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 928.0, 413.0, 77.0, 22.0 ],
                    "text": "counter 1 16"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 928.0, 382.0, 63.0, 22.0 ],
                    "text": "metro 150"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 861.0, 478.0, 55.0, 22.0 ],
                    "text": "zl slice 1"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-152",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 663.0, 37.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.lesson_step_circle"
                        }
                    },
                    "text": "2",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-5",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 393.0, 248.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.lesson_step_circle"
                        }
                    },
                    "text": "1",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-150",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1190.0, 382.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.lesson_step_circle"
                        }
                    },
                    "text": "4",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-53",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 837.0, 23.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.lesson_step_circle"
                        }
                    },
                    "text": "3",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "midpoints": [ 526.5, 586.6687665114698, 512.4644890476187, 586.6687665114698, 512.4644890476187, 325.6687665114698, 280.5, 325.6687665114698 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "midpoints": [ 526.5, 586.9144831151025, 80.96448904761871, 586.9144831151025, 80.96448904761871, 331.6687665114698, 104.5, 331.6687665114698 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 1 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 280.5, 587.6687665114698, 512.4644890476187, 587.6687665114698, 512.4644890476187, 325.6687665114698, 526.5, 325.6687665114698 ],
                    "order": 1,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "midpoints": [ 280.5, 586.9144831151025, 80.46448904761871, 586.9144831151025, 80.46448904761871, 329.9144831151025, 104.5, 329.9144831151025 ],
                    "order": 0,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 192.5, 324.86356093004804, 526.5, 324.86356093004804 ],
                    "order": 1,
                    "source": [ "obj-104", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "order": 0,
                    "source": [ "obj-104", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "hidden": 1,
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 1 ],
                    "hidden": 1,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "midpoints": [ 870.5, 281.0583553486264, 104.5, 281.0583553486264 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 814.5, 197.5, 895.5, 197.5 ],
                    "order": 0,
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "order": 1,
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "hidden": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "midpoints": [ 927.5, 280.947944185783, 104.5, 280.947944185783 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 874.5, 435.5774236138709, 870.5, 435.5774236138709 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "hidden": 1,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "hidden": 1,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "hidden": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "hidden": 1,
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-110": [ "live.dial", "BPM", 0 ],
            "obj-131::obj-43": [ "live.gain~[2]", "live.gain~[1]", 0 ],
            "obj-14::obj-8": [ "live.tab[10]", "live.tab", 0 ],
            "obj-14::obj-9": [ "live.tab[11]", "live.tab", 0 ],
            "obj-14::obj-92": [ "live.tab[7]", "live.tab", 0 ],
            "obj-14::obj-94": [ "live.tab[9]", "live.tab", 0 ],
            "obj-40": [ "live.grid[7]", "live.grid", 0 ],
            "obj-44": [ "live.gain~[10]", "live.gain~", 0 ],
            "obj-51": [ "live.text", "live.text", 0 ],
            "parameter_overrides": {
                "obj-131::obj-43": {
                    "parameter_longname": "live.gain~[2]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [ "obj-109", "obj-51", "obj-84", "obj-40", "obj-88", "obj-125", "obj-108", "obj-77", "obj-86", "obj-91", "obj-92", "obj-93", "obj-94", "obj-95", "obj-96", "obj-97", "obj-100", "obj-101", "obj-103", "obj-105", "obj-106", "obj-107", "obj-90", "obj-89", "obj-110", "obj-83", "obj-87" ]
            }
        ],
        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
    }
}