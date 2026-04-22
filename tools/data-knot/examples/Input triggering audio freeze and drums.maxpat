{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 106.0, 1054.0, 561.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 38.0, 15.0, 482.0, 33.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "In this example multiple instances of dk.onsetfreeze~ are being used to create glitchy and granular atmosphere behind a breakbeat and bassline."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 564.0, 366.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 395.0, 58.0, 129.0, 33.0 ],
									"text" : "create short blips and pane them randomly"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-226",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 192.0, 222.0, 294.0, 22.0 ],
									"text" : "dk.convolver~ rev_spring_medium_dark.wav @gain 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-209",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 49.0, 223.0, 112.0, 22.0 ],
									"text" : "dk.sift~ @manual 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 134.0, 163.0, 47.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 49.0, 163.0, 47.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 162.0, 104.0, 362.0, 22.0 ],
									"text" : "dk.triggershape~ @attack 5 @release 150 @curve 75 @scale 150"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 49.0, 37.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 134.0, 36.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-25",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 260.0, 36.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 309.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 308.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-209", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-209", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 0,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 2 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"order" : 1,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 38.0, 346.0, 155.5, 22.0 ],
					"text" : "p freezeGrains"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 732.0, 432.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 178.0, 168.5, 117.0, 47.0 ],
									"text" : "enable timestretch randomly to create different timbre"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 533.0, 232.0, 150.0, 33.0 ],
									"text" : "create random breakbeat based on onsets"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 275.0, 55.0, 22.0 ],
									"text" : "pipe 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-244",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 121.0, 228.0, 93.0, 22.0 ],
									"text" : "t 0 i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-243",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 322.0, 115.0, 22.0 ],
									"text" : "prepend timestretch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-242",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 121.0, 181.0, 44.0, 22.0 ],
									"text" : "decide"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-241",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 121.0, 134.0, 42.0, 22.0 ],
									"text" : "edge~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-239",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "signal", "", "signal" ],
									"patching_rect" : [ 37.0, 87.0, 151.0, 22.0 ],
									"text" : "dk.probability~ 40"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-231",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 253.0, 322.0, 141.0, 22.0 ],
									"text" : "gate~ 1 1 @ramptime 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-233",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 412.0, 275.0, 278.0, 22.0 ],
									"text" : "dk.triggerdelay~ @delay 1166 583 291 194 146 73"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-234",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 6,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 106.0, 275.0, 300.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 41.0, 135.130029399999955, 61.0, 22.0 ],
													"text" : "regexp .*/"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 62.0, 182.195044099999933, 110.0, 22.0 ],
													"text" : "prepend readfolder"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-91",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 41.0, 173.0, 22.0 ],
													"text" : "loadmess 0001-AmenKick.wav"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 88.065014699999978, 77.0, 22.0 ],
													"text" : "absolutepath"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 62.0, 229.260058799999911, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-88", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-91", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
 ],
										"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
									}
