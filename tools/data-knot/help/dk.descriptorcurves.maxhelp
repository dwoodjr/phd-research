{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 144.0, 87.0, 1199.0, 681.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"commentary" : "",
		"showcommentary" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 144.0, 113.0, 1199.0, 655.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 66.0, 486.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "You can use the curve parameters to adjust the type of material that will be matched in this concatenation. This can have a similar effect to dk.datatranspose but rather than shifting the whole range up and down you instead adjust the way that range behaves."
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-219",
									"ignoreclick" : 1,
									"jsarguments" : [ "dk.descriptorcurves" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 417.3919677734375, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 354.0, 353.5, 109.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "load analyzed concat corpus"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 157.0, 405.5, 136.0, 22.0 ],
									"text" : "dk.concatmatch",
									"varname" : "dk.concatmatch"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
									"buffername" : "74842concat_buffer",
									"gridcolor" : [ 0.349019607843137, 0.349019607843137, 0.349019607843137, 0.0 ],
									"id" : "obj-21",
									"ignoreclick" : 1,
									"labels" : 0,
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"patching_rect" : [ 274.0, 449.5, 399.0, 101.178094584283144 ],
									"reflectioncolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
									"ruler" : 0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.live_contrast_frame"
										}
,
										"reflectioncolor" : 										{
											"expression" : "themecolor.live_display_line_one"
										}
,
										"waveformcolor" : 										{
											"expression" : "themecolor.live_display_line_one"
										}

									}
