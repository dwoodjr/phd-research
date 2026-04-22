{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 106.0, 710.0, 313.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 531.0, 24.0, 156.0, 47.0 ],
					"text" : "Create a waveform display for displaying \"taps\" from dk.onsettap~."
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 24.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"buffername" : "7207buffer",
					"gridcolor" : [ 0.349019607843137, 0.349019607843137, 0.349019607843137, 0.0 ],
					"id" : "obj-75",
					"labels" : 0,
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 36.0, 184.0, 544.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 544.0, 90.0 ],
					"reflectioncolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"ruler" : 0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.theme_bgcolor"
						}
,
						"reflectioncolor" : 						{
							"expression" : "themecolor.theme_accentcolor"
						}
,
						"selectioncolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}
,
						"waveformcolor" : 						{
							"expression" : "themecolor.theme_accentcolor"
						}

					}
,
					"selectioncolor" : [ 0.9, 0.65, 0.05, 1.0 ],
					"vticks" : 0,
					"waveformcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 36.0, 83.0, 459.0, 22.0 ],
					"text" : "route waveform"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"patching_rect" : [ 36.0, 134.0, 412.75, 22.0 ],
					"text" : "unpack f f f f"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 485.5, 168.45703125, 45.5, 168.45703125 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 3 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 2 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
 ],
		"originid" : "pat-58926",
		"autosave" : 0,
		"toolbaradditions" : [ "Data Knot", "data_knot", "dataknot" ]
	}

}