,
									"patching_rect" : [ 420.0, 322.0, 88.0, 22.0 ],
									"text" : "p loadSamples"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 37.0, 32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 369.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 369.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-231", 1 ],
									"midpoints" : [ 46.5, 74.424072265625, 384.5, 74.424072265625 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-233", 0 ],
									"midpoints" : [ 46.5, 74.546096801757812, 421.5, 74.546096801757812 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-239", 0 ],
									"order" : 2,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-231", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 262.5, 356.5, 130.5, 356.5 ],
									"source" : [ "obj-231", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-231", 1 ],
									"midpoints" : [ 421.5, 309.5, 384.5, 309.5 ],
									"source" : [ "obj-233", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 429.5, 356.5, 130.5, 356.5 ],
									"source" : [ "obj-234", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 1,
									"source" : [ "obj-239", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-241", 0 ],
									"order" : 0,
									"source" : [ "obj-239", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-242", 0 ],
									"source" : [ "obj-241", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-244", 0 ],
									"source" : [ "obj-242", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-243", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-243", 0 ],
									"midpoints" : [ 204.5, 308.164276123046875, 130.5, 308.164276123046875 ],
									"source" : [ "obj-244", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-244", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-243", 0 ],
									"source" : [ "obj-245", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 498.0, 253.0, 77.0, 22.0 ],
					"text" : "p drumDelay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 458.0, 346.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 484.0, 701.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 242.0, 47.0, 150.0, 47.0 ],
									"text" : "create random bursts which are sent into a \"reverb\" dk.onsetfreeze~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 54.0, 83.0, 70.0, 22.0 ],
									"text" : "gate~ 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 54.0, 173.0, 216.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 54.0, 441.0, 216.0, 22.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 251.0, 397.0, 120.0, 22.0 ],
									"text" : "expr ((1 - $i1) * 2) - 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 54.0, 486.0, 31.0, 22.0 ],
									"text" : "sig~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 54.0, 531.0, 132.0, 22.0 ],
									"text" : "groove~ wurly @loop 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 251.0, 352.0, 44.0, 22.0 ],
									"text" : "decide"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.0, 352.0, 153.0, 22.0 ],
									"text" : "random @range -0.01 0.01"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 54.0, 397.0, 52.5, 22.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 54.0, 307.0, 52.5, 22.0 ],
									"text" : "t f b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 262.0, 121.0, 22.0 ],
									"text" : "expr (pow(2\\, $f1 - 2))"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 217.0, 59.0, 22.0 ],
									"text" : "random 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 54.0, 128.0, 42.0, 22.0 ],
									"text" : "edge~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "multichannelsignal", "signal", "signal" ],
									"patching_rect" : [ 54.0, 576.0, 371.0, 35.0 ],
									"text" : "dk.onsetfreeze~ @manual 1 @latch 1 @pretilt 30 @rolloff 9000 @gain 250 @feedback 80 @damping 100 @highpass 1 @early 1",
									"varname" : "dk.onsetfreeze~[1]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 21.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 105.0, 21.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 637.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 637.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 2 ],
									"midpoints" : [ 63.5, 117.862045288085938, 415.5, 117.862045288085938 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 165.5, 67.0, 63.5, 67.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-175", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-76", 1 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 903.0, 295.0, 69.0, 22.0 ],
					"text" : "p padStabs",
					"varname" : "patcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 953.0, 193.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.text[8]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "stabs",
					"texton" : "stabs",
					"varname" : "live.text[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 38.0, 244.0, 141.0, 22.0 ],
					"text" : "gate~ 1 1 @ramptime 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 38.0, 193.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.text[7]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "grains",
					"texton" : "grains",
					"varname" : "live.text[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 556.0, 193.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.text[1]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "drums",
					"texton" : "drums",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-235",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 488.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@speed", 80, "@voices", 2 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-236",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "dk.sampler~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 556.0, 295.0, 322.0, 169.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 704.0, 623.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-226",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 68.0, 506.0, 301.0, 22.0 ],
									"text" : "dk.convolver~ rev_spring_medium_bright.wav @gain 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 156.0, 364.0, 40.0, 22.0 ],
									"text" : "*~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 156.0, 316.0, 82.0, 22.0 ],
									"text" : "overdrive~ 60"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 628.0, 23.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 475.0, 263.0, 149.0, 47.0 ],
									"text" : "use spectral shape to add dynamic modulation to mangrove parameters"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 223.0, 85.0, 22.0 ],
									"text" : "prepend curve"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 284.0, 223.0, 69.0, 22.0 ],
									"text" : "prepend air"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.0, 223.0, 87.0, 22.0 ],
									"text" : "prepend barrel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 156.0, 80.0, 437.0, 22.0 ],
									"text" : "dk.spectralshapert~ @history 80 @select skewness percentilemid percentilehigh"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 156.0, 128.0, 274.0, 22.0 ],
									"text" : "unpack f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 284.0, 176.0, 114.0, 22.0 ],
									"text" : "scale 60. 100. -1. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.0, 176.0, 114.0, 22.0 ],
									"text" : "scale 60. 100. -1. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 176.0, 98.0, 22.0 ],
									"text" : "scale -4. 4. 1. -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 34.0, 459.0, 141.0, 22.0 ],
									"text" : "gate~ 1 1 @ramptime 50"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 223.0, 364.0, 302.0, 22.0 ],
									"text" : "dk.triggershape~ @attack 5 @hold 100 @release 2500"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 156.0, 411.0, 86.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 6,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 156.0, 271.0, 302.0, 22.0 ],
									"text" : "dk.mangrove~ @ramptime 10 @frequency 130.812783",
									"varname" : "dk.mangrove~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 23.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 156.0, 23.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 557.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 637.5, 345.751983642578125, 232.5, 345.751983642578125 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 293.5, 258.0, 165.5, 258.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-37", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 420.5, 258.0, 165.5, 258.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-51", 0 ]
								}

							}
 ],
						"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
					}