,
									"selectioncolor" : [ 0.929411764705882, 0.929411764705882, 0.352941176470588, 0.0 ],
									"vticks" : 0,
									"waveformcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.0, 362.5, 155.0, 22.0 ],
									"text" : "read concat_accordion.json"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 497.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 157.0, 449.5, 100.0, 22.0 ],
									"text" : "dk.concatplayer~"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 936.0, 362.5, 235.0, 235.0 ],
									"varname" : "rbtnk.autoBpatcher_46199[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 899.0, 205.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[6]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 795.0, 205.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[10]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 899.0, 275.5, 80.0, 22.0 ],
									"text" : "pitchcurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 795.0, 275.5, 96.0, 22.0 ],
									"text" : "flatnesscurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 691.0, 205.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[11]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 580.0, 205.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[12]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 691.0, 275.5, 97.0, 22.0 ],
									"text" : "centroidcurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 275.5, 103.0, 22.0 ],
									"text" : "loudnesscurve $1"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 691.0, 362.5, 235.0, 235.0 ],
									"varname" : "rbtnk.autoBpatcher_46199",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.5, 185.5, 57.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "play audio"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 737.0, 146.5, 87.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "adjust curves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.0, 318.5, 113.0, 22.0 ],
									"text" : "dk.descriptorcurves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 157.0, 275.5, 200.0, 22.0 ],
									"text" : "dk.concatanalysis~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 275.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@source", "Ferreira-PercussiveVocals.wav" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.demosound.maxpat",
									"numinlets" : 1,
									"numoutlets" : 5,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 76.0, 160.5, 343.0, 90.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-33",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 32.0, 160.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-5",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 467.0, 363.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-14",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 770.0, 120.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "3",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 1 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-148", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 589.5, 307.825000000000102, 166.5, 307.825000000000102 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 166.5, 351.275000000000034, 945.5, 351.275000000000034 ],
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 700.5, 307.825000000000102, 166.5, 307.825000000000102 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 166.5, 307.550000000000068, 700.5, 307.550000000000068 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 347.5, 394.275000000000034, 166.5, 394.275000000000034 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 193.5, 394.725000000000023, 166.5, 394.725000000000023 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 908.5, 307.825000000000102, 166.5, 307.825000000000102 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 804.5, 307.825000000000102, 166.5, 307.825000000000102 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 46.0, 260.0, 116.0, 22.0 ],
					"text" : "p \"musical example\"",
					"varname" : "musical example"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1199.0, 655.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"boxes" : [  ],
						"lines" : [  ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 46.0, 341.0, 25.0, 22.0 ],
					"text" : "p ?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1199.0, 655.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 66.0, 491.0, 74.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "You can use dk.descriptorcurves to change the unit type of each descriptor. By default all of the descriptors in Data Knot are dB for loudness and spectral flatness, and MIDI cents for centroid and pitch*. You can instead get the output in a variety of other units depending on what you need. This can be amplitude (0. to 1.) or velocity (0. to 127.) for dB-based ones or Hz (~20 to 20k) for MIDI cents-based ones."
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-219",
									"ignoreclick" : 1,
									"jsarguments" : [ "dk.descriptorcurves" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 417.3919677734375, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 939.0, 341.5, 76.0, 22.0 ],
									"text" : "pitchunits $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 824.0, 341.5, 92.0, 22.0 ],
									"text" : "flatnessunits $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"items" : [ "midi", ",", "mtof" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 913.0, 299.5, 71.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"items" : [ "db", ",", "dbtoa", ",", "velocity" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 798.0, 299.5, 71.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-20",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 602.0, 559.5, 232.0, 50.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "*This is mainly done to have unit size parity between the multiple descriptor types (i.e. 1 dB ~= 1 MIDI step)."
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"id" : "obj-35",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 596.0, 553.5, 243.64285714285711, 63.0 ],
									"proportion" : 0.5,
									"saved_attribute_attributes" : 									{
										"bgfillcolor" : 										{
											"expression" : "themecolor.theme_accentcolor"
										}

									}

								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 427.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 840.0, 460.5, 132.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "notice the change in output range",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.5, 213.5, 57.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "play audio"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 748.0, 238.5, 76.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "adjust units"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 786.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 662.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 602.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-25",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 778.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-26",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 720.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-27",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 663.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-28",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 605.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 605.0, 427.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 341.5, 93.0, 22.0 ],
									"text" : "centroidunits $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 341.5, 99.0, 22.0 ],
									"text" : "loudnessunits $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"items" : [ "midi", ",", "mtof" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 694.0, 299.5, 71.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"items" : [ "db", ",", "dbtoa", ",", "velocity" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 579.0, 299.5, 71.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 532.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 408.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 347.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-5",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 524.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-34",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 466.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-45",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 408.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-62",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 351.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 351.0, 427.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 384.5, 113.0, 22.0 ],
									"text" : "dk.descriptorcurves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "signal", "signal" ],
									"patching_rect" : [ 164.0, 303.5, 90.0, 22.0 ],
									"text" : "dk.descriptors~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 83.0, 303.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@source", "Constanzo-PreparedSnare.wav", "@selection", 0.58, 0.77 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.demosound.maxpat",
									"numinlets" : 1,
									"numoutlets" : 5,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 83.0, 188.5, 343.0, 90.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-33",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 39.0, 188.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-14",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 776.0, 212.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 729.5, 373.3125, 614.5, 373.3125 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 1 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 2,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 173.5, 373.1875, 614.5, 373.1875 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"midpoints" : [ 173.5, 373.5, 360.5, 373.5 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-30", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-30", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 948.5, 373.3125, 614.5, 373.3125 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 833.5, 373.3125, 614.5, 373.3125 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-63", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-63", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-63", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 46.0, 135.0, 44.0, 22.0 ],
					"text" : "p units"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1199.0, 655.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 66.0, 503.0, 60.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "You can adjust the \"sensitivity\" of each descriptor by adjusting the curve for each. As a general rule, a positive value (0. to 100.) will create an exponential curve for the descriptor making it feel *less* sensitive. A negative value (0. to -100.) will create a logarithmic curve, making the descriptor feel *more* sensitive."
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-219",
									"ignoreclick" : 1,
									"jsarguments" : [ "dk.descriptorcurves" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 417.3919677734375, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 852.0, 426.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 925.0, 272.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[4]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 821.0, 272.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[5]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 925.0, 341.5, 80.0, 22.0 ],
									"text" : "pitchcurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 821.0, 341.5, 96.0, 22.0 ],
									"text" : "flatnesscurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 716.0, 272.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[2]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 606.0, 272.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[3]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.0, 341.5, 97.0, 22.0 ],
									"text" : "centroidcurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.0, 341.5, 103.0, 22.0 ],
									"text" : "loudnesscurve $1"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 426.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 538.5, 132.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "notice the change in \"sensitivity\"",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.5, 213.5, 57.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "play audio"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 740.0, 213.5, 87.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "adjust curves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 787.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 721.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 663.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 602.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-25",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 779.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-26",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 721.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-27",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 663.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-28",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 606.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 606.0, 426.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 533.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 409.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-5",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-34",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 467.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-45",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 409.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-62",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 351.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 351.0, 426.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.0, 384.5, 113.0, 22.0 ],
									"text" : "dk.descriptorcurves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "signal", "signal" ],
									"patching_rect" : [ 164.0, 303.5, 90.0, 22.0 ],
									"text" : "dk.descriptors~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 83.0, 303.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@source", "Constanzo-PreparedSnare.wav", "@selection", 0.58, 0.77 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.demosound.maxpat",
									"numinlets" : 1,
									"numoutlets" : 5,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 83.0, 188.5, 343.0, 90.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-33",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 39.0, 188.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-14",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 773.0, 187.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 1 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 615.5, 415.6875, 861.5, 415.6875 ],
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 725.5, 373.0625, 615.5, 373.0625 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 2,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 173.5, 372.9375, 615.5, 372.9375 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"midpoints" : [ 173.5, 373.25, 360.5, 373.25 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-30", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-30", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-63", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-63", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-63", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 934.5, 373.0625, 615.5, 373.0625 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 830.5, 373.0625, 615.5, 373.0625 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 46.0, 163.0, 48.0, 22.0 ],
					"text" : "p curve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1199.0, 655.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 66.0, 486.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "You can adjust the scale of an individual descriptor to make it better suit the output range that you want. This is done by providing a four item list, exactly like the native [scale] object."
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-219",
									"ignoreclick" : 1,
									"jsarguments" : [ "dk.descriptorcurves" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 417.3919677734375, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-12",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1030.0, 252.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 50 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[4]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number[3]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[4]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-19",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 973.0, 252.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 20 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[5]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number[2]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[5]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-20",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 915.0, 252.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 130 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[6]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[6]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-35",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 858.0, 252.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 90 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[7]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 299.5, 191.0, 22.0 ],
									"text" : "pak 90. 130. 20. 50."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-11",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 777.0, 256.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ -20.0 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[3]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number[3]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[3]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 256.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ -40.0 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[2]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number[2]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[2]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-8",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 663.0, 256.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number[1]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number[1]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-7",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 605.0, 256.5, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ -120.0 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "number",
											"parameter_modmode" : 0,
											"parameter_shortname" : "number",
											"parameter_type" : 3
										}

									}
,
									"varname" : "number"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 303.5, 191.0, 22.0 ],
									"text" : "pak -120. 0. -40. -20."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 852.0, 427.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 342.5, 127.0, 22.0 ],
									"text" : "prepend centroidscale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 342.5, 132.0, 22.0 ],
									"text" : "prepend loudnessscale"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 427.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 538.5, 132.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "notice the change in output range",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.5, 213.5, 57.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "play audio"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 796.0, 193.5, 89.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "adjust scaling"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 786.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 721.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 662.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 602.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-25",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 778.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-26",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 721.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-27",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 663.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-28",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 605.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 605.0, 427.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 532.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 408.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-5",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 524.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-34",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 467.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-45",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 409.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-62",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 351.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 351.0, 427.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 384.5, 113.0, 22.0 ],
									"text" : "dk.descriptorcurves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "signal", "signal" ],
									"patching_rect" : [ 164.0, 303.5, 90.0, 22.0 ],
									"text" : "dk.descriptors~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 83.0, 303.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@source", "Constanzo-PreparedSnare.wav", "@selection", 0.58, 0.77 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.demosound.maxpat",
									"numinlets" : 1,
									"numoutlets" : 5,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 83.0, 188.5, 343.0, 90.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-36",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 679.0, 56.5, 372.0, 65.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "*The scaling will be applied *last* regardless of the order in which you set the attributes. This means that scaling you apply must be in whatever unit you defined or the default unit types (dB, MIDI)."
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.0, 50.5, 380.0, 77.0 ],
									"proportion" : 0.5,
									"saved_attribute_attributes" : 									{
										"bgfillcolor" : 										{
											"expression" : "themecolor.theme_accentcolor"
										}

									}

								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-33",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 39.0, 188.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-14",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 830.0, 167.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 3 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 3 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 1 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 614.5, 416.1875, 861.5, 416.1875 ],
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 867.5, 373.5625, 614.5, 373.5625 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 2 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 2,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 173.5, 373.4375, 614.5, 373.4375 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"midpoints" : [ 173.5, 373.75, 360.5, 373.75 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-30", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-30", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-63", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-63", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-63", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 46.0, 200.0, 47.0, 22.0 ],
					"text" : "p scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1199.0, 655.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpdetails.js",
									"id" : "obj-219",
									"ignoreclick" : 1,
									"jsarguments" : [ "dk.descriptorcurves" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 535.0, 140.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 857.0, 592.5, 172.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "*if you change units it may not fit on dk.descriptordisplay anymore"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-7",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 421.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@size", "small" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.descriptordisplay.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 427.5, 169.0, 169.0 ],
									"varname" : "rbtnk.autoBpatcher_46199",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 533.5, 129.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "notice the range and curve change",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.5, 213.5, 57.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "play audio"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.35,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.0, 224.5, 120.0, 40.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "adjust parameters*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 786.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 662.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 602.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-25",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 778.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-26",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 720.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-27",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 663.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-28",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 605.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 605.0, 427.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 960.0, 273.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[13]",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 722.0, 273.5, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "curve",
											"parameter_type" : 0,
											"parameter_unitstyle" : 5
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 960.0, 341.5, 97.0, 22.0 ],
									"text" : "centroidcurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 722.0, 341.5, 103.0, 22.0 ],
									"text" : "loudnesscurve $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 341.5, 93.0, 22.0 ],
									"text" : "centroidunits $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 341.5, 99.0, 22.0 ],
									"text" : "loudnessunits $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"items" : [ "midi", ",", "mtof" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 832.0, 299.5, 71.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"items" : [ "db", ",", "dbtoa", ",", "velocity" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 579.0, 299.5, 71.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 532.0, 495.5, 34.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 495.5, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "flatness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 408.0, 495.5, 51.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "centroid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 347.0, 495.5, 57.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "loudness"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-3",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 524.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-34",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 466.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-45",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 408.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-62",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 351.0, 469.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 351.0, 427.5, 221.0, 22.0 ],
									"text" : "unpack f f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.0, 384.5, 113.0, 22.0 ],
									"text" : "dk.descriptorcurves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "signal", "signal" ],
									"patching_rect" : [ 164.0, 303.5, 90.0, 22.0 ],
									"text" : "dk.descriptors~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 83.0, 303.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@source", "Constanzo-PreparedSnare.wav", "@selection", 0.58, 0.77 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "dk.demosound.maxpat",
									"numinlets" : 1,
									"numoutlets" : 5,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 83.0, 188.5, 343.0, 90.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-33",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 39.0, 188.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-5",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 695.0, 543.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "3",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.9, 0.65, 0.05, 1.0 ],
									"fontface" : 1,
									"hint" : "",
									"id" : "obj-8",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 746.0, 197.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"saved_attribute_attributes" : 									{
										"bgcolor" : 										{
											"expression" : "themecolor.lesson_step_circle"
										}

									}
