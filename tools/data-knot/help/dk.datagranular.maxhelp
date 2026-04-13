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
        "rect": [ 152.0, 93.0, 1211.0, 842.0 ],
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 1211.0, 816.0 ],
                        "showontab": 1,
                        "boxes": [],
                        "lines": [],
                        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
                    },
                    "patching_rect": [ 46.0, 341.0, 25.0, 22.0 ],
                    "text": "p ?"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 1211.0, 816.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 66.0, 497.0, 47.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "You can use dk.datagranular to create a stream of attacks for each hit when doing corpus matching. The built in variation gives you results similar to round robin mode, but offers you more control over how much variation to add."
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpname.js",
                                    "id": "obj-219",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "dk.datagranular" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 331.18402099609375, 57.599853515625 ]
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-16",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 566.0, 169.0, 169.0 ],
                                    "varname": "rbtnk.autoBpatcher_46199[1]",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-15",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 336.0, 169.0, 169.0 ],
                                    "varname": "rbtnk.autoBpatcher_46199",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 131.0, 738.0, 35.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "after"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 126.0, 508.0, 45.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "before"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 505.0, 295.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 505.0, 336.0, 66.0, 22.0 ],
                                    "text": "random $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 336.0, 46.0, 22.0 ],
                                    "text": "rate $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 577.0, 336.0, 71.0, 22.0 ],
                                    "text": "variation $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 389.0, 295.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 389.0, 336.0, 57.0, 22.0 ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 456.0, 271.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 50 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[2]",
                                            "parameter_mmax": 500.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rate",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial[12]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 577.0, 271.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 10 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[3]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "variation",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[13]"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 633.0, 275.0, 115.0, 40.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "adjust granular parameters"
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
                                    "patching_rect": [ 76.0, 167.0, 57.0, 40.0 ],
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
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 448.0, 414.0, 109.0, 40.0 ],
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
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 380.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 304.0, 423.0, 133.0, 22.0 ],
                                    "text": "read corpus_china.json"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 250.0, 512.0, 100.0, 22.0 ],
                                    "text": "dk.corpusplayer~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 556.0, 45.0, 45.0 ]
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
                                    "patching_rect": [ 407.0, 512.0, 235.0, 235.0 ],
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
                                    "patching_rect": [ 250.0, 467.0, 176.0, 22.0 ],
                                    "text": "dk.corpusmatch @roundrobin 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "signal", "signal" ],
                                    "patching_rect": [ 226.0, 257.0, 90.0, 22.0 ],
                                    "text": "dk.descriptors~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-218",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 145.0, 257.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@source", "Constanzo-PreparedSnare.wav", "@selection", 0.0, 0.09 ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-13",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.demosound.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "patching_rect": [ 145.0, 142.0, 343.0, 90.0 ],
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
                                    "patching_rect": [ 94.0, 142.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 675.0, 249.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 561.0, 424.0, 20.0, 20.0 ],
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
                                    "destination": [ "obj-104", 0 ],
                                    "midpoints": [ 289.5, 456.06876651146973, 259.5, 456.06876651146973 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 289.5, 483.1791776743131, 73.5, 483.1791776743131 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "midpoints": [ 416.5, 755.2353054407893, 240.453125, 755.2353054407893, 240.453125, 504.23530544078926, 259.5, 504.23530544078926 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-104", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "midpoints": [ 259.5, 499.18438325573493, 416.5, 499.18438325573493 ],
                                    "order": 1,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "order": 0,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 1 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 259.1666666666667, 367.95835534862636, 289.5, 367.95835534862636 ],
                                    "order": 0,
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "order": 1,
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 235.5, 316.6583553486264, 73.5, 316.6583553486264 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 514.5, 367.45835534862636, 289.5, 367.45835534862636 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 465.5, 367.45835534862636, 289.5, 367.45835534862636 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 586.5, 367.45835534862636, 289.5, 367.45835534862636 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 398.5, 367.45835534862636, 289.5, 367.45835534862636 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "midpoints": [ 313.5, 454.5739720928915, 259.5, 454.5739720928915 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 1 ],
                                    "order": 0,
                                    "source": [ "obj-98", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "order": 1,
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
                    },
                    "patching_rect": [ 46.0, 135.0, 114.0, 22.0 ],
                    "text": "p \"corpus playback\""
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 1211.0, 816.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 66.0, 497.0, 47.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "Using the variations and variable rate parameters in dk.datagranular we can create a spectral freeze-type sound when combined with the timestretching functionality of dk.corpusplayer~."
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpname.js",
                                    "id": "obj-256",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "dk.datagranular" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 331.18402099609375, 57.599853515625 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 428.0, 313.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 428.0, 354.0, 66.0, 22.0 ],
                                    "text": "random $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 499.0, 354.0, 71.0, 22.0 ],
                                    "text": "variation $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 499.0, 289.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 20 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[4]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "variation",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[13]"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-20",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 812.0, 344.0, 104.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "tweak playback parameters too!"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 569.0, 297.0, 119.0, 40.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "enable granular playback"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 56.0, 147.0, 70.0, 40.0 ],
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
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 486.0, 422.0, 152.0, 40.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "load analyzed corpus and load a setup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 369.0, 354.0, 46.0, 22.0 ],
                                    "text": "rate $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 302.0, 313.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 302.0, 354.0, 57.0, 22.0 ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 369.0, 289.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 40 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[1]",
                                            "parameter_mmax": 500.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rate",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 203.0, 395.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 843.0, 408.0, 41.0, 54.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[25]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -24.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "pitch",
                                            "parameter_type": 0,
                                            "parameter_units": "st",
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "triangle": 1,
                                    "varname": "live.dial[4]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 894.0, 448.0, 85.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "basic", "monophonic", "rhythmic", "general", "extremestretch", "efficient" ],
                                            "parameter_initial": [ 4.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.menu",
                                            "parameter_mmax": 5,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.menu",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "live.menu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 927.0, 481.0, 114.0, 22.0 ],
                                    "text": "timestretchmode $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 843.0, 481.0, 51.0, 22.0 ],
                                    "text": "pitch $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 775.0, 481.0, 58.0, 22.0 ],
                                    "text": "speed $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-255",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 775.0, 411.0, 41.00000000000023, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 1.08,
                                            "parameter_initial": [ 10 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[7]",
                                            "parameter_mmax": 200.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "speed",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[6]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 319.0, 424.0, 161.99999999999994, 35.0 ],
                                    "text": "read corpus_voice.json, setup read setup_snare.json"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 203.0, 526.0, 410.00000000000006, 35.0 ],
                                    "text": "dk.corpusplayer~ @speed 10 @length 30 @timestretch 1 @timestretchmode extremestretch @attack 20 @attackcurve -50 @hold 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 203.0, 583.0, 45.0, 45.0 ]
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
                                    "patching_rect": [ 625.0, 526.0, 235.0, 235.0 ],
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
                                    "patching_rect": [ 203.0, 481.0, 176.0, 22.0 ],
                                    "text": "dk.corpusmatch @roundrobin 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "signal", "signal" ],
                                    "patching_rect": [ 179.0, 304.0, 90.0, 22.0 ],
                                    "text": "dk.descriptors~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-218",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 56.0, 304.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 89.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "Constanzo-PreparedSnare.wav",
                                                "filename": "Constanzo-PreparedSnare.wav",
                                                "filekind": "audiofile",
                                                "id": "u650004524",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-13",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 56.0, 189.0, 511.0, 90.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-7",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 639.0, 432.0, 20.0, 20.0 ],
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
                                    "id": "obj-21",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 854.0, 314.0, 20.0, 20.0 ],
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
                                    "id": "obj-17",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 693.0, 307.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-14",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 130.0, 151.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "midpoints": [ 634.5, 772.8561277664761, 188.0, 772.8561277664761, 188.0, 518.8561277664761, 212.5, 518.8561277664761 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "midpoints": [ 291.0, 513.8052055814218, 634.5, 513.8052055814218 ],
                                    "source": [ "obj-104", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "midpoints": [ 212.5, 507.8052055814218, 634.5, 507.8052055814218 ],
                                    "order": 1,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "order": 0,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 1 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-255", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 378.5, 384.52917767431325, 212.5, 384.52917767431325 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "midpoints": [ 784.5, 513.8052055814218, 212.5, 513.8052055814218 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "midpoints": [ 852.5, 513.8052055814218, 212.5, 513.8052055814218 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "midpoints": [ 936.5, 513.8052055814218, 212.5, 513.8052055814218 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "midpoints": [ 328.5, 469.5, 212.5, 469.5 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-52", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 437.5, 384.52917767431325, 212.5, 384.52917767431325 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 508.5, 384.52917767431325, 212.5, 384.52917767431325 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 311.5, 384.52917767431325, 212.5, 384.52917767431325 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 1 ],
                                    "midpoints": [ 603.5, 571.4156167442651, 238.5, 571.4156167442651 ],
                                    "source": [ "obj-98", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
                    },
                    "patching_rect": [ 46.0, 163.0, 106.0, 22.0 ],
                    "text": "p \"spectral freeze\""
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 152.0, 119.0, 1211.0, 816.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 66.0, 521.0, 60.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "In this example we remove the variations (and disable round robin in dk.corpusmatch) to get a \"machine gun\"-type repetition when dk.datagranular is enabled. This is then alternately enabled/disabled based on incoming onsets creating an interesting stutter effect based on the incoming audio."
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpname.js",
                                    "id": "obj-219",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "dk.datagranular" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 331.18402099609375, 57.599853515625 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-26",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 69.0, 582.0, 162.0, 41.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "create random panning with dk.sift~ triggered by the output of dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 199.0, 459.0, 22.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 250.0, 591.0, 112.0, 22.0 ],
                                    "text": "dk.sift~ @manual 1"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-11",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 423.0, 243.0, 172.0, 41.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "you can add dk.databending or dk.probability~ here to add dropouts as well so it doesn't purely alternate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 388.0, 252.0, 22.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 505.0, 330.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle[1]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 505.0, 371.0, 66.0, 22.0 ],
                                    "text": "random $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 371.0, 46.0, 22.0 ],
                                    "text": "rate $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 576.0, 371.0, 71.0, 22.0 ],
                                    "text": "variation $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 388.0, 330.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 388.0, 371.0, 57.0, 22.0 ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 456.0, 306.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 75 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[5]",
                                            "parameter_mmax": 500.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rate",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial[12]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 576.0, 306.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[8]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "variation",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[13]"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 633.0, 310.0, 115.0, 40.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "adjust granular parameters"
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
                                    "patching_rect": [ 76.0, 162.0, 57.0, 40.0 ],
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
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 448.0, 449.0, 109.0, 40.0 ],
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
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 415.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 303.0, 458.0, 133.0, 22.0 ],
                                    "text": "read corpus_china.json"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 250.0, 547.0, 160.0, 22.0 ],
                                    "text": "dk.corpusplayer~ @voices 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 636.0, 45.0, 45.0 ]
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
                                    "patching_rect": [ 423.0, 547.0, 235.0, 235.0 ],
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
                                    "patching_rect": [ 250.0, 502.0, 192.0, 22.0 ],
                                    "text": "dk.corpusmatch @roundrobin 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "signal", "signal" ],
                                    "patching_rect": [ 226.0, 252.0, 90.0, 22.0 ],
                                    "text": "dk.descriptors~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-218",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 145.0, 252.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@source", "Constanzo-PreparedSnare.wav", "@selection", 0.0, 0.09 ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-13",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.demosound.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "patching_rect": [ 145.0, 137.0, 343.0, 90.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 472.0, 252.0, 54.0, 22.0 ],
                                    "text": "sel done"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 517.0, 252.0, 22.0, 22.0 ],
                                    "text": "t 0"
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
                                    "patching_rect": [ 94.0, 137.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 755.0, 320.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 561.0, 459.0, 20.0, 20.0 ],
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
                                    "destination": [ "obj-104", 0 ],
                                    "midpoints": [ 289.5, 491.9104111628433, 259.5, 491.9104111628433 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 289.5, 447.1052055814216, 208.5, 447.1052055814216 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "midpoints": [ 432.5, 791.0769500921629, 235.5, 791.0769500921629, 235.5, 540.0769500921629, 259.5, 540.0769500921629 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-104", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "midpoints": [ 259.5, 535.0260279071085, 432.5, 535.0260279071085 ],
                                    "order": 1,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "order": 0,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 1 ],
                                    "source": [ "obj-12", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 1 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 2 ],
                                    "midpoints": [ 208.5, 577.5260279071085, 352.5, 577.5260279071085 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 481.5, 284.0, 504.33333333333326, 284.0, 504.33333333333326, 241.0, 526.5, 241.0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 526.5, 301.5, 397.5, 301.5 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 259.1666666666667, 403.79999999999995, 289.5, 403.79999999999995 ],
                                    "order": 1,
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 259.1666666666667, 284.0, 378.75, 284.0, 378.75, 241.0, 397.5, 241.0 ],
                                    "order": 0,
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "order": 2,
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 514.5, 403.29999999999995, 289.5, 403.29999999999995 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 465.5, 403.29999999999995, 289.5, 403.29999999999995 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 585.5, 403.29999999999995, 289.5, 403.29999999999995 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 397.5, 403.29999999999995, 289.5, 403.29999999999995 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "midpoints": [ 312.5, 490.4156167442651, 259.5, 490.4156167442651 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
                    },
                    "patching_rect": [ 46.0, 200.0, 68.0, 22.0 ],
                    "text": "p stuttering"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 1211.0, 816.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-11",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 570.0, 212.0, 114.0, 40.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "enable granularization"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 383.0, 218.0, 57.0, 40.0 ],
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
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "signal", "signal" ],
                                    "patching_rect": [ 875.0, 306.0, 106.0, 22.0 ],
                                    "text": "dk.spectralshape~"
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-13",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 875.0, 397.0, 169.0, 169.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 915.0, 572.0, 89.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "spectralshape"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 875.0, 352.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-6",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 694.0, 397.0, 169.0, 169.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-3",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 515.0, 397.0, 169.0, 169.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-1",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 335.0, 397.0, 169.0, 169.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@size", "small" ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-12",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.descriptordisplay.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.0, 397.0, 169.0, 169.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 759.0, 572.0, 39.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "sines"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1058.0, 455.0, 125.0, 54.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "look at the variations on the same attack"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 578.0, 572.0, 42.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "mfccs"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 387.0, 572.0, 65.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "melbands"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 204.0, 572.0, 72.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "descriptors"
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-219",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "dk.datagranular" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 535.0, 120.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 694.0, 352.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "signal", "signal" ],
                                    "patching_rect": [ 694.0, 306.0, 60.0, 22.0 ],
                                    "text": "dk.sines~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 515.0, 352.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 335.0, 352.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.0, 352.0, 92.0, 22.0 ],
                                    "text": "dk.datagranular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "list", "", "signal", "signal" ],
                                    "patching_rect": [ 515.0, 306.0, 57.0, 22.0 ],
                                    "text": "dk.mfcc~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "list", "", "signal", "signal" ],
                                    "patching_rect": [ 335.0, 306.0, 84.0, 22.0 ],
                                    "text": "dk.melbands~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "signal", "signal" ],
                                    "patching_rect": [ 155.0, 306.0, 90.0, 22.0 ],
                                    "text": "dk.descriptors~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-218",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 32.0, 308.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "args": [ "@source", "GongDrumPerformance.wav", "@selection", 0.76, 0.79 ],
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-27",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "dk.demosound.maxpat",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "patching_rect": [ 32.0, 193.0, 343.0, 90.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 811.0, 220.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 811.0, 261.0, 66.0, 22.0 ],
                                    "text": "random $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 762.0, 261.0, 46.0, 22.0 ],
                                    "text": "rate $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 883.0, 261.0, 71.0, 22.0 ],
                                    "text": "variation $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 694.0, 220.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 694.0, 261.0, 57.0, 22.0 ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 762.0, 196.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 50 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[13]",
                                            "parameter_mmax": 500.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rate",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "varname": "live.dial[12]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 883.0, 196.0, 41.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 10 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[14]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "variation",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[13]"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-9",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 611.0, 186.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 409.5, 193.0, 20.0, 20.0 ],
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 41.5, 294.5, 884.5, 294.5 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 1 ],
                                    "midpoints": [ 41.5, 295.5, 67.5, 295.5 ],
                                    "order": 5,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "order": 6,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 41.5, 294.5, 524.5, 294.5 ],
                                    "order": 2,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "midpoints": [ 41.5, 294.5, 164.5, 294.5 ],
                                    "order": 4,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 41.5, 294.5, 703.5, 294.5 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 41.5, 294.5, 344.5, 294.5 ],
                                    "order": 3,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "order": 4,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "hidden": 1,
                                    "order": 3,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "order": 4,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "hidden": 1,
                                    "order": 3,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "order": 4,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "hidden": 1,
                                    "order": 3,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "order": 4,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "hidden": 1,
                                    "order": 3,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
                    },
                    "patching_rect": [ 46.0, 103.0, 47.0, 22.0 ],
                    "text": "p basic"
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-38::obj-13::obj-43": [ "live.gain~[2]", "live.gain~[1]", 0 ],
            "obj-38::obj-15::obj-61": [ "live.numbox[4]", "live.numbox", 0 ],
            "obj-38::obj-15::obj-64": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-38::obj-15::obj-67": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-38::obj-15::obj-68": [ "live.numbox[7]", "live.numbox", 0 ],
            "obj-38::obj-16::obj-61": [ "live.numbox[8]", "live.numbox", 0 ],
            "obj-38::obj-16::obj-64": [ "live.numbox[9]", "live.numbox", 0 ],
            "obj-38::obj-16::obj-67": [ "live.numbox[10]", "live.numbox", 0 ],
            "obj-38::obj-16::obj-68": [ "live.numbox[11]", "live.numbox", 0 ],
            "obj-38::obj-62": [ "live.dial[2]", "rate", 0 ],
            "obj-38::obj-63": [ "live.dial[3]", "variation", 0 ],
            "obj-3::obj-13::obj-43": [ "live.gain~[3]", "live.gain~[1]", 0 ],
            "obj-3::obj-53": [ "toggle[1]", "toggle[1]", 0 ],
            "obj-3::obj-62": [ "live.dial[5]", "rate", 0 ],
            "obj-3::obj-63": [ "live.dial[8]", "variation", 0 ],
            "obj-5::obj-12::obj-61": [ "live.numbox[14]", "live.numbox", 0 ],
            "obj-5::obj-12::obj-64": [ "live.numbox[13]", "live.numbox", 0 ],
            "obj-5::obj-12::obj-67": [ "live.numbox[12]", "live.numbox", 0 ],
            "obj-5::obj-12::obj-68": [ "live.numbox[15]", "live.numbox", 0 ],
            "obj-5::obj-13::obj-61": [ "live.numbox[32]", "live.numbox", 0 ],
            "obj-5::obj-13::obj-64": [ "live.numbox[34]", "live.numbox", 0 ],
            "obj-5::obj-13::obj-67": [ "live.numbox[35]", "live.numbox", 0 ],
            "obj-5::obj-13::obj-68": [ "live.numbox[33]", "live.numbox", 0 ],
            "obj-5::obj-1::obj-61": [ "live.numbox[16]", "live.numbox", 0 ],
            "obj-5::obj-1::obj-64": [ "live.numbox[17]", "live.numbox", 0 ],
            "obj-5::obj-1::obj-67": [ "live.numbox[19]", "live.numbox", 0 ],
            "obj-5::obj-1::obj-68": [ "live.numbox[18]", "live.numbox", 0 ],
            "obj-5::obj-27::obj-43": [ "live.gain~[1]", "live.gain~[1]", 0 ],
            "obj-5::obj-3::obj-61": [ "live.numbox[23]", "live.numbox", 0 ],
            "obj-5::obj-3::obj-64": [ "live.numbox[21]", "live.numbox", 0 ],
            "obj-5::obj-3::obj-67": [ "live.numbox[22]", "live.numbox", 0 ],
            "obj-5::obj-3::obj-68": [ "live.numbox[20]", "live.numbox", 0 ],
            "obj-5::obj-62": [ "live.dial[13]", "rate", 0 ],
            "obj-5::obj-63": [ "live.dial[14]", "variation", 0 ],
            "obj-5::obj-6::obj-61": [ "live.numbox[24]", "live.numbox", 0 ],
            "obj-5::obj-6::obj-64": [ "live.numbox[25]", "live.numbox", 0 ],
            "obj-5::obj-6::obj-67": [ "live.numbox[27]", "live.numbox", 0 ],
            "obj-5::obj-6::obj-68": [ "live.numbox[26]", "live.numbox", 0 ],
            "obj-89::obj-10": [ "live.dial[25]", "pitch", 0 ],
            "obj-89::obj-255": [ "live.dial[7]", "speed", 0 ],
            "obj-89::obj-52": [ "live.menu", "live.menu", 0 ],
            "obj-89::obj-53": [ "toggle", "toggle", 0 ],
            "obj-89::obj-56": [ "live.dial[1]", "rate", 0 ],
            "obj-89::obj-63": [ "live.dial[4]", "variation", 0 ],
            "parameter_overrides": {
                "obj-38::obj-13::obj-43": {
                    "parameter_longname": "live.gain~[2]"
                },
                "obj-38::obj-16::obj-61": {
                    "parameter_longname": "live.numbox[8]"
                },
                "obj-38::obj-16::obj-64": {
                    "parameter_longname": "live.numbox[9]"
                },
                "obj-38::obj-16::obj-67": {
                    "parameter_longname": "live.numbox[10]"
                },
                "obj-38::obj-16::obj-68": {
                    "parameter_longname": "live.numbox[11]"
                },
                "obj-3::obj-13::obj-43": {
                    "parameter_longname": "live.gain~[3]"
                },
                "obj-5::obj-12::obj-61": {
                    "parameter_longname": "live.numbox[14]"
                },
                "obj-5::obj-12::obj-64": {
                    "parameter_longname": "live.numbox[13]"
                },
                "obj-5::obj-12::obj-67": {
                    "parameter_longname": "live.numbox[12]"
                },
                "obj-5::obj-12::obj-68": {
                    "parameter_longname": "live.numbox[15]"
                },
                "obj-5::obj-13::obj-61": {
                    "parameter_longname": "live.numbox[32]"
                },
                "obj-5::obj-13::obj-64": {
                    "parameter_longname": "live.numbox[34]"
                },
                "obj-5::obj-13::obj-67": {
                    "parameter_longname": "live.numbox[35]"
                },
                "obj-5::obj-13::obj-68": {
                    "parameter_longname": "live.numbox[33]"
                },
                "obj-5::obj-1::obj-61": {
                    "parameter_longname": "live.numbox[16]"
                },
                "obj-5::obj-1::obj-64": {
                    "parameter_longname": "live.numbox[17]"
                },
                "obj-5::obj-1::obj-67": {
                    "parameter_longname": "live.numbox[19]"
                },
                "obj-5::obj-1::obj-68": {
                    "parameter_longname": "live.numbox[18]"
                },
                "obj-5::obj-3::obj-61": {
                    "parameter_longname": "live.numbox[23]"
                },
                "obj-5::obj-3::obj-64": {
                    "parameter_longname": "live.numbox[21]"
                },
                "obj-5::obj-3::obj-67": {
                    "parameter_longname": "live.numbox[22]"
                },
                "obj-5::obj-3::obj-68": {
                    "parameter_longname": "live.numbox[20]"
                },
                "obj-5::obj-6::obj-61": {
                    "parameter_longname": "live.numbox[24]"
                },
                "obj-5::obj-6::obj-64": {
                    "parameter_longname": "live.numbox[25]"
                },
                "obj-5::obj-6::obj-67": {
                    "parameter_longname": "live.numbox[27]"
                },
                "obj-5::obj-6::obj-68": {
                    "parameter_longname": "live.numbox[26]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "styles": [
            {
                "name": "AudioStatus_Menu",
                "default": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                        "color1": [ 0.454902, 0.462745, 0.482353, 0.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    }
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "Luca",
                "default": {
                    "accentcolor": [ 0.32549, 0.345098, 0.372549, 1.0 ],
                    "bgcolor": [ 0.904179, 0.895477, 0.842975, 0.56 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.862745, 0.870588, 0.878431, 1.0 ],
                        "color2": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "color": [ 0.475135, 0.293895, 0.251069, 1.0 ],
                    "elementcolor": [ 0.786675, 0.801885, 0.845022, 1.0 ],
                    "fontname": [ "Open Sans Semibold" ],
                    "selectioncolor": [ 0.720698, 0.16723, 0.080014, 1.0 ],
                    "textcolor_inverse": [ 0.239216, 0.254902, 0.278431, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "Matt",
                "default": {
                    "fontface": [ 1 ],
                    "fontsize": [ 10.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "PAt_style0",
                "default": {
                    "accentcolor": [ 0.65098, 0.666667, 0.662745, 1.0 ],
                    "bgcolor": [ 0.901961, 0.901961, 0.901961, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.862745, 0.870588, 0.878431, 1.0 ],
                        "color2": [ 0.862745, 0.870588, 0.878431, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "clearcolor": [ 1.0, 0.947758, 0.687073, 1.0 ],
                    "color": [ 0.952941, 0.564706, 0.098039, 1.0 ],
                    "fontname": [ "Arial" ],
                    "fontsize": [ 12.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "WTF",
                "default": {
                    "accentcolor": [ 0.50764, 0.065317, 0.112129, 1.0 ],
                    "bgcolor": [ 0.163647, 0.174699, 0.17409, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.32549, 0.345098, 0.372549, 1.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "color": [ 0.113725, 0.580392, 0.737255, 1.0 ],
                    "elementcolor": [ 0.461105, 0.492646, 0.591878, 1.0 ],
                    "fontname": [ "HydrogenType" ],
                    "fontsize": [ 18.0 ],
                    "patchlinecolor": [ 0.231373, 0.121569, 0.305882, 0.9 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classic",
                "default": {
                    "accentcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                    "bgcolor": [ 0.83978, 0.839941, 0.839753, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "color": [ 0.839216, 0.839216, 0.839216, 1.0 ],
                        "color1": [ 0.83978, 0.839941, 0.839753, 1.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "color": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                    "fontname": [ "Geneva" ],
                    "fontsize": [ 9.0 ],
                    "patchlinecolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicButton",
                "default": {
                    "color": [ 1.0, 0.890196, 0.090196, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicDial",
                "default": {
                    "color": [ 1.0, 0.890196, 0.090196, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicGain~",
                "default": {
                    "color": [ 0.380392, 0.380392, 0.380392, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicGswitch",
                "default": {
                    "accentcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicGswitch2",
                "default": {
                    "accentcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicKslider",
                "default": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "color": [ 1.0, 1.0, 1.0, 1.0 ],
                    "elementcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                    "selectioncolor": [ 0.498039, 0.498039, 0.498039, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicLed",
                "default": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "elementcolor": [ 0.6, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicMatrixctrl",
                "default": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicMeter~",
                "default": {
                    "bgcolor": [ 0.380392, 0.380392, 0.380392, 1.0 ],
                    "elementcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicNodes",
                "default": {
                    "color": [ 0.839216, 0.839216, 0.839216, 1.0 ],
                    "elementcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                    "fontsize": [ 9.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicNslider",
                "default": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicNumber",
                "default": {
                    "selectioncolor": [ 1.0, 0.890196, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicPictslider",
                "default": {
                    "elementcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicPreset",
                "default": {
                    "color": [ 1.0, 0.890196, 0.090196, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicScope~",
                "default": {
                    "bgcolor": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                    "color": [ 0.462745, 0.933333, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicTab",
                "default": {
                    "color": [ 0.498039, 0.498039, 0.498039, 1.0 ],
                    "elementcolor": [ 0.839216, 0.839216, 0.839216, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicTextbutton",
                "default": {
                    "accentcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "color": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicToggle",
                "default": {
                    "color": [ 0.380392, 0.380392, 0.380392, 1.0 ],
                    "elementcolor": [ 0.376471, 0.384314, 0.4, 0.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicUmenu",
                "default": {
                    "color": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "classicWaveform~",
                "default": {
                    "color": [ 0.380392, 0.380392, 0.380392, 1.0 ],
                    "selectioncolor": [ 0.498039, 0.498039, 0.498039, 0.5 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "dark-night-patch",
                "default": {
                    "accentcolor": [ 0.952941, 0.564706, 0.098039, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "patchlinecolor": [ 0.439216, 0.74902, 0.254902, 0.898039 ],
                    "textcolor": [ 0.862745, 0.870588, 0.878431, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "jpatcher001",
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "jpatcher002",
                "default": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.32549, 0.345098, 0.372549, 0.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.32549, 0.345098, 0.372549, 0.0 ],
                    "fontname": [ "Ableton Sans Book" ],
                    "fontsize": [ 9.5 ],
                    "patchlinecolor": [ 0.65098, 0.65098, 0.65098, 0.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "jpink",
                "default": {
                    "accentcolor": [ 0.619608, 0.0, 0.360784, 1.0 ],
                    "bgcolor": [ 0.862745, 0.870588, 0.878431, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.619608, 0.0, 0.360784, 1.0 ],
                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.113725, 0.607843, 0.607843, 1.0 ],
                    "color": [ 0.619608, 0.0, 0.360784, 1.0 ],
                    "elementcolor": [ 0.619608, 0.0, 0.360784, 1.0 ],
                    "patchlinecolor": [ 0.65, 0.65, 0.65, 1.0 ],
                    "selectioncolor": [ 0.619608, 0.0, 0.360784, 1.0 ],
                    "textcolor": [ 0.619608, 0.0, 0.360784, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "ksliderWhite",
                "default": {
                    "color": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "lightbutton",
                "default": {
                    "bgcolor": [ 0.309495, 0.299387, 0.299789, 1.0 ],
                    "elementcolor": [ 0.654902, 0.572549, 0.376471, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "max6box",
                "default": {
                    "accentcolor": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.5 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "max6inlet",
                "default": {
                    "color": [ 0.423529, 0.372549, 0.27451, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "max6message",
                "default": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                        "color2": [ 0.788235, 0.788235, 0.788235, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "max6box",
                "multi": 0
            },
            {
                "name": "max6outlet",
                "default": {
                    "color": [ 0.0, 0.454902, 0.498039, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjBlue-1",
                "default": {
                    "accentcolor": [ 0.317647, 0.654902, 0.976471, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjBrown-1",
                "default": {
                    "accentcolor": [ 0.654902, 0.572549, 0.376471, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjCyan-1",
                "default": {
                    "accentcolor": [ 0.029546, 0.773327, 0.821113, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjGreen-1",
                "default": {
                    "accentcolor": [ 0.0, 0.533333, 0.168627, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjMagenta-1",
                "default": {
                    "accentcolor": [ 0.840663, 0.060168, 0.769195, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjRed-1",
                "default": {
                    "accentcolor": [ 0.784314, 0.145098, 0.023529, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjYellow-1",
                "default": {
                    "accentcolor": [ 0.82517, 0.78181, 0.059545, 1.0 ],
                    "fontsize": [ 12.059008 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjYellow-2",
                "default": {
                    "accentcolor": [ 0.82517, 0.78181, 0.059545, 1.0 ],
                    "fontsize": [ 12.059008 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "numberGold-1",
                "default": {
                    "accentcolor": [ 0.764706, 0.592157, 0.101961, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "purple",
                "default": {
                    "bgcolor": [ 0.304029, 0.250694, 0.285628, 1.0 ],
                    "textcolor_inverse": [ 0.701961, 0.415686, 0.886275, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "receives",
                "default": {
                    "accentcolor": [ 0.870588, 0.415686, 0.062745, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rsliderGold",
                "default": {
                    "bgcolor": [ 0.764706, 0.592157, 0.101961, 1.0 ],
                    "color": [ 0.646639, 0.821777, 0.854593, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "sends",
                "default": {
                    "accentcolor": [ 0.0, 0.533333, 0.168627, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "sliderGold-1",
                "default": {
                    "accentcolor": [ 0.764706, 0.592157, 0.101961, 1.0 ],
                    "color": [ 0.907107, 0.934609, 0.842715, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "tap",
                "default": {
                    "fontname": [ "Lato Light" ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "tastefulltoggle",
                "default": {
                    "bgcolor": [ 0.185512, 0.263736, 0.260626, 1.0 ],
                    "color": [ 0.941176, 0.690196, 0.196078, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "tastefultoggle",
                "default": {
                    "bgcolor": [ 0.287863, 0.333333, 0.329398, 1.0 ],
                    "color": [ 0.941176, 0.690196, 0.196078, 1.0 ],
                    "elementcolor": [ 0.654902, 0.572549, 0.376471, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "test",
                "default": {
                    "fontface": [ 1 ],
                    "fontsize": [ 10.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "whitey",
                "default": {
                    "fontname": [ "Dirty Ego" ],
                    "fontsize": [ 36.0 ],
                    "patchlinecolor": [ 0.199068, 0.062496, 0.060031, 0.9 ],
                    "selectioncolor": [ 0.011765, 0.396078, 0.752941, 1.0 ],
                    "textcolor_inverse": [ 0.65098, 0.666667, 0.662745, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ],
        "toolbaradditions": [ "Data Knot", "data_knot", "dataknot" ]
    }
}