,
					"patching_rect" : [ 458.0, 295.0, 59.0, 22.0 ],
					"text" : "p bass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 423.0, 193.0, 53.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.text[6]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "bass",
					"texton" : "bass",
					"varname" : "live.text[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 342.0, 244.0, 94.0, 22.0 ],
					"text" : "dk.triggercloud~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "signal", "signal" ],
					"patching_rect" : [ 290.0, 193.0, 61.0, 22.0 ],
					"text" : "dk.onset~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 903.0, 346.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 199.0, 193.0, 54.0, 22.0 ],
					"text" : "*~ 0.555"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 199.0, 237.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 38.0, 397.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@source", "WurlitzerLoopHigh.wav" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-138",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "dk.demosound.maxpat",
					"numinlets" : 1,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 160.0, 74.0, 343.0, 90.0 ],
					"varname" : "dk.demosound[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "multichannelsignal", "signal", "signal" ],
					"patching_rect" : [ 38.0, 295.0, 292.0, 22.0 ],
					"text" : "dk.onsetfreeze~ @attack 5 @release 150 @curve 75",
					"varname" : "dk.onsetfreeze~[2]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"order" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 1,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 169.5, 178.5, 208.5, 178.5 ],
					"order" : 2,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"midpoints" : [ 169.5, 178.5, 299.5, 178.5 ],
					"order" : 1,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 1 ],
					"midpoints" : [ 169.5, 178.711517333984375, 487.5, 178.711517333984375 ],
					"order" : 0,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 3,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-139", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 1 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 2 ],
					"midpoints" : [ 351.5, 280.5, 320.5, 280.5 ],
					"order" : 0,
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"midpoints" : [ 351.5, 332.289398193359375, 184.0, 332.289398193359375 ],
					"order" : 1,
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 2 ],
					"order" : 3,
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 320.5, 233.949859619140625, 912.5, 233.949859619140625 ],
					"order" : 0,
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"midpoints" : [ 320.5, 233.782745361328125, 351.5, 233.782745361328125 ],
					"order" : 2,
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 320.5, 234.0, 507.5, 234.0 ],
					"order" : 1,
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"midpoints" : [ 320.5, 332.097930908203125, 184.0, 332.097930908203125 ],
					"order" : 4,
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 2 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 0,
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 1,
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"midpoints" : [ 432.5, 220.92486572265625, 467.5, 220.92486572265625 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 1 ],
					"midpoints" : [ 868.5, 476.099999999999909, 591.5, 476.099999999999909 ],
					"source" : [ "obj-236", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 1 ],
					"midpoints" : [ 184.0, 382.5, 73.5, 382.5 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-138::obj-43" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-10" : [ "highPass[3]", "highPass", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-12" : [ "fdnGain[3]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-2" : [ "early[3]", "early", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-3" : [ "feedback[3]", "feedback", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-33" : [ "dryWet[3]", "dryWet", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-35" : [ "smoothTime[3]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-5" : [ "damp[3]", "damp", 0 ],
			"obj-139::obj-119::obj-144::obj-54::obj-9" : [ "crossover[3]", "crossover", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-10" : [ "highPass[2]", "highPass", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-12" : [ "fdnGain[2]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-2" : [ "early[2]", "early", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-3" : [ "feedback[2]", "feedback", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-33" : [ "dryWet[2]", "dryWet", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-35" : [ "smoothTime[2]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-5" : [ "damp[2]", "damp", 0 ],
			"obj-139::obj-119::obj-149::obj-54::obj-9" : [ "crossover[2]", "crossover", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-10" : [ "highPass[1]", "highPass", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-12" : [ "fdnGain[1]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-2" : [ "early[1]", "early", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-3" : [ "feedback[1]", "feedback", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-33" : [ "dryWet[1]", "dryWet", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-35" : [ "smoothTime[1]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-5" : [ "damp[1]", "damp", 0 ],
			"obj-139::obj-119::obj-151::obj-54::obj-9" : [ "crossover[1]", "crossover", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-10" : [ "highPass", "highPass", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-12" : [ "fdnGain", "fdnGain", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-2" : [ "early", "early", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-3" : [ "feedback", "feedback", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-33" : [ "dryWet", "dryWet", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-35" : [ "smoothTime", "smoothTime", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-5" : [ "damp", "damp", 0 ],
			"obj-139::obj-119::obj-153::obj-54::obj-9" : [ "crossover", "crossover", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-10" : [ "highPass[7]", "highPass", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-12" : [ "fdnGain[7]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-2" : [ "early[7]", "early", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-3" : [ "feedback[7]", "feedback", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-33" : [ "dryWet[7]", "dryWet", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-35" : [ "smoothTime[7]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-5" : [ "damp[7]", "damp", 0 ],
			"obj-139::obj-119::obj-33::obj-54::obj-9" : [ "crossover[7]", "crossover", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-10" : [ "highPass[6]", "highPass", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-12" : [ "fdnGain[6]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-2" : [ "early[6]", "early", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-3" : [ "feedback[6]", "feedback", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-33" : [ "dryWet[6]", "dryWet", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-35" : [ "smoothTime[6]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-5" : [ "damp[6]", "damp", 0 ],
			"obj-139::obj-119::obj-35::obj-54::obj-9" : [ "crossover[6]", "crossover", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-10" : [ "highPass[5]", "highPass", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-12" : [ "fdnGain[5]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-2" : [ "early[5]", "early", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-3" : [ "feedback[5]", "feedback", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-33" : [ "dryWet[5]", "dryWet", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-35" : [ "smoothTime[5]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-5" : [ "damp[5]", "damp", 0 ],
			"obj-139::obj-119::obj-38::obj-54::obj-9" : [ "crossover[5]", "crossover", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-10" : [ "highPass[4]", "highPass", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-12" : [ "fdnGain[4]", "fdnGain", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-2" : [ "early[4]", "early", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-3" : [ "feedback[4]", "feedback", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-33" : [ "dryWet[4]", "dryWet", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-35" : [ "smoothTime[4]", "smoothTime", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-5" : [ "damp[4]", "damp", 0 ],
			"obj-139::obj-119::obj-40::obj-54::obj-9" : [ "crossover[4]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-10" : [ "highPass[11]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-12" : [ "fdnGain[11]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-2" : [ "early[11]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-3" : [ "feedback[11]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-33" : [ "dryWet[11]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-35" : [ "smoothTime[11]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-5" : [ "damp[11]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-144::obj-54::obj-9" : [ "crossover[11]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-10" : [ "highPass[10]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-12" : [ "fdnGain[10]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-2" : [ "early[10]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-3" : [ "feedback[10]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-33" : [ "dryWet[10]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-35" : [ "smoothTime[10]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-5" : [ "damp[10]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-149::obj-54::obj-9" : [ "crossover[10]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-10" : [ "highPass[9]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-12" : [ "fdnGain[9]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-2" : [ "early[9]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-3" : [ "feedback[9]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-33" : [ "dryWet[9]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-35" : [ "smoothTime[9]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-5" : [ "damp[9]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-151::obj-54::obj-9" : [ "crossover[9]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-10" : [ "highPass[8]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-12" : [ "fdnGain[8]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-2" : [ "early[8]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-3" : [ "feedback[8]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-33" : [ "dryWet[8]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-35" : [ "smoothTime[8]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-5" : [ "damp[8]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-153::obj-54::obj-9" : [ "crossover[8]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-10" : [ "highPass[15]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-12" : [ "fdnGain[15]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-2" : [ "early[15]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-3" : [ "feedback[15]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-33" : [ "dryWet[15]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-35" : [ "smoothTime[15]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-5" : [ "damp[15]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-33::obj-54::obj-9" : [ "crossover[15]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-10" : [ "highPass[14]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-12" : [ "fdnGain[14]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-2" : [ "early[14]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-3" : [ "feedback[14]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-33" : [ "dryWet[14]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-35" : [ "smoothTime[14]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-5" : [ "damp[14]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-35::obj-54::obj-9" : [ "crossover[14]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-10" : [ "highPass[13]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-12" : [ "fdnGain[13]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-2" : [ "early[13]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-3" : [ "feedback[13]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-33" : [ "dryWet[13]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-35" : [ "smoothTime[13]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-5" : [ "damp[13]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-38::obj-54::obj-9" : [ "crossover[13]", "crossover", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-10" : [ "highPass[12]", "highPass", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-12" : [ "fdnGain[12]", "fdnGain", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-2" : [ "early[12]", "early", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-3" : [ "feedback[12]", "feedback", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-33" : [ "dryWet[12]", "dryWet", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-35" : [ "smoothTime[12]", "smoothTime", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-5" : [ "damp[12]", "damp", 0 ],
			"obj-15::obj-175::obj-119::obj-40::obj-54::obj-9" : [ "crossover[12]", "crossover", 0 ],
			"obj-229" : [ "live.text[6]", "live.text", 0 ],
			"obj-232" : [ "live.text[1]", "live.text", 0 ],
			"obj-236::obj-104" : [ "live.drop[4]", "live.drop", 0 ],
			"obj-236::obj-11" : [ "loop", "loop", 0 ],
			"obj-236::obj-126" : [ "lengthabsolute", "lengthabsolute", 0 ],
			"obj-236::obj-128" : [ "startabsolute", "startabsolute", 0 ],
			"obj-236::obj-138" : [ "voices", "voices", 0 ],
			"obj-236::obj-140" : [ "steal", "steal", 0 ],
			"obj-236::obj-167" : [ "gain", "gain", 0 ],
			"obj-236::obj-173" : [ "absoluteview", "absoluteview", 0 ],
			"obj-236::obj-193" : [ "pitch", "pitch", 0 ],
			"obj-236::obj-197" : [ "timestretch", "timestretch", 0 ],
			"obj-236::obj-2" : [ "out", "out", 0 ],
			"obj-236::obj-216" : [ "tabopen", "tabopen", 1 ],
			"obj-236::obj-255" : [ "speed", "speed", 0 ],
			"obj-236::obj-38" : [ "in", "in", 0 ],
			"obj-236::obj-46" : [ "incurve", "incurve", 0 ],
			"obj-236::obj-52" : [ "algorithm", "algorithm", 0 ],
			"obj-236::obj-55" : [ "start", "start", 0 ],
			"obj-236::obj-58" : [ "length", "length", 0 ],
			"obj-236::obj-67" : [ "outcurve", "outcurve", 0 ],
			"obj-7" : [ "live.text[7]", "live.text", 0 ],
			"obj-9" : [ "live.text[8]", "live.text", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"autosave" : 0,
		"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
	}

}