,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 867.5, 373.9375, 614.5, 373.9375 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 1 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 731.5, 373.9375, 614.5, 373.9375 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 614.5, 413.625, 867.5, 413.625 ],
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 969.5, 373.9375, 614.5, 373.9375 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 2,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 173.5, 373.8125, 614.5, 373.8125 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"midpoints" : [ 173.5, 374.125, 360.5, 374.125 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-30", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-30", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-63", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-63", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-63", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 46.0, 103.0, 47.0, 22.0 ],
					"text" : "p basic"
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-2::obj-13::obj-43" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-2::obj-18" : [ "live.dial[12]", "curve", 0 ],
			"obj-2::obj-19" : [ "live.dial[11]", "curve", 0 ],
			"obj-2::obj-1::obj-61" : [ "live.numbox[33]", "live.numbox", 0 ],
			"obj-2::obj-1::obj-64" : [ "live.numbox[34]", "live.numbox", 0 ],
			"obj-2::obj-1::obj-67" : [ "live.numbox[35]", "live.numbox", 0 ],
			"obj-2::obj-1::obj-68" : [ "live.numbox[32]", "live.numbox", 0 ],
			"obj-2::obj-3" : [ "live.dial[6]", "curve", 0 ],
			"obj-2::obj-4" : [ "live.dial[10]", "curve", 0 ],
			"obj-2::obj-9::obj-61" : [ "live.numbox[36]", "live.numbox", 0 ],
			"obj-2::obj-9::obj-64" : [ "live.numbox[37]", "live.numbox", 0 ],
			"obj-2::obj-9::obj-67" : [ "live.numbox[38]", "live.numbox", 0 ],
			"obj-2::obj-9::obj-68" : [ "live.numbox[39]", "live.numbox", 0 ],
			"obj-38::obj-13::obj-43" : [ "live.gain~[3]", "live.gain~[1]", 0 ],
			"obj-38::obj-1::obj-61" : [ "live.numbox[12]", "live.numbox", 0 ],
			"obj-38::obj-1::obj-64" : [ "live.numbox[13]", "live.numbox", 0 ],
			"obj-38::obj-1::obj-67" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-38::obj-1::obj-68" : [ "live.numbox[15]", "live.numbox", 0 ],
			"obj-3::obj-10" : [ "number[2]", "number[2]", 0 ],
			"obj-3::obj-11" : [ "number[3]", "number[3]", 0 ],
			"obj-3::obj-12" : [ "number[4]", "number[3]", 0 ],
			"obj-3::obj-13::obj-43" : [ "live.gain~[5]", "live.gain~[1]", 0 ],
			"obj-3::obj-19" : [ "number[5]", "number[2]", 0 ],
			"obj-3::obj-1::obj-61" : [ "live.numbox[24]", "live.numbox", 0 ],
			"obj-3::obj-1::obj-64" : [ "live.numbox[25]", "live.numbox", 0 ],
			"obj-3::obj-1::obj-67" : [ "live.numbox[26]", "live.numbox", 0 ],
			"obj-3::obj-1::obj-68" : [ "live.numbox[27]", "live.numbox", 0 ],
			"obj-3::obj-20" : [ "number[6]", "number[1]", 0 ],
			"obj-3::obj-35" : [ "number[7]", "number", 0 ],
			"obj-3::obj-7" : [ "number", "number", 0 ],
			"obj-3::obj-8" : [ "number[1]", "number[1]", 0 ],
			"obj-3::obj-9::obj-61" : [ "live.numbox[28]", "live.numbox", 0 ],
			"obj-3::obj-9::obj-64" : [ "live.numbox[29]", "live.numbox", 0 ],
			"obj-3::obj-9::obj-67" : [ "live.numbox[30]", "live.numbox", 0 ],
			"obj-3::obj-9::obj-68" : [ "live.numbox[31]", "live.numbox", 0 ],
			"obj-5::obj-13::obj-43" : [ "live.gain~[2]", "live.gain~[1]", 0 ],
			"obj-5::obj-18" : [ "live.dial", "curve", 0 ],
			"obj-5::obj-19" : [ "live.dial[13]", "curve", 0 ],
			"obj-5::obj-1::obj-61" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-5::obj-1::obj-64" : [ "live.numbox[5]", "live.numbox", 0 ],
			"obj-5::obj-1::obj-67" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-5::obj-1::obj-68" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-5::obj-7::obj-61" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-5::obj-7::obj-64" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-5::obj-7::obj-67" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-5::obj-7::obj-68" : [ "live.numbox[11]", "live.numbox", 0 ],
			"obj-89::obj-13::obj-43" : [ "live.gain~[4]", "live.gain~[1]", 0 ],
			"obj-89::obj-18" : [ "live.dial[3]", "curve", 0 ],
			"obj-89::obj-19" : [ "live.dial[2]", "curve", 0 ],
			"obj-89::obj-1::obj-61" : [ "live.numbox[18]", "live.numbox", 0 ],
			"obj-89::obj-1::obj-64" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-89::obj-1::obj-67" : [ "live.numbox[20]", "live.numbox", 0 ],
			"obj-89::obj-1::obj-68" : [ "live.numbox[21]", "live.numbox", 0 ],
			"obj-89::obj-3" : [ "live.dial[4]", "curve", 0 ],
			"obj-89::obj-4" : [ "live.dial[5]", "curve", 0 ],
			"obj-89::obj-9::obj-61" : [ "live.numbox[16]", "live.numbox", 0 ],
			"obj-89::obj-9::obj-64" : [ "live.numbox[22]", "live.numbox", 0 ],
			"obj-89::obj-9::obj-67" : [ "live.numbox[17]", "live.numbox", 0 ],
			"obj-89::obj-9::obj-68" : [ "live.numbox[23]", "live.numbox", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ],
					"buttons" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-2::obj-1::obj-61" : 				{
					"parameter_longname" : "live.numbox[33]"
				}
,
				"obj-2::obj-1::obj-64" : 				{
					"parameter_longname" : "live.numbox[34]"
				}
,
				"obj-2::obj-1::obj-67" : 				{
					"parameter_longname" : "live.numbox[35]"
				}
,
				"obj-2::obj-1::obj-68" : 				{
					"parameter_longname" : "live.numbox[32]"
				}
,
				"obj-2::obj-9::obj-61" : 				{
					"parameter_longname" : "live.numbox[36]"
				}
,
				"obj-2::obj-9::obj-64" : 				{
					"parameter_longname" : "live.numbox[37]"
				}
,
				"obj-2::obj-9::obj-67" : 				{
					"parameter_longname" : "live.numbox[38]"
				}
,
				"obj-2::obj-9::obj-68" : 				{
					"parameter_longname" : "live.numbox[39]"
				}
,
				"obj-38::obj-13::obj-43" : 				{
					"parameter_longname" : "live.gain~[3]"
				}
,
				"obj-38::obj-1::obj-61" : 				{
					"parameter_longname" : "live.numbox[12]"
				}
,
				"obj-38::obj-1::obj-64" : 				{
					"parameter_longname" : "live.numbox[13]"
				}
,
				"obj-38::obj-1::obj-67" : 				{
					"parameter_longname" : "live.numbox[14]"
				}
,
				"obj-38::obj-1::obj-68" : 				{
					"parameter_longname" : "live.numbox[15]"
				}
,
				"obj-3::obj-13::obj-43" : 				{
					"parameter_longname" : "live.gain~[5]"
				}
,
				"obj-3::obj-1::obj-61" : 				{
					"parameter_longname" : "live.numbox[24]"
				}
,
				"obj-3::obj-1::obj-64" : 				{
					"parameter_longname" : "live.numbox[25]"
				}
,
				"obj-3::obj-1::obj-67" : 				{
					"parameter_longname" : "live.numbox[26]"
				}
,
				"obj-3::obj-1::obj-68" : 				{
					"parameter_longname" : "live.numbox[27]"
				}
,
				"obj-3::obj-9::obj-61" : 				{
					"parameter_longname" : "live.numbox[28]"
				}
,
				"obj-3::obj-9::obj-64" : 				{
					"parameter_longname" : "live.numbox[29]"
				}
,
				"obj-3::obj-9::obj-67" : 				{
					"parameter_longname" : "live.numbox[30]"
				}
,
				"obj-3::obj-9::obj-68" : 				{
					"parameter_longname" : "live.numbox[31]"
				}
,
				"obj-5::obj-13::obj-43" : 				{
					"parameter_longname" : "live.gain~[2]"
				}
,
				"obj-5::obj-7::obj-61" : 				{
					"parameter_longname" : "live.numbox[9]"
				}
,
				"obj-5::obj-7::obj-64" : 				{
					"parameter_longname" : "live.numbox[10]"
				}
,
				"obj-5::obj-7::obj-67" : 				{
					"parameter_longname" : "live.numbox[8]"
				}
,
				"obj-5::obj-7::obj-68" : 				{
					"parameter_longname" : "live.numbox[11]"
				}
,
				"obj-89::obj-13::obj-43" : 				{
					"parameter_longname" : "live.gain~[4]"
				}
,
				"obj-89::obj-1::obj-61" : 				{
					"parameter_longname" : "live.numbox[18]"
				}
,
				"obj-89::obj-1::obj-64" : 				{
					"parameter_longname" : "live.numbox[19]"
				}
,
				"obj-89::obj-1::obj-67" : 				{
					"parameter_longname" : "live.numbox[20]"
				}
,
				"obj-89::obj-1::obj-68" : 				{
					"parameter_longname" : "live.numbox[21]"
				}
,
				"obj-89::obj-9::obj-61" : 				{
					"parameter_longname" : "live.numbox[16]"
				}
,
				"obj-89::obj-9::obj-64" : 				{
					"parameter_longname" : "live.numbox[22]"
				}
,
				"obj-89::obj-9::obj-67" : 				{
					"parameter_longname" : "live.numbox[17]"
				}
,
				"obj-89::obj-9::obj-68" : 				{
					"parameter_longname" : "live.numbox[23]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"fontname" : [ "Open Sans Semibold" ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Matt",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "PAt_style0",
				"default" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"clearcolor" : [ 1.0, 0.947758, 0.687073, 1.0 ],
					"color" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "WTF",
				"default" : 				{
					"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.113725, 0.580392, 0.737255, 1.0 ],
					"elementcolor" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"fontname" : [ "HydrogenType" ],
					"fontsize" : [ 18.0 ],
					"patchlinecolor" : [ 0.231373, 0.121569, 0.305882, 0.9 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classic",
				"default" : 				{
					"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
						"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"fontname" : [ "Geneva" ],
					"fontsize" : [ 9.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicButton",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicDial",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGain~",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGswitch",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGswitch2",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicKslider",
				"default" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicLed",
				"default" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicMatrixctrl",
				"default" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicMeter~",
				"default" : 				{
					"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNodes",
				"default" : 				{
					"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"fontsize" : [ 9.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNslider",
				"default" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNumber",
				"default" : 				{
					"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicPictslider",
				"default" : 				{
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicPreset",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicScope~",
				"default" : 				{
					"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicTab",
				"default" : 				{
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicTextbutton",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicToggle",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicUmenu",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicWaveform~",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher001",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher002",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"clearcolor" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
					"fontname" : [ "Ableton Sans Book" ],
					"fontsize" : [ 9.5 ],
					"patchlinecolor" : [ 0.65098, 0.65098, 0.65098, 0.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpink",
				"default" : 				{
					"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"clearcolor" : [ 0.113725, 0.607843, 0.607843, 1.0 ],
					"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"elementcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"patchlinecolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"selectioncolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"textcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "lightbutton",
				"default" : 				{
					"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "max6box",
				"default" : 				{
					"accentcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.5 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "max6inlet",
				"default" : 				{
					"color" : [ 0.423529, 0.372549, 0.27451, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "max6message",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
						"color2" : [ 0.788235, 0.788235, 0.788235, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "max6box",
				"multi" : 0
			}
, 			{
				"name" : "max6outlet",
				"default" : 				{
					"color" : [ 0.0, 0.454902, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBrown-1",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjMagenta-1",
				"default" : 				{
					"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjRed-1",
				"default" : 				{
					"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-2",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "purple",
				"default" : 				{
					"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
					"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "receives",
				"default" : 				{
					"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "rsliderGold",
				"default" : 				{
					"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
					"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "sends",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "sliderGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
					"color" : [ 0.907107, 0.934609, 0.842715, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tastefulltoggle",
				"default" : 				{
					"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tastefultoggle",
				"default" : 				{
					"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "test",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "whitey",
				"default" : 				{
					"fontname" : [ "Dirty Ego" ],
					"fontsize" : [ 36.0 ],
					"patchlinecolor" : [ 0.199068, 0.062496, 0.060031, 0.9 ],
					"selectioncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"textcolor_inverse" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
	}

}
