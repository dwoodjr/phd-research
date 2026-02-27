{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 1752.0, -260.0, 2469.0, 1252.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1479.0, 1781.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1170.0, 947.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1403.0, 1781.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1094.0, 947.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 60,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 561.0, 813.0 ],
                                    "text": "\"region editable 1\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 0\" \"region bounds 1 0.0000 102198.9543\" \"region bounds 2 102198.9543 204397.9085\" \"region bounds 3 204397.9085 306596.8628\" \"region bounds 4 306596.8628 408795.8171\" \"region bounds 5 408795.8171 510994.7713\" \"region bounds 6 510994.7713 613193.7256\" \"artificialmidities 0\" \"continuity 1.5000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 1\" \"audioinfluencer enabled 0\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 1\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.9566 0.2500 0.2500 0.4136 0.5000 0.5000\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 1\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 0\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source AudioInfluencer\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 586.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.59765625, 352.5, 374.59765625 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1576.0, 1817.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1198.0, 1781.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 899.0, 947.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1122.0, 1781.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 823.0, 947.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 59,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 562.0, 799.0 ],
                                    "text": "\"region editable 1\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 0\" \"region bounds 1 0.0000 10904.1494\" \"region bounds 2 10904.1494 21808.2987\" \"region bounds 3 21808.2987 32712.4481\" \"region bounds 4 32712.4481 43616.5975\" \"region bounds 5 43616.5975 54520.7469\" \"region bounds 6 54520.7469 65424.8962\" \"artificialmidities 0\" \"continuity 0.0000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 0\" \"audioinfluencer enabled 1\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 0\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.2500 0.8263 0.7177 0.4788 0.3485 0.3050\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 0\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 1\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source Player4\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 587.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.10546875, 352.5, 374.10546875 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1295.0, 1817.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 921.0, 1781.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 628.0, 947.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 845.0, 1781.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 947.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 60,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 561.0, 813.0 ],
                                    "text": "\"region editable 2\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 1\" \"region bounds 1 0.0000 154013.0208\" \"region bounds 2 154013.0208 308026.0417\" \"region bounds 3 308026.0417 462039.0625\" \"region bounds 4 462039.0625 616052.0833\" \"region bounds 5 616052.0833 770065.1042\" \"region bounds 6 770065.1042 924078.1250\" \"artificialmidities 0\" \"continuity 10.0000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 1\" \"audioinfluencer enabled 0\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 0\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.2500 0.2500 0.2500 1.0000 0.5000 0.5000\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 1\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 0\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source MidiInfluencer\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 586.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 373.78515625, 352.5, 373.78515625 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1018.0, 1817.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 646.0, 1781.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 357.0, 947.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 1781.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.0, 947.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 59,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 562.0, 799.0 ],
                                    "text": "\"region editable 1\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 0\" \"region bounds 1 0.0000 11367.5321\" \"region bounds 2 11367.5321 22735.0642\" \"region bounds 3 22735.0642 34102.5963\" \"region bounds 4 34102.5963 45470.1284\" \"region bounds 5 45470.1284 56837.6605\" \"region bounds 6 56837.6605 68205.1926\" \"artificialmidities 0\" \"continuity 1.5000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 0\" \"audioinfluencer enabled 1\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 0\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.8045 0.6525 0.5222 0.3376 0.1530 0.0010\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 0\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 1\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source Player3\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 587.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.19921875, 352.5, 374.19921875 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 743.0, 1817.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "args": [ "Player4" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-39",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 1403.0, 948.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1094.0, 19.0, 270.0, 924.0 ],
                    "varname": "somax.player.app4[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "Player3" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-40",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 1122.0, 948.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 823.0, 19.0, 270.0, 924.0 ],
                    "varname": "somax.player.app3[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "Player2" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-41",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 845.0, 948.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 19.0, 270.0, 924.0 ],
                    "varname": "somax.player.app2[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "Player1" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-42",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 570.0, 948.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.0, 19.0, 270.0, 924.0 ],
                    "varname": "somax.player.app[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 368.0, 347.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 79.0, 332.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 292.0, 347.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 332.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 477.0, 62.0 ],
                                    "text": "\"delay 0.0000\" \"gain 0.0000\" \"pan 0.0000\" \"somax.audioinfluencer.ui::somax.audioinfluencer::pattrstorage -1\" \"somax.audioinput::pattrstorage[1] -1\" \"somax.midioutput::pattrstorage[1] -1\" \"somax.audiooutput::pattrstorage[1] -1\" \"dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 502.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.1171875, 352.5, 374.1171875 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 461.0, 381.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 359.0, 690.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 79.0, 589.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 283.0, 690.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 589.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 59,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 88.0, 799.0 ],
                                    "text": "\"chordthreshold 199\" \"chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"chromafilter 1\" \"continuouschroma 1\" \"enabled 1\" \"filterattack 30\" \"filterrelease 500\" \"onsetchannels 0 0 1.0000 1 0 1.0000 6 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"onsetlimit 262\" \"pitchanalysis 1\" \"pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 113.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 373.859375, 352.5, 373.859375 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 437.0, 725.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1479.0, 847.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1155.0, 932.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1403.0, 847.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1079.0, 932.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 60,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 561.0, 813.0 ],
                                    "text": "\"region editable 1\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 0\" \"region bounds 1 0.0000 102198.9543\" \"region bounds 2 102198.9543 204397.9085\" \"region bounds 3 204397.9085 306596.8628\" \"region bounds 4 306596.8628 408795.8171\" \"region bounds 5 408795.8171 510994.7713\" \"region bounds 6 510994.7713 613193.7256\" \"artificialmidities 0\" \"continuity 1.5000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 1\" \"audioinfluencer enabled 0\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 1\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.9566 0.2500 0.2500 0.4136 0.5000 0.5000\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 1\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 0\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source AudioInfluencer\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 586.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.59765625, 352.5, 374.59765625 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1576.0, 883.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1198.0, 847.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 884.0, 932.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1122.0, 847.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 808.0, 932.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 59,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 562.0, 799.0 ],
                                    "text": "\"region editable 1\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 0\" \"region bounds 1 0.0000 10904.1494\" \"region bounds 2 10904.1494 21808.2987\" \"region bounds 3 21808.2987 32712.4481\" \"region bounds 4 32712.4481 43616.5975\" \"region bounds 5 43616.5975 54520.7469\" \"region bounds 6 54520.7469 65424.8962\" \"artificialmidities 0\" \"continuity 0.0000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 0\" \"audioinfluencer enabled 1\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 0\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.2500 0.8263 0.7177 0.4788 0.3485 0.3050\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 0\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 1\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source Player4\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 587.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.10546875, 352.5, 374.10546875 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1295.0, 883.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 921.0, 847.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 613.0, 932.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 845.0, 847.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 537.0, 932.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 60,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 561.0, 813.0 ],
                                    "text": "\"region editable 2\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 1\" \"region bounds 1 0.0000 154013.0208\" \"region bounds 2 154013.0208 308026.0417\" \"region bounds 3 308026.0417 462039.0625\" \"region bounds 4 462039.0625 616052.0833\" \"region bounds 5 616052.0833 770065.1042\" \"region bounds 6 770065.1042 924078.1250\" \"artificialmidities 0\" \"continuity 10.0000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 1\" \"audioinfluencer enabled 0\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 0\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.2500 0.2500 0.2500 1.0000 0.5000 0.5000\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 1\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 0\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source MidiInfluencer\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 586.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 373.78515625, 352.5, 373.78515625 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1018.0, 883.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 646.0, 847.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 342.0, 932.0, 73.0, 22.0 ],
                    "text": "Load Preset",
                    "textcolor": [ 0.141176470588235, 0.670588235294118, 0.254901960784314, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 847.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 266.0, 932.0, 74.0, 22.0 ],
                    "text": "Save Preset",
                    "textcolor": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.356862745098039, 0.584313725490196, 0.615686274509804, 1.0 ],
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 93.0, 119.0, 1000.0, 929.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 1437.0, 135.0, 20.0 ],
                                    "text": "to desired somax object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.0, 29.0, 98.0, 20.0 ],
                                    "text": "load parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 29.0, 98.0, 20.0 ],
                                    "text": "save parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 29.0, 97.0, 20.0 ],
                                    "text": "read parameters"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 768.0, 122.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 383.0, 154.0, 37.0 ],
                                    "text": "Double-click to see in a more readable format"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "cr", "" ],
                                    "patching_rect": [ 449.0, 255.0, 58.0, 22.0 ],
                                    "text": "t cr l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 1.0 ],
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "bang", "int" ],
                                    "patching_rect": [ 343.0, 390.0, 226.0, 22.0 ],
                                    "text": "text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1357.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 1327.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 601.0, 470.0, 154.0, 64.0 ],
                                    "text": "press to send all parameters settings back to the attached somax object"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 200.0, 116.0, 24.0 ],
                                    "text": "dump all settings"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "dump", "zlclear", "clear" ],
                                    "patching_rect": [ 239.0, 241.0, 123.0, 22.0 ],
                                    "text": "t b dump zlclear clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 200.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "linecount": 59,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 487.0, 562.0, 799.0 ],
                                    "text": "\"region editable 1\" \"region enabled 1 1.0000\" \"region enabled 2 1.0000\" \"region enabled 3 1.0000\" \"region enabled 4 1.0000\" \"region enabled 5 1.0000\" \"region enabled 6 1.0000\" \"region enabled 0 0\" \"region bounds 1 0.0000 11367.5321\" \"region bounds 2 11367.5321 22735.0642\" \"region bounds 3 22735.0642 34102.5963\" \"region bounds 4 34102.5963 45470.1284\" \"region bounds 5 45470.1284 56837.6605\" \"region bounds 6 56837.6605 68205.1926\" \"artificialmidities 0\" \"continuity 1.5000\" \"cut 1\" \"decaybasis 1\" \"enabled 1\" \"midiinfluencer enabled 0\" \"audioinfluencer enabled 1\" \"enforcetaboo 1\" \"fallback Random\" \"flush 0.0000\" \"harmonicenable 1\" \"harmonicngramorder 2\" \"harmonicpeakdecay 3.0010\" \"melodicenable 1\" \"melodicmod12 0\" \"melodicngramorder 2\" \"melodicpeakdecay 2.0010\" \"mfccdistance 5.0000\" \"mfccenable 1\" \"mfccngramorder 2\" \"mfccpeakdecay 3.0010\" \"mfccweights 0 0 0 0 0 0 0 0 0 0 0 0 0\" \"mididurations Sustained\" \"midinotebynote 1\" \"midionsets 0\" \"outputfrom 0\" \"outputprobability 1.0000\" \"playingmode 1\" \"pollpeaks 1\" \"quality 0.0000\" \"recombine 1\" \"resetinfluences 0.0000\" \"selfharmonicenable 1\" \"selfharmonicngramorder 2\" \"selfharmonicpeakdecay 3.0010\" \"selfmelodicenable 1\" \"selfmfccdistance 5.0000\" \"selfmfccenable 1\" \"selfmfccngramorder 2\" \"selfmfccpeakdecay 3.0010\" \"selfmod12 0\" \"selfngramorder 2\" \"selfpeakdecay 2.0010\" \"sparse 0\" \"tabooduration 0\" \"timeout 2.0000\" \"timeoutenable 1\" \"timeoutrelease 0\" \"timestretch 1.0000\" \"timestretchmode 0\" \"transpositionbias 1.0000\" \"__exp_autojumpenable 0\" \"__exp_durationenable 0\" \"__exp_melodicpitchfromchords Top note\" \"__exp_numnotesenable 0\" \"__exp_octavebandsenable 0\" \"__exp_selfpitchfromchords Top note\" \"__exp_tempoconsistencyenable 0\" \"__exp_autojumpactivate 2\" \"__exp_autojumpforcejump 8\" \"__exp_durationmu 1.0000\" \"__exp_durationsigma 1.0000\" \"__exp_numnotesmu 4.0000\" \"__exp_numnotessigma 1.0000\" \"__exp_octavebands 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000 0.5000\" \"__exp_tempoconsistencylen 5\" \"__exp_tempoconsistencysigma 5\" \"_exp_energy::binary 0\" \"_exp_energy::center -6.0000\" \"_exp_energy::enable 0\" \"_exp_energy::filterby 0\" \"_exp_energy::live.numbox 0.0000\" \"_exp_energy::live.slider 0.0000\" \"_exp_energy::weight 0.8000\" \"_exp_energy::width 3.0000\" \"dump done\" \"weights 0.8045 0.6525 0.5222 0.3376 0.1530 0.0010\" \"transpositions 0 0 0 0 0 1 0 0 0 0 0 0\" \"midioutput channel 0\" \"midioutput device AU DLS Synth 1\" \"midioutput enabled 1\" \"midioutput dump done\" \"audiooutput enabled 1\" \"audiooutput leftchannel 1\" \"audiooutput rightchannel 2\" \"audiooutput dump done\" \"midimixer channels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midimixer velscale 0 127\" \"midimixer dump done\" \"audiomixer gain 0.0000\" \"audiomixer monocorpus 0\" \"audiomixer pan 0.0000\" \"audiomixer width 127.0000\" \"audiomixer dump done\" \"midiinfluencer chordthreshold 20\" \"midiinfluencer chromachannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer chromafilter 1\" \"midiinfluencer continuouschroma 1\" \"midiinfluencer enabled 0\" \"midiinfluencer filterattack 30\" \"midiinfluencer filterrelease 500\" \"midiinfluencer onsetchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer onsetlimit 0\" \"midiinfluencer pitchanalysis 1\" \"midiinfluencer pitchchannels 0 0 1.0000 1 0 1.0000 2 0 1.0000 3 0 1.0000 4 0 1.0000 5 0 1.0000 6 0 1.0000 7 0 1.0000 8 0 1.0000 9 0 1.0000 10 0 1.0000 11 0 1.0000 12 0 1.0000 13 0 1.0000 14 0 1.0000 15 0 1.0000\" \"midiinfluencer dump done\" \"audioinfluencer bonkdebounce 0.9700\" \"audioinfluencer bonkhighthresh 10.0000\" \"audioinfluencer bonklowthresh 0.0000\" \"audioinfluencer bonkminvel 0.1000\" \"audioinfluencer chromadecay 300\" \"audioinfluencer continuouschroma 1\" \"audioinfluencer continuousmfcc 1\" \"audioinfluencer continuouspitch 1\" \"audioinfluencer enabled 1\" \"audioinfluencer onsetlimit 150\" \"audioinfluencer onsetmethod 2\" \"audioinfluencer yindownsample 2\" \"audioinfluencer yinlevel -48\" \"audioinfluencer yinminfreq 50\" \"audioinfluencer yinprobability 0.7500\" \"audioinfluencer yinquality 0.7500\" \"audioinfluencer yinwindow 35\" \"audioinfluencer Yin+::pattrstorage -1\" \"audioinfluencer dump done\" \"midirenderer dump done\" \"audiorenderer attack 50.0000\" \"audiorenderer crossfadecurve 0.5000\" \"audiorenderer live.text 0.0000\" \"audiorenderer release 150.0000\" \"audiorenderer shift 0\" \"audiorenderer tsmode extremestretch\" \"audiorenderer voices 3\" \"audiorenderer dump done\" \"router limiter 0.0000\" \"router 1 source <None>\" \"router 1 chroma 1.0000\" \"router 1 chromaonset 1\" \"router 1 enable 1\" \"router 1 influencedelay 0.0000\" \"router 1 mfcc 1.0000\" \"router 1 onset 1\" \"router 1 pitch 1\" \"router 1 dump done\" \"router 3 source <None>\" \"router 3 chroma 1.0000\" \"router 3 chromaonset 1\" \"router 3 enable 1\" \"router 3 influencedelay 0.0000\" \"router 3 mfcc 1.0000\" \"router 3 onset 1\" \"router 3 pitch 1\" \"router 3 dump done\" \"router 0 source Player3\" \"router 0 chroma 1.0000\" \"router 0 chromaonset 1\" \"router 0 enable 1\" \"router 0 influencedelay 0.0000\" \"router 0 mfcc 1.0000\" \"router 0 onset 1\" \"router 0 pitch 1\" \"router 0 dump done\" \"router 2 source <None>\" \"router 2 chroma 1.0000\" \"router 2 chromaonset 1\" \"router 2 enable 1\" \"router 2 influencedelay 0.0000\" \"router 2 mfcc 1.0000\" \"router 2 onset 1\" \"router 2 pitch 1\" \"router 2 dump done\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 31.0, 411.0, 88.0, 22.0 ],
                                    "text": "zl 16384 group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 241.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 31.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 768.0, 24.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 1432.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "midpoints": [ 40.5, 444.86419624090195, 587.5, 444.86419624090195 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 497.5, 374.19921875, 352.5, 374.19921875 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 458.5, 374.10638374090195, 352.5, 374.10638374090195 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 777.5, 469.36028999090195, 44.5, 469.36028999090195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 317.8333333333333, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "midpoints": [ 248.5, 337.31981977820396, 40.5, 337.31981977820396 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-24", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 283.1666666666667, 1410.639674782753, 44.5, 1410.639674782753 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "order": 1,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 40.5, 154.73873849090194, 458.5, 154.73873849090194 ],
                                    "order": 0,
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 743.0, 883.0, 84.0, 22.0 ],
                    "text": "p save_preset"
                }
            },
            {
                "box": {
                    "args": [ "Player4" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 1403.0, 14.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1079.0, 4.0, 270.0, 924.0 ],
                    "varname": "somax.player.app4",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "Player3" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 1122.0, 14.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 808.0, 4.0, 270.0, 924.0 ],
                    "varname": "somax.player.app3",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "Player2" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 845.0, 14.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 537.0, 4.0, 270.0, 924.0 ],
                    "varname": "somax.player.app2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "Player1" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.player.app.maxpat",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "", "", "", "" ],
                    "patching_rect": [ 570.0, 14.0, 250.0, 825.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 266.0, 4.0, 270.0, 924.0 ],
                    "varname": "somax.player.app",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.midiinfluencer.app.maxpat",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 283.0, 454.0, 250.0, 221.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 365.0, 259.0, 220.0 ],
                    "varname": "somax.midiinfluencer.app",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-4",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.audioinfluencer.app.maxpat",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 287.0, 14.0, 251.0, 324.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 4.0, 261.0, 323.0 ],
                    "varname": "somax.audioinfluencer.app",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.0, 338.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1367.0, 47.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "somax.server.app.maxpat",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 14.0, 14.0, 254.0, 299.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.5, 631.0, 260.0, 299.0 ],
                    "varname": "somax.server.app",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-1", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "midpoints": [ 1412.5, 1810.0, 1618.0, 1810.0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-11", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 2 ],
                    "midpoints": [ 655.5, 876.0, 817.5, 876.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 2 ],
                    "midpoints": [ 930.5, 876.0, 1092.5, 876.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "midpoints": [ 854.5, 876.0, 1060.0, 876.0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1027.5, 915.0, 837.86328125, 915.0, 837.86328125, 4.0, 854.5, 4.0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 2 ],
                    "midpoints": [ 1207.5, 876.0, 1369.5, 876.0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "midpoints": [ 1131.5, 876.0, 1337.0, 876.0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 1304.5, 915.0, 1113.484375, 915.0, 1113.484375, 4.0, 1131.5, 4.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 2 ],
                    "midpoints": [ 1488.5, 876.0, 1650.5, 876.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "midpoints": [ 1412.5, 876.0, 1618.0, 876.0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 1585.5, 915.0, 1390.1875, 915.0, 1390.1875, 4.0, 1412.5, 4.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 2 ],
                    "midpoints": [ 368.5, 719.0, 511.5, 719.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "midpoints": [ 292.5, 719.0, 479.0, 719.0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 446.5, 758.0, 262.64453125, 758.0, 262.64453125, 444.0, 292.5, 444.0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 2 ],
                    "midpoints": [ 377.5, 376.0, 535.5, 376.0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "midpoints": [ 301.5, 376.0, 503.0, 376.0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 470.5, 416.0859375, 275.87890625, 416.0859375, 275.87890625, 4.0, 296.5, 4.0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "midpoints": [ 1585.5, 1849.0, 1390.1875, 1849.0, 1390.1875, 938.0, 1412.5, 938.0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 2 ],
                    "midpoints": [ 1207.5, 1810.0, 1369.5, 1810.0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 1 ],
                    "midpoints": [ 1131.5, 1810.0, 1337.0, 1810.0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 752.5, 905.0, 562.35546875, 905.0, 562.35546875, 4.0, 579.5, 4.0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 1304.5, 1849.0, 1113.484375, 1849.0, 1113.484375, 938.0, 1131.5, 938.0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 2 ],
                    "midpoints": [ 930.5, 1810.0, 1092.5, 1810.0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 1 ],
                    "midpoints": [ 854.5, 1810.0, 1060.0, 1810.0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 1027.5, 1849.0, 837.86328125, 1849.0, 837.86328125, 938.0, 854.5, 938.0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 2 ],
                    "midpoints": [ 655.5, 1810.0, 817.5, 1810.0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 1 ],
                    "midpoints": [ 579.5, 1810.0, 785.0, 1810.0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "midpoints": [ 752.5, 1839.0, 562.35546875, 1839.0, 562.35546875, 938.0, 579.5, 938.0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-39", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-40", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-41", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-42", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-5", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-6", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-7", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 2 ],
                    "midpoints": [ 1488.5, 1810.0, 1650.5, 1810.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "midpoints": [ 579.5, 876.0, 785.0, 876.0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-11::obj-118::obj-114": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-11::obj-118::obj-119": [ "live.text[68]", "live.text[30]", 0 ],
            "obj-11::obj-118::obj-2::obj-119": [ "live.text[67]", "live.text[30]", 0 ],
            "obj-11::obj-118::obj-2::obj-13": [ "live.text[66]", "live.text", 0 ],
            "obj-11::obj-118::obj-2::obj-140": [ "mc.live.gain~[9]", "mc.live.gain~", 0 ],
            "obj-11::obj-118::obj-2::obj-62::obj-1": [ "source[9]", "source", 0 ],
            "obj-11::obj-118::obj-42": [ "live.toggle", "live.toggle", 0 ],
            "obj-11::obj-118::obj-55": [ "live.gain~", "live.gain~", 0 ],
            "obj-11::obj-17::obj-103": [ "influence delay[4]", "influencedelay", 0 ],
            "obj-11::obj-17::obj-10::obj-103": [ "influence delay[2]", "influencedelay", 0 ],
            "obj-11::obj-17::obj-10::obj-21": [ "onset[4]", "onset", 0 ],
            "obj-11::obj-17::obj-10::obj-26": [ "chroma scaling factor[5]", "chroma", 0 ],
            "obj-11::obj-17::obj-10::obj-28": [ "chromaonset[4]", "chromaonset", 0 ],
            "obj-11::obj-17::obj-10::obj-29": [ "enable[4]", "enable", 0 ],
            "obj-11::obj-17::obj-10::obj-30": [ "chroma scaling factor[6]", "chroma", 0 ],
            "obj-11::obj-17::obj-10::obj-46::obj-1": [ "source[7]", "source", 0 ],
            "obj-11::obj-17::obj-10::obj-9": [ "pitch[4]", "pitch", 0 ],
            "obj-11::obj-17::obj-2::obj-103": [ "influence delay", "influencedelay", 0 ],
            "obj-11::obj-17::obj-2::obj-21": [ "onset[2]", "onset", 0 ],
            "obj-11::obj-17::obj-2::obj-26": [ "chroma scaling factor[10]", "chroma", 0 ],
            "obj-11::obj-17::obj-2::obj-28": [ "chromaonset[2]", "chromaonset", 0 ],
            "obj-11::obj-17::obj-2::obj-29": [ "enable[2]", "enable", 0 ],
            "obj-11::obj-17::obj-2::obj-30": [ "chroma scaling factor[2]", "chroma", 0 ],
            "obj-11::obj-17::obj-2::obj-46::obj-1": [ "source[1]", "source", 0 ],
            "obj-11::obj-17::obj-2::obj-9": [ "pitch[2]", "pitch", 0 ],
            "obj-11::obj-17::obj-33::obj-103": [ "influence delay[3]", "influencedelay", 0 ],
            "obj-11::obj-17::obj-33::obj-21": [ "onset[5]", "onset", 0 ],
            "obj-11::obj-17::obj-33::obj-26": [ "chroma scaling factor[11]", "chroma", 0 ],
            "obj-11::obj-17::obj-33::obj-28": [ "chromaonset[5]", "chromaonset", 0 ],
            "obj-11::obj-17::obj-33::obj-29": [ "enable[5]", "enable", 0 ],
            "obj-11::obj-17::obj-33::obj-30": [ "chroma scaling factor[12]", "chroma", 0 ],
            "obj-11::obj-17::obj-33::obj-46::obj-1": [ "source[8]", "source", 0 ],
            "obj-11::obj-17::obj-33::obj-9": [ "pitch[5]", "pitch", 0 ],
            "obj-11::obj-17::obj-6::obj-103": [ "influence delay[1]", "influencedelay", 0 ],
            "obj-11::obj-17::obj-6::obj-21": [ "onset[3]", "onset", 0 ],
            "obj-11::obj-17::obj-6::obj-26": [ "chroma scaling factor[3]", "chroma", 0 ],
            "obj-11::obj-17::obj-6::obj-28": [ "chromaonset[3]", "chromaonset", 0 ],
            "obj-11::obj-17::obj-6::obj-29": [ "enable[3]", "enable", 0 ],
            "obj-11::obj-17::obj-6::obj-30": [ "chroma scaling factor[4]", "chroma", 0 ],
            "obj-11::obj-17::obj-6::obj-46::obj-1": [ "source[6]", "source", 0 ],
            "obj-11::obj-17::obj-6::obj-9": [ "pitch[3]", "pitch", 0 ],
            "obj-11::obj-25::obj-1": [ "Gain", "Gain", 0 ],
            "obj-11::obj-25::obj-44": [ "live.dial[1]", "Width", 0 ],
            "obj-11::obj-25::obj-46": [ "live.dial", "Pan", 0 ],
            "obj-11::obj-3::obj-1115": [ "continuity[22]", "continuity", 0 ],
            "obj-11::obj-3::obj-1150": [ "live.text[65]", "live.text", 0 ],
            "obj-11::obj-3::obj-1179": [ "continuity[23]", "continuity", 0 ],
            "obj-11::obj-3::obj-123::obj-1": [ "live.text[15]", "live.text", 0 ],
            "obj-11::obj-3::obj-123::obj-2": [ "live.text[17]", "live.text", 0 ],
            "obj-11::obj-3::obj-123::obj-3": [ "live.text[16]", "live.text", 0 ],
            "obj-11::obj-3::obj-14::obj-12": [ "live.slider[2]", "live.slider[2]", 0 ],
            "obj-11::obj-3::obj-14::obj-128": [ "live.text[62]", "live.text", 1 ],
            "obj-11::obj-3::obj-14::obj-135": [ "live.text[59]", "live.text", 1 ],
            "obj-11::obj-3::obj-14::obj-153": [ "live.text[61]", "live.text", 1 ],
            "obj-11::obj-3::obj-14::obj-163": [ "live.text[60]", "live.text", 1 ],
            "obj-11::obj-3::obj-14::obj-173": [ "live.text[51]", "live.text", 1 ],
            "obj-11::obj-3::obj-14::obj-39": [ "live.tab[1]", "live.tab", 0 ],
            "obj-11::obj-3::obj-14::obj-40": [ "live.slider[4]", "live.slider[2]", 0 ],
            "obj-11::obj-3::obj-14::obj-64": [ "live.text[52]", "live.text", 0 ],
            "obj-11::obj-3::obj-16::obj-26": [ "corpusname[4]", "corpusname", 0 ],
            "obj-11::obj-3::obj-2": [ "heldnotesmode[6]", "heldnotesmode", 0 ],
            "obj-11::obj-3::obj-32": [ "heldnotesmode[3]", "heldnotesmode", 0 ],
            "obj-11::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[28]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[27]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[29]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[31]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[30]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[22]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[8]", "harmonincpeakdecay", 0 ],
            "obj-11::obj-3::obj-407::obj-1115": [ "continuity[1]", "continuity", 0 ],
            "obj-11::obj-3::obj-407::obj-1175": [ "heldnotesmode[2]", "heldnotesmode", 0 ],
            "obj-11::obj-3::obj-407::obj-1179": [ "continuity[16]", "continuity", 0 ],
            "obj-11::obj-3::obj-407::obj-12": [ "melodicmod12[1]", "melodicmod12", 0 ],
            "obj-11::obj-3::obj-407::obj-120": [ "melodicbypass[1]", "melodicbypass", 0 ],
            "obj-11::obj-3::obj-407::obj-1218": [ "simultaneousonsets[2]", "artificialmidities", 0 ],
            "obj-11::obj-3::obj-407::obj-126": [ "harmonicbypass[1]", "harmonicbypass", 0 ],
            "obj-11::obj-3::obj-407::obj-134": [ "continuity[17]", "continuity", 0 ],
            "obj-11::obj-3::obj-407::obj-1344": [ "enforcetaboo[4]", "enforcetaboo", 0 ],
            "obj-11::obj-3::obj-407::obj-140": [ "resetinfluences[1]", "resetinfluences", 0 ],
            "obj-11::obj-3::obj-407::obj-144": [ "harmonicngramorder[1]", "harmonicngramorder", 0 ],
            "obj-11::obj-3::obj-407::obj-1444": [ "outputprobability[4]", "outputprobability", 0 ],
            "obj-11::obj-3::obj-407::obj-152": [ "selfngramorder[1]", "selfngramorder", 0 ],
            "obj-11::obj-3::obj-407::obj-154": [ "melodicngramorder[4]", "melodicngramorder", 0 ],
            "obj-11::obj-3::obj-407::obj-19": [ "selfmod12[4]", "selfmod12", 0 ],
            "obj-11::obj-3::obj-407::obj-22": [ "selfmelodicbypass[1]", "selfmelodicbypass", 0 ],
            "obj-11::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[2]", "harmonincpeakdecay", 0 ],
            "obj-11::obj-3::obj-407::obj-255": [ "melodicpeakdecay[4]", "melodicpeakdecay", 0 ],
            "obj-11::obj-3::obj-407::obj-256": [ "selfpeakdecay[1]", "selfpeakdecay", 0 ],
            "obj-11::obj-3::obj-407::obj-270::obj-1226": [ "width[1]", "Width", 0 ],
            "obj-11::obj-3::obj-407::obj-270::obj-1227": [ "center[1]", "Center", 0 ],
            "obj-11::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[3]", "live.slider", 0 ],
            "obj-11::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[3]", "live.numbox[2]", 0 ],
            "obj-11::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[1]", "__exp_velocityenable", 0 ],
            "obj-11::obj-3::obj-407::obj-270::obj-889": [ "weight[1]", "Weight", 0 ],
            "obj-11::obj-3::obj-407::obj-295": [ "playingmode[4]", "playingmode", 0 ],
            "obj-11::obj-3::obj-407::obj-298": [ "simultaneousonsets[7]", "simultaneousonsets", 0 ],
            "obj-11::obj-3::obj-407::obj-328": [ "decaybasis[1]", "decaybasis", 0 ],
            "obj-11::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[35]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[36]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[34]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[32]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[23]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[33]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[4]", "__exp_melodicpitchfromchords", 0 ],
            "obj-11::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[4]", "__exp_tempoconsistencysigma", 0 ],
            "obj-11::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[1]", "__exp_numnotessigma", 0 ],
            "obj-11::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[4]", "__exp_numnotesenable", 0 ],
            "obj-11::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[1]", "__exp_numnotesmu", 0 ],
            "obj-11::obj-3::obj-407::obj-667": [ "selfharmonicbypass[1]", "selfharmonicbypass", 0 ],
            "obj-11::obj-3::obj-407::obj-670": [ "harmonicbypass[2]", "harmonicbypass", 0 ],
            "obj-11::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[1]", "selfharmonicngramorder", 0 ],
            "obj-11::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[5]", "harmonincpeakdecay[1]", 0 ],
            "obj-11::obj-3::obj-407::obj-688": [ "__exp_durationsigma[4]", "__exp_durationsigma", 0 ],
            "obj-11::obj-3::obj-407::obj-702": [ "__exp_durationmu[1]", "__exp_durationmu", 0 ],
            "obj-11::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[4]", "__exp_octavebandsenable", 0 ],
            "obj-11::obj-3::obj-407::obj-733": [ "__exp_octavebands[1]", "__exp_octavebands", 0 ],
            "obj-11::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[4]", "__exp_selfpitchfromchords", 0 ],
            "obj-11::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[1]", "__exp_autojumpforcejump", 0 ],
            "obj-11::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[1]", "__exp_autojumpenable", 0 ],
            "obj-11::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[1]", "__exp_autojumpactivate", 0 ],
            "obj-11::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[4]", "__exp_tempoconsistencyenable", 0 ],
            "obj-11::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[4]", "__exp_tempoconsistencylen", 0 ],
            "obj-11::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[6]", "harmonincpeakdecay", 0 ],
            "obj-11::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[21]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[25]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[26]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-843": [ "harmonicngramorder[2]", "harmonicngramorder", 0 ],
            "obj-11::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[3]", "harmonincpeakdecay[1]", 0 ],
            "obj-11::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[4]", "selfharmonicngramorder", 0 ],
            "obj-11::obj-3::obj-407::obj-870": [ "selfharmonicbypass[4]", "selfharmonicbypass", 0 ],
            "obj-11::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[7]", "harmonincpeakdecay", 0 ],
            "obj-11::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[20]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[18]", "live.text", 0 ],
            "obj-11::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[19]", "live.text", 0 ],
            "obj-11::obj-3::obj-79::obj-1": [ "live.text[121]", "live.text", 0 ],
            "obj-11::obj-3::obj-79::obj-2": [ "live.text[120]", "live.text", 0 ],
            "obj-11::obj-3::obj-79::obj-3": [ "live.text[122]", "live.text", 0 ],
            "obj-11::obj-3::obj-85::obj-1": [ "live.text[38]", "live.text", 0 ],
            "obj-11::obj-3::obj-85::obj-2": [ "live.text[39]", "live.text", 0 ],
            "obj-11::obj-3::obj-85::obj-3": [ "live.text[37]", "live.text", 0 ],
            "obj-11::obj-3::obj-87::obj-1": [ "live.text[8]", "live.text", 0 ],
            "obj-11::obj-3::obj-87::obj-2": [ "live.text[1]", "live.text", 0 ],
            "obj-11::obj-3::obj-87::obj-3": [ "live.text[2]", "live.text", 0 ],
            "obj-11::obj-3::obj-89::obj-1": [ "live.text[10]", "live.text", 0 ],
            "obj-11::obj-3::obj-89::obj-2": [ "live.text[11]", "live.text", 0 ],
            "obj-11::obj-3::obj-89::obj-3": [ "live.text[9]", "live.text", 0 ],
            "obj-11::obj-3::obj-91::obj-1": [ "live.text[13]", "live.text", 0 ],
            "obj-11::obj-3::obj-91::obj-2": [ "live.text[14]", "live.text", 0 ],
            "obj-11::obj-3::obj-91::obj-3": [ "live.text[12]", "live.text", 0 ],
            "obj-11::obj-3::obj-94::obj-1": [ "live.text[42]", "live.text", 0 ],
            "obj-11::obj-3::obj-94::obj-2": [ "live.text[41]", "live.text", 0 ],
            "obj-11::obj-3::obj-94::obj-3": [ "live.text[40]", "live.text", 0 ],
            "obj-11::obj-6::obj-98": [ "live.text[6]", "live.text[26]", 0 ],
            "obj-1::obj-118::obj-114": [ "live.gain~[2]", "live.gain~", 0 ],
            "obj-1::obj-118::obj-119": [ "live.text[104]", "live.text[30]", 0 ],
            "obj-1::obj-118::obj-2::obj-119": [ "live.text[102]", "live.text[30]", 0 ],
            "obj-1::obj-118::obj-2::obj-13": [ "live.text[103]", "live.text", 0 ],
            "obj-1::obj-118::obj-2::obj-140": [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
            "obj-1::obj-118::obj-2::obj-62::obj-1": [ "source[14]", "source", 0 ],
            "obj-1::obj-118::obj-42": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-1::obj-118::obj-55": [ "live.gain~[3]", "live.gain~", 0 ],
            "obj-1::obj-17::obj-103": [ "influence delay[9]", "influencedelay", 0 ],
            "obj-1::obj-17::obj-10::obj-103": [ "influence delay[7]", "influencedelay", 0 ],
            "obj-1::obj-17::obj-10::obj-21": [ "onset[8]", "onset", 0 ],
            "obj-1::obj-17::obj-10::obj-26": [ "chroma scaling factor[15]", "chroma", 0 ],
            "obj-1::obj-17::obj-10::obj-28": [ "chromaonset[8]", "chromaonset", 0 ],
            "obj-1::obj-17::obj-10::obj-29": [ "enable[8]", "enable", 0 ],
            "obj-1::obj-17::obj-10::obj-30": [ "chroma scaling factor[14]", "chroma", 0 ],
            "obj-1::obj-17::obj-10::obj-46::obj-1": [ "source[12]", "source", 0 ],
            "obj-1::obj-17::obj-10::obj-9": [ "pitch[8]", "pitch", 0 ],
            "obj-1::obj-17::obj-2::obj-103": [ "influence delay[5]", "influencedelay", 0 ],
            "obj-1::obj-17::obj-2::obj-21": [ "onset[6]", "onset", 0 ],
            "obj-1::obj-17::obj-2::obj-26": [ "chroma scaling factor[7]", "chroma", 0 ],
            "obj-1::obj-17::obj-2::obj-28": [ "chromaonset[6]", "chromaonset", 0 ],
            "obj-1::obj-17::obj-2::obj-29": [ "enable[6]", "enable", 0 ],
            "obj-1::obj-17::obj-2::obj-30": [ "chroma scaling factor[8]", "chroma", 0 ],
            "obj-1::obj-17::obj-2::obj-46::obj-1": [ "source[10]", "source", 0 ],
            "obj-1::obj-17::obj-2::obj-9": [ "pitch[6]", "pitch", 0 ],
            "obj-1::obj-17::obj-33::obj-103": [ "influence delay[8]", "influencedelay", 0 ],
            "obj-1::obj-17::obj-33::obj-21": [ "onset[9]", "onset", 0 ],
            "obj-1::obj-17::obj-33::obj-26": [ "chroma scaling factor[17]", "chroma", 0 ],
            "obj-1::obj-17::obj-33::obj-28": [ "chromaonset[9]", "chromaonset", 0 ],
            "obj-1::obj-17::obj-33::obj-29": [ "enable[9]", "enable", 0 ],
            "obj-1::obj-17::obj-33::obj-30": [ "chroma scaling factor[16]", "chroma", 0 ],
            "obj-1::obj-17::obj-33::obj-46::obj-1": [ "source[13]", "source", 0 ],
            "obj-1::obj-17::obj-33::obj-9": [ "pitch[9]", "pitch", 0 ],
            "obj-1::obj-17::obj-6::obj-103": [ "influence delay[6]", "influencedelay", 0 ],
            "obj-1::obj-17::obj-6::obj-21": [ "onset[7]", "onset", 0 ],
            "obj-1::obj-17::obj-6::obj-26": [ "chroma scaling factor[9]", "chroma", 0 ],
            "obj-1::obj-17::obj-6::obj-28": [ "chromaonset[7]", "chromaonset", 0 ],
            "obj-1::obj-17::obj-6::obj-29": [ "enable[7]", "enable", 0 ],
            "obj-1::obj-17::obj-6::obj-30": [ "chroma scaling factor[13]", "chroma", 0 ],
            "obj-1::obj-17::obj-6::obj-46::obj-1": [ "source[11]", "source", 0 ],
            "obj-1::obj-17::obj-6::obj-9": [ "pitch[7]", "pitch", 0 ],
            "obj-1::obj-25::obj-1": [ "Gain[1]", "Gain", 0 ],
            "obj-1::obj-25::obj-44": [ "live.dial[3]", "Width", 0 ],
            "obj-1::obj-25::obj-46": [ "live.dial[4]", "Pan", 0 ],
            "obj-1::obj-3::obj-1115": [ "continuity[24]", "continuity", 0 ],
            "obj-1::obj-3::obj-1150": [ "live.text[100]", "live.text", 0 ],
            "obj-1::obj-3::obj-1179": [ "continuity[25]", "continuity", 0 ],
            "obj-1::obj-3::obj-123::obj-1": [ "live.text[75]", "live.text", 0 ],
            "obj-1::obj-3::obj-123::obj-2": [ "live.text[74]", "live.text", 0 ],
            "obj-1::obj-3::obj-123::obj-3": [ "live.text[45]", "live.text", 0 ],
            "obj-1::obj-3::obj-14::obj-12": [ "live.slider[6]", "live.slider[2]", 0 ],
            "obj-1::obj-3::obj-14::obj-128": [ "live.text[90]", "live.text", 1 ],
            "obj-1::obj-3::obj-14::obj-135": [ "live.text[92]", "live.text", 1 ],
            "obj-1::obj-3::obj-14::obj-153": [ "live.text[93]", "live.text", 1 ],
            "obj-1::obj-3::obj-14::obj-163": [ "live.text[89]", "live.text", 1 ],
            "obj-1::obj-3::obj-14::obj-173": [ "live.text[91]", "live.text", 1 ],
            "obj-1::obj-3::obj-14::obj-39": [ "live.tab[2]", "live.tab", 0 ],
            "obj-1::obj-3::obj-14::obj-40": [ "live.slider[7]", "live.slider[2]", 0 ],
            "obj-1::obj-3::obj-14::obj-64": [ "live.text[64]", "live.text", 0 ],
            "obj-1::obj-3::obj-16::obj-26": [ "corpusname[5]", "corpusname", 0 ],
            "obj-1::obj-3::obj-2": [ "heldnotesmode[5]", "heldnotesmode", 0 ],
            "obj-1::obj-3::obj-32": [ "heldnotesmode[7]", "heldnotesmode", 0 ],
            "obj-1::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[49]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[80]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[79]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[81]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[50]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[82]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[9]", "harmonincpeakdecay", 0 ],
            "obj-1::obj-3::obj-407::obj-1115": [ "continuity[2]", "continuity", 0 ],
            "obj-1::obj-3::obj-407::obj-1175": [ "heldnotesmode[4]", "heldnotesmode", 0 ],
            "obj-1::obj-3::obj-407::obj-1179": [ "continuity[4]", "continuity", 0 ],
            "obj-1::obj-3::obj-407::obj-12": [ "melodicmod12[2]", "melodicmod12", 0 ],
            "obj-1::obj-3::obj-407::obj-120": [ "melodicbypass[2]", "melodicbypass", 0 ],
            "obj-1::obj-3::obj-407::obj-1218": [ "simultaneousonsets[9]", "artificialmidities", 0 ],
            "obj-1::obj-3::obj-407::obj-126": [ "harmonicbypass[4]", "harmonicbypass", 0 ],
            "obj-1::obj-3::obj-407::obj-134": [ "continuity[3]", "continuity", 0 ],
            "obj-1::obj-3::obj-407::obj-1344": [ "enforcetaboo[5]", "enforcetaboo", 0 ],
            "obj-1::obj-3::obj-407::obj-140": [ "resetinfluences[2]", "resetinfluences", 0 ],
            "obj-1::obj-3::obj-407::obj-144": [ "harmonicngramorder[4]", "harmonicngramorder", 0 ],
            "obj-1::obj-3::obj-407::obj-1444": [ "outputprobability[5]", "outputprobability", 0 ],
            "obj-1::obj-3::obj-407::obj-152": [ "selfngramorder[2]", "selfngramorder", 0 ],
            "obj-1::obj-3::obj-407::obj-154": [ "melodicngramorder[5]", "melodicngramorder", 0 ],
            "obj-1::obj-3::obj-407::obj-19": [ "selfmod12[5]", "selfmod12", 0 ],
            "obj-1::obj-3::obj-407::obj-22": [ "selfmelodicbypass[2]", "selfmelodicbypass", 0 ],
            "obj-1::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[13]", "harmonincpeakdecay", 0 ],
            "obj-1::obj-3::obj-407::obj-255": [ "melodicpeakdecay[5]", "melodicpeakdecay", 0 ],
            "obj-1::obj-3::obj-407::obj-256": [ "selfpeakdecay[2]", "selfpeakdecay", 0 ],
            "obj-1::obj-3::obj-407::obj-270::obj-1226": [ "width[2]", "Width", 0 ],
            "obj-1::obj-3::obj-407::obj-270::obj-1227": [ "center[2]", "Center", 0 ],
            "obj-1::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[5]", "live.slider", 0 ],
            "obj-1::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[4]", "live.numbox[2]", 0 ],
            "obj-1::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[2]", "__exp_velocityenable", 0 ],
            "obj-1::obj-3::obj-407::obj-270::obj-889": [ "weight[2]", "Weight", 0 ],
            "obj-1::obj-3::obj-407::obj-295": [ "playingmode[5]", "playingmode", 0 ],
            "obj-1::obj-3::obj-407::obj-298": [ "simultaneousonsets[8]", "simultaneousonsets", 0 ],
            "obj-1::obj-3::obj-407::obj-328": [ "decaybasis[2]", "decaybasis", 0 ],
            "obj-1::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[88]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[86]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[87]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[83]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[84]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[85]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[5]", "__exp_melodicpitchfromchords", 0 ],
            "obj-1::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[5]", "__exp_tempoconsistencysigma", 0 ],
            "obj-1::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[2]", "__exp_numnotessigma", 0 ],
            "obj-1::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[5]", "__exp_numnotesenable", 0 ],
            "obj-1::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[2]", "__exp_numnotesmu", 0 ],
            "obj-1::obj-3::obj-407::obj-667": [ "selfharmonicbypass[5]", "selfharmonicbypass", 0 ],
            "obj-1::obj-3::obj-407::obj-670": [ "harmonicbypass[3]", "harmonicbypass", 0 ],
            "obj-1::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[5]", "selfharmonicngramorder", 0 ],
            "obj-1::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[14]", "harmonincpeakdecay[1]", 0 ],
            "obj-1::obj-3::obj-407::obj-688": [ "__exp_durationsigma[5]", "__exp_durationsigma", 0 ],
            "obj-1::obj-3::obj-407::obj-702": [ "__exp_durationmu[2]", "__exp_durationmu", 0 ],
            "obj-1::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[5]", "__exp_octavebandsenable", 0 ],
            "obj-1::obj-3::obj-407::obj-733": [ "__exp_octavebands[2]", "__exp_octavebands", 0 ],
            "obj-1::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[5]", "__exp_selfpitchfromchords", 0 ],
            "obj-1::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[2]", "__exp_autojumpforcejump", 0 ],
            "obj-1::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[2]", "__exp_autojumpenable", 0 ],
            "obj-1::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[2]", "__exp_autojumpactivate", 0 ],
            "obj-1::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[5]", "__exp_tempoconsistencyenable", 0 ],
            "obj-1::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[5]", "__exp_tempoconsistencylen", 0 ],
            "obj-1::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[12]", "harmonincpeakdecay", 0 ],
            "obj-1::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[48]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[78]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[77]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-843": [ "harmonicngramorder[3]", "harmonicngramorder", 0 ],
            "obj-1::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[10]", "harmonincpeakdecay[1]", 0 ],
            "obj-1::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[6]", "selfharmonicngramorder", 0 ],
            "obj-1::obj-3::obj-407::obj-870": [ "selfharmonicbypass[6]", "selfharmonicbypass", 0 ],
            "obj-1::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[11]", "harmonincpeakdecay", 0 ],
            "obj-1::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[76]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[47]", "live.text", 0 ],
            "obj-1::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[46]", "live.text", 0 ],
            "obj-1::obj-3::obj-79::obj-1": [ "live.text[56]", "live.text", 0 ],
            "obj-1::obj-3::obj-79::obj-2": [ "live.text[55]", "live.text", 0 ],
            "obj-1::obj-3::obj-79::obj-3": [ "live.text[54]", "live.text", 0 ],
            "obj-1::obj-3::obj-85::obj-1": [ "live.text[96]", "live.text", 0 ],
            "obj-1::obj-3::obj-85::obj-2": [ "live.text[95]", "live.text", 0 ],
            "obj-1::obj-3::obj-85::obj-3": [ "live.text[94]", "live.text", 0 ],
            "obj-1::obj-3::obj-87::obj-1": [ "live.text[63]", "live.text", 0 ],
            "obj-1::obj-3::obj-87::obj-2": [ "live.text[57]", "live.text", 0 ],
            "obj-1::obj-3::obj-87::obj-3": [ "live.text[43]", "live.text", 0 ],
            "obj-1::obj-3::obj-89::obj-1": [ "live.text[69]", "live.text", 0 ],
            "obj-1::obj-3::obj-89::obj-2": [ "live.text[44]", "live.text", 0 ],
            "obj-1::obj-3::obj-89::obj-3": [ "live.text[70]", "live.text", 0 ],
            "obj-1::obj-3::obj-91::obj-1": [ "live.text[71]", "live.text", 0 ],
            "obj-1::obj-3::obj-91::obj-2": [ "live.text[73]", "live.text", 0 ],
            "obj-1::obj-3::obj-91::obj-3": [ "live.text[72]", "live.text", 0 ],
            "obj-1::obj-3::obj-94::obj-1": [ "live.text[97]", "live.text", 0 ],
            "obj-1::obj-3::obj-94::obj-2": [ "live.text[98]", "live.text", 0 ],
            "obj-1::obj-3::obj-94::obj-3": [ "live.text[99]", "live.text", 0 ],
            "obj-1::obj-6::obj-98": [ "live.text[101]", "live.text[26]", 0 ],
            "obj-2::obj-13::obj-1": [ "source[5]", "source", 0 ],
            "obj-2::obj-2::obj-395::obj-2": [ "live.text[5]", "live.text[4]", 0 ],
            "obj-2::obj-2::obj-395::obj-375": [ "mc.live.gain~[8]", "click", 0 ],
            "obj-2::obj-2::obj-395::obj-441": [ "mc.live.gain~[7]", "corpus", 0 ],
            "obj-2::obj-2::obj-395::obj-469": [ "live.text[24]", "live.text[11]", 0 ],
            "obj-2::obj-2::obj-395::obj-472": [ "live.text[7]", "live.text[11]", 0 ],
            "obj-2::obj-2::obj-395::obj-490": [ "live.text[53]", "live.text[11]", 0 ],
            "obj-39::obj-118::obj-114": [ "live.gain~[15]", "live.gain~", 0 ],
            "obj-39::obj-118::obj-119": [ "live.text[410]", "live.text[30]", 0 ],
            "obj-39::obj-118::obj-2::obj-119": [ "live.text[409]", "live.text[30]", 0 ],
            "obj-39::obj-118::obj-2::obj-13": [ "live.text[408]", "live.text", 0 ],
            "obj-39::obj-118::obj-2::obj-140": [ "mc.live.gain~[15]", "mc.live.gain~", 0 ],
            "obj-39::obj-118::obj-2::obj-62::obj-1": [ "source[44]", "source", 0 ],
            "obj-39::obj-118::obj-42": [ "live.toggle[7]", "live.toggle", 0 ],
            "obj-39::obj-118::obj-55": [ "live.gain~[14]", "live.gain~", 0 ],
            "obj-39::obj-17::obj-103": [ "influence delay[39]", "influencedelay", 0 ],
            "obj-39::obj-17::obj-10::obj-103": [ "influence delay[37]", "influencedelay", 0 ],
            "obj-39::obj-17::obj-10::obj-21": [ "onset[32]", "onset", 0 ],
            "obj-39::obj-17::obj-10::obj-26": [ "chroma scaling factor[63]", "chroma", 0 ],
            "obj-39::obj-17::obj-10::obj-28": [ "chromaonset[32]", "chromaonset", 0 ],
            "obj-39::obj-17::obj-10::obj-29": [ "enable[32]", "enable", 0 ],
            "obj-39::obj-17::obj-10::obj-30": [ "chroma scaling factor[62]", "chroma", 0 ],
            "obj-39::obj-17::obj-10::obj-46::obj-1": [ "source[42]", "source", 0 ],
            "obj-39::obj-17::obj-10::obj-9": [ "pitch[32]", "pitch", 0 ],
            "obj-39::obj-17::obj-2::obj-103": [ "influence delay[35]", "influencedelay", 0 ],
            "obj-39::obj-17::obj-2::obj-21": [ "onset[30]", "onset", 0 ],
            "obj-39::obj-17::obj-2::obj-26": [ "chroma scaling factor[58]", "chroma", 0 ],
            "obj-39::obj-17::obj-2::obj-28": [ "chromaonset[30]", "chromaonset", 0 ],
            "obj-39::obj-17::obj-2::obj-29": [ "enable[30]", "enable", 0 ],
            "obj-39::obj-17::obj-2::obj-30": [ "chroma scaling factor[59]", "chroma", 0 ],
            "obj-39::obj-17::obj-2::obj-46::obj-1": [ "source[40]", "source", 0 ],
            "obj-39::obj-17::obj-2::obj-9": [ "pitch[30]", "pitch", 0 ],
            "obj-39::obj-17::obj-33::obj-103": [ "influence delay[38]", "influencedelay", 0 ],
            "obj-39::obj-17::obj-33::obj-21": [ "onset[33]", "onset", 0 ],
            "obj-39::obj-17::obj-33::obj-26": [ "chroma scaling factor[64]", "chroma", 0 ],
            "obj-39::obj-17::obj-33::obj-28": [ "chromaonset[33]", "chromaonset", 0 ],
            "obj-39::obj-17::obj-33::obj-29": [ "enable[33]", "enable", 0 ],
            "obj-39::obj-17::obj-33::obj-30": [ "chroma scaling factor[65]", "chroma", 0 ],
            "obj-39::obj-17::obj-33::obj-46::obj-1": [ "source[43]", "source", 0 ],
            "obj-39::obj-17::obj-33::obj-9": [ "pitch[33]", "pitch", 0 ],
            "obj-39::obj-17::obj-6::obj-103": [ "influence delay[36]", "influencedelay", 0 ],
            "obj-39::obj-17::obj-6::obj-21": [ "onset[31]", "onset", 0 ],
            "obj-39::obj-17::obj-6::obj-26": [ "chroma scaling factor[61]", "chroma", 0 ],
            "obj-39::obj-17::obj-6::obj-28": [ "chromaonset[31]", "chromaonset", 0 ],
            "obj-39::obj-17::obj-6::obj-29": [ "enable[31]", "enable", 0 ],
            "obj-39::obj-17::obj-6::obj-30": [ "chroma scaling factor[60]", "chroma", 0 ],
            "obj-39::obj-17::obj-6::obj-46::obj-1": [ "source[41]", "source", 0 ],
            "obj-39::obj-17::obj-6::obj-9": [ "pitch[31]", "pitch", 0 ],
            "obj-39::obj-25::obj-1": [ "Gain[10]", "Gain", 0 ],
            "obj-39::obj-25::obj-44": [ "live.dial[16]", "Width", 0 ],
            "obj-39::obj-25::obj-46": [ "live.dial[15]", "Pan", 0 ],
            "obj-39::obj-3::obj-1115": [ "continuity[50]", "continuity", 0 ],
            "obj-39::obj-3::obj-1150": [ "live.text[406]", "live.text", 0 ],
            "obj-39::obj-3::obj-1179": [ "continuity[51]", "continuity", 0 ],
            "obj-39::obj-3::obj-123::obj-1": [ "live.text[374]", "live.text", 0 ],
            "obj-39::obj-3::obj-123::obj-2": [ "live.text[375]", "live.text", 0 ],
            "obj-39::obj-3::obj-123::obj-3": [ "live.text[373]", "live.text", 0 ],
            "obj-39::obj-3::obj-14::obj-12": [ "live.slider[25]", "live.slider[2]", 0 ],
            "obj-39::obj-3::obj-14::obj-128": [ "live.text[395]", "live.text", 1 ],
            "obj-39::obj-3::obj-14::obj-135": [ "live.text[398]", "live.text", 1 ],
            "obj-39::obj-3::obj-14::obj-153": [ "live.text[394]", "live.text", 1 ],
            "obj-39::obj-3::obj-14::obj-163": [ "live.text[396]", "live.text", 1 ],
            "obj-39::obj-3::obj-14::obj-173": [ "live.text[397]", "live.text", 1 ],
            "obj-39::obj-3::obj-14::obj-39": [ "live.tab[8]", "live.tab", 0 ],
            "obj-39::obj-3::obj-14::obj-40": [ "live.slider[24]", "live.slider[2]", 0 ],
            "obj-39::obj-3::obj-14::obj-64": [ "live.text[399]", "live.text", 0 ],
            "obj-39::obj-3::obj-16::obj-26": [ "corpusname[11]", "corpusname", 0 ],
            "obj-39::obj-3::obj-2": [ "heldnotesmode[24]", "heldnotesmode", 0 ],
            "obj-39::obj-3::obj-32": [ "heldnotesmode[25]", "heldnotesmode", 0 ],
            "obj-39::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[382]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[384]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[383]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[385]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[387]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[386]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[47]", "harmonincpeakdecay", 0 ],
            "obj-39::obj-3::obj-407::obj-1115": [ "continuity[49]", "continuity", 0 ],
            "obj-39::obj-3::obj-407::obj-1175": [ "heldnotesmode[23]", "heldnotesmode", 0 ],
            "obj-39::obj-3::obj-407::obj-1179": [ "continuity[48]", "continuity", 0 ],
            "obj-39::obj-3::obj-407::obj-12": [ "melodicmod12[8]", "melodicmod12", 0 ],
            "obj-39::obj-3::obj-407::obj-120": [ "melodicbypass[8]", "melodicbypass", 0 ],
            "obj-39::obj-3::obj-407::obj-1218": [ "simultaneousonsets[19]", "artificialmidities", 0 ],
            "obj-39::obj-3::obj-407::obj-126": [ "harmonicbypass[16]", "harmonicbypass", 0 ],
            "obj-39::obj-3::obj-407::obj-134": [ "continuity[47]", "continuity", 0 ],
            "obj-39::obj-3::obj-407::obj-1344": [ "enforcetaboo[10]", "enforcetaboo", 0 ],
            "obj-39::obj-3::obj-407::obj-140": [ "resetinfluences[8]", "resetinfluences", 0 ],
            "obj-39::obj-3::obj-407::obj-144": [ "harmonicngramorder[16]", "harmonicngramorder", 0 ],
            "obj-39::obj-3::obj-407::obj-1444": [ "outputprobability[10]", "outputprobability", 0 ],
            "obj-39::obj-3::obj-407::obj-152": [ "selfngramorder[8]", "selfngramorder", 0 ],
            "obj-39::obj-3::obj-407::obj-154": [ "melodicngramorder[10]", "melodicngramorder", 0 ],
            "obj-39::obj-3::obj-407::obj-19": [ "selfmod12[11]", "selfmod12", 0 ],
            "obj-39::obj-3::obj-407::obj-22": [ "selfmelodicbypass[8]", "selfmelodicbypass", 0 ],
            "obj-39::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[48]", "harmonincpeakdecay", 0 ],
            "obj-39::obj-3::obj-407::obj-255": [ "melodicpeakdecay[11]", "melodicpeakdecay", 0 ],
            "obj-39::obj-3::obj-407::obj-256": [ "selfpeakdecay[8]", "selfpeakdecay", 0 ],
            "obj-39::obj-3::obj-407::obj-270::obj-1226": [ "width[8]", "Width", 0 ],
            "obj-39::obj-3::obj-407::obj-270::obj-1227": [ "center[8]", "Center", 0 ],
            "obj-39::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[23]", "live.slider", 0 ],
            "obj-39::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[10]", "live.numbox[2]", 0 ],
            "obj-39::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[8]", "__exp_velocityenable", 0 ],
            "obj-39::obj-3::obj-407::obj-270::obj-889": [ "weight[8]", "Weight", 0 ],
            "obj-39::obj-3::obj-407::obj-295": [ "playingmode[10]", "playingmode", 0 ],
            "obj-39::obj-3::obj-407::obj-298": [ "simultaneousonsets[20]", "simultaneousonsets", 0 ],
            "obj-39::obj-3::obj-407::obj-328": [ "decaybasis[8]", "decaybasis", 0 ],
            "obj-39::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[391]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[392]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[393]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[389]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[388]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[390]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[10]", "__exp_melodicpitchfromchords", 0 ],
            "obj-39::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[10]", "__exp_tempoconsistencysigma", 0 ],
            "obj-39::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[8]", "__exp_numnotessigma", 0 ],
            "obj-39::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[11]", "__exp_numnotesenable", 0 ],
            "obj-39::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[8]", "__exp_numnotesmu", 0 ],
            "obj-39::obj-3::obj-407::obj-667": [ "selfharmonicbypass[18]", "selfharmonicbypass", 0 ],
            "obj-39::obj-3::obj-407::obj-670": [ "harmonicbypass[15]", "harmonicbypass", 0 ],
            "obj-39::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[18]", "selfharmonicngramorder", 0 ],
            "obj-39::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[45]", "harmonincpeakdecay[1]", 0 ],
            "obj-39::obj-3::obj-407::obj-688": [ "__exp_durationsigma[10]", "__exp_durationsigma", 0 ],
            "obj-39::obj-3::obj-407::obj-702": [ "__exp_durationmu[8]", "__exp_durationmu", 0 ],
            "obj-39::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[11]", "__exp_octavebandsenable", 0 ],
            "obj-39::obj-3::obj-407::obj-733": [ "__exp_octavebands[8]", "__exp_octavebands", 0 ],
            "obj-39::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[10]", "__exp_selfpitchfromchords", 0 ],
            "obj-39::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[8]", "__exp_autojumpforcejump", 0 ],
            "obj-39::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[8]", "__exp_autojumpenable", 0 ],
            "obj-39::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[8]", "__exp_autojumpactivate", 0 ],
            "obj-39::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[10]", "__exp_tempoconsistencyenable", 0 ],
            "obj-39::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[10]", "__exp_tempoconsistencylen", 0 ],
            "obj-39::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[49]", "harmonincpeakdecay", 0 ],
            "obj-39::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[380]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[381]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[379]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-843": [ "harmonicngramorder[15]", "harmonicngramorder", 0 ],
            "obj-39::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[46]", "harmonincpeakdecay[1]", 0 ],
            "obj-39::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[17]", "selfharmonicngramorder", 0 ],
            "obj-39::obj-3::obj-407::obj-870": [ "selfharmonicbypass[17]", "selfharmonicbypass", 0 ],
            "obj-39::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[50]", "harmonincpeakdecay", 0 ],
            "obj-39::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[378]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[376]", "live.text", 0 ],
            "obj-39::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[377]", "live.text", 0 ],
            "obj-39::obj-3::obj-79::obj-1": [ "live.text[362]", "live.text", 0 ],
            "obj-39::obj-3::obj-79::obj-2": [ "live.text[361]", "live.text", 0 ],
            "obj-39::obj-3::obj-79::obj-3": [ "live.text[363]", "live.text", 0 ],
            "obj-39::obj-3::obj-85::obj-1": [ "live.text[400]", "live.text", 0 ],
            "obj-39::obj-3::obj-85::obj-2": [ "live.text[402]", "live.text", 0 ],
            "obj-39::obj-3::obj-85::obj-3": [ "live.text[401]", "live.text", 0 ],
            "obj-39::obj-3::obj-87::obj-1": [ "live.text[366]", "live.text", 0 ],
            "obj-39::obj-3::obj-87::obj-2": [ "live.text[364]", "live.text", 0 ],
            "obj-39::obj-3::obj-87::obj-3": [ "live.text[365]", "live.text", 0 ],
            "obj-39::obj-3::obj-89::obj-1": [ "live.text[369]", "live.text", 0 ],
            "obj-39::obj-3::obj-89::obj-2": [ "live.text[367]", "live.text", 0 ],
            "obj-39::obj-3::obj-89::obj-3": [ "live.text[368]", "live.text", 0 ],
            "obj-39::obj-3::obj-91::obj-1": [ "live.text[370]", "live.text", 0 ],
            "obj-39::obj-3::obj-91::obj-2": [ "live.text[371]", "live.text", 0 ],
            "obj-39::obj-3::obj-91::obj-3": [ "live.text[372]", "live.text", 0 ],
            "obj-39::obj-3::obj-94::obj-1": [ "live.text[403]", "live.text", 0 ],
            "obj-39::obj-3::obj-94::obj-2": [ "live.text[405]", "live.text", 0 ],
            "obj-39::obj-3::obj-94::obj-3": [ "live.text[404]", "live.text", 0 ],
            "obj-39::obj-6::obj-98": [ "live.text[407]", "live.text[26]", 0 ],
            "obj-40::obj-118::obj-114": [ "live.gain~[13]", "live.gain~", 0 ],
            "obj-40::obj-118::obj-119": [ "live.text[360]", "live.text[30]", 0 ],
            "obj-40::obj-118::obj-2::obj-119": [ "live.text[358]", "live.text[30]", 0 ],
            "obj-40::obj-118::obj-2::obj-13": [ "live.text[359]", "live.text", 0 ],
            "obj-40::obj-118::obj-2::obj-140": [ "mc.live.gain~[14]", "mc.live.gain~", 0 ],
            "obj-40::obj-118::obj-2::obj-62::obj-1": [ "source[39]", "source", 0 ],
            "obj-40::obj-118::obj-42": [ "live.toggle[6]", "live.toggle", 0 ],
            "obj-40::obj-118::obj-55": [ "live.gain~[12]", "live.gain~", 0 ],
            "obj-40::obj-17::obj-103": [ "influence delay[34]", "influencedelay", 0 ],
            "obj-40::obj-17::obj-10::obj-103": [ "influence delay[32]", "influencedelay", 0 ],
            "obj-40::obj-17::obj-10::obj-21": [ "onset[28]", "onset", 0 ],
            "obj-40::obj-17::obj-10::obj-26": [ "chroma scaling factor[55]", "chroma", 0 ],
            "obj-40::obj-17::obj-10::obj-28": [ "chromaonset[28]", "chromaonset", 0 ],
            "obj-40::obj-17::obj-10::obj-29": [ "enable[28]", "enable", 0 ],
            "obj-40::obj-17::obj-10::obj-30": [ "chroma scaling factor[54]", "chroma", 0 ],
            "obj-40::obj-17::obj-10::obj-46::obj-1": [ "source[37]", "source", 0 ],
            "obj-40::obj-17::obj-10::obj-9": [ "pitch[28]", "pitch", 0 ],
            "obj-40::obj-17::obj-2::obj-103": [ "influence delay[30]", "influencedelay", 0 ],
            "obj-40::obj-17::obj-2::obj-21": [ "onset[26]", "onset", 0 ],
            "obj-40::obj-17::obj-2::obj-26": [ "chroma scaling factor[51]", "chroma", 0 ],
            "obj-40::obj-17::obj-2::obj-28": [ "chromaonset[26]", "chromaonset", 0 ],
            "obj-40::obj-17::obj-2::obj-29": [ "enable[26]", "enable", 0 ],
            "obj-40::obj-17::obj-2::obj-30": [ "chroma scaling factor[50]", "chroma", 0 ],
            "obj-40::obj-17::obj-2::obj-46::obj-1": [ "source[35]", "source", 0 ],
            "obj-40::obj-17::obj-2::obj-9": [ "pitch[26]", "pitch", 0 ],
            "obj-40::obj-17::obj-33::obj-103": [ "influence delay[33]", "influencedelay", 0 ],
            "obj-40::obj-17::obj-33::obj-21": [ "onset[29]", "onset", 0 ],
            "obj-40::obj-17::obj-33::obj-26": [ "chroma scaling factor[56]", "chroma", 0 ],
            "obj-40::obj-17::obj-33::obj-28": [ "chromaonset[29]", "chromaonset", 0 ],
            "obj-40::obj-17::obj-33::obj-29": [ "enable[29]", "enable", 0 ],
            "obj-40::obj-17::obj-33::obj-30": [ "chroma scaling factor[57]", "chroma", 0 ],
            "obj-40::obj-17::obj-33::obj-46::obj-1": [ "source[38]", "source", 0 ],
            "obj-40::obj-17::obj-33::obj-9": [ "pitch[29]", "pitch", 0 ],
            "obj-40::obj-17::obj-6::obj-103": [ "influence delay[31]", "influencedelay", 0 ],
            "obj-40::obj-17::obj-6::obj-21": [ "onset[27]", "onset", 0 ],
            "obj-40::obj-17::obj-6::obj-26": [ "chroma scaling factor[53]", "chroma", 0 ],
            "obj-40::obj-17::obj-6::obj-28": [ "chromaonset[27]", "chromaonset", 0 ],
            "obj-40::obj-17::obj-6::obj-29": [ "enable[27]", "enable", 0 ],
            "obj-40::obj-17::obj-6::obj-30": [ "chroma scaling factor[52]", "chroma", 0 ],
            "obj-40::obj-17::obj-6::obj-46::obj-1": [ "source[36]", "source", 0 ],
            "obj-40::obj-17::obj-6::obj-9": [ "pitch[27]", "pitch", 0 ],
            "obj-40::obj-25::obj-1": [ "Gain[9]", "Gain", 0 ],
            "obj-40::obj-25::obj-44": [ "live.dial[14]", "Width", 0 ],
            "obj-40::obj-25::obj-46": [ "live.dial[13]", "Pan", 0 ],
            "obj-40::obj-3::obj-1115": [ "continuity[46]", "continuity", 0 ],
            "obj-40::obj-3::obj-1150": [ "live.text[356]", "live.text", 0 ],
            "obj-40::obj-3::obj-1179": [ "continuity[45]", "continuity", 0 ],
            "obj-40::obj-3::obj-123::obj-1": [ "live.text[323]", "live.text", 0 ],
            "obj-40::obj-3::obj-123::obj-2": [ "live.text[324]", "live.text", 0 ],
            "obj-40::obj-3::obj-123::obj-3": [ "live.text[325]", "live.text", 0 ],
            "obj-40::obj-3::obj-14::obj-12": [ "live.slider[21]", "live.slider[2]", 0 ],
            "obj-40::obj-3::obj-14::obj-128": [ "live.text[345]", "live.text", 1 ],
            "obj-40::obj-3::obj-14::obj-135": [ "live.text[347]", "live.text", 1 ],
            "obj-40::obj-3::obj-14::obj-153": [ "live.text[344]", "live.text", 1 ],
            "obj-40::obj-3::obj-14::obj-163": [ "live.text[346]", "live.text", 1 ],
            "obj-40::obj-3::obj-14::obj-173": [ "live.text[349]", "live.text", 1 ],
            "obj-40::obj-3::obj-14::obj-39": [ "live.tab[7]", "live.tab", 0 ],
            "obj-40::obj-3::obj-14::obj-40": [ "live.slider[22]", "live.slider[2]", 0 ],
            "obj-40::obj-3::obj-14::obj-64": [ "live.text[348]", "live.text", 0 ],
            "obj-40::obj-3::obj-16::obj-26": [ "corpusname[10]", "corpusname", 0 ],
            "obj-40::obj-3::obj-2": [ "heldnotesmode[21]", "heldnotesmode", 0 ],
            "obj-40::obj-3::obj-32": [ "heldnotesmode[22]", "heldnotesmode", 0 ],
            "obj-40::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[334]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[332]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[333]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[336]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[335]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[337]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[42]", "harmonincpeakdecay", 0 ],
            "obj-40::obj-3::obj-407::obj-1115": [ "continuity[43]", "continuity", 0 ],
            "obj-40::obj-3::obj-407::obj-1175": [ "heldnotesmode[20]", "heldnotesmode", 0 ],
            "obj-40::obj-3::obj-407::obj-1179": [ "continuity[44]", "continuity", 0 ],
            "obj-40::obj-3::obj-407::obj-12": [ "melodicmod12[7]", "melodicmod12", 0 ],
            "obj-40::obj-3::obj-407::obj-120": [ "melodicbypass[7]", "melodicbypass", 0 ],
            "obj-40::obj-3::obj-407::obj-1218": [ "simultaneousonsets[17]", "artificialmidities", 0 ],
            "obj-40::obj-3::obj-407::obj-126": [ "harmonicbypass[14]", "harmonicbypass", 0 ],
            "obj-40::obj-3::obj-407::obj-134": [ "continuity[42]", "continuity", 0 ],
            "obj-40::obj-3::obj-407::obj-1344": [ "enforcetaboo[9]", "enforcetaboo", 0 ],
            "obj-40::obj-3::obj-407::obj-140": [ "resetinfluences[7]", "resetinfluences", 0 ],
            "obj-40::obj-3::obj-407::obj-144": [ "harmonicngramorder[13]", "harmonicngramorder", 0 ],
            "obj-40::obj-3::obj-407::obj-1444": [ "outputprobability[9]", "outputprobability", 0 ],
            "obj-40::obj-3::obj-407::obj-152": [ "selfngramorder[7]", "selfngramorder", 0 ],
            "obj-40::obj-3::obj-407::obj-154": [ "melodicngramorder[9]", "melodicngramorder", 0 ],
            "obj-40::obj-3::obj-407::obj-19": [ "selfmod12[10]", "selfmod12", 0 ],
            "obj-40::obj-3::obj-407::obj-22": [ "selfmelodicbypass[7]", "selfmelodicbypass", 0 ],
            "obj-40::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[43]", "harmonincpeakdecay", 0 ],
            "obj-40::obj-3::obj-407::obj-255": [ "melodicpeakdecay[10]", "melodicpeakdecay", 0 ],
            "obj-40::obj-3::obj-407::obj-256": [ "selfpeakdecay[7]", "selfpeakdecay", 0 ],
            "obj-40::obj-3::obj-407::obj-270::obj-1226": [ "width[7]", "Width", 0 ],
            "obj-40::obj-3::obj-407::obj-270::obj-1227": [ "center[7]", "Center", 0 ],
            "obj-40::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[20]", "live.slider", 0 ],
            "obj-40::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[9]", "live.numbox[2]", 0 ],
            "obj-40::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[7]", "__exp_velocityenable", 0 ],
            "obj-40::obj-3::obj-407::obj-270::obj-889": [ "weight[7]", "Weight", 0 ],
            "obj-40::obj-3::obj-407::obj-295": [ "playingmode[9]", "playingmode", 0 ],
            "obj-40::obj-3::obj-407::obj-298": [ "simultaneousonsets[18]", "simultaneousonsets", 0 ],
            "obj-40::obj-3::obj-407::obj-328": [ "decaybasis[7]", "decaybasis", 0 ],
            "obj-40::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[343]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[342]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[341]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[339]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[338]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[340]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[9]", "__exp_melodicpitchfromchords", 0 ],
            "obj-40::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[9]", "__exp_tempoconsistencysigma", 0 ],
            "obj-40::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[7]", "__exp_numnotessigma", 0 ],
            "obj-40::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[10]", "__exp_numnotesenable", 0 ],
            "obj-40::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[7]", "__exp_numnotesmu", 0 ],
            "obj-40::obj-3::obj-407::obj-667": [ "selfharmonicbypass[15]", "selfharmonicbypass", 0 ],
            "obj-40::obj-3::obj-407::obj-670": [ "harmonicbypass[13]", "harmonicbypass", 0 ],
            "obj-40::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[15]", "selfharmonicngramorder", 0 ],
            "obj-40::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[39]", "harmonincpeakdecay[1]", 0 ],
            "obj-40::obj-3::obj-407::obj-688": [ "__exp_durationsigma[9]", "__exp_durationsigma", 0 ],
            "obj-40::obj-3::obj-407::obj-702": [ "__exp_durationmu[7]", "__exp_durationmu", 0 ],
            "obj-40::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[10]", "__exp_octavebandsenable", 0 ],
            "obj-40::obj-3::obj-407::obj-733": [ "__exp_octavebands[7]", "__exp_octavebands", 0 ],
            "obj-40::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[9]", "__exp_selfpitchfromchords", 0 ],
            "obj-40::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[7]", "__exp_autojumpforcejump", 0 ],
            "obj-40::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[7]", "__exp_autojumpenable", 0 ],
            "obj-40::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[7]", "__exp_autojumpactivate", 0 ],
            "obj-40::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[9]", "__exp_tempoconsistencyenable", 0 ],
            "obj-40::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[9]", "__exp_tempoconsistencylen", 0 ],
            "obj-40::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[40]", "harmonincpeakdecay", 0 ],
            "obj-40::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[329]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[331]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[330]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-843": [ "harmonicngramorder[14]", "harmonicngramorder", 0 ],
            "obj-40::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[41]", "harmonincpeakdecay[1]", 0 ],
            "obj-40::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[16]", "selfharmonicngramorder", 0 ],
            "obj-40::obj-3::obj-407::obj-870": [ "selfharmonicbypass[16]", "selfharmonicbypass", 0 ],
            "obj-40::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[44]", "harmonincpeakdecay", 0 ],
            "obj-40::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[327]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[326]", "live.text", 0 ],
            "obj-40::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[328]", "live.text", 0 ],
            "obj-40::obj-3::obj-79::obj-1": [ "live.text[311]", "live.text", 0 ],
            "obj-40::obj-3::obj-79::obj-2": [ "live.text[312]", "live.text", 0 ],
            "obj-40::obj-3::obj-79::obj-3": [ "live.text[313]", "live.text", 0 ],
            "obj-40::obj-3::obj-85::obj-1": [ "live.text[352]", "live.text", 0 ],
            "obj-40::obj-3::obj-85::obj-2": [ "live.text[351]", "live.text", 0 ],
            "obj-40::obj-3::obj-85::obj-3": [ "live.text[350]", "live.text", 0 ],
            "obj-40::obj-3::obj-87::obj-1": [ "live.text[316]", "live.text", 0 ],
            "obj-40::obj-3::obj-87::obj-2": [ "live.text[315]", "live.text", 0 ],
            "obj-40::obj-3::obj-87::obj-3": [ "live.text[314]", "live.text", 0 ],
            "obj-40::obj-3::obj-89::obj-1": [ "live.text[319]", "live.text", 0 ],
            "obj-40::obj-3::obj-89::obj-2": [ "live.text[318]", "live.text", 0 ],
            "obj-40::obj-3::obj-89::obj-3": [ "live.text[317]", "live.text", 0 ],
            "obj-40::obj-3::obj-91::obj-1": [ "live.text[322]", "live.text", 0 ],
            "obj-40::obj-3::obj-91::obj-2": [ "live.text[320]", "live.text", 0 ],
            "obj-40::obj-3::obj-91::obj-3": [ "live.text[321]", "live.text", 0 ],
            "obj-40::obj-3::obj-94::obj-1": [ "live.text[355]", "live.text", 0 ],
            "obj-40::obj-3::obj-94::obj-2": [ "live.text[354]", "live.text", 0 ],
            "obj-40::obj-3::obj-94::obj-3": [ "live.text[353]", "live.text", 0 ],
            "obj-40::obj-6::obj-98": [ "live.text[357]", "live.text[26]", 0 ],
            "obj-41::obj-118::obj-114": [ "live.gain~[11]", "live.gain~", 0 ],
            "obj-41::obj-118::obj-119": [ "live.text[310]", "live.text[30]", 0 ],
            "obj-41::obj-118::obj-2::obj-119": [ "live.text[308]", "live.text[30]", 0 ],
            "obj-41::obj-118::obj-2::obj-13": [ "live.text[309]", "live.text", 0 ],
            "obj-41::obj-118::obj-2::obj-140": [ "mc.live.gain~[13]", "mc.live.gain~", 0 ],
            "obj-41::obj-118::obj-2::obj-62::obj-1": [ "source[34]", "source", 0 ],
            "obj-41::obj-118::obj-42": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-41::obj-118::obj-55": [ "live.gain~[10]", "live.gain~", 0 ],
            "obj-41::obj-17::obj-103": [ "influence delay[29]", "influencedelay", 0 ],
            "obj-41::obj-17::obj-10::obj-103": [ "influence delay[27]", "influencedelay", 0 ],
            "obj-41::obj-17::obj-10::obj-21": [ "onset[24]", "onset", 0 ],
            "obj-41::obj-17::obj-10::obj-26": [ "chroma scaling factor[47]", "chroma", 0 ],
            "obj-41::obj-17::obj-10::obj-28": [ "chromaonset[24]", "chromaonset", 0 ],
            "obj-41::obj-17::obj-10::obj-29": [ "enable[24]", "enable", 0 ],
            "obj-41::obj-17::obj-10::obj-30": [ "chroma scaling factor[46]", "chroma", 0 ],
            "obj-41::obj-17::obj-10::obj-46::obj-1": [ "source[32]", "source", 0 ],
            "obj-41::obj-17::obj-10::obj-9": [ "pitch[24]", "pitch", 0 ],
            "obj-41::obj-17::obj-2::obj-103": [ "influence delay[25]", "influencedelay", 0 ],
            "obj-41::obj-17::obj-2::obj-21": [ "onset[22]", "onset", 0 ],
            "obj-41::obj-17::obj-2::obj-26": [ "chroma scaling factor[42]", "chroma", 0 ],
            "obj-41::obj-17::obj-2::obj-28": [ "chromaonset[22]", "chromaonset", 0 ],
            "obj-41::obj-17::obj-2::obj-29": [ "enable[22]", "enable", 0 ],
            "obj-41::obj-17::obj-2::obj-30": [ "chroma scaling factor[43]", "chroma", 0 ],
            "obj-41::obj-17::obj-2::obj-46::obj-1": [ "source[30]", "source", 0 ],
            "obj-41::obj-17::obj-2::obj-9": [ "pitch[22]", "pitch", 0 ],
            "obj-41::obj-17::obj-33::obj-103": [ "influence delay[28]", "influencedelay", 0 ],
            "obj-41::obj-17::obj-33::obj-21": [ "onset[25]", "onset", 0 ],
            "obj-41::obj-17::obj-33::obj-26": [ "chroma scaling factor[48]", "chroma", 0 ],
            "obj-41::obj-17::obj-33::obj-28": [ "chromaonset[25]", "chromaonset", 0 ],
            "obj-41::obj-17::obj-33::obj-29": [ "enable[25]", "enable", 0 ],
            "obj-41::obj-17::obj-33::obj-30": [ "chroma scaling factor[49]", "chroma", 0 ],
            "obj-41::obj-17::obj-33::obj-46::obj-1": [ "source[33]", "source", 0 ],
            "obj-41::obj-17::obj-33::obj-9": [ "pitch[25]", "pitch", 0 ],
            "obj-41::obj-17::obj-6::obj-103": [ "influence delay[26]", "influencedelay", 0 ],
            "obj-41::obj-17::obj-6::obj-21": [ "onset[23]", "onset", 0 ],
            "obj-41::obj-17::obj-6::obj-26": [ "chroma scaling factor[44]", "chroma", 0 ],
            "obj-41::obj-17::obj-6::obj-28": [ "chromaonset[23]", "chromaonset", 0 ],
            "obj-41::obj-17::obj-6::obj-29": [ "enable[23]", "enable", 0 ],
            "obj-41::obj-17::obj-6::obj-30": [ "chroma scaling factor[45]", "chroma", 0 ],
            "obj-41::obj-17::obj-6::obj-46::obj-1": [ "source[31]", "source", 0 ],
            "obj-41::obj-17::obj-6::obj-9": [ "pitch[23]", "pitch", 0 ],
            "obj-41::obj-25::obj-1": [ "Gain[8]", "Gain", 0 ],
            "obj-41::obj-25::obj-44": [ "live.dial[12]", "Width", 0 ],
            "obj-41::obj-25::obj-46": [ "live.dial[11]", "Pan", 0 ],
            "obj-41::obj-3::obj-1115": [ "continuity[40]", "continuity", 0 ],
            "obj-41::obj-3::obj-1150": [ "live.text[306]", "live.text", 0 ],
            "obj-41::obj-3::obj-1179": [ "continuity[41]", "continuity", 0 ],
            "obj-41::obj-3::obj-123::obj-1": [ "live.text[274]", "live.text", 0 ],
            "obj-41::obj-3::obj-123::obj-2": [ "live.text[275]", "live.text", 0 ],
            "obj-41::obj-3::obj-123::obj-3": [ "live.text[273]", "live.text", 0 ],
            "obj-41::obj-3::obj-14::obj-12": [ "live.slider[18]", "live.slider[2]", 0 ],
            "obj-41::obj-3::obj-14::obj-128": [ "live.text[297]", "live.text", 1 ],
            "obj-41::obj-3::obj-14::obj-135": [ "live.text[295]", "live.text", 1 ],
            "obj-41::obj-3::obj-14::obj-153": [ "live.text[299]", "live.text", 1 ],
            "obj-41::obj-3::obj-14::obj-163": [ "live.text[298]", "live.text", 1 ],
            "obj-41::obj-3::obj-14::obj-173": [ "live.text[294]", "live.text", 1 ],
            "obj-41::obj-3::obj-14::obj-39": [ "live.tab[6]", "live.tab", 0 ],
            "obj-41::obj-3::obj-14::obj-40": [ "live.slider[19]", "live.slider[2]", 0 ],
            "obj-41::obj-3::obj-14::obj-64": [ "live.text[296]", "live.text", 0 ],
            "obj-41::obj-3::obj-16::obj-26": [ "corpusname[9]", "corpusname", 0 ],
            "obj-41::obj-3::obj-2": [ "heldnotesmode[18]", "heldnotesmode", 0 ],
            "obj-41::obj-3::obj-32": [ "heldnotesmode[19]", "heldnotesmode", 0 ],
            "obj-41::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[284]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[283]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[282]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[286]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[285]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[287]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[36]", "harmonincpeakdecay", 0 ],
            "obj-41::obj-3::obj-407::obj-1115": [ "continuity[37]", "continuity", 0 ],
            "obj-41::obj-3::obj-407::obj-1175": [ "heldnotesmode[17]", "heldnotesmode", 0 ],
            "obj-41::obj-3::obj-407::obj-1179": [ "continuity[38]", "continuity", 0 ],
            "obj-41::obj-3::obj-407::obj-12": [ "melodicmod12[6]", "melodicmod12", 0 ],
            "obj-41::obj-3::obj-407::obj-120": [ "melodicbypass[6]", "melodicbypass", 0 ],
            "obj-41::obj-3::obj-407::obj-1218": [ "simultaneousonsets[15]", "artificialmidities", 0 ],
            "obj-41::obj-3::obj-407::obj-126": [ "harmonicbypass[11]", "harmonicbypass", 0 ],
            "obj-41::obj-3::obj-407::obj-134": [ "continuity[39]", "continuity", 0 ],
            "obj-41::obj-3::obj-407::obj-1344": [ "enforcetaboo[8]", "enforcetaboo", 0 ],
            "obj-41::obj-3::obj-407::obj-140": [ "resetinfluences[6]", "resetinfluences", 0 ],
            "obj-41::obj-3::obj-407::obj-144": [ "harmonicngramorder[12]", "harmonicngramorder", 0 ],
            "obj-41::obj-3::obj-407::obj-1444": [ "outputprobability[8]", "outputprobability", 0 ],
            "obj-41::obj-3::obj-407::obj-152": [ "selfngramorder[6]", "selfngramorder", 0 ],
            "obj-41::obj-3::obj-407::obj-154": [ "melodicngramorder[8]", "melodicngramorder", 0 ],
            "obj-41::obj-3::obj-407::obj-19": [ "selfmod12[9]", "selfmod12", 0 ],
            "obj-41::obj-3::obj-407::obj-22": [ "selfmelodicbypass[6]", "selfmelodicbypass", 0 ],
            "obj-41::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[34]", "harmonincpeakdecay", 0 ],
            "obj-41::obj-3::obj-407::obj-255": [ "melodicpeakdecay[9]", "melodicpeakdecay", 0 ],
            "obj-41::obj-3::obj-407::obj-256": [ "selfpeakdecay[6]", "selfpeakdecay", 0 ],
            "obj-41::obj-3::obj-407::obj-270::obj-1226": [ "width[6]", "Width", 0 ],
            "obj-41::obj-3::obj-407::obj-270::obj-1227": [ "center[6]", "Center", 0 ],
            "obj-41::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[17]", "live.slider", 0 ],
            "obj-41::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[8]", "live.numbox[2]", 0 ],
            "obj-41::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[6]", "__exp_velocityenable", 0 ],
            "obj-41::obj-3::obj-407::obj-270::obj-889": [ "weight[6]", "Weight", 0 ],
            "obj-41::obj-3::obj-407::obj-295": [ "playingmode[8]", "playingmode", 0 ],
            "obj-41::obj-3::obj-407::obj-298": [ "simultaneousonsets[16]", "simultaneousonsets", 0 ],
            "obj-41::obj-3::obj-407::obj-328": [ "decaybasis[6]", "decaybasis", 0 ],
            "obj-41::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[293]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[291]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[292]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[290]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[289]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[288]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[8]", "__exp_melodicpitchfromchords", 0 ],
            "obj-41::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[8]", "__exp_tempoconsistencysigma", 0 ],
            "obj-41::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[6]", "__exp_numnotessigma", 0 ],
            "obj-41::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[9]", "__exp_numnotesenable", 0 ],
            "obj-41::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[6]", "__exp_numnotesmu", 0 ],
            "obj-41::obj-3::obj-407::obj-667": [ "selfharmonicbypass[14]", "selfharmonicbypass", 0 ],
            "obj-41::obj-3::obj-407::obj-670": [ "harmonicbypass[12]", "harmonicbypass", 0 ],
            "obj-41::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[14]", "selfharmonicngramorder", 0 ],
            "obj-41::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[35]", "harmonincpeakdecay[1]", 0 ],
            "obj-41::obj-3::obj-407::obj-688": [ "__exp_durationsigma[8]", "__exp_durationsigma", 0 ],
            "obj-41::obj-3::obj-407::obj-702": [ "__exp_durationmu[6]", "__exp_durationmu", 0 ],
            "obj-41::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[9]", "__exp_octavebandsenable", 0 ],
            "obj-41::obj-3::obj-407::obj-733": [ "__exp_octavebands[6]", "__exp_octavebands", 0 ],
            "obj-41::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[8]", "__exp_selfpitchfromchords", 0 ],
            "obj-41::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[6]", "__exp_autojumpforcejump", 0 ],
            "obj-41::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[6]", "__exp_autojumpenable", 0 ],
            "obj-41::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[6]", "__exp_autojumpactivate", 0 ],
            "obj-41::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[8]", "__exp_tempoconsistencyenable", 0 ],
            "obj-41::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[8]", "__exp_tempoconsistencylen", 0 ],
            "obj-41::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[33]", "harmonincpeakdecay", 0 ],
            "obj-41::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[279]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[280]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[281]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-843": [ "harmonicngramorder[11]", "harmonicngramorder", 0 ],
            "obj-41::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[37]", "harmonincpeakdecay[1]", 0 ],
            "obj-41::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[13]", "selfharmonicngramorder", 0 ],
            "obj-41::obj-3::obj-407::obj-870": [ "selfharmonicbypass[13]", "selfharmonicbypass", 0 ],
            "obj-41::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[38]", "harmonincpeakdecay", 0 ],
            "obj-41::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[276]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[278]", "live.text", 0 ],
            "obj-41::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[277]", "live.text", 0 ],
            "obj-41::obj-3::obj-79::obj-1": [ "live.text[261]", "live.text", 0 ],
            "obj-41::obj-3::obj-79::obj-2": [ "live.text[263]", "live.text", 0 ],
            "obj-41::obj-3::obj-79::obj-3": [ "live.text[262]", "live.text", 0 ],
            "obj-41::obj-3::obj-85::obj-1": [ "live.text[300]", "live.text", 0 ],
            "obj-41::obj-3::obj-85::obj-2": [ "live.text[301]", "live.text", 0 ],
            "obj-41::obj-3::obj-85::obj-3": [ "live.text[302]", "live.text", 0 ],
            "obj-41::obj-3::obj-87::obj-1": [ "live.text[264]", "live.text", 0 ],
            "obj-41::obj-3::obj-87::obj-2": [ "live.text[265]", "live.text", 0 ],
            "obj-41::obj-3::obj-87::obj-3": [ "live.text[266]", "live.text", 0 ],
            "obj-41::obj-3::obj-89::obj-1": [ "live.text[268]", "live.text", 0 ],
            "obj-41::obj-3::obj-89::obj-2": [ "live.text[267]", "live.text", 0 ],
            "obj-41::obj-3::obj-89::obj-3": [ "live.text[269]", "live.text", 0 ],
            "obj-41::obj-3::obj-91::obj-1": [ "live.text[270]", "live.text", 0 ],
            "obj-41::obj-3::obj-91::obj-2": [ "live.text[271]", "live.text", 0 ],
            "obj-41::obj-3::obj-91::obj-3": [ "live.text[272]", "live.text", 0 ],
            "obj-41::obj-3::obj-94::obj-1": [ "live.text[305]", "live.text", 0 ],
            "obj-41::obj-3::obj-94::obj-2": [ "live.text[303]", "live.text", 0 ],
            "obj-41::obj-3::obj-94::obj-3": [ "live.text[304]", "live.text", 0 ],
            "obj-41::obj-6::obj-98": [ "live.text[307]", "live.text[26]", 0 ],
            "obj-42::obj-118::obj-114": [ "live.gain~[8]", "live.gain~", 0 ],
            "obj-42::obj-118::obj-119": [ "live.text[260]", "live.text[30]", 0 ],
            "obj-42::obj-118::obj-2::obj-119": [ "live.text[259]", "live.text[30]", 0 ],
            "obj-42::obj-118::obj-2::obj-13": [ "live.text[258]", "live.text", 0 ],
            "obj-42::obj-118::obj-2::obj-140": [ "mc.live.gain~[12]", "mc.live.gain~", 0 ],
            "obj-42::obj-118::obj-2::obj-62::obj-1": [ "source[29]", "source", 0 ],
            "obj-42::obj-118::obj-42": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-42::obj-118::obj-55": [ "live.gain~[9]", "live.gain~", 0 ],
            "obj-42::obj-17::obj-103": [ "influence delay[24]", "influencedelay", 0 ],
            "obj-42::obj-17::obj-10::obj-103": [ "influence delay[22]", "influencedelay", 0 ],
            "obj-42::obj-17::obj-10::obj-21": [ "onset[20]", "onset", 0 ],
            "obj-42::obj-17::obj-10::obj-26": [ "chroma scaling factor[39]", "chroma", 0 ],
            "obj-42::obj-17::obj-10::obj-28": [ "chromaonset[20]", "chromaonset", 0 ],
            "obj-42::obj-17::obj-10::obj-29": [ "enable[20]", "enable", 0 ],
            "obj-42::obj-17::obj-10::obj-30": [ "chroma scaling factor[38]", "chroma", 0 ],
            "obj-42::obj-17::obj-10::obj-46::obj-1": [ "source[27]", "source", 0 ],
            "obj-42::obj-17::obj-10::obj-9": [ "pitch[20]", "pitch", 0 ],
            "obj-42::obj-17::obj-2::obj-103": [ "influence delay[20]", "influencedelay", 0 ],
            "obj-42::obj-17::obj-2::obj-21": [ "onset[18]", "onset", 0 ],
            "obj-42::obj-17::obj-2::obj-26": [ "chroma scaling factor[34]", "chroma", 0 ],
            "obj-42::obj-17::obj-2::obj-28": [ "chromaonset[18]", "chromaonset", 0 ],
            "obj-42::obj-17::obj-2::obj-29": [ "enable[18]", "enable", 0 ],
            "obj-42::obj-17::obj-2::obj-30": [ "chroma scaling factor[35]", "chroma", 0 ],
            "obj-42::obj-17::obj-2::obj-46::obj-1": [ "source[25]", "source", 0 ],
            "obj-42::obj-17::obj-2::obj-9": [ "pitch[18]", "pitch", 0 ],
            "obj-42::obj-17::obj-33::obj-103": [ "influence delay[23]", "influencedelay", 0 ],
            "obj-42::obj-17::obj-33::obj-21": [ "onset[21]", "onset", 0 ],
            "obj-42::obj-17::obj-33::obj-26": [ "chroma scaling factor[40]", "chroma", 0 ],
            "obj-42::obj-17::obj-33::obj-28": [ "chromaonset[21]", "chromaonset", 0 ],
            "obj-42::obj-17::obj-33::obj-29": [ "enable[21]", "enable", 0 ],
            "obj-42::obj-17::obj-33::obj-30": [ "chroma scaling factor[41]", "chroma", 0 ],
            "obj-42::obj-17::obj-33::obj-46::obj-1": [ "source[28]", "source", 0 ],
            "obj-42::obj-17::obj-33::obj-9": [ "pitch[21]", "pitch", 0 ],
            "obj-42::obj-17::obj-6::obj-103": [ "influence delay[21]", "influencedelay", 0 ],
            "obj-42::obj-17::obj-6::obj-21": [ "onset[19]", "onset", 0 ],
            "obj-42::obj-17::obj-6::obj-26": [ "chroma scaling factor[36]", "chroma", 0 ],
            "obj-42::obj-17::obj-6::obj-28": [ "chromaonset[19]", "chromaonset", 0 ],
            "obj-42::obj-17::obj-6::obj-29": [ "enable[19]", "enable", 0 ],
            "obj-42::obj-17::obj-6::obj-30": [ "chroma scaling factor[37]", "chroma", 0 ],
            "obj-42::obj-17::obj-6::obj-46::obj-1": [ "source[26]", "source", 0 ],
            "obj-42::obj-17::obj-6::obj-9": [ "pitch[19]", "pitch", 0 ],
            "obj-42::obj-25::obj-1": [ "Gain[7]", "Gain", 0 ],
            "obj-42::obj-25::obj-44": [ "live.dial[9]", "Width", 0 ],
            "obj-42::obj-25::obj-46": [ "live.dial[10]", "Pan", 0 ],
            "obj-42::obj-3::obj-1115": [ "continuity[35]", "continuity", 0 ],
            "obj-42::obj-3::obj-1150": [ "live.text[256]", "live.text", 0 ],
            "obj-42::obj-3::obj-1179": [ "continuity[36]", "continuity", 0 ],
            "obj-42::obj-3::obj-123::obj-1": [ "live.text[223]", "live.text", 0 ],
            "obj-42::obj-3::obj-123::obj-2": [ "live.text[224]", "live.text", 0 ],
            "obj-42::obj-3::obj-123::obj-3": [ "live.text[225]", "live.text", 0 ],
            "obj-42::obj-3::obj-14::obj-12": [ "live.slider[15]", "live.slider[2]", 0 ],
            "obj-42::obj-3::obj-14::obj-128": [ "live.text[245]", "live.text", 1 ],
            "obj-42::obj-3::obj-14::obj-135": [ "live.text[244]", "live.text", 1 ],
            "obj-42::obj-3::obj-14::obj-153": [ "live.text[247]", "live.text", 1 ],
            "obj-42::obj-3::obj-14::obj-163": [ "live.text[249]", "live.text", 1 ],
            "obj-42::obj-3::obj-14::obj-173": [ "live.text[248]", "live.text", 1 ],
            "obj-42::obj-3::obj-14::obj-39": [ "live.tab[5]", "live.tab", 0 ],
            "obj-42::obj-3::obj-14::obj-40": [ "live.slider[16]", "live.slider[2]", 0 ],
            "obj-42::obj-3::obj-14::obj-64": [ "live.text[246]", "live.text", 0 ],
            "obj-42::obj-3::obj-16::obj-26": [ "corpusname[8]", "corpusname", 0 ],
            "obj-42::obj-3::obj-2": [ "heldnotesmode[15]", "heldnotesmode", 0 ],
            "obj-42::obj-3::obj-32": [ "heldnotesmode[16]", "heldnotesmode", 0 ],
            "obj-42::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[234]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[233]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[232]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[236]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[237]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[235]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[27]", "harmonincpeakdecay", 0 ],
            "obj-42::obj-3::obj-407::obj-1115": [ "continuity[34]", "continuity", 0 ],
            "obj-42::obj-3::obj-407::obj-1175": [ "heldnotesmode[14]", "heldnotesmode", 0 ],
            "obj-42::obj-3::obj-407::obj-1179": [ "continuity[8]", "continuity", 0 ],
            "obj-42::obj-3::obj-407::obj-12": [ "melodicmod12[5]", "melodicmod12", 0 ],
            "obj-42::obj-3::obj-407::obj-120": [ "melodicbypass[5]", "melodicbypass", 0 ],
            "obj-42::obj-3::obj-407::obj-1218": [ "simultaneousonsets[14]", "artificialmidities", 0 ],
            "obj-42::obj-3::obj-407::obj-126": [ "harmonicbypass[10]", "harmonicbypass", 0 ],
            "obj-42::obj-3::obj-407::obj-134": [ "continuity[33]", "continuity", 0 ],
            "obj-42::obj-3::obj-407::obj-1344": [ "enforcetaboo[7]", "enforcetaboo", 0 ],
            "obj-42::obj-3::obj-407::obj-140": [ "resetinfluences[5]", "resetinfluences", 0 ],
            "obj-42::obj-3::obj-407::obj-144": [ "harmonicngramorder[10]", "harmonicngramorder", 0 ],
            "obj-42::obj-3::obj-407::obj-1444": [ "outputprobability[7]", "outputprobability", 0 ],
            "obj-42::obj-3::obj-407::obj-152": [ "selfngramorder[5]", "selfngramorder", 0 ],
            "obj-42::obj-3::obj-407::obj-154": [ "melodicngramorder[7]", "melodicngramorder", 0 ],
            "obj-42::obj-3::obj-407::obj-19": [ "selfmod12[8]", "selfmod12", 0 ],
            "obj-42::obj-3::obj-407::obj-22": [ "selfmelodicbypass[5]", "selfmelodicbypass", 0 ],
            "obj-42::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[28]", "harmonincpeakdecay", 0 ],
            "obj-42::obj-3::obj-407::obj-255": [ "melodicpeakdecay[8]", "melodicpeakdecay", 0 ],
            "obj-42::obj-3::obj-407::obj-256": [ "selfpeakdecay[5]", "selfpeakdecay", 0 ],
            "obj-42::obj-3::obj-407::obj-270::obj-1226": [ "width[5]", "Width", 0 ],
            "obj-42::obj-3::obj-407::obj-270::obj-1227": [ "center[5]", "Center", 0 ],
            "obj-42::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[14]", "live.slider", 0 ],
            "obj-42::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[7]", "live.numbox[2]", 0 ],
            "obj-42::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[5]", "__exp_velocityenable", 0 ],
            "obj-42::obj-3::obj-407::obj-270::obj-889": [ "weight[5]", "Weight", 0 ],
            "obj-42::obj-3::obj-407::obj-295": [ "playingmode[7]", "playingmode", 0 ],
            "obj-42::obj-3::obj-407::obj-298": [ "simultaneousonsets[13]", "simultaneousonsets", 0 ],
            "obj-42::obj-3::obj-407::obj-328": [ "decaybasis[5]", "decaybasis", 0 ],
            "obj-42::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[243]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[242]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[241]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[238]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[239]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[240]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[7]", "__exp_melodicpitchfromchords", 0 ],
            "obj-42::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[7]", "__exp_tempoconsistencysigma", 0 ],
            "obj-42::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[5]", "__exp_numnotessigma", 0 ],
            "obj-42::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[8]", "__exp_numnotesenable", 0 ],
            "obj-42::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[5]", "__exp_numnotesmu", 0 ],
            "obj-42::obj-3::obj-407::obj-667": [ "selfharmonicbypass[12]", "selfharmonicbypass", 0 ],
            "obj-42::obj-3::obj-407::obj-670": [ "harmonicbypass[9]", "harmonicbypass", 0 ],
            "obj-42::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[11]", "selfharmonicngramorder", 0 ],
            "obj-42::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[30]", "harmonincpeakdecay[1]", 0 ],
            "obj-42::obj-3::obj-407::obj-688": [ "__exp_durationsigma[7]", "__exp_durationsigma", 0 ],
            "obj-42::obj-3::obj-407::obj-702": [ "__exp_durationmu[5]", "__exp_durationmu", 0 ],
            "obj-42::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[8]", "__exp_octavebandsenable", 0 ],
            "obj-42::obj-3::obj-407::obj-733": [ "__exp_octavebands[5]", "__exp_octavebands", 0 ],
            "obj-42::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[7]", "__exp_selfpitchfromchords", 0 ],
            "obj-42::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[5]", "__exp_autojumpforcejump", 0 ],
            "obj-42::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[5]", "__exp_autojumpenable", 0 ],
            "obj-42::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[5]", "__exp_autojumpactivate", 0 ],
            "obj-42::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[7]", "__exp_tempoconsistencyenable", 0 ],
            "obj-42::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[7]", "__exp_tempoconsistencylen", 0 ],
            "obj-42::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[32]", "harmonincpeakdecay", 0 ],
            "obj-42::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[229]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[230]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[231]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-843": [ "harmonicngramorder[9]", "harmonicngramorder", 0 ],
            "obj-42::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[31]", "harmonincpeakdecay[1]", 0 ],
            "obj-42::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[12]", "selfharmonicngramorder", 0 ],
            "obj-42::obj-3::obj-407::obj-870": [ "selfharmonicbypass[11]", "selfharmonicbypass", 0 ],
            "obj-42::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[29]", "harmonincpeakdecay", 0 ],
            "obj-42::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[227]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[228]", "live.text", 0 ],
            "obj-42::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[226]", "live.text", 0 ],
            "obj-42::obj-3::obj-79::obj-1": [ "live.text[211]", "live.text", 0 ],
            "obj-42::obj-3::obj-79::obj-2": [ "live.text[213]", "live.text", 0 ],
            "obj-42::obj-3::obj-79::obj-3": [ "live.text[212]", "live.text", 0 ],
            "obj-42::obj-3::obj-85::obj-1": [ "live.text[250]", "live.text", 0 ],
            "obj-42::obj-3::obj-85::obj-2": [ "live.text[251]", "live.text", 0 ],
            "obj-42::obj-3::obj-85::obj-3": [ "live.text[252]", "live.text", 0 ],
            "obj-42::obj-3::obj-87::obj-1": [ "live.text[216]", "live.text", 0 ],
            "obj-42::obj-3::obj-87::obj-2": [ "live.text[215]", "live.text", 0 ],
            "obj-42::obj-3::obj-87::obj-3": [ "live.text[214]", "live.text", 0 ],
            "obj-42::obj-3::obj-89::obj-1": [ "live.text[219]", "live.text", 0 ],
            "obj-42::obj-3::obj-89::obj-2": [ "live.text[218]", "live.text", 0 ],
            "obj-42::obj-3::obj-89::obj-3": [ "live.text[217]", "live.text", 0 ],
            "obj-42::obj-3::obj-91::obj-1": [ "live.text[222]", "live.text", 0 ],
            "obj-42::obj-3::obj-91::obj-2": [ "live.text[221]", "live.text", 0 ],
            "obj-42::obj-3::obj-91::obj-3": [ "live.text[220]", "live.text", 0 ],
            "obj-42::obj-3::obj-94::obj-1": [ "live.text[254]", "live.text", 0 ],
            "obj-42::obj-3::obj-94::obj-2": [ "live.text[255]", "live.text", 0 ],
            "obj-42::obj-3::obj-94::obj-3": [ "live.text[253]", "live.text", 0 ],
            "obj-42::obj-6::obj-98": [ "live.text[257]", "live.text[26]", 0 ],
            "obj-4::obj-121": [ "Gain[4]", "Gain", 0 ],
            "obj-4::obj-46": [ "live.dial[2]", "Pan", 0 ],
            "obj-4::obj-95": [ "Delay", "Delay", 0 ],
            "obj-5::obj-118::obj-114": [ "live.gain~[5]", "live.gain~", 0 ],
            "obj-5::obj-118::obj-119": [ "live.text[110]", "live.text[30]", 0 ],
            "obj-5::obj-118::obj-2::obj-119": [ "live.text[108]", "live.text[30]", 0 ],
            "obj-5::obj-118::obj-2::obj-13": [ "live.text[109]", "live.text", 0 ],
            "obj-5::obj-118::obj-2::obj-140": [ "mc.live.gain~[10]", "mc.live.gain~", 0 ],
            "obj-5::obj-118::obj-2::obj-62::obj-1": [ "source[19]", "source", 0 ],
            "obj-5::obj-118::obj-42": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-5::obj-118::obj-55": [ "live.gain~[4]", "live.gain~", 0 ],
            "obj-5::obj-17::obj-103": [ "influence delay[14]", "influencedelay", 0 ],
            "obj-5::obj-17::obj-10::obj-103": [ "influence delay[12]", "influencedelay", 0 ],
            "obj-5::obj-17::obj-10::obj-21": [ "onset[12]", "onset", 0 ],
            "obj-5::obj-17::obj-10::obj-26": [ "chroma scaling factor[23]", "chroma", 0 ],
            "obj-5::obj-17::obj-10::obj-28": [ "chromaonset[12]", "chromaonset", 0 ],
            "obj-5::obj-17::obj-10::obj-29": [ "enable[12]", "enable", 0 ],
            "obj-5::obj-17::obj-10::obj-30": [ "chroma scaling factor[22]", "chroma", 0 ],
            "obj-5::obj-17::obj-10::obj-46::obj-1": [ "source[17]", "source", 0 ],
            "obj-5::obj-17::obj-10::obj-9": [ "pitch[12]", "pitch", 0 ],
            "obj-5::obj-17::obj-2::obj-103": [ "influence delay[10]", "influencedelay", 0 ],
            "obj-5::obj-17::obj-2::obj-21": [ "onset[10]", "onset", 0 ],
            "obj-5::obj-17::obj-2::obj-26": [ "chroma scaling factor[18]", "chroma", 0 ],
            "obj-5::obj-17::obj-2::obj-28": [ "chromaonset[10]", "chromaonset", 0 ],
            "obj-5::obj-17::obj-2::obj-29": [ "enable[10]", "enable", 0 ],
            "obj-5::obj-17::obj-2::obj-30": [ "chroma scaling factor[19]", "chroma", 0 ],
            "obj-5::obj-17::obj-2::obj-46::obj-1": [ "source[15]", "source", 0 ],
            "obj-5::obj-17::obj-2::obj-9": [ "pitch[10]", "pitch", 0 ],
            "obj-5::obj-17::obj-33::obj-103": [ "influence delay[13]", "influencedelay", 0 ],
            "obj-5::obj-17::obj-33::obj-21": [ "onset[13]", "onset", 0 ],
            "obj-5::obj-17::obj-33::obj-26": [ "chroma scaling factor[25]", "chroma", 0 ],
            "obj-5::obj-17::obj-33::obj-28": [ "chromaonset[13]", "chromaonset", 0 ],
            "obj-5::obj-17::obj-33::obj-29": [ "enable[13]", "enable", 0 ],
            "obj-5::obj-17::obj-33::obj-30": [ "chroma scaling factor[24]", "chroma", 0 ],
            "obj-5::obj-17::obj-33::obj-46::obj-1": [ "source[18]", "source", 0 ],
            "obj-5::obj-17::obj-33::obj-9": [ "pitch[13]", "pitch", 0 ],
            "obj-5::obj-17::obj-6::obj-103": [ "influence delay[11]", "influencedelay", 0 ],
            "obj-5::obj-17::obj-6::obj-21": [ "onset[11]", "onset", 0 ],
            "obj-5::obj-17::obj-6::obj-26": [ "chroma scaling factor[21]", "chroma", 0 ],
            "obj-5::obj-17::obj-6::obj-28": [ "chromaonset[11]", "chromaonset", 0 ],
            "obj-5::obj-17::obj-6::obj-29": [ "enable[11]", "enable", 0 ],
            "obj-5::obj-17::obj-6::obj-30": [ "chroma scaling factor[20]", "chroma", 0 ],
            "obj-5::obj-17::obj-6::obj-46::obj-1": [ "source[16]", "source", 0 ],
            "obj-5::obj-17::obj-6::obj-9": [ "pitch[11]", "pitch", 0 ],
            "obj-5::obj-25::obj-1": [ "Gain[5]", "Gain", 0 ],
            "obj-5::obj-25::obj-44": [ "live.dial[6]", "Width", 0 ],
            "obj-5::obj-25::obj-46": [ "live.dial[5]", "Pan", 0 ],
            "obj-5::obj-3::obj-1115": [ "continuity[29]", "continuity", 0 ],
            "obj-5::obj-3::obj-1150": [ "live.text[106]", "live.text", 0 ],
            "obj-5::obj-3::obj-1179": [ "continuity[30]", "continuity", 0 ],
            "obj-5::obj-3::obj-123::obj-1": [ "live.text[135]", "live.text", 0 ],
            "obj-5::obj-3::obj-123::obj-2": [ "live.text[136]", "live.text", 0 ],
            "obj-5::obj-3::obj-123::obj-3": [ "live.text[137]", "live.text", 0 ],
            "obj-5::obj-3::obj-14::obj-12": [ "live.slider[9]", "live.slider[2]", 0 ],
            "obj-5::obj-3::obj-14::obj-128": [ "live.text[160]", "live.text", 1 ],
            "obj-5::obj-3::obj-14::obj-135": [ "live.text[158]", "live.text", 1 ],
            "obj-5::obj-3::obj-14::obj-153": [ "live.text[156]", "live.text", 1 ],
            "obj-5::obj-3::obj-14::obj-163": [ "live.text[157]", "live.text", 1 ],
            "obj-5::obj-3::obj-14::obj-173": [ "live.text[159]", "live.text", 1 ],
            "obj-5::obj-3::obj-14::obj-39": [ "live.tab[3]", "live.tab", 0 ],
            "obj-5::obj-3::obj-14::obj-40": [ "live.slider[10]", "live.slider[2]", 0 ],
            "obj-5::obj-3::obj-14::obj-64": [ "live.text[161]", "live.text", 0 ],
            "obj-5::obj-3::obj-16::obj-26": [ "corpusname[6]", "corpusname", 0 ],
            "obj-5::obj-3::obj-2": [ "heldnotesmode[9]", "heldnotesmode", 0 ],
            "obj-5::obj-3::obj-32": [ "heldnotesmode[10]", "heldnotesmode", 0 ],
            "obj-5::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[145]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[144]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[146]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[149]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[147]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[148]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[16]", "harmonincpeakdecay", 0 ],
            "obj-5::obj-3::obj-407::obj-1115": [ "continuity[27]", "continuity", 0 ],
            "obj-5::obj-3::obj-407::obj-1175": [ "heldnotesmode[8]", "heldnotesmode", 0 ],
            "obj-5::obj-3::obj-407::obj-1179": [ "continuity[26]", "continuity", 0 ],
            "obj-5::obj-3::obj-407::obj-12": [ "melodicmod12[3]", "melodicmod12", 0 ],
            "obj-5::obj-3::obj-407::obj-120": [ "melodicbypass[3]", "melodicbypass", 0 ],
            "obj-5::obj-3::obj-407::obj-1218": [ "simultaneousonsets[3]", "artificialmidities", 0 ],
            "obj-5::obj-3::obj-407::obj-126": [ "harmonicbypass[5]", "harmonicbypass", 0 ],
            "obj-5::obj-3::obj-407::obj-134": [ "continuity[28]", "continuity", 0 ],
            "obj-5::obj-3::obj-407::obj-1344": [ "enforcetaboo[1]", "enforcetaboo", 0 ],
            "obj-5::obj-3::obj-407::obj-140": [ "resetinfluences[3]", "resetinfluences", 0 ],
            "obj-5::obj-3::obj-407::obj-144": [ "harmonicngramorder[5]", "harmonicngramorder", 0 ],
            "obj-5::obj-3::obj-407::obj-1444": [ "outputprobability[1]", "outputprobability", 0 ],
            "obj-5::obj-3::obj-407::obj-152": [ "selfngramorder[3]", "selfngramorder", 0 ],
            "obj-5::obj-3::obj-407::obj-154": [ "melodicngramorder[1]", "melodicngramorder", 0 ],
            "obj-5::obj-3::obj-407::obj-19": [ "selfmod12[6]", "selfmod12", 0 ],
            "obj-5::obj-3::obj-407::obj-22": [ "selfmelodicbypass[3]", "selfmelodicbypass", 0 ],
            "obj-5::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[20]", "harmonincpeakdecay", 0 ],
            "obj-5::obj-3::obj-407::obj-255": [ "melodicpeakdecay[6]", "melodicpeakdecay", 0 ],
            "obj-5::obj-3::obj-407::obj-256": [ "selfpeakdecay[3]", "selfpeakdecay", 0 ],
            "obj-5::obj-3::obj-407::obj-270::obj-1226": [ "width[3]", "Width", 0 ],
            "obj-5::obj-3::obj-407::obj-270::obj-1227": [ "center[3]", "Center", 0 ],
            "obj-5::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[8]", "live.slider", 0 ],
            "obj-5::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[5]", "live.numbox[2]", 0 ],
            "obj-5::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[3]", "__exp_velocityenable", 0 ],
            "obj-5::obj-3::obj-407::obj-270::obj-889": [ "weight[3]", "Weight", 0 ],
            "obj-5::obj-3::obj-407::obj-295": [ "playingmode[1]", "playingmode", 0 ],
            "obj-5::obj-3::obj-407::obj-298": [ "simultaneousonsets[10]", "simultaneousonsets", 0 ],
            "obj-5::obj-3::obj-407::obj-328": [ "decaybasis[3]", "decaybasis", 0 ],
            "obj-5::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[155]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[154]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[153]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[150]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[151]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[152]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[1]", "__exp_melodicpitchfromchords", 0 ],
            "obj-5::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[1]", "__exp_tempoconsistencysigma", 0 ],
            "obj-5::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[3]", "__exp_numnotessigma", 0 ],
            "obj-5::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[6]", "__exp_numnotesenable", 0 ],
            "obj-5::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[3]", "__exp_numnotesmu", 0 ],
            "obj-5::obj-3::obj-407::obj-667": [ "selfharmonicbypass[7]", "selfharmonicbypass", 0 ],
            "obj-5::obj-3::obj-407::obj-670": [ "harmonicbypass[6]", "harmonicbypass", 0 ],
            "obj-5::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[7]", "selfharmonicngramorder", 0 ],
            "obj-5::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[19]", "harmonincpeakdecay[1]", 0 ],
            "obj-5::obj-3::obj-407::obj-688": [ "__exp_durationsigma[1]", "__exp_durationsigma", 0 ],
            "obj-5::obj-3::obj-407::obj-702": [ "__exp_durationmu[3]", "__exp_durationmu", 0 ],
            "obj-5::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[6]", "__exp_octavebandsenable", 0 ],
            "obj-5::obj-3::obj-407::obj-733": [ "__exp_octavebands[3]", "__exp_octavebands", 0 ],
            "obj-5::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[1]", "__exp_selfpitchfromchords", 0 ],
            "obj-5::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[3]", "__exp_autojumpforcejump", 0 ],
            "obj-5::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[3]", "__exp_autojumpenable", 0 ],
            "obj-5::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[3]", "__exp_autojumpactivate", 0 ],
            "obj-5::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[1]", "__exp_tempoconsistencyenable", 0 ],
            "obj-5::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[1]", "__exp_tempoconsistencylen", 0 ],
            "obj-5::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[15]", "harmonincpeakdecay", 0 ],
            "obj-5::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[142]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[143]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[141]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-843": [ "harmonicngramorder[6]", "harmonicngramorder", 0 ],
            "obj-5::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[18]", "harmonincpeakdecay[1]", 0 ],
            "obj-5::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[8]", "selfharmonicngramorder", 0 ],
            "obj-5::obj-3::obj-407::obj-870": [ "selfharmonicbypass[8]", "selfharmonicbypass", 0 ],
            "obj-5::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[17]", "harmonincpeakdecay", 0 ],
            "obj-5::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[138]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[140]", "live.text", 0 ],
            "obj-5::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[139]", "live.text", 0 ],
            "obj-5::obj-3::obj-79::obj-1": [ "live.text[125]", "live.text", 0 ],
            "obj-5::obj-3::obj-79::obj-2": [ "live.text[124]", "live.text", 0 ],
            "obj-5::obj-3::obj-79::obj-3": [ "live.text[123]", "live.text", 0 ],
            "obj-5::obj-3::obj-85::obj-1": [ "live.text[163]", "live.text", 0 ],
            "obj-5::obj-3::obj-85::obj-2": [ "live.text[105]", "live.text", 0 ],
            "obj-5::obj-3::obj-85::obj-3": [ "live.text[162]", "live.text", 0 ],
            "obj-5::obj-3::obj-87::obj-1": [ "live.text[127]", "live.text", 0 ],
            "obj-5::obj-3::obj-87::obj-2": [ "live.text[128]", "live.text", 0 ],
            "obj-5::obj-3::obj-87::obj-3": [ "live.text[126]", "live.text", 0 ],
            "obj-5::obj-3::obj-89::obj-1": [ "live.text[130]", "live.text", 0 ],
            "obj-5::obj-3::obj-89::obj-2": [ "live.text[129]", "live.text", 0 ],
            "obj-5::obj-3::obj-89::obj-3": [ "live.text[131]", "live.text", 0 ],
            "obj-5::obj-3::obj-91::obj-1": [ "live.text[133]", "live.text", 0 ],
            "obj-5::obj-3::obj-91::obj-2": [ "live.text[134]", "live.text", 0 ],
            "obj-5::obj-3::obj-91::obj-3": [ "live.text[132]", "live.text", 0 ],
            "obj-5::obj-3::obj-94::obj-1": [ "live.text[166]", "live.text", 0 ],
            "obj-5::obj-3::obj-94::obj-2": [ "live.text[164]", "live.text", 0 ],
            "obj-5::obj-3::obj-94::obj-3": [ "live.text[165]", "live.text", 0 ],
            "obj-5::obj-6::obj-98": [ "live.text[107]", "live.text[26]", 0 ],
            "obj-6::obj-118::obj-114": [ "live.gain~[6]", "live.gain~", 0 ],
            "obj-6::obj-118::obj-119": [ "live.text[210]", "live.text[30]", 0 ],
            "obj-6::obj-118::obj-2::obj-119": [ "live.text[208]", "live.text[30]", 0 ],
            "obj-6::obj-118::obj-2::obj-13": [ "live.text[209]", "live.text", 0 ],
            "obj-6::obj-118::obj-2::obj-140": [ "mc.live.gain~[11]", "mc.live.gain~", 0 ],
            "obj-6::obj-118::obj-2::obj-62::obj-1": [ "source[24]", "source", 0 ],
            "obj-6::obj-118::obj-42": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-6::obj-118::obj-55": [ "live.gain~[7]", "live.gain~", 0 ],
            "obj-6::obj-17::obj-103": [ "influence delay[19]", "influencedelay", 0 ],
            "obj-6::obj-17::obj-10::obj-103": [ "influence delay[17]", "influencedelay", 0 ],
            "obj-6::obj-17::obj-10::obj-21": [ "onset[16]", "onset", 0 ],
            "obj-6::obj-17::obj-10::obj-26": [ "chroma scaling factor[31]", "chroma", 0 ],
            "obj-6::obj-17::obj-10::obj-28": [ "chromaonset[16]", "chromaonset", 0 ],
            "obj-6::obj-17::obj-10::obj-29": [ "enable[16]", "enable", 0 ],
            "obj-6::obj-17::obj-10::obj-30": [ "chroma scaling factor[30]", "chroma", 0 ],
            "obj-6::obj-17::obj-10::obj-46::obj-1": [ "source[22]", "source", 0 ],
            "obj-6::obj-17::obj-10::obj-9": [ "pitch[16]", "pitch", 0 ],
            "obj-6::obj-17::obj-2::obj-103": [ "influence delay[15]", "influencedelay", 0 ],
            "obj-6::obj-17::obj-2::obj-21": [ "onset[14]", "onset", 0 ],
            "obj-6::obj-17::obj-2::obj-26": [ "chroma scaling factor[26]", "chroma", 0 ],
            "obj-6::obj-17::obj-2::obj-28": [ "chromaonset[14]", "chromaonset", 0 ],
            "obj-6::obj-17::obj-2::obj-29": [ "enable[14]", "enable", 0 ],
            "obj-6::obj-17::obj-2::obj-30": [ "chroma scaling factor[27]", "chroma", 0 ],
            "obj-6::obj-17::obj-2::obj-46::obj-1": [ "source[20]", "source", 0 ],
            "obj-6::obj-17::obj-2::obj-9": [ "pitch[14]", "pitch", 0 ],
            "obj-6::obj-17::obj-33::obj-103": [ "influence delay[18]", "influencedelay", 0 ],
            "obj-6::obj-17::obj-33::obj-21": [ "onset[17]", "onset", 0 ],
            "obj-6::obj-17::obj-33::obj-26": [ "chroma scaling factor[32]", "chroma", 0 ],
            "obj-6::obj-17::obj-33::obj-28": [ "chromaonset[17]", "chromaonset", 0 ],
            "obj-6::obj-17::obj-33::obj-29": [ "enable[17]", "enable", 0 ],
            "obj-6::obj-17::obj-33::obj-30": [ "chroma scaling factor[33]", "chroma", 0 ],
            "obj-6::obj-17::obj-33::obj-46::obj-1": [ "source[23]", "source", 0 ],
            "obj-6::obj-17::obj-33::obj-9": [ "pitch[17]", "pitch", 0 ],
            "obj-6::obj-17::obj-6::obj-103": [ "influence delay[16]", "influencedelay", 0 ],
            "obj-6::obj-17::obj-6::obj-21": [ "onset[15]", "onset", 0 ],
            "obj-6::obj-17::obj-6::obj-26": [ "chroma scaling factor[28]", "chroma", 0 ],
            "obj-6::obj-17::obj-6::obj-28": [ "chromaonset[15]", "chromaonset", 0 ],
            "obj-6::obj-17::obj-6::obj-29": [ "enable[15]", "enable", 0 ],
            "obj-6::obj-17::obj-6::obj-30": [ "chroma scaling factor[29]", "chroma", 0 ],
            "obj-6::obj-17::obj-6::obj-46::obj-1": [ "source[21]", "source", 0 ],
            "obj-6::obj-17::obj-6::obj-9": [ "pitch[15]", "pitch", 0 ],
            "obj-6::obj-25::obj-1": [ "Gain[6]", "Gain", 0 ],
            "obj-6::obj-25::obj-44": [ "live.dial[8]", "Width", 0 ],
            "obj-6::obj-25::obj-46": [ "live.dial[7]", "Pan", 0 ],
            "obj-6::obj-3::obj-1115": [ "continuity[7]", "continuity", 0 ],
            "obj-6::obj-3::obj-1150": [ "live.text[206]", "live.text", 0 ],
            "obj-6::obj-3::obj-1179": [ "continuity[6]", "continuity", 0 ],
            "obj-6::obj-3::obj-123::obj-1": [ "live.text[175]", "live.text", 0 ],
            "obj-6::obj-3::obj-123::obj-2": [ "live.text[174]", "live.text", 0 ],
            "obj-6::obj-3::obj-123::obj-3": [ "live.text[173]", "live.text", 0 ],
            "obj-6::obj-3::obj-14::obj-12": [ "live.slider[13]", "live.slider[2]", 0 ],
            "obj-6::obj-3::obj-14::obj-128": [ "live.text[194]", "live.text", 1 ],
            "obj-6::obj-3::obj-14::obj-135": [ "live.text[199]", "live.text", 1 ],
            "obj-6::obj-3::obj-14::obj-153": [ "live.text[196]", "live.text", 1 ],
            "obj-6::obj-3::obj-14::obj-163": [ "live.text[198]", "live.text", 1 ],
            "obj-6::obj-3::obj-14::obj-173": [ "live.text[195]", "live.text", 1 ],
            "obj-6::obj-3::obj-14::obj-39": [ "live.tab[4]", "live.tab", 0 ],
            "obj-6::obj-3::obj-14::obj-40": [ "live.slider[12]", "live.slider[2]", 0 ],
            "obj-6::obj-3::obj-14::obj-64": [ "live.text[197]", "live.text", 0 ],
            "obj-6::obj-3::obj-16::obj-26": [ "corpusname[7]", "corpusname", 0 ],
            "obj-6::obj-3::obj-2": [ "heldnotesmode[13]", "heldnotesmode", 0 ],
            "obj-6::obj-3::obj-32": [ "heldnotesmode[12]", "heldnotesmode", 0 ],
            "obj-6::obj-3::obj-407::obj-1001::obj-89::obj-1": [ "live.text[184]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-1001::obj-89::obj-2": [ "live.text[182]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-1001::obj-89::obj-3": [ "live.text[183]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-1039::obj-89::obj-1": [ "live.text[186]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-1039::obj-89::obj-2": [ "live.text[185]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-1039::obj-89::obj-3": [ "live.text[187]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-1105": [ "harmonincpeakdecay[25]", "harmonincpeakdecay", 0 ],
            "obj-6::obj-3::obj-407::obj-1115": [ "continuity[5]", "continuity", 0 ],
            "obj-6::obj-3::obj-407::obj-1175": [ "heldnotesmode[11]", "heldnotesmode", 0 ],
            "obj-6::obj-3::obj-407::obj-1179": [ "continuity[32]", "continuity", 0 ],
            "obj-6::obj-3::obj-407::obj-12": [ "melodicmod12[4]", "melodicmod12", 0 ],
            "obj-6::obj-3::obj-407::obj-120": [ "melodicbypass[4]", "melodicbypass", 0 ],
            "obj-6::obj-3::obj-407::obj-1218": [ "simultaneousonsets[11]", "artificialmidities", 0 ],
            "obj-6::obj-3::obj-407::obj-126": [ "harmonicbypass[8]", "harmonicbypass", 0 ],
            "obj-6::obj-3::obj-407::obj-134": [ "continuity[31]", "continuity", 0 ],
            "obj-6::obj-3::obj-407::obj-1344": [ "enforcetaboo[6]", "enforcetaboo", 0 ],
            "obj-6::obj-3::obj-407::obj-140": [ "resetinfluences[4]", "resetinfluences", 0 ],
            "obj-6::obj-3::obj-407::obj-144": [ "harmonicngramorder[8]", "harmonicngramorder", 0 ],
            "obj-6::obj-3::obj-407::obj-1444": [ "outputprobability[6]", "outputprobability", 0 ],
            "obj-6::obj-3::obj-407::obj-152": [ "selfngramorder[4]", "selfngramorder", 0 ],
            "obj-6::obj-3::obj-407::obj-154": [ "melodicngramorder[6]", "melodicngramorder", 0 ],
            "obj-6::obj-3::obj-407::obj-19": [ "selfmod12[7]", "selfmod12", 0 ],
            "obj-6::obj-3::obj-407::obj-22": [ "selfmelodicbypass[4]", "selfmelodicbypass", 0 ],
            "obj-6::obj-3::obj-407::obj-254": [ "harmonincpeakdecay[22]", "harmonincpeakdecay", 0 ],
            "obj-6::obj-3::obj-407::obj-255": [ "melodicpeakdecay[7]", "melodicpeakdecay", 0 ],
            "obj-6::obj-3::obj-407::obj-256": [ "selfpeakdecay[4]", "selfpeakdecay", 0 ],
            "obj-6::obj-3::obj-407::obj-270::obj-1226": [ "width[4]", "Width", 0 ],
            "obj-6::obj-3::obj-407::obj-270::obj-1227": [ "center[4]", "Center", 0 ],
            "obj-6::obj-3::obj-407::obj-270::obj-1240": [ "live.slider[11]", "live.slider", 0 ],
            "obj-6::obj-3::obj-407::obj-270::obj-1241": [ "live.numbox[6]", "live.numbox[2]", 0 ],
            "obj-6::obj-3::obj-407::obj-270::obj-622": [ "__exp_velocityenable[4]", "__exp_velocityenable", 0 ],
            "obj-6::obj-3::obj-407::obj-270::obj-889": [ "weight[4]", "Weight", 0 ],
            "obj-6::obj-3::obj-407::obj-295": [ "playingmode[6]", "playingmode", 0 ],
            "obj-6::obj-3::obj-407::obj-298": [ "simultaneousonsets[12]", "simultaneousonsets", 0 ],
            "obj-6::obj-3::obj-407::obj-328": [ "decaybasis[4]", "decaybasis", 0 ],
            "obj-6::obj-3::obj-407::obj-387::obj-89::obj-1": [ "live.text[191]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-387::obj-89::obj-2": [ "live.text[193]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-387::obj-89::obj-3": [ "live.text[192]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-497::obj-89::obj-1": [ "live.text[188]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-497::obj-89::obj-2": [ "live.text[189]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-497::obj-89::obj-3": [ "live.text[190]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-570": [ "__exp_melodicpitchfromchords[6]", "__exp_melodicpitchfromchords", 0 ],
            "obj-6::obj-3::obj-407::obj-575": [ "__exp_tempoconsistencysigma[6]", "__exp_tempoconsistencysigma", 0 ],
            "obj-6::obj-3::obj-407::obj-642": [ "__exp_numnotessigma[4]", "__exp_numnotessigma", 0 ],
            "obj-6::obj-3::obj-407::obj-653": [ "__exp_numnotesenable[7]", "__exp_numnotesenable", 0 ],
            "obj-6::obj-3::obj-407::obj-656": [ "__exp_numnotesmu[4]", "__exp_numnotesmu", 0 ],
            "obj-6::obj-3::obj-407::obj-667": [ "selfharmonicbypass[10]", "selfharmonicbypass", 0 ],
            "obj-6::obj-3::obj-407::obj-670": [ "harmonicbypass[7]", "harmonicbypass", 0 ],
            "obj-6::obj-3::obj-407::obj-679": [ "selfharmonicngramorder[9]", "selfharmonicngramorder", 0 ],
            "obj-6::obj-3::obj-407::obj-685": [ "harmonincpeakdecay[21]", "harmonincpeakdecay[1]", 0 ],
            "obj-6::obj-3::obj-407::obj-688": [ "__exp_durationsigma[6]", "__exp_durationsigma", 0 ],
            "obj-6::obj-3::obj-407::obj-702": [ "__exp_durationmu[4]", "__exp_durationmu", 0 ],
            "obj-6::obj-3::obj-407::obj-722": [ "__exp_octavebandsenable[7]", "__exp_octavebandsenable", 0 ],
            "obj-6::obj-3::obj-407::obj-733": [ "__exp_octavebands[4]", "__exp_octavebands", 0 ],
            "obj-6::obj-3::obj-407::obj-746": [ "__exp_selfpitchfromchords[6]", "__exp_selfpitchfromchords", 0 ],
            "obj-6::obj-3::obj-407::obj-763": [ "__exp_autojumpforcejump[4]", "__exp_autojumpforcejump", 0 ],
            "obj-6::obj-3::obj-407::obj-774": [ "__exp_autojumpenable[4]", "__exp_autojumpenable", 0 ],
            "obj-6::obj-3::obj-407::obj-777": [ "__exp_autojumpactivate[4]", "__exp_autojumpactivate", 0 ],
            "obj-6::obj-3::obj-407::obj-799": [ "__exp_tempoconsistencyenable[6]", "__exp_tempoconsistencyenable", 0 ],
            "obj-6::obj-3::obj-407::obj-802": [ "__exp_tempoconsistencylen[6]", "__exp_tempoconsistencylen", 0 ],
            "obj-6::obj-3::obj-407::obj-814": [ "harmonincpeakdecay[26]", "harmonincpeakdecay", 0 ],
            "obj-6::obj-3::obj-407::obj-842::obj-89::obj-1": [ "live.text[181]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-842::obj-89::obj-2": [ "live.text[180]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-842::obj-89::obj-3": [ "live.text[179]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-843": [ "harmonicngramorder[7]", "harmonicngramorder", 0 ],
            "obj-6::obj-3::obj-407::obj-860": [ "harmonincpeakdecay[23]", "harmonincpeakdecay[1]", 0 ],
            "obj-6::obj-3::obj-407::obj-865": [ "selfharmonicngramorder[10]", "selfharmonicngramorder", 0 ],
            "obj-6::obj-3::obj-407::obj-870": [ "selfharmonicbypass[9]", "selfharmonicbypass", 0 ],
            "obj-6::obj-3::obj-407::obj-871": [ "harmonincpeakdecay[24]", "harmonincpeakdecay", 0 ],
            "obj-6::obj-3::obj-407::obj-96::obj-89::obj-1": [ "live.text[177]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-96::obj-89::obj-2": [ "live.text[178]", "live.text", 0 ],
            "obj-6::obj-3::obj-407::obj-96::obj-89::obj-3": [ "live.text[176]", "live.text", 0 ],
            "obj-6::obj-3::obj-79::obj-1": [ "live.text[113]", "live.text", 0 ],
            "obj-6::obj-3::obj-79::obj-2": [ "live.text[111]", "live.text", 0 ],
            "obj-6::obj-3::obj-79::obj-3": [ "live.text[112]", "live.text", 0 ],
            "obj-6::obj-3::obj-85::obj-1": [ "live.text[200]", "live.text", 0 ],
            "obj-6::obj-3::obj-85::obj-2": [ "live.text[202]", "live.text", 0 ],
            "obj-6::obj-3::obj-85::obj-3": [ "live.text[201]", "live.text", 0 ],
            "obj-6::obj-3::obj-87::obj-1": [ "live.text[115]", "live.text", 0 ],
            "obj-6::obj-3::obj-87::obj-2": [ "live.text[116]", "live.text", 0 ],
            "obj-6::obj-3::obj-87::obj-3": [ "live.text[114]", "live.text", 0 ],
            "obj-6::obj-3::obj-89::obj-1": [ "live.text[167]", "live.text", 0 ],
            "obj-6::obj-3::obj-89::obj-2": [ "live.text[168]", "live.text", 0 ],
            "obj-6::obj-3::obj-89::obj-3": [ "live.text[169]", "live.text", 0 ],
            "obj-6::obj-3::obj-91::obj-1": [ "live.text[170]", "live.text", 0 ],
            "obj-6::obj-3::obj-91::obj-2": [ "live.text[172]", "live.text", 0 ],
            "obj-6::obj-3::obj-91::obj-3": [ "live.text[171]", "live.text", 0 ],
            "obj-6::obj-3::obj-94::obj-1": [ "live.text[204]", "live.text", 0 ],
            "obj-6::obj-3::obj-94::obj-2": [ "live.text[205]", "live.text", 0 ],
            "obj-6::obj-3::obj-94::obj-3": [ "live.text[203]", "live.text", 0 ],
            "obj-6::obj-6::obj-98": [ "live.text[207]", "live.text[26]", 0 ],
            "parameter_overrides": {
                "obj-11::obj-118::obj-119": {
                    "parameter_longname": "live.text[68]"
                },
                "obj-11::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[67]"
                },
                "obj-11::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[66]"
                },
                "obj-11::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-11::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[2]"
                },
                "obj-11::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[5]"
                },
                "obj-11::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[6]"
                },
                "obj-11::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-11::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-11::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[3]"
                },
                "obj-11::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[11]"
                },
                "obj-11::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[12]"
                },
                "obj-11::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-11::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[1]"
                },
                "obj-11::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[3]"
                },
                "obj-11::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[4]"
                },
                "obj-11::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-11::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[15]"
                },
                "obj-11::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[17]"
                },
                "obj-11::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[16]"
                },
                "obj-11::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-11::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[28]"
                },
                "obj-11::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[27]"
                },
                "obj-11::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[29]"
                },
                "obj-11::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[31]"
                },
                "obj-11::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[30]"
                },
                "obj-11::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[22]"
                },
                "obj-11::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[35]"
                },
                "obj-11::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[36]"
                },
                "obj-11::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[34]"
                },
                "obj-11::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[32]"
                },
                "obj-11::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[23]"
                },
                "obj-11::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[33]"
                },
                "obj-11::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[21]"
                },
                "obj-11::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[25]"
                },
                "obj-11::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[26]"
                },
                "obj-11::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-11::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[18]"
                },
                "obj-11::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-11::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[38]"
                },
                "obj-11::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[39]"
                },
                "obj-11::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[37]"
                },
                "obj-11::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[8]"
                },
                "obj-11::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[1]"
                },
                "obj-11::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[2]"
                },
                "obj-11::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[10]"
                },
                "obj-11::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[11]"
                },
                "obj-11::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[9]"
                },
                "obj-11::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[13]"
                },
                "obj-11::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[14]"
                },
                "obj-11::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[12]"
                },
                "obj-11::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[42]"
                },
                "obj-11::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[41]"
                },
                "obj-11::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[40]"
                },
                "obj-1::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[2]"
                },
                "obj-1::obj-118::obj-119": {
                    "parameter_longname": "live.text[104]"
                },
                "obj-1::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[102]"
                },
                "obj-1::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[103]"
                },
                "obj-1::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[1]"
                },
                "obj-1::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-1::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[1]"
                },
                "obj-1::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[3]"
                },
                "obj-1::obj-17::obj-103": {
                    "parameter_longname": "influence delay[9]"
                },
                "obj-1::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[7]"
                },
                "obj-1::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[15]"
                },
                "obj-1::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[14]"
                },
                "obj-1::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-1::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[5]"
                },
                "obj-1::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[7]"
                },
                "obj-1::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[8]"
                },
                "obj-1::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-1::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[8]"
                },
                "obj-1::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[17]"
                },
                "obj-1::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[16]"
                },
                "obj-1::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-1::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[6]"
                },
                "obj-1::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[9]"
                },
                "obj-1::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[13]"
                },
                "obj-1::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-1::obj-25::obj-1": {
                    "parameter_longname": "Gain[1]"
                },
                "obj-1::obj-25::obj-44": {
                    "parameter_longname": "live.dial[3]"
                },
                "obj-1::obj-25::obj-46": {
                    "parameter_longname": "live.dial[4]"
                },
                "obj-1::obj-3::obj-1150": {
                    "parameter_longname": "live.text[100]"
                },
                "obj-1::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[75]"
                },
                "obj-1::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[74]"
                },
                "obj-1::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[45]"
                },
                "obj-1::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[6]"
                },
                "obj-1::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[90]"
                },
                "obj-1::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[92]"
                },
                "obj-1::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[93]"
                },
                "obj-1::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[89]"
                },
                "obj-1::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[91]"
                },
                "obj-1::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[2]"
                },
                "obj-1::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[7]"
                },
                "obj-1::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[64]"
                },
                "obj-1::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-1::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[49]"
                },
                "obj-1::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[80]"
                },
                "obj-1::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[79]"
                },
                "obj-1::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[81]"
                },
                "obj-1::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[50]"
                },
                "obj-1::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[82]"
                },
                "obj-1::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[2]"
                },
                "obj-1::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[2]"
                },
                "obj-1::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[5]"
                },
                "obj-1::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[4]"
                },
                "obj-1::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[2]"
                },
                "obj-1::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[88]"
                },
                "obj-1::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[86]"
                },
                "obj-1::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[87]"
                },
                "obj-1::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[83]"
                },
                "obj-1::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[84]"
                },
                "obj-1::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[85]"
                },
                "obj-1::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[48]"
                },
                "obj-1::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[78]"
                },
                "obj-1::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[77]"
                },
                "obj-1::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[76]"
                },
                "obj-1::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[47]"
                },
                "obj-1::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[46]"
                },
                "obj-1::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[56]"
                },
                "obj-1::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[55]"
                },
                "obj-1::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[54]"
                },
                "obj-1::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[96]"
                },
                "obj-1::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[95]"
                },
                "obj-1::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[94]"
                },
                "obj-1::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[63]"
                },
                "obj-1::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[57]"
                },
                "obj-1::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[43]"
                },
                "obj-1::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[69]"
                },
                "obj-1::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[44]"
                },
                "obj-1::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[70]"
                },
                "obj-1::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[71]"
                },
                "obj-1::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[73]"
                },
                "obj-1::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[72]"
                },
                "obj-1::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[97]"
                },
                "obj-1::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[98]"
                },
                "obj-1::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[99]"
                },
                "obj-1::obj-6::obj-98": {
                    "parameter_longname": "live.text[101]"
                },
                "obj-2::obj-13::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[15]"
                },
                "obj-39::obj-118::obj-119": {
                    "parameter_longname": "live.text[410]"
                },
                "obj-39::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[409]"
                },
                "obj-39::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[408]"
                },
                "obj-39::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[15]"
                },
                "obj-39::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[7]"
                },
                "obj-39::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[14]"
                },
                "obj-39::obj-17::obj-103": {
                    "parameter_longname": "influence delay[39]"
                },
                "obj-39::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[37]"
                },
                "obj-39::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[63]"
                },
                "obj-39::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[62]"
                },
                "obj-39::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[35]"
                },
                "obj-39::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[58]"
                },
                "obj-39::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[59]"
                },
                "obj-39::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[38]"
                },
                "obj-39::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[64]"
                },
                "obj-39::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[65]"
                },
                "obj-39::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[36]"
                },
                "obj-39::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[61]"
                },
                "obj-39::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[60]"
                },
                "obj-39::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-25::obj-1": {
                    "parameter_longname": "Gain[10]"
                },
                "obj-39::obj-25::obj-44": {
                    "parameter_longname": "live.dial[16]"
                },
                "obj-39::obj-25::obj-46": {
                    "parameter_longname": "live.dial[15]"
                },
                "obj-39::obj-3::obj-1150": {
                    "parameter_longname": "live.text[406]"
                },
                "obj-39::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[374]"
                },
                "obj-39::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[375]"
                },
                "obj-39::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[373]"
                },
                "obj-39::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[25]"
                },
                "obj-39::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[395]"
                },
                "obj-39::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[398]"
                },
                "obj-39::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[394]"
                },
                "obj-39::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[396]"
                },
                "obj-39::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[397]"
                },
                "obj-39::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[8]"
                },
                "obj-39::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[24]"
                },
                "obj-39::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[399]"
                },
                "obj-39::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-39::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[382]"
                },
                "obj-39::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[384]"
                },
                "obj-39::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[383]"
                },
                "obj-39::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[385]"
                },
                "obj-39::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[387]"
                },
                "obj-39::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[386]"
                },
                "obj-39::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[8]"
                },
                "obj-39::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[8]"
                },
                "obj-39::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[23]"
                },
                "obj-39::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[10]"
                },
                "obj-39::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[8]"
                },
                "obj-39::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[391]"
                },
                "obj-39::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[392]"
                },
                "obj-39::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[393]"
                },
                "obj-39::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[389]"
                },
                "obj-39::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[388]"
                },
                "obj-39::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[390]"
                },
                "obj-39::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[380]"
                },
                "obj-39::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[381]"
                },
                "obj-39::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[379]"
                },
                "obj-39::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[378]"
                },
                "obj-39::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[376]"
                },
                "obj-39::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[377]"
                },
                "obj-39::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[362]"
                },
                "obj-39::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[361]"
                },
                "obj-39::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[363]"
                },
                "obj-39::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[400]"
                },
                "obj-39::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[402]"
                },
                "obj-39::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[401]"
                },
                "obj-39::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[366]"
                },
                "obj-39::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[364]"
                },
                "obj-39::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[365]"
                },
                "obj-39::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[369]"
                },
                "obj-39::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[367]"
                },
                "obj-39::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[368]"
                },
                "obj-39::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[370]"
                },
                "obj-39::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[371]"
                },
                "obj-39::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[372]"
                },
                "obj-39::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[403]"
                },
                "obj-39::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[405]"
                },
                "obj-39::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[404]"
                },
                "obj-39::obj-6::obj-98": {
                    "parameter_longname": "live.text[407]"
                },
                "obj-40::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[13]"
                },
                "obj-40::obj-118::obj-119": {
                    "parameter_longname": "live.text[360]"
                },
                "obj-40::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[358]"
                },
                "obj-40::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[359]"
                },
                "obj-40::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[14]"
                },
                "obj-40::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-40::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[6]"
                },
                "obj-40::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[12]"
                },
                "obj-40::obj-17::obj-103": {
                    "parameter_longname": "influence delay[34]"
                },
                "obj-40::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[32]"
                },
                "obj-40::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[55]"
                },
                "obj-40::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[54]"
                },
                "obj-40::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-40::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[30]"
                },
                "obj-40::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[51]"
                },
                "obj-40::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[50]"
                },
                "obj-40::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-40::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[33]"
                },
                "obj-40::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[56]"
                },
                "obj-40::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[57]"
                },
                "obj-40::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-40::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[31]"
                },
                "obj-40::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[53]"
                },
                "obj-40::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[52]"
                },
                "obj-40::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-40::obj-25::obj-1": {
                    "parameter_longname": "Gain[9]"
                },
                "obj-40::obj-25::obj-44": {
                    "parameter_longname": "live.dial[14]"
                },
                "obj-40::obj-25::obj-46": {
                    "parameter_longname": "live.dial[13]"
                },
                "obj-40::obj-3::obj-1150": {
                    "parameter_longname": "live.text[356]"
                },
                "obj-40::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[323]"
                },
                "obj-40::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[324]"
                },
                "obj-40::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[325]"
                },
                "obj-40::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[21]"
                },
                "obj-40::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[345]"
                },
                "obj-40::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[347]"
                },
                "obj-40::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[344]"
                },
                "obj-40::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[346]"
                },
                "obj-40::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[349]"
                },
                "obj-40::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[7]"
                },
                "obj-40::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[22]"
                },
                "obj-40::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[348]"
                },
                "obj-40::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-40::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[334]"
                },
                "obj-40::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[332]"
                },
                "obj-40::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[333]"
                },
                "obj-40::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[336]"
                },
                "obj-40::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[335]"
                },
                "obj-40::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[337]"
                },
                "obj-40::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[7]"
                },
                "obj-40::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[7]"
                },
                "obj-40::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[20]"
                },
                "obj-40::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[9]"
                },
                "obj-40::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[7]"
                },
                "obj-40::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[343]"
                },
                "obj-40::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[342]"
                },
                "obj-40::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[341]"
                },
                "obj-40::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[339]"
                },
                "obj-40::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[338]"
                },
                "obj-40::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[340]"
                },
                "obj-40::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[329]"
                },
                "obj-40::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[331]"
                },
                "obj-40::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[330]"
                },
                "obj-40::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[327]"
                },
                "obj-40::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[326]"
                },
                "obj-40::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[328]"
                },
                "obj-40::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[311]"
                },
                "obj-40::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[312]"
                },
                "obj-40::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[313]"
                },
                "obj-40::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[352]"
                },
                "obj-40::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[351]"
                },
                "obj-40::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[350]"
                },
                "obj-40::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[316]"
                },
                "obj-40::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[315]"
                },
                "obj-40::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[314]"
                },
                "obj-40::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[319]"
                },
                "obj-40::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[318]"
                },
                "obj-40::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[317]"
                },
                "obj-40::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[322]"
                },
                "obj-40::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[320]"
                },
                "obj-40::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[321]"
                },
                "obj-40::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[355]"
                },
                "obj-40::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[354]"
                },
                "obj-40::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[353]"
                },
                "obj-40::obj-6::obj-98": {
                    "parameter_longname": "live.text[357]"
                },
                "obj-41::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[11]"
                },
                "obj-41::obj-118::obj-119": {
                    "parameter_longname": "live.text[310]"
                },
                "obj-41::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[308]"
                },
                "obj-41::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[309]"
                },
                "obj-41::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[13]"
                },
                "obj-41::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-41::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[5]"
                },
                "obj-41::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[10]"
                },
                "obj-41::obj-17::obj-103": {
                    "parameter_longname": "influence delay[29]"
                },
                "obj-41::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[27]"
                },
                "obj-41::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[47]"
                },
                "obj-41::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[46]"
                },
                "obj-41::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-41::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[25]"
                },
                "obj-41::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[42]"
                },
                "obj-41::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[43]"
                },
                "obj-41::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-41::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[28]"
                },
                "obj-41::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[48]"
                },
                "obj-41::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[49]"
                },
                "obj-41::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-41::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[26]"
                },
                "obj-41::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[44]"
                },
                "obj-41::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[45]"
                },
                "obj-41::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-41::obj-25::obj-1": {
                    "parameter_longname": "Gain[8]"
                },
                "obj-41::obj-25::obj-44": {
                    "parameter_longname": "live.dial[12]"
                },
                "obj-41::obj-25::obj-46": {
                    "parameter_longname": "live.dial[11]"
                },
                "obj-41::obj-3::obj-1150": {
                    "parameter_longname": "live.text[306]"
                },
                "obj-41::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[274]"
                },
                "obj-41::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[275]"
                },
                "obj-41::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[273]"
                },
                "obj-41::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[18]"
                },
                "obj-41::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[297]"
                },
                "obj-41::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[295]"
                },
                "obj-41::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[299]"
                },
                "obj-41::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[298]"
                },
                "obj-41::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[294]"
                },
                "obj-41::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[6]"
                },
                "obj-41::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[19]"
                },
                "obj-41::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[296]"
                },
                "obj-41::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-41::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[284]"
                },
                "obj-41::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[283]"
                },
                "obj-41::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[282]"
                },
                "obj-41::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[286]"
                },
                "obj-41::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[285]"
                },
                "obj-41::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[287]"
                },
                "obj-41::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[6]"
                },
                "obj-41::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[6]"
                },
                "obj-41::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[17]"
                },
                "obj-41::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[8]"
                },
                "obj-41::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[6]"
                },
                "obj-41::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[293]"
                },
                "obj-41::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[291]"
                },
                "obj-41::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[292]"
                },
                "obj-41::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[290]"
                },
                "obj-41::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[289]"
                },
                "obj-41::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[288]"
                },
                "obj-41::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[279]"
                },
                "obj-41::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[280]"
                },
                "obj-41::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[281]"
                },
                "obj-41::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[276]"
                },
                "obj-41::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[278]"
                },
                "obj-41::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[277]"
                },
                "obj-41::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[261]"
                },
                "obj-41::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[263]"
                },
                "obj-41::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[262]"
                },
                "obj-41::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[300]"
                },
                "obj-41::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[301]"
                },
                "obj-41::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[302]"
                },
                "obj-41::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[264]"
                },
                "obj-41::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[265]"
                },
                "obj-41::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[266]"
                },
                "obj-41::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[268]"
                },
                "obj-41::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[267]"
                },
                "obj-41::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[269]"
                },
                "obj-41::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[270]"
                },
                "obj-41::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[271]"
                },
                "obj-41::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[272]"
                },
                "obj-41::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[305]"
                },
                "obj-41::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[303]"
                },
                "obj-41::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[304]"
                },
                "obj-41::obj-6::obj-98": {
                    "parameter_longname": "live.text[307]"
                },
                "obj-42::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[8]"
                },
                "obj-42::obj-118::obj-119": {
                    "parameter_longname": "live.text[260]"
                },
                "obj-42::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[259]"
                },
                "obj-42::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[258]"
                },
                "obj-42::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[12]"
                },
                "obj-42::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-42::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-42::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[9]"
                },
                "obj-42::obj-17::obj-103": {
                    "parameter_longname": "influence delay[24]"
                },
                "obj-42::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[22]"
                },
                "obj-42::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[39]"
                },
                "obj-42::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[38]"
                },
                "obj-42::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-42::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[20]"
                },
                "obj-42::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[34]"
                },
                "obj-42::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[35]"
                },
                "obj-42::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-42::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[23]"
                },
                "obj-42::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[40]"
                },
                "obj-42::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[41]"
                },
                "obj-42::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-42::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[21]"
                },
                "obj-42::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[36]"
                },
                "obj-42::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[37]"
                },
                "obj-42::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-42::obj-25::obj-1": {
                    "parameter_longname": "Gain[7]"
                },
                "obj-42::obj-25::obj-44": {
                    "parameter_longname": "live.dial[9]"
                },
                "obj-42::obj-25::obj-46": {
                    "parameter_longname": "live.dial[10]"
                },
                "obj-42::obj-3::obj-1150": {
                    "parameter_longname": "live.text[256]"
                },
                "obj-42::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[223]"
                },
                "obj-42::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[224]"
                },
                "obj-42::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[225]"
                },
                "obj-42::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[15]"
                },
                "obj-42::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[245]"
                },
                "obj-42::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[244]"
                },
                "obj-42::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[247]"
                },
                "obj-42::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[249]"
                },
                "obj-42::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[248]"
                },
                "obj-42::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[5]"
                },
                "obj-42::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[16]"
                },
                "obj-42::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[246]"
                },
                "obj-42::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-42::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[234]"
                },
                "obj-42::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[233]"
                },
                "obj-42::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[232]"
                },
                "obj-42::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[236]"
                },
                "obj-42::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[237]"
                },
                "obj-42::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[235]"
                },
                "obj-42::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[5]"
                },
                "obj-42::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[5]"
                },
                "obj-42::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[14]"
                },
                "obj-42::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[7]"
                },
                "obj-42::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[5]"
                },
                "obj-42::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[243]"
                },
                "obj-42::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[242]"
                },
                "obj-42::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[241]"
                },
                "obj-42::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[238]"
                },
                "obj-42::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[239]"
                },
                "obj-42::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[240]"
                },
                "obj-42::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[229]"
                },
                "obj-42::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[230]"
                },
                "obj-42::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[231]"
                },
                "obj-42::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[227]"
                },
                "obj-42::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[228]"
                },
                "obj-42::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[226]"
                },
                "obj-42::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[211]"
                },
                "obj-42::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[213]"
                },
                "obj-42::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[212]"
                },
                "obj-42::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[250]"
                },
                "obj-42::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[251]"
                },
                "obj-42::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[252]"
                },
                "obj-42::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[216]"
                },
                "obj-42::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[215]"
                },
                "obj-42::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[214]"
                },
                "obj-42::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[219]"
                },
                "obj-42::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[218]"
                },
                "obj-42::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[217]"
                },
                "obj-42::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[222]"
                },
                "obj-42::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[221]"
                },
                "obj-42::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[220]"
                },
                "obj-42::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[254]"
                },
                "obj-42::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[255]"
                },
                "obj-42::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[253]"
                },
                "obj-42::obj-6::obj-98": {
                    "parameter_longname": "live.text[257]"
                },
                "obj-5::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[5]"
                },
                "obj-5::obj-118::obj-119": {
                    "parameter_longname": "live.text[110]"
                },
                "obj-5::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[108]"
                },
                "obj-5::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[109]"
                },
                "obj-5::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[10]"
                },
                "obj-5::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-5::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[2]"
                },
                "obj-5::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[4]"
                },
                "obj-5::obj-17::obj-103": {
                    "parameter_longname": "influence delay[14]"
                },
                "obj-5::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[12]"
                },
                "obj-5::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[23]"
                },
                "obj-5::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[22]"
                },
                "obj-5::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-5::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[10]"
                },
                "obj-5::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[18]"
                },
                "obj-5::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[19]"
                },
                "obj-5::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-5::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[13]"
                },
                "obj-5::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[25]"
                },
                "obj-5::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[24]"
                },
                "obj-5::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-5::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[11]"
                },
                "obj-5::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[21]"
                },
                "obj-5::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[20]"
                },
                "obj-5::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-5::obj-25::obj-1": {
                    "parameter_longname": "Gain[5]"
                },
                "obj-5::obj-25::obj-44": {
                    "parameter_longname": "live.dial[6]"
                },
                "obj-5::obj-25::obj-46": {
                    "parameter_longname": "live.dial[5]"
                },
                "obj-5::obj-3::obj-1150": {
                    "parameter_longname": "live.text[106]"
                },
                "obj-5::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[135]"
                },
                "obj-5::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[136]"
                },
                "obj-5::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[137]"
                },
                "obj-5::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[9]"
                },
                "obj-5::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[160]"
                },
                "obj-5::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[158]"
                },
                "obj-5::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[156]"
                },
                "obj-5::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[157]"
                },
                "obj-5::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[159]"
                },
                "obj-5::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[3]"
                },
                "obj-5::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[10]"
                },
                "obj-5::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[161]"
                },
                "obj-5::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-5::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[145]"
                },
                "obj-5::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[144]"
                },
                "obj-5::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[146]"
                },
                "obj-5::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[149]"
                },
                "obj-5::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[147]"
                },
                "obj-5::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[148]"
                },
                "obj-5::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[3]"
                },
                "obj-5::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[3]"
                },
                "obj-5::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[8]"
                },
                "obj-5::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[5]"
                },
                "obj-5::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[3]"
                },
                "obj-5::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[155]"
                },
                "obj-5::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[154]"
                },
                "obj-5::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[153]"
                },
                "obj-5::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[150]"
                },
                "obj-5::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[151]"
                },
                "obj-5::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[152]"
                },
                "obj-5::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[142]"
                },
                "obj-5::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[143]"
                },
                "obj-5::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[141]"
                },
                "obj-5::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[138]"
                },
                "obj-5::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[140]"
                },
                "obj-5::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[139]"
                },
                "obj-5::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[125]"
                },
                "obj-5::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[124]"
                },
                "obj-5::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[123]"
                },
                "obj-5::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[163]"
                },
                "obj-5::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[105]"
                },
                "obj-5::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[162]"
                },
                "obj-5::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[127]"
                },
                "obj-5::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[128]"
                },
                "obj-5::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[126]"
                },
                "obj-5::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[130]"
                },
                "obj-5::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[129]"
                },
                "obj-5::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[131]"
                },
                "obj-5::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[133]"
                },
                "obj-5::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[134]"
                },
                "obj-5::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[132]"
                },
                "obj-5::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[166]"
                },
                "obj-5::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[164]"
                },
                "obj-5::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[165]"
                },
                "obj-5::obj-6::obj-98": {
                    "parameter_longname": "live.text[107]"
                },
                "obj-6::obj-118::obj-114": {
                    "parameter_longname": "live.gain~[6]"
                },
                "obj-6::obj-118::obj-119": {
                    "parameter_longname": "live.text[210]"
                },
                "obj-6::obj-118::obj-2::obj-119": {
                    "parameter_longname": "live.text[208]"
                },
                "obj-6::obj-118::obj-2::obj-13": {
                    "parameter_longname": "live.text[209]"
                },
                "obj-6::obj-118::obj-2::obj-140": {
                    "parameter_longname": "mc.live.gain~[11]"
                },
                "obj-6::obj-118::obj-2::obj-62::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-6::obj-118::obj-42": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-6::obj-118::obj-55": {
                    "parameter_longname": "live.gain~[7]"
                },
                "obj-6::obj-17::obj-103": {
                    "parameter_longname": "influence delay[19]"
                },
                "obj-6::obj-17::obj-10::obj-103": {
                    "parameter_longname": "influence delay[17]"
                },
                "obj-6::obj-17::obj-10::obj-26": {
                    "parameter_longname": "chroma scaling factor[31]"
                },
                "obj-6::obj-17::obj-10::obj-30": {
                    "parameter_longname": "chroma scaling factor[30]"
                },
                "obj-6::obj-17::obj-10::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-6::obj-17::obj-2::obj-103": {
                    "parameter_longname": "influence delay[15]"
                },
                "obj-6::obj-17::obj-2::obj-26": {
                    "parameter_longname": "chroma scaling factor[26]"
                },
                "obj-6::obj-17::obj-2::obj-30": {
                    "parameter_longname": "chroma scaling factor[27]"
                },
                "obj-6::obj-17::obj-2::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-6::obj-17::obj-33::obj-103": {
                    "parameter_longname": "influence delay[18]"
                },
                "obj-6::obj-17::obj-33::obj-26": {
                    "parameter_longname": "chroma scaling factor[32]"
                },
                "obj-6::obj-17::obj-33::obj-30": {
                    "parameter_longname": "chroma scaling factor[33]"
                },
                "obj-6::obj-17::obj-33::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-6::obj-17::obj-6::obj-103": {
                    "parameter_longname": "influence delay[16]"
                },
                "obj-6::obj-17::obj-6::obj-26": {
                    "parameter_longname": "chroma scaling factor[28]"
                },
                "obj-6::obj-17::obj-6::obj-30": {
                    "parameter_longname": "chroma scaling factor[29]"
                },
                "obj-6::obj-17::obj-6::obj-46::obj-1": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-6::obj-25::obj-1": {
                    "parameter_longname": "Gain[6]"
                },
                "obj-6::obj-25::obj-44": {
                    "parameter_longname": "live.dial[8]"
                },
                "obj-6::obj-25::obj-46": {
                    "parameter_longname": "live.dial[7]"
                },
                "obj-6::obj-3::obj-1150": {
                    "parameter_longname": "live.text[206]"
                },
                "obj-6::obj-3::obj-123::obj-1": {
                    "parameter_longname": "live.text[175]"
                },
                "obj-6::obj-3::obj-123::obj-2": {
                    "parameter_longname": "live.text[174]"
                },
                "obj-6::obj-3::obj-123::obj-3": {
                    "parameter_longname": "live.text[173]"
                },
                "obj-6::obj-3::obj-14::obj-12": {
                    "parameter_longname": "live.slider[13]"
                },
                "obj-6::obj-3::obj-14::obj-128": {
                    "parameter_longname": "live.text[194]"
                },
                "obj-6::obj-3::obj-14::obj-135": {
                    "parameter_longname": "live.text[199]"
                },
                "obj-6::obj-3::obj-14::obj-153": {
                    "parameter_longname": "live.text[196]"
                },
                "obj-6::obj-3::obj-14::obj-163": {
                    "parameter_longname": "live.text[198]"
                },
                "obj-6::obj-3::obj-14::obj-173": {
                    "parameter_longname": "live.text[195]"
                },
                "obj-6::obj-3::obj-14::obj-39": {
                    "parameter_longname": "live.tab[4]"
                },
                "obj-6::obj-3::obj-14::obj-40": {
                    "parameter_longname": "live.slider[12]"
                },
                "obj-6::obj-3::obj-14::obj-64": {
                    "parameter_longname": "live.text[197]"
                },
                "obj-6::obj-3::obj-16::obj-26": {
                    "parameter_invisible": 1,
                    "parameter_modmode": 0,
                    "parameter_unitstyle": 10
                },
                "obj-6::obj-3::obj-407::obj-1001::obj-89::obj-1": {
                    "parameter_longname": "live.text[184]"
                },
                "obj-6::obj-3::obj-407::obj-1001::obj-89::obj-2": {
                    "parameter_longname": "live.text[182]"
                },
                "obj-6::obj-3::obj-407::obj-1001::obj-89::obj-3": {
                    "parameter_longname": "live.text[183]"
                },
                "obj-6::obj-3::obj-407::obj-1039::obj-89::obj-1": {
                    "parameter_longname": "live.text[186]"
                },
                "obj-6::obj-3::obj-407::obj-1039::obj-89::obj-2": {
                    "parameter_longname": "live.text[185]"
                },
                "obj-6::obj-3::obj-407::obj-1039::obj-89::obj-3": {
                    "parameter_longname": "live.text[187]"
                },
                "obj-6::obj-3::obj-407::obj-270::obj-1226": {
                    "parameter_longname": "width[4]"
                },
                "obj-6::obj-3::obj-407::obj-270::obj-1227": {
                    "parameter_longname": "center[4]"
                },
                "obj-6::obj-3::obj-407::obj-270::obj-1240": {
                    "parameter_longname": "live.slider[11]"
                },
                "obj-6::obj-3::obj-407::obj-270::obj-1241": {
                    "parameter_longname": "live.numbox[6]"
                },
                "obj-6::obj-3::obj-407::obj-270::obj-889": {
                    "parameter_longname": "weight[4]"
                },
                "obj-6::obj-3::obj-407::obj-387::obj-89::obj-1": {
                    "parameter_longname": "live.text[191]"
                },
                "obj-6::obj-3::obj-407::obj-387::obj-89::obj-2": {
                    "parameter_longname": "live.text[193]"
                },
                "obj-6::obj-3::obj-407::obj-387::obj-89::obj-3": {
                    "parameter_longname": "live.text[192]"
                },
                "obj-6::obj-3::obj-407::obj-497::obj-89::obj-1": {
                    "parameter_longname": "live.text[188]"
                },
                "obj-6::obj-3::obj-407::obj-497::obj-89::obj-2": {
                    "parameter_longname": "live.text[189]"
                },
                "obj-6::obj-3::obj-407::obj-497::obj-89::obj-3": {
                    "parameter_longname": "live.text[190]"
                },
                "obj-6::obj-3::obj-407::obj-842::obj-89::obj-1": {
                    "parameter_longname": "live.text[181]"
                },
                "obj-6::obj-3::obj-407::obj-842::obj-89::obj-2": {
                    "parameter_longname": "live.text[180]"
                },
                "obj-6::obj-3::obj-407::obj-842::obj-89::obj-3": {
                    "parameter_longname": "live.text[179]"
                },
                "obj-6::obj-3::obj-407::obj-96::obj-89::obj-1": {
                    "parameter_longname": "live.text[177]"
                },
                "obj-6::obj-3::obj-407::obj-96::obj-89::obj-2": {
                    "parameter_longname": "live.text[178]"
                },
                "obj-6::obj-3::obj-407::obj-96::obj-89::obj-3": {
                    "parameter_longname": "live.text[176]"
                },
                "obj-6::obj-3::obj-79::obj-1": {
                    "parameter_longname": "live.text[113]"
                },
                "obj-6::obj-3::obj-79::obj-2": {
                    "parameter_longname": "live.text[111]"
                },
                "obj-6::obj-3::obj-79::obj-3": {
                    "parameter_longname": "live.text[112]"
                },
                "obj-6::obj-3::obj-85::obj-1": {
                    "parameter_longname": "live.text[200]"
                },
                "obj-6::obj-3::obj-85::obj-2": {
                    "parameter_longname": "live.text[202]"
                },
                "obj-6::obj-3::obj-85::obj-3": {
                    "parameter_longname": "live.text[201]"
                },
                "obj-6::obj-3::obj-87::obj-1": {
                    "parameter_longname": "live.text[115]"
                },
                "obj-6::obj-3::obj-87::obj-2": {
                    "parameter_longname": "live.text[116]"
                },
                "obj-6::obj-3::obj-87::obj-3": {
                    "parameter_longname": "live.text[114]"
                },
                "obj-6::obj-3::obj-89::obj-1": {
                    "parameter_longname": "live.text[167]"
                },
                "obj-6::obj-3::obj-89::obj-2": {
                    "parameter_longname": "live.text[168]"
                },
                "obj-6::obj-3::obj-89::obj-3": {
                    "parameter_longname": "live.text[169]"
                },
                "obj-6::obj-3::obj-91::obj-1": {
                    "parameter_longname": "live.text[170]"
                },
                "obj-6::obj-3::obj-91::obj-2": {
                    "parameter_longname": "live.text[172]"
                },
                "obj-6::obj-3::obj-91::obj-3": {
                    "parameter_longname": "live.text[171]"
                },
                "obj-6::obj-3::obj-94::obj-1": {
                    "parameter_longname": "live.text[204]"
                },
                "obj-6::obj-3::obj-94::obj-2": {
                    "parameter_longname": "live.text[205]"
                },
                "obj-6::obj-3::obj-94::obj-3": {
                    "parameter_longname": "live.text[203]"
                },
                "obj-6::obj-6::obj-98": {
                    "parameter_longname": "live.text[207]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}