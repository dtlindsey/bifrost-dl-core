//Maya ASCII 2019 scene
//Name: compound_validator.ma
//Last modified: Tue, Feb 16, 2021 11:40:50 PM
//Codeset: 1252
requires maya "2019";
requires -nodeType "bifrostGraphShape" -dataType "bifData" "bifrostGraph" "2.2.0.1-202011260743-32fc074";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "8F2C69DD-45C8-BF08-723B-F0BF44217BC9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.842413819237674 24.998059818771569 23.222822507709154 ;
	setAttr ".r" -type "double3" -17.738352729600017 24.200000000000355 -8.7174776245774962e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AFEA6FCB-403F-71FC-D223-0A9DD3B5EB8D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 26.241817584934886;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 20.07314666854441 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3D2B15CF-4249-567F-C456-EE8ED1F88CD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AEE035F0-499D-C1B7-36DF-0AA0F7D28A02";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C31A137B-4347-3EFC-CBB2-ADA957A75ACF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "56604A85-4C4C-FAD7-1133-B5A95CB19DA7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "152EE4DB-4B39-1E67-35A7-1F82091B2AEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BF860F91-4BC9-E2D9-DC5F-FEA2564A9C40";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "bifrostGraph1";
	rename -uid "D9FD95EB-42BA-A3FE-969B-378F08B8165B";
createNode bifrostGraphShape -n "bifrostGraphShape1" -p "bifrostGraph1";
	rename -uid "A7074F35-44F9-E98D-6EEC-5AA18CBB0193";
	addAttr -w false -ci true -m -sn "default_value_array" -ln "default_value_array" 
		-at "float";
	addAttr -w false -ci true -sn "vec3" -ln "vec3" -at "float3" -nc 3;
	addAttr -w false -ci true -sn "vec3x" -ln "vec3x" -at "float" -p "vec3";
	addAttr -w false -ci true -sn "vec3y" -ln "vec3y" -at "float" -p "vec3";
	addAttr -w false -ci true -sn "vec3z" -ln "vec3z" -at "float" -p "vec3";
	addAttr -w false -ci true -sn "matrixOut" -ln "matrixOut" -at "fltMatrix";
	addAttr -w false -ci true -sn "vec_mult" -ln "vec_mult" -at "float3" -nc 3;
	addAttr -w false -ci true -sn "vec_multx" -ln "vec_multx" -at "float" -p "vec_mult";
	addAttr -w false -ci true -sn "vec_multy" -ln "vec_multy" -at "float" -p "vec_mult";
	addAttr -w false -ci true -sn "vec_multz" -ln "vec_multz" -at "float" -p "vec_mult";
	addAttr -w false -ci true -sn "deformMatrix" -ln "deformMatrix" -at "fltMatrix";
	addAttr -w false -ci true -sn "pivotMatrix" -ln "pivotMatrix" -at "fltMatrix";
	addAttr -w false -ci true -sn "localMatrix" -ln "localMatrix" -at "fltMatrix";
	addAttr -w false -ci true -sn "out_worldMat" -ln "out_worldMat" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "inParentMatrix" -ln "inParentMatrix" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "inPivotMatrix" -ln "inPivotMatrix" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "inLocalMatrix" -ln "inLocalMatrix" -at "fltMatrix";
	addAttr -w false -ci true -sn "Core__Graph__terminal__diagnostic" -ln "Core__Graph__terminal__diagnostic" 
		-dt "bifData";
	addAttr -r false -ci true -k true -sn "mesh" -ln "mesh" -dt "bifData" -dt "vectorArray" 
		-dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -w false -ci true -m -sn "updated_weights" -ln "updated_weights" -at "float";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sc" -type "string" (
		"{\n    \"header\": {\n        \"metadata\": [\n            {\n                \"metaName\": \"adskFileFormatVersion\",\n                \"metaValue\": \"100L\"\n            }\n        ]\n    },\n    \"dependencies\": [\n        {\n            \"uri\": \"file:///dl_build_array_with_default_value.json\"\n        },\n        {\n            \"uri\": \"file:///Math_types.json\"\n        },\n        {\n            \"uri\": \"file:///dl_vector2_to_vector3.json\"\n        },\n        {\n            \"uri\": \"file:///Math_float.json\"\n        },\n        {\n            \"uri\": \"file:///Math_double.json\"\n        },\n        {\n            \"uri\": \"file:///Math_long.json\"\n        },\n        {\n            \"uri\": \"file:///Math_char.json\"\n        },\n        {\n            \"uri\": \"file:///Math_int.json\"\n        },\n        {\n            \"uri\": \"file:///Math_short.json\"\n        },\n        {\n            \"uri\": \"file:///Math_uchar.json\"\n        },\n        {\n            \"uri\": \"file:///Math_uint.json\"\n        },\n        {\n            \"uri\": \"file:///Math_ulong.json\"\n        },\n        {\n"
		+ "            \"uri\": \"file:///Math_ushort.json\"\n        },\n        {\n            \"uri\": \"file:///Math_conversion.json\"\n        },\n        {\n            \"uri\": \"file:///bifrost_object_i.json\"\n        },\n        {\n            \"uri\": \"file:///riv_types.json\"\n        },\n        {\n            \"uri\": \"file:///point_types.json\"\n        },\n        {\n            \"uri\": \"file:///FCurve.json\"\n        },\n        {\n            \"uri\": \"file:///riv_ops.json\"\n        },\n        {\n            \"uri\": \"file:///Math_quaternion_to_matrix.json\"\n        },\n        {\n            \"uri\": \"file:///dl_compose_matrix.json\"\n        },\n        {\n            \"uri\": \"file:///dl_mult_vector_by_matrix.json\"\n        },\n        {\n            \"uri\": \"file:///Math_compose_transform_matrix.json\"\n        },\n        {\n            \"uri\": \"file:///Math_multiply_quaternions.json\"\n        },\n        {\n            \"uri\": \"file:///Math_euler_to_quaternion.json\"\n        },\n        {\n            \"uri\": \"file:///Math_degrees_to_radians.json\"\n        },\n        {\n"
		+ "            \"uri\": \"file:///bifrost_geometry_query_types.json\"\n        },\n        {\n            \"uri\": \"file:///geometry_types.json\"\n        },\n        {\n            \"uri\": \"file:///set_property_any.json\"\n        },\n        {\n            \"uri\": \"file:///set_property.json\"\n        },\n        {\n            \"uri\": \"file:///dl_xform.json\"\n        },\n        {\n            \"uri\": \"file:///CoreArrayOps.json\"\n        },\n        {\n            \"uri\": \"file:///get_property_any.json\"\n        },\n        {\n            \"uri\": \"file:///get_property.json\"\n        },\n        {\n            \"uri\": \"file:///get_geo_property.json\"\n        },\n        {\n            \"uri\": \"file:///dl_color_to_point_weight.json\"\n        },\n        {\n            \"uri\": \"file:///Math_length_squared.json\"\n        },\n        {\n            \"uri\": \"file:///Math_almost_equal.json\"\n        },\n        {\n            \"uri\": \"file:///dl_compute_weight_volume.json\"\n        },\n        {\n            \"uri\": \"file:///dl_compute_deformer_weights.json\"\n        },\n        {\n"
		+ "            \"uri\": \"file:///has_property.json\"\n        },\n        {\n            \"uri\": \"file:///create_volume_geo_prop.json\"\n        },\n        {\n            \"uri\": \"file:///is_a.json\"\n        },\n        {\n            \"uri\": \"file:///create_object_from_schema.json\"\n        },\n        {\n            \"uri\": \"file:///is_a_mesh.json\"\n        },\n        {\n            \"uri\": \"file:///is_a_strands.json\"\n        },\n        {\n            \"uri\": \"file:///is_a_points.json\"\n        },\n        {\n            \"uri\": \"file:///is_a_volume.json\"\n        },\n        {\n            \"uri\": \"file:///get_geo_schema_type.json\"\n        },\n        {\n            \"uri\": \"file:///switch_is_a.json\"\n        },\n        {\n            \"uri\": \"file:///get_target_component.json\"\n        },\n        {\n            \"uri\": \"file:///create_data_geo_prop.json\"\n        },\n        {\n            \"uri\": \"file:///get_geo_component_count.json\"\n        },\n        {\n            \"uri\": \"file:///set_geo_property.array.json\"\n        },\n        {\n            \"uri\": \"file:///set_geo_property.scalar.json\"\n"
		+ "        },\n        {\n            \"uri\": \"file:///get_property_keys.json\"\n        },\n        {\n            \"uri\": \"file:///is_empty.json\"\n        },\n        {\n            \"uri\": \"file:///materials.json\"\n        },\n        {\n            \"uri\": \"file:///Math_bool.json\"\n        },\n        {\n            \"uri\": \"file:///erase_property.json\"\n        },\n        {\n            \"uri\": \"file:///set_point_shape.json\"\n        },\n        {\n            \"uri\": \"file:///delete_points_in_points.json\"\n        },\n        {\n            \"uri\": \"file:///delete_points.json\"\n        },\n        {\n            \"uri\": \"file:///find_all_in_array.json\"\n        },\n        {\n            \"uri\": \"file:///get_geo_property_check.json\"\n        },\n        {\n            \"uri\": \"file:///Math_constants.json\"\n        },\n        {\n            \"uri\": \"file:///Core_Array_array_bounds_impl.json\"\n        },\n        {\n            \"uri\": \"file:///Core_Array_array_bounds.json\"\n        },\n        {\n            \"uri\": \"file:///get_point_position.json\"\n        },\n"
		+ "        {\n            \"uri\": \"file:///add_points_to_points.json\"\n        },\n        {\n            \"uri\": \"file:///validate_points.json\"\n        },\n        {\n            \"uri\": \"file:///construct_points.json\"\n        },\n        {\n            \"uri\": \"file:///CoreStringOps.json\"\n        },\n        {\n            \"uri\": \"file:///string_to_array.json\"\n        },\n        {\n            \"uri\": \"file:///increment_decrement.json\"\n        },\n        {\n            \"uri\": \"file:///jotun_rand.json\"\n        },\n        {\n            \"uri\": \"file:///fluids_types.json\"\n        },\n        {\n            \"uri\": \"file:///volume_types.json\"\n        },\n        {\n            \"uri\": \"file:///fluids_nodedefs.json\"\n        },\n        {\n            \"uri\": \"file:///random_value.json\"\n        },\n        {\n            \"uri\": \"file:///get_sub_object.json\"\n        },\n        {\n            \"uri\": \"file:///get_point_count.json\"\n        },\n        {\n            \"uri\": \"file:///Math_array.json\"\n        },\n        {\n            \"uri\": \"file:///Math_vector4_to_vector3.json\"\n"
		+ "        },\n        {\n            \"uri\": \"file:///Core_Constants_default_value.json\"\n        },\n        {\n            \"uri\": \"file:///cumulative_sum_array.json\"\n        },\n        {\n            \"uri\": \"file:///access_offset_array.json\"\n        },\n        {\n            \"uri\": \"file:///get_strands_structure.json\"\n        },\n        {\n            \"uri\": \"file:///update_point_strand_index.json\"\n        },\n        {\n            \"uri\": \"file:///int_filter.json\"\n        },\n        {\n            \"uri\": \"file:///get_array_indices.json\"\n        },\n        {\n            \"uri\": \"file:///check_point_strand_index.json\"\n        },\n        {\n            \"uri\": \"file:///update_strands_ratio.json\"\n        },\n        {\n            \"uri\": \"file:///int_array_filter.json\"\n        },\n        {\n            \"uri\": \"file:///set_geo_property_data.json\"\n        },\n        {\n            \"uri\": \"file:///set_point_position.json\"\n        },\n        {\n            \"uri\": \"file:///set_sub_object_property.json\"\n        },\n        {\n            \"uri\": \"file:///validate_strands.json\"\n"
		+ "        },\n        {\n            \"uri\": \"file:///construct_strands.json\"\n        },\n        {\n            \"uri\": \"file:///create_strands_from_counts.json\"\n        },\n        {\n            \"uri\": \"file:///twice_of.json\"\n        },\n        {\n            \"uri\": \"file:///standard_surface_mat.json\"\n        },\n        {\n            \"uri\": \"file:///half_of.json\"\n        },\n        {\n            \"uri\": \"file:///Math_change_range.json\"\n        },\n        {\n            \"uri\": \"file:///change_range.json\"\n        },\n        {\n            \"uri\": \"file:///set_strands_shape.json\"\n        },\n        {\n            \"uri\": \"file:///Arnold_enums.json\"\n        },\n        {\n            \"uri\": \"file:///set_Arnold_parameter.json\"\n        },\n        {\n            \"uri\": \"file:///Arnold_ray_types.json\"\n        },\n        {\n            \"uri\": \"file:///Arnold_ray_bitmask.json\"\n        },\n        {\n            \"uri\": \"file:///validate_mesh.json\"\n        },\n        {\n            \"uri\": \"file:///set_Arnold_geo_settings.json\"\n        },\n        {\n"
		+ "            \"uri\": \"file:///set_Arnold_strands_settings.json\"\n        },\n        {\n            \"uri\": \"file:///create_arrow_strands.json\"\n        },\n        {\n            \"uri\": \"file:///Core_Array_array_is_empty.json\"\n        },\n        {\n            \"uri\": \"file:///point_scope.json\"\n        },\n        {\n            \"uri\": \"file:///object_terminal.json\"\n        },\n        {\n            \"uri\": \"file:///dl_compute_weight_table.json\"\n        },\n        {\n            \"uri\": \"file:///dl_draw_vert_weights.json\"\n        },\n        {\n            \"uri\": \"file:///influence_fields_types.json\"\n        },\n        {\n            \"uri\": \"file:///get_geo_target_count.json\"\n        },\n        {\n            \"uri\": \"file:///volume_nodedefs.json\"\n        },\n        {\n            \"uri\": \"file:///interpret_auto_port_as_vector.json\"\n        },\n        {\n            \"uri\": \"file:///assign_diagnostic_material.json\"\n        },\n        {\n            \"uri\": \"file:///dl_planar_weight_volume.json\"\n        },\n        {\n            \"uri\": \"file:///dl_sphere_weight_volume.json\"\n"
		+ "        },\n        {\n            \"uri\": \"file:///Core_Array_empty_array.json\"\n        },\n        {\n            \"uri\": \"file:///dl_build_deform_groups_from_string_array.json\"\n        },\n        {\n            \"uri\": \"file:///Core_Array_flatten_nested_array.json\"\n        },\n        {\n            \"uri\": \"file:///Core_Array_slice_array.json\"\n        },\n        {\n            \"uri\": \"file:///Core_Array_reverse_array.json\"\n        },\n        {\n            \"uri\": \"file:///remove_from_array.json\"\n        },\n        {\n            \"uri\": \"file:///dl_get_group_index_by_name.json\"\n        },\n        {\n            \"uri\": \"file:///dl_get_face_idx_from_group_name.json\"\n        },\n        {\n            \"uri\": \"file:///dl_get_vert_idx_from_face_array.json\"\n        },\n        {\n            \"uri\": \"file:///sort_array_and_remove_duplicates.json\"\n        },\n        {\n            \"uri\": \"file:///dl_get_verts_from_group_name.json\"\n        },\n        {\n            \"uri\": \"file:///dl_mesh_object.json\"\n        },\n        {\n            \"uri\": \"file:///get_point_normal.json\"\n"
		+ "        },\n        {\n            \"uri\": \"file:///dl_get_vert_idx_to_deform.json\"\n        },\n        {\n            \"uri\": \"file:///dl_displace.json\"\n        },\n        {\n            \"uri\": \"file:///update_mesh_adjacency.json\"\n        },\n        {\n            \"uri\": \"file:///get_mesh_structure.json\"\n        },\n        {\n            \"uri\": \"file:///update_mesh_normals.json\"\n        },\n        {\n            \"uri\": \"file:///dl_magnet.json\"\n        },\n        {\n            \"uri\": \"file:///construct_mesh.json\"\n        },\n        {\n            \"uri\": \"file:///get_indexed_geo_property_check.json\"\n        },\n        {\n            \"uri\": \"file:///UV_set_name.json\"\n        },\n        {\n            \"uri\": \"file:///UV_type_filter.json\"\n        },\n        {\n            \"uri\": \"file:///UV_type_converter.json\"\n        },\n        {\n            \"uri\": \"file:///get_mesh_UVs.json\"\n        },\n        {\n            \"uri\": \"file:///dl_to_uvs.json\"\n        },\n        {\n            \"uri\": \"file:///dl_translate.json\"\n        }\n    ],\n    \"namespaces\": [],\n"
		+ "    \"types\": [],\n    \"compounds\": [\n        {\n            \"name\": \"bifrostGraphShape1\",\n            \"metadata\": [\n                {\n                    \"metaName\": \"blackListed\",\n                    \"metaValue\": \"true\"\n                },\n                {\n                    \"metaName\": \"io_nodes\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_inodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"input\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n"
		+ "                                                {\n                                                    \"metaName\": \"inParentMatrix\"\n                                                },\n                                                {\n                                                    \"metaName\": \"inPivotMatrix\"\n                                                },\n                                                {\n                                                    \"metaName\": \"inLocalMatrix\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1216.14 227.001\"\n                                        }\n                                    ]\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"pSphereShape1\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"mesh\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-403.78 680.177\"\n"
		+ "                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"io_onodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"output\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"default_value_array\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"vec3\"\n                                                },\n                                                {\n                                                    \"metaName\": \"matrixOut\"\n                                                },\n                                                {\n                                                    \"metaName\": \"vec_mult\"\n                                                },\n                                                {\n                                                    \"metaName\": \"deformMatrix\"\n                                                },\n                                                {\n                                                    \"metaName\": \"pivotMatrix\"\n                                                },\n                                                {\n                                                    \"metaName\": \"localMatrix\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"out_worldMat\"\n                                                },\n                                                {\n                                                    \"metaName\": \"updated_weights\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"879.374 -74.9654\"\n                                        }\n                                    ]\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,DL_Core::deformers,dl_translate\"\n"
		+ "                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,DL_Core::deformers,dl_to_uvs\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,DL_Core::deformers,dl_magnet\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,DL_Core::deformers,dl_get_vert_idx_to_deform\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,DL_Core::deformers,dl_displace\"\n                },\n                {\n                    \"metaName\": \"ViewportRect\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"-1221.67 585.06 1598.08 1909.34\"\n"
		+ "                }\n            ],\n            \"ports\": [\n                {\n                    \"portName\": \"default_value_array\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"array<float>\"\n                },\n                {\n                    \"portName\": \"vec3\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"matrixOut\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"vec_mult\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float3\"\n                },\n                {\n                    \"portName\": \"deformMatrix\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"pivotMatrix\",\n                    \"portDirection\": \"output\",\n"
		+ "                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"localMatrix\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"out_worldMat\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"inParentMatrix\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"inPivotMatrix\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"inLocalMatrix\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\"\n                },\n                {\n                    \"portName\": \"mesh\",\n"
		+ "                    \"portDirection\": \"input\",\n                    \"portType\": \"Amino::Object\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/pSphere1/pSphereShape1\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n"
		+ "                    ]\n                },\n                {\n                    \"portName\": \"updated_weights\",\n                    \"portDirection\": \"output\",\n                    \"portType\": \"array<float>\"\n                }\n            ],\n            \"compoundNodes\": [\n                {\n                    \"nodeName\": \"dl_build_array_with_default_value\",\n                    \"nodeType\": \"DL_Core::array::dl_build_array_with_default_value\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-634.953 -481.052\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_vector2_to_vector3\",\n                    \"nodeType\": \"DL_Core::array::dl_vector2_to_vector3\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-591.018 -205.179\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"value\",\n                    \"valueType\": \"Math::float2\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"valuenode_defaultvalue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"0\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"valuenode_defaultvalue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"0\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-996.986 -184.798\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_compose_matrix\",\n                    \"nodeType\": \"DL_Core::transforms::dl_compose_matrix\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-713.078 -16.5092\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_mult_vector_by_matrix\",\n                    \"nodeType\": \"DL_Core::transforms::dl_mult_vector_by_matrix\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-166.528 143.746\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_xform\",\n                    \"nodeType\": \"DL_Core::transforms::dl_xform\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-629.273 251.134\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_color_to_point_weight\",\n                    \"nodeType\": \"DL_Core::weighting::dl_color_to_point_weight\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-5.18007 966.843\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_compute_deformer_weights\",\n                    \"nodeType\": \"DL_Core::weighting::dl_compute_deformer_weights\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-359.521 1847.44\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_compute_weight_table\",\n                    \"nodeType\": \"DL_Core::weighting::dl_compute_weight_table\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-352.881 1205.44\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_compute_weight_volume\",\n                    \"nodeType\": \"DL_Core::weighting::dl_compute_weight_volume\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"442.03 778.209\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_draw_vert_weights\",\n                    \"nodeType\": \"DL_Core::weighting::dl_draw_vert_weights\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"834.056 1083.85\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_planar_weight_volume\",\n                    \"nodeType\": \"DL_Core::weighting::dl_planar_weight_volume\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1002.36 779.587\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_sphere_weight_volume\",\n"
		+ "                    \"nodeType\": \"DL_Core::weighting::dl_sphere_weight_volume\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1082.84 1202.7\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_point_position\",\n                    \"nodeType\": \"Geometry::Properties::get_point_position\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"8.92309 460.888\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_property\",\n                    \"nodeType\": \"Core::Object::get_property\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-8.08706 696.055\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_build_deform_groups_from_string_array\",\n                    \"nodeType\": \"DL_Core::geometry::dl_build_deform_groups_from_string_array\",\n                    \"metadata\": [\n                        {\n"
		+ "                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"103.965 1445.31\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_get_face_idx_from_group_name\",\n                    \"nodeType\": \"DL_Core::geometry::dl_get_face_idx_from_group_name\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"116.611 1723.13\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_get_group_index_by_name\",\n                    \"nodeType\": \"DL_Core::geometry::dl_get_group_index_by_name\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"122.521 1977.21\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_get_vert_idx_from_face_array\",\n                    \"nodeType\": \"DL_Core::geometry::dl_get_vert_idx_from_face_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"89.0374 2258.87\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_get_verts_from_group_name\",\n                    \"nodeType\": \"DL_Core::geometry::dl_get_verts_from_group_name\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"75.25 2530.67\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_mesh_object\",\n"
		+ "                    \"nodeType\": \"DL_Core::geometry::dl_mesh_object\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1025.26 1937.35\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_displace\",\n                    \"nodeType\": \"DL_Core::deformers::dl_displace\",\n                    \"deactivatedTerminals\": [\n                        \"Core::Graph::terminal::diagnostic\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-555.027 2392.8\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_get_vert_idx_to_deform\",\n                    \"nodeType\": \"DL_Core::deformers::dl_get_vert_idx_to_deform\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-726.383 1213.01\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_magnet\",\n                    \"nodeType\": \"DL_Core::deformers::dl_magnet\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-876.074 2404.62\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_to_uvs\",\n                    \"nodeType\": \"DL_Core::deformers::dl_to_uvs\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-285.189 2394.77\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"dl_translate\",\n                    \"nodeType\": \"DL_Core::deformers::dl_translate\",\n                    \"deactivatedTerminals\": [\n                        \"Core::Graph::terminal::diagnostic\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1142.6 2406.86\"\n                        }\n                    ]\n                }\n            ],\n            \"connections\": [\n                {\n                    \"source\": \"dl_build_array_with_default_value.resized_array\",\n                    \"target\": \".default_value_array\"\n                },\n"
		+ "                {\n                    \"source\": \"value.output\",\n                    \"target\": \"dl_vector2_to_vector3.vec2\"\n                },\n                {\n                    \"source\": \"dl_vector2_to_vector3.vec3\",\n                    \"target\": \".vec3\"\n                },\n                {\n                    \"source\": \"dl_compose_matrix.matrixOut\",\n                    \"target\": \".matrixOut\"\n                },\n                {\n                    \"source\": \"dl_compose_matrix.matrixOut\",\n                    \"target\": \"dl_mult_vector_by_matrix.matrix\"\n                },\n                {\n                    \"source\": \"dl_vector2_to_vector3.vec3\",\n                    \"target\": \"dl_mult_vector_by_matrix.vector\"\n                },\n                {\n                    \"source\": \"dl_mult_vector_by_matrix.output\",\n                    \"target\": \".vec_mult\"\n                },\n                {\n                    \"source\": \"dl_xform.parentMatrix\",\n                    \"target\": \".deformMatrix\"\n                },\n                {\n"
		+ "                    \"source\": \"dl_xform.pivotMatrix\",\n                    \"target\": \".pivotMatrix\"\n                },\n                {\n                    \"source\": \"dl_xform.localMatrix\",\n                    \"target\": \".localMatrix\"\n                },\n                {\n                    \"source\": \".inParentMatrix\",\n                    \"target\": \"dl_xform.inParentMatrix\"\n                },\n                {\n                    \"source\": \".inPivotMatrix\",\n                    \"target\": \"dl_xform.inPivotMatrix\"\n                },\n                {\n                    \"source\": \".inLocalMatrix\",\n                    \"target\": \"dl_xform.inLocalMatrix\"\n                },\n                {\n                    \"source\": \".inLocalMatrix\",\n                    \"target\": \"dl_planar_weight_volume.input_matrix\"\n                },\n                {\n                    \"source\": \".inPivotMatrix\",\n                    \"target\": \"dl_sphere_weight_volume.input_matrix\"\n                },\n                {\n                    \"source\": \"dl_planar_weight_volume.weight_volume\",\n"
		+ "                    \"target\": \"dl_compute_weight_volume.weight_volume\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"dl_color_to_point_weight.mesh\"\n                },\n                {\n                    \"source\": \"dl_color_to_point_weight.rgb_mult\",\n                    \"target\": \"dl_compute_weight_volume.input_weight_array\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"get_point_position.geometry\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"dl_compute_weight_volume.baseshape_point_position\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"dl_compute_weight_volume.current_point_position\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"get_property.object\"\n                },\n"
		+ "                {\n                    \"source\": \"get_property.value\",\n                    \"target\": \"dl_compute_weight_volume.vertex_ids\"\n                },\n                {\n                    \"source\": \"dl_xform.worldMatrix\",\n                    \"target\": \".out_worldMat\"\n                },\n                {\n                    \"source\": \"dl_compute_weight_volume.updated_weights\",\n                    \"target\": \".updated_weights\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"dl_draw_vert_weights.currentshape_object\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"dl_draw_vert_weights.baseshape_object\"\n                },\n                {\n                    \"source\": \"dl_compute_weight_volume.updated_weights\",\n                    \"target\": \"dl_draw_vert_weights.weight_array\"\n                }\n            ],\n            \"values\": [\n                {\n                    \"valueName\": \"dl_build_array_with_default_value.array_size\",\n"
		+ "                    \"valueType\": \"long\",\n                    \"value\": \"10\"\n                },\n                {\n                    \"valueName\": \"value.value\",\n                    \"valueType\": \"Math::float2\",\n                    \"value\": {\n                        \"x\": \"17f\",\n                        \"y\": \"12f\"\n                    }\n                },\n                {\n                    \"valueName\": \"dl_compose_matrix.quaternion\",\n                    \"valueType\": \"Math::float4\",\n                    \"value\": {\n                        \"x\": \"1f\",\n                        \"y\": \"0.5f\",\n                        \"z\": \"0.5f\",\n                        \"w\": \"1f\"\n                    }\n                },\n                {\n                    \"valueName\": \"dl_compose_matrix.translation\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"1f\",\n                        \"y\": \"2f\",\n                        \"z\": \"3f\"\n                    }\n                },\n                {\n"
		+ "                    \"valueName\": \"dl_draw_vert_weights.point_size\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0.0500000007f\"\n                },\n                {\n                    \"valueName\": \"dl_planar_weight_volume.min_falloff\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"dl_planar_weight_volume.max_falloff\",\n                    \"valueType\": \"float\",\n                    \"value\": \"1f\"\n                },\n                {\n                    \"valueName\": \"dl_sphere_weight_volume.min_falloff\",\n                    \"valueType\": \"float\",\n                    \"value\": \"6f\"\n                },\n                {\n                    \"valueName\": \"dl_sphere_weight_volume.max_falloff\",\n                    \"valueType\": \"float\",\n                    \"value\": \"10f\"\n                },\n                {\n                    \"valueName\": \"dl_sphere_weight_volume.sizeA\",\n                    \"valueType\": \"float\",\n"
		+ "                    \"value\": \"5f\"\n                },\n                {\n                    \"valueName\": \"get_property.default_and_type\",\n                    \"valueType\": \"array<uint>\",\n                    \"value\": []\n                },\n                {\n                    \"valueName\": \"get_property.key\",\n                    \"valueType\": \"string\",\n                    \"value\": \"point_component\"\n                }\n            ],\n            \"reservedNodeNames\": [\n                {\n                    \"name\": \"input\"\n                },\n                {\n                    \"name\": \"output\"\n                },\n                {\n                    \"name\": \"pSphereShape1\"\n                }\n            ]\n        }\n    ]\n}\n");
	setAttr -k on ".inPivotMatrix";
	setAttr -k on ".inLocalMatrix";
	setAttr -k on ".mesh";
createNode transform -n "world_matrix";
	rename -uid "BB281266-4BE1-45E6-D44D-BD8BDF2EB2DD";
createNode mesh -n "world_matrixShape" -p "world_matrix";
	rename -uid "F966D5C4-41B9-C4D4-78E9-0F8AEA1A84DE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pivot_matrix";
	rename -uid "A1F032D8-4E57-F085-994B-3EA22188FFA3";
	setAttr ".t" -type "double3" -7.2449499727320443 13.731356838033715 0 ;
	setAttr ".r" -type "double3" 0 0 -48.800758264856633 ;
createNode locator -n "pivot_matrixShape" -p "pivot_matrix";
	rename -uid "A0444A47-4F9F-76D7-C636-B59694B4D0E1";
	setAttr -k off ".v";
createNode transform -n "local_matrix";
	rename -uid "16A3D067-4F99-D63E-6AE0-EDA37AD30211";
	setAttr ".t" -type "double3" 6.6618005395089597 0 0 ;
	setAttr ".s" -type "double3" 2.7173143676740552 0.64827778616283438 1 ;
createNode locator -n "local_matrixShape" -p "local_matrix";
	rename -uid "7331DE1C-4511-2505-54A7-7A8E35C86E50";
	setAttr -k off ".v";
createNode transform -n "pSphere1";
	rename -uid "433A1496-48E4-470C-CDF7-2F958E212420";
	setAttr ".t" -type "double3" 0 20.07314666854441 0 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "EDB1914F-4A06-2F38-E98D-98A196EE2CB6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "651BC8BE-4E03-4104-5A3D-E09121656AB9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "125FD133-4B7E-1DD9-DC26-7484FBBAA3F1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5D6AAF11-4CA3-FD25-E298-D0AF63873E4A";
createNode displayLayerManager -n "layerManager";
	rename -uid "30BA229B-420F-8368-0694-D8A1180E06BA";
createNode displayLayer -n "defaultLayer";
	rename -uid "972EF26B-49CB-D8FC-E93B-05810326784C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "708E0627-4979-BD68-574C-80B56E737020";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D2D11838-47FD-217D-6F6C-B1AB9C47A96D";
	setAttr ".g" yes;
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "84CA2D59-44A6-F83A-EE41-2DA33DCA7149";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "45A2271D-47C8-0C59-8560-3DAD1E2686D3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 613\n            -height 856\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 613\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 613\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "127DB2E5-402D-9B42-D306-D794CD86FE5B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	rename -uid "C7967E14-4675-CE74-96FC-7C8A1533F756";
createNode polyColorPerVertex -n "polyColorPerVertex1";
	rename -uid "C535EA09-4C30-C539-BBD3-8CB7106C7B22";
	setAttr ".uopa" yes;
	setAttr -s 382 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr -s 4 ".vclr[0].vfcl";
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[0].vfcl[19].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[0].vfcl[19].vfal" 1;
	setAttr ".vclr[0].vfcl[360].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[0].vfcl[360].vfal" 1;
	setAttr ".vclr[0].vfcl[379].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[0].vfcl[379].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 4 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[0].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[1].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vfcl[1].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[1].vfcl[1].vfal" 1;
	setAttr ".vclr[1].vfcl[360].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[1].vfcl[360].vfal" 1;
	setAttr ".vclr[1].vfcl[361].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[1].vfcl[361].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 4 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[1].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[2].vfcl[1].vfal" 1;
	setAttr ".vclr[2].vfcl[2].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[2].vfcl[2].vfal" 1;
	setAttr ".vclr[2].vfcl[361].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[2].vfcl[361].vfal" 1;
	setAttr ".vclr[2].vfcl[362].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[2].vfcl[362].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 4 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[2].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[3].vfcl[2].vfal" 1;
	setAttr ".vclr[3].vfcl[3].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[3].vfcl[3].vfal" 1;
	setAttr ".vclr[3].vfcl[362].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[3].vfcl[362].vfal" 1;
	setAttr ".vclr[3].vfcl[363].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[3].vfcl[363].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 4 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[3].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[4].vfcl[3].vfal" 1;
	setAttr ".vclr[4].vfcl[4].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[4].vfcl[4].vfal" 1;
	setAttr ".vclr[4].vfcl[363].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[4].vfcl[363].vfal" 1;
	setAttr ".vclr[4].vfcl[364].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[4].vfcl[364].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 4 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[4].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[5].vfcl[4].vfal" 1;
	setAttr ".vclr[5].vfcl[5].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[5].vfcl[5].vfal" 1;
	setAttr ".vclr[5].vfcl[364].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[5].vfcl[364].vfal" 1;
	setAttr ".vclr[5].vfcl[365].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[5].vfcl[365].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 4 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[5].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[6].vfcl[5].vfal" 1;
	setAttr ".vclr[6].vfcl[6].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[6].vfcl[6].vfal" 1;
	setAttr ".vclr[6].vfcl[365].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[6].vfcl[365].vfal" 1;
	setAttr ".vclr[6].vfcl[366].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[6].vfcl[366].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 4 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[6].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[7].vfcl[6].vfal" 1;
	setAttr ".vclr[7].vfcl[7].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[7].vfcl[7].vfal" 1;
	setAttr ".vclr[7].vfcl[366].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[7].vfcl[366].vfal" 1;
	setAttr ".vclr[7].vfcl[367].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[7].vfcl[367].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 4 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[7].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[8].vfcl[7].vfal" 1;
	setAttr ".vclr[8].vfcl[8].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[8].vfcl[8].vfal" 1;
	setAttr ".vclr[8].vfcl[367].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[8].vfcl[367].vfal" 1;
	setAttr ".vclr[8].vfcl[368].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[8].vfcl[368].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 4 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[8].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[9].vfcl[8].vfal" 1;
	setAttr ".vclr[9].vfcl[9].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[9].vfcl[9].vfal" 1;
	setAttr ".vclr[9].vfcl[368].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[9].vfcl[368].vfal" 1;
	setAttr ".vclr[9].vfcl[369].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[9].vfcl[369].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 4 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[9].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[10].vfcl[9].vfal" 1;
	setAttr ".vclr[10].vfcl[10].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[10].vfcl[10].vfal" 1;
	setAttr ".vclr[10].vfcl[369].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[10].vfcl[369].vfal" 1;
	setAttr ".vclr[10].vfcl[370].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[10].vfcl[370].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 4 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[10].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[11].vfcl[10].vfal" 1;
	setAttr ".vclr[11].vfcl[11].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[11].vfcl[11].vfal" 1;
	setAttr ".vclr[11].vfcl[370].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[11].vfcl[370].vfal" 1;
	setAttr ".vclr[11].vfcl[371].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[11].vfcl[371].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[11].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[12].vfcl[11].vfal" 1;
	setAttr ".vclr[12].vfcl[12].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[12].vfcl[12].vfal" 1;
	setAttr ".vclr[12].vfcl[371].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[12].vfcl[371].vfal" 1;
	setAttr ".vclr[12].vfcl[372].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[12].vfcl[372].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 4 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[12].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[13].vfcl[12].vfal" 1;
	setAttr ".vclr[13].vfcl[13].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[13].vfcl[13].vfal" 1;
	setAttr ".vclr[13].vfcl[372].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[13].vfcl[372].vfal" 1;
	setAttr ".vclr[13].vfcl[373].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[13].vfcl[373].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 4 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[13].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[14].vfcl[13].vfal" 1;
	setAttr ".vclr[14].vfcl[14].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[14].vfcl[14].vfal" 1;
	setAttr ".vclr[14].vfcl[373].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[14].vfcl[373].vfal" 1;
	setAttr ".vclr[14].vfcl[374].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[14].vfcl[374].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 4 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[14].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[15].vfcl[14].vfal" 1;
	setAttr ".vclr[15].vfcl[15].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[15].vfcl[15].vfal" 1;
	setAttr ".vclr[15].vfcl[374].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[15].vfcl[374].vfal" 1;
	setAttr ".vclr[15].vfcl[375].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[15].vfcl[375].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 4 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[15].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[16].vfcl[15].vfal" 1;
	setAttr ".vclr[16].vfcl[16].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[16].vfcl[16].vfal" 1;
	setAttr ".vclr[16].vfcl[375].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[16].vfcl[375].vfal" 1;
	setAttr ".vclr[16].vfcl[376].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[16].vfcl[376].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 4 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[16].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[17].vfcl[16].vfal" 1;
	setAttr ".vclr[17].vfcl[17].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[17].vfcl[17].vfal" 1;
	setAttr ".vclr[17].vfcl[376].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[17].vfcl[376].vfal" 1;
	setAttr ".vclr[17].vfcl[377].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[17].vfcl[377].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 4 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[17].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[18].vfcl[17].vfal" 1;
	setAttr ".vclr[18].vfcl[18].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[18].vfcl[18].vfal" 1;
	setAttr ".vclr[18].vfcl[377].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[18].vfcl[377].vfal" 1;
	setAttr ".vclr[18].vfcl[378].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[18].vfcl[378].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 4 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[18].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[19].vfcl[18].vfal" 1;
	setAttr ".vclr[19].vfcl[19].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[19].vfcl[19].vfal" 1;
	setAttr ".vclr[19].vfcl[378].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[19].vfcl[378].vfal" 1;
	setAttr ".vclr[19].vfcl[379].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[19].vfcl[379].vfal" 1;
	setAttr ".vclr[20].vxal" 1;
	setAttr -s 4 ".vclr[20].vfcl";
	setAttr ".vclr[20].vfcl[0].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[20].vfcl[0].vfal" 1;
	setAttr ".vclr[20].vfcl[19].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[20].vfcl[19].vfal" 1;
	setAttr ".vclr[20].vfcl[20].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[20].vfcl[20].vfal" 1;
	setAttr ".vclr[20].vfcl[39].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[20].vfcl[39].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 4 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[0].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[21].vfcl[0].vfal" 1;
	setAttr ".vclr[21].vfcl[1].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[21].vfcl[1].vfal" 1;
	setAttr ".vclr[21].vfcl[20].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[21].vfcl[20].vfal" 1;
	setAttr ".vclr[21].vfcl[21].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[21].vfcl[21].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 4 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[1].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[22].vfcl[1].vfal" 1;
	setAttr ".vclr[22].vfcl[2].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[22].vfcl[2].vfal" 1;
	setAttr ".vclr[22].vfcl[21].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[22].vfcl[21].vfal" 1;
	setAttr ".vclr[22].vfcl[22].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[22].vfcl[22].vfal" 1;
	setAttr ".vclr[23].vxal" 1;
	setAttr -s 4 ".vclr[23].vfcl";
	setAttr ".vclr[23].vfcl[2].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[23].vfcl[2].vfal" 1;
	setAttr ".vclr[23].vfcl[3].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[23].vfcl[3].vfal" 1;
	setAttr ".vclr[23].vfcl[22].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[23].vfcl[22].vfal" 1;
	setAttr ".vclr[23].vfcl[23].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[23].vfcl[23].vfal" 1;
	setAttr ".vclr[24].vxal" 1;
	setAttr -s 4 ".vclr[24].vfcl";
	setAttr ".vclr[24].vfcl[3].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[24].vfcl[3].vfal" 1;
	setAttr ".vclr[24].vfcl[4].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[24].vfcl[4].vfal" 1;
	setAttr ".vclr[24].vfcl[23].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[24].vfcl[23].vfal" 1;
	setAttr ".vclr[24].vfcl[24].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[24].vfcl[24].vfal" 1;
	setAttr ".vclr[25].vxal" 1;
	setAttr -s 4 ".vclr[25].vfcl";
	setAttr ".vclr[25].vfcl[4].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[25].vfcl[4].vfal" 1;
	setAttr ".vclr[25].vfcl[5].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[25].vfcl[5].vfal" 1;
	setAttr ".vclr[25].vfcl[24].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[25].vfcl[24].vfal" 1;
	setAttr ".vclr[25].vfcl[25].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[25].vfcl[25].vfal" 1;
	setAttr ".vclr[26].vxal" 1;
	setAttr -s 4 ".vclr[26].vfcl";
	setAttr ".vclr[26].vfcl[5].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[26].vfcl[5].vfal" 1;
	setAttr ".vclr[26].vfcl[6].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[26].vfcl[6].vfal" 1;
	setAttr ".vclr[26].vfcl[25].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[26].vfcl[25].vfal" 1;
	setAttr ".vclr[26].vfcl[26].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[26].vfcl[26].vfal" 1;
	setAttr ".vclr[27].vxal" 1;
	setAttr -s 4 ".vclr[27].vfcl";
	setAttr ".vclr[27].vfcl[6].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[27].vfcl[6].vfal" 1;
	setAttr ".vclr[27].vfcl[7].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[27].vfcl[7].vfal" 1;
	setAttr ".vclr[27].vfcl[26].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[27].vfcl[26].vfal" 1;
	setAttr ".vclr[27].vfcl[27].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[27].vfcl[27].vfal" 1;
	setAttr ".vclr[28].vxal" 1;
	setAttr -s 4 ".vclr[28].vfcl";
	setAttr ".vclr[28].vfcl[7].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[28].vfcl[7].vfal" 1;
	setAttr ".vclr[28].vfcl[8].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[28].vfcl[8].vfal" 1;
	setAttr ".vclr[28].vfcl[27].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[28].vfcl[27].vfal" 1;
	setAttr ".vclr[28].vfcl[28].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[28].vfcl[28].vfal" 1;
	setAttr ".vclr[29].vxal" 1;
	setAttr -s 4 ".vclr[29].vfcl";
	setAttr ".vclr[29].vfcl[8].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[29].vfcl[8].vfal" 1;
	setAttr ".vclr[29].vfcl[9].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[29].vfcl[9].vfal" 1;
	setAttr ".vclr[29].vfcl[28].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[29].vfcl[28].vfal" 1;
	setAttr ".vclr[29].vfcl[29].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[29].vfcl[29].vfal" 1;
	setAttr ".vclr[30].vxal" 1;
	setAttr -s 4 ".vclr[30].vfcl";
	setAttr ".vclr[30].vfcl[9].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[30].vfcl[9].vfal" 1;
	setAttr ".vclr[30].vfcl[10].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[30].vfcl[10].vfal" 1;
	setAttr ".vclr[30].vfcl[29].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[30].vfcl[29].vfal" 1;
	setAttr ".vclr[30].vfcl[30].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[30].vfcl[30].vfal" 1;
	setAttr ".vclr[31].vxal" 1;
	setAttr -s 4 ".vclr[31].vfcl";
	setAttr ".vclr[31].vfcl[10].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[31].vfcl[10].vfal" 1;
	setAttr ".vclr[31].vfcl[11].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[31].vfcl[11].vfal" 1;
	setAttr ".vclr[31].vfcl[30].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[31].vfcl[30].vfal" 1;
	setAttr ".vclr[31].vfcl[31].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[31].vfcl[31].vfal" 1;
	setAttr ".vclr[32].vxal" 1;
	setAttr -s 4 ".vclr[32].vfcl";
	setAttr ".vclr[32].vfcl[11].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[32].vfcl[11].vfal" 1;
	setAttr ".vclr[32].vfcl[12].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[32].vfcl[12].vfal" 1;
	setAttr ".vclr[32].vfcl[31].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[32].vfcl[31].vfal" 1;
	setAttr ".vclr[32].vfcl[32].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[32].vfcl[32].vfal" 1;
	setAttr ".vclr[33].vxal" 1;
	setAttr -s 4 ".vclr[33].vfcl";
	setAttr ".vclr[33].vfcl[12].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[33].vfcl[12].vfal" 1;
	setAttr ".vclr[33].vfcl[13].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[33].vfcl[13].vfal" 1;
	setAttr ".vclr[33].vfcl[32].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[33].vfcl[32].vfal" 1;
	setAttr ".vclr[33].vfcl[33].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[33].vfcl[33].vfal" 1;
	setAttr ".vclr[34].vxal" 1;
	setAttr -s 4 ".vclr[34].vfcl";
	setAttr ".vclr[34].vfcl[13].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[34].vfcl[13].vfal" 1;
	setAttr ".vclr[34].vfcl[14].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[34].vfcl[14].vfal" 1;
	setAttr ".vclr[34].vfcl[33].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[34].vfcl[33].vfal" 1;
	setAttr ".vclr[34].vfcl[34].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[34].vfcl[34].vfal" 1;
	setAttr ".vclr[35].vxal" 1;
	setAttr -s 4 ".vclr[35].vfcl";
	setAttr ".vclr[35].vfcl[14].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[35].vfcl[14].vfal" 1;
	setAttr ".vclr[35].vfcl[15].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[35].vfcl[15].vfal" 1;
	setAttr ".vclr[35].vfcl[34].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[35].vfcl[34].vfal" 1;
	setAttr ".vclr[35].vfcl[35].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[35].vfcl[35].vfal" 1;
	setAttr ".vclr[36].vxal" 1;
	setAttr -s 4 ".vclr[36].vfcl";
	setAttr ".vclr[36].vfcl[15].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[36].vfcl[15].vfal" 1;
	setAttr ".vclr[36].vfcl[16].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[36].vfcl[16].vfal" 1;
	setAttr ".vclr[36].vfcl[35].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[36].vfcl[35].vfal" 1;
	setAttr ".vclr[36].vfcl[36].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[36].vfcl[36].vfal" 1;
	setAttr ".vclr[37].vxal" 1;
	setAttr -s 4 ".vclr[37].vfcl";
	setAttr ".vclr[37].vfcl[16].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[37].vfcl[16].vfal" 1;
	setAttr ".vclr[37].vfcl[17].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[37].vfcl[17].vfal" 1;
	setAttr ".vclr[37].vfcl[36].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[37].vfcl[36].vfal" 1;
	setAttr ".vclr[37].vfcl[37].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[37].vfcl[37].vfal" 1;
	setAttr ".vclr[38].vxal" 1;
	setAttr -s 4 ".vclr[38].vfcl";
	setAttr ".vclr[38].vfcl[17].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[38].vfcl[17].vfal" 1;
	setAttr ".vclr[38].vfcl[18].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[38].vfcl[18].vfal" 1;
	setAttr ".vclr[38].vfcl[37].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[38].vfcl[37].vfal" 1;
	setAttr ".vclr[38].vfcl[38].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[38].vfcl[38].vfal" 1;
	setAttr ".vclr[39].vxal" 1;
	setAttr -s 4 ".vclr[39].vfcl";
	setAttr ".vclr[39].vfcl[18].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[39].vfcl[18].vfal" 1;
	setAttr ".vclr[39].vfcl[19].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[39].vfcl[19].vfal" 1;
	setAttr ".vclr[39].vfcl[38].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[39].vfcl[38].vfal" 1;
	setAttr ".vclr[39].vfcl[39].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[39].vfcl[39].vfal" 1;
	setAttr ".vclr[40].vxal" 1;
	setAttr -s 4 ".vclr[40].vfcl";
	setAttr ".vclr[40].vfcl[20].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[40].vfcl[20].vfal" 1;
	setAttr ".vclr[40].vfcl[39].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[40].vfcl[39].vfal" 1;
	setAttr ".vclr[40].vfcl[40].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[40].vfcl[40].vfal" 1;
	setAttr ".vclr[40].vfcl[59].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[40].vfcl[59].vfal" 1;
	setAttr ".vclr[41].vxal" 1;
	setAttr -s 4 ".vclr[41].vfcl";
	setAttr ".vclr[41].vfcl[20].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[41].vfcl[20].vfal" 1;
	setAttr ".vclr[41].vfcl[21].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[41].vfcl[21].vfal" 1;
	setAttr ".vclr[41].vfcl[40].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[41].vfcl[40].vfal" 1;
	setAttr ".vclr[41].vfcl[41].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[41].vfcl[41].vfal" 1;
	setAttr ".vclr[42].vxal" 1;
	setAttr -s 4 ".vclr[42].vfcl";
	setAttr ".vclr[42].vfcl[21].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[42].vfcl[21].vfal" 1;
	setAttr ".vclr[42].vfcl[22].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[42].vfcl[22].vfal" 1;
	setAttr ".vclr[42].vfcl[41].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[42].vfcl[41].vfal" 1;
	setAttr ".vclr[42].vfcl[42].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[42].vfcl[42].vfal" 1;
	setAttr ".vclr[43].vxal" 1;
	setAttr -s 4 ".vclr[43].vfcl";
	setAttr ".vclr[43].vfcl[22].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[43].vfcl[22].vfal" 1;
	setAttr ".vclr[43].vfcl[23].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[43].vfcl[23].vfal" 1;
	setAttr ".vclr[43].vfcl[42].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[43].vfcl[42].vfal" 1;
	setAttr ".vclr[43].vfcl[43].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[43].vfcl[43].vfal" 1;
	setAttr ".vclr[44].vxal" 1;
	setAttr -s 4 ".vclr[44].vfcl";
	setAttr ".vclr[44].vfcl[23].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[44].vfcl[23].vfal" 1;
	setAttr ".vclr[44].vfcl[24].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[44].vfcl[24].vfal" 1;
	setAttr ".vclr[44].vfcl[43].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[44].vfcl[43].vfal" 1;
	setAttr ".vclr[44].vfcl[44].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[44].vfcl[44].vfal" 1;
	setAttr ".vclr[45].vxal" 1;
	setAttr -s 4 ".vclr[45].vfcl";
	setAttr ".vclr[45].vfcl[24].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[24].vfal" 1;
	setAttr ".vclr[45].vfcl[25].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[25].vfal" 1;
	setAttr ".vclr[45].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[44].vfal" 1;
	setAttr ".vclr[45].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[45].vfal" 1;
	setAttr ".vclr[46].vxal" 1;
	setAttr -s 4 ".vclr[46].vfcl";
	setAttr ".vclr[46].vfcl[25].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[25].vfal" 1;
	setAttr ".vclr[46].vfcl[26].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[26].vfal" 1;
	setAttr ".vclr[46].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[45].vfal" 1;
	setAttr ".vclr[46].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[46].vfal" 1;
	setAttr ".vclr[47].vxal" 1;
	setAttr -s 4 ".vclr[47].vfcl";
	setAttr ".vclr[47].vfcl[26].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[26].vfal" 1;
	setAttr ".vclr[47].vfcl[27].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[27].vfal" 1;
	setAttr ".vclr[47].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[46].vfal" 1;
	setAttr ".vclr[47].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[47].vfal" 1;
	setAttr ".vclr[48].vxal" 1;
	setAttr -s 4 ".vclr[48].vfcl";
	setAttr ".vclr[48].vfcl[27].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[27].vfal" 1;
	setAttr ".vclr[48].vfcl[28].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[28].vfal" 1;
	setAttr ".vclr[48].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[47].vfal" 1;
	setAttr ".vclr[48].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[48].vfal" 1;
	setAttr ".vclr[49].vxal" 1;
	setAttr -s 4 ".vclr[49].vfcl";
	setAttr ".vclr[49].vfcl[28].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[28].vfal" 1;
	setAttr ".vclr[49].vfcl[29].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[29].vfal" 1;
	setAttr ".vclr[49].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[48].vfal" 1;
	setAttr ".vclr[49].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[49].vfal" 1;
	setAttr ".vclr[50].vxal" 1;
	setAttr -s 4 ".vclr[50].vfcl";
	setAttr ".vclr[50].vfcl[29].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[29].vfal" 1;
	setAttr ".vclr[50].vfcl[30].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[30].vfal" 1;
	setAttr ".vclr[50].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[49].vfal" 1;
	setAttr ".vclr[50].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[50].vfal" 1;
	setAttr ".vclr[51].vxal" 1;
	setAttr -s 4 ".vclr[51].vfcl";
	setAttr ".vclr[51].vfcl[30].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[51].vfcl[30].vfal" 1;
	setAttr ".vclr[51].vfcl[31].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[51].vfcl[31].vfal" 1;
	setAttr ".vclr[51].vfcl[50].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[51].vfcl[50].vfal" 1;
	setAttr ".vclr[51].vfcl[51].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[51].vfcl[51].vfal" 1;
	setAttr ".vclr[52].vxal" 1;
	setAttr -s 4 ".vclr[52].vfcl";
	setAttr ".vclr[52].vfcl[31].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[52].vfcl[31].vfal" 1;
	setAttr ".vclr[52].vfcl[32].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[52].vfcl[32].vfal" 1;
	setAttr ".vclr[52].vfcl[51].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[52].vfcl[51].vfal" 1;
	setAttr ".vclr[52].vfcl[52].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[52].vfcl[52].vfal" 1;
	setAttr ".vclr[53].vxal" 1;
	setAttr -s 4 ".vclr[53].vfcl";
	setAttr ".vclr[53].vfcl[32].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[53].vfcl[32].vfal" 1;
	setAttr ".vclr[53].vfcl[33].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[53].vfcl[33].vfal" 1;
	setAttr ".vclr[53].vfcl[52].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[53].vfcl[52].vfal" 1;
	setAttr ".vclr[53].vfcl[53].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[53].vfcl[53].vfal" 1;
	setAttr ".vclr[54].vxal" 1;
	setAttr -s 4 ".vclr[54].vfcl";
	setAttr ".vclr[54].vfcl[33].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[54].vfcl[33].vfal" 1;
	setAttr ".vclr[54].vfcl[34].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[54].vfcl[34].vfal" 1;
	setAttr ".vclr[54].vfcl[53].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[54].vfcl[53].vfal" 1;
	setAttr ".vclr[54].vfcl[54].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[54].vfcl[54].vfal" 1;
	setAttr ".vclr[55].vxal" 1;
	setAttr -s 4 ".vclr[55].vfcl";
	setAttr ".vclr[55].vfcl[34].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[55].vfcl[34].vfal" 1;
	setAttr ".vclr[55].vfcl[35].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[55].vfcl[35].vfal" 1;
	setAttr ".vclr[55].vfcl[54].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[55].vfcl[54].vfal" 1;
	setAttr ".vclr[55].vfcl[55].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[55].vfcl[55].vfal" 1;
	setAttr ".vclr[56].vxal" 1;
	setAttr -s 4 ".vclr[56].vfcl";
	setAttr ".vclr[56].vfcl[35].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[56].vfcl[35].vfal" 1;
	setAttr ".vclr[56].vfcl[36].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[56].vfcl[36].vfal" 1;
	setAttr ".vclr[56].vfcl[55].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[56].vfcl[55].vfal" 1;
	setAttr ".vclr[56].vfcl[56].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[56].vfcl[56].vfal" 1;
	setAttr ".vclr[57].vxal" 1;
	setAttr -s 4 ".vclr[57].vfcl";
	setAttr ".vclr[57].vfcl[36].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[57].vfcl[36].vfal" 1;
	setAttr ".vclr[57].vfcl[37].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[57].vfcl[37].vfal" 1;
	setAttr ".vclr[57].vfcl[56].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[57].vfcl[56].vfal" 1;
	setAttr ".vclr[57].vfcl[57].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[57].vfcl[57].vfal" 1;
	setAttr ".vclr[58].vxal" 1;
	setAttr -s 4 ".vclr[58].vfcl";
	setAttr ".vclr[58].vfcl[37].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[58].vfcl[37].vfal" 1;
	setAttr ".vclr[58].vfcl[38].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[58].vfcl[38].vfal" 1;
	setAttr ".vclr[58].vfcl[57].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[58].vfcl[57].vfal" 1;
	setAttr ".vclr[58].vfcl[58].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[58].vfcl[58].vfal" 1;
	setAttr ".vclr[59].vxal" 1;
	setAttr -s 4 ".vclr[59].vfcl";
	setAttr ".vclr[59].vfcl[38].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[59].vfcl[38].vfal" 1;
	setAttr ".vclr[59].vfcl[39].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[59].vfcl[39].vfal" 1;
	setAttr ".vclr[59].vfcl[58].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[59].vfcl[58].vfal" 1;
	setAttr ".vclr[59].vfcl[59].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[59].vfcl[59].vfal" 1;
	setAttr ".vclr[60].vxal" 1;
	setAttr -s 4 ".vclr[60].vfcl";
	setAttr ".vclr[60].vfcl[40].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[60].vfcl[40].vfal" 1;
	setAttr ".vclr[60].vfcl[59].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[60].vfcl[59].vfal" 1;
	setAttr ".vclr[60].vfcl[60].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[60].vfcl[60].vfal" 1;
	setAttr ".vclr[60].vfcl[79].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[60].vfcl[79].vfal" 1;
	setAttr ".vclr[61].vxal" 1;
	setAttr -s 4 ".vclr[61].vfcl";
	setAttr ".vclr[61].vfcl[40].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[61].vfcl[40].vfal" 1;
	setAttr ".vclr[61].vfcl[41].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[61].vfcl[41].vfal" 1;
	setAttr ".vclr[61].vfcl[60].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[61].vfcl[60].vfal" 1;
	setAttr ".vclr[61].vfcl[61].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[61].vfcl[61].vfal" 1;
	setAttr ".vclr[62].vxal" 1;
	setAttr -s 4 ".vclr[62].vfcl";
	setAttr ".vclr[62].vfcl[41].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[62].vfcl[41].vfal" 1;
	setAttr ".vclr[62].vfcl[42].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[62].vfcl[42].vfal" 1;
	setAttr ".vclr[62].vfcl[61].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[62].vfcl[61].vfal" 1;
	setAttr ".vclr[62].vfcl[62].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[62].vfcl[62].vfal" 1;
	setAttr ".vclr[63].vxal" 1;
	setAttr -s 4 ".vclr[63].vfcl";
	setAttr ".vclr[63].vfcl[42].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[63].vfcl[42].vfal" 1;
	setAttr ".vclr[63].vfcl[43].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[63].vfcl[43].vfal" 1;
	setAttr ".vclr[63].vfcl[62].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[63].vfcl[62].vfal" 1;
	setAttr ".vclr[63].vfcl[63].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[63].vfcl[63].vfal" 1;
	setAttr ".vclr[64].vxal" 1;
	setAttr -s 4 ".vclr[64].vfcl";
	setAttr ".vclr[64].vfcl[43].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[43].vfal" 1;
	setAttr ".vclr[64].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[44].vfal" 1;
	setAttr ".vclr[64].vfcl[63].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[63].vfal" 1;
	setAttr ".vclr[64].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[64].vfal" 1;
	setAttr ".vclr[65].vxal" 1;
	setAttr -s 4 ".vclr[65].vfcl";
	setAttr ".vclr[65].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[44].vfal" 1;
	setAttr ".vclr[65].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[45].vfal" 1;
	setAttr ".vclr[65].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[64].vfal" 1;
	setAttr ".vclr[65].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[65].vfal" 1;
	setAttr ".vclr[66].vxal" 1;
	setAttr -s 4 ".vclr[66].vfcl";
	setAttr ".vclr[66].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[45].vfal" 1;
	setAttr ".vclr[66].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[46].vfal" 1;
	setAttr ".vclr[66].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[65].vfal" 1;
	setAttr ".vclr[66].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[66].vfal" 1;
	setAttr ".vclr[67].vxal" 1;
	setAttr -s 4 ".vclr[67].vfcl";
	setAttr ".vclr[67].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[46].vfal" 1;
	setAttr ".vclr[67].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[47].vfal" 1;
	setAttr ".vclr[67].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[66].vfal" 1;
	setAttr ".vclr[67].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[67].vfal" 1;
	setAttr ".vclr[68].vxal" 1;
	setAttr -s 4 ".vclr[68].vfcl";
	setAttr ".vclr[68].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[47].vfal" 1;
	setAttr ".vclr[68].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[48].vfal" 1;
	setAttr ".vclr[68].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[67].vfal" 1;
	setAttr ".vclr[68].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[68].vfal" 1;
	setAttr ".vclr[69].vxal" 1;
	setAttr -s 4 ".vclr[69].vfcl";
	setAttr ".vclr[69].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[48].vfal" 1;
	setAttr ".vclr[69].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[49].vfal" 1;
	setAttr ".vclr[69].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[68].vfal" 1;
	setAttr ".vclr[69].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[69].vfal" 1;
	setAttr ".vclr[70].vxal" 1;
	setAttr -s 4 ".vclr[70].vfcl";
	setAttr ".vclr[70].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[49].vfal" 1;
	setAttr ".vclr[70].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[50].vfal" 1;
	setAttr ".vclr[70].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[69].vfal" 1;
	setAttr ".vclr[70].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[70].vfal" 1;
	setAttr ".vclr[71].vxal" 1;
	setAttr -s 4 ".vclr[71].vfcl";
	setAttr ".vclr[71].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[50].vfal" 1;
	setAttr ".vclr[71].vfcl[51].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[51].vfal" 1;
	setAttr ".vclr[71].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[70].vfal" 1;
	setAttr ".vclr[71].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[71].vfal" 1;
	setAttr ".vclr[72].vxal" 1;
	setAttr -s 4 ".vclr[72].vfcl";
	setAttr ".vclr[72].vfcl[51].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[72].vfcl[51].vfal" 1;
	setAttr ".vclr[72].vfcl[52].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[72].vfcl[52].vfal" 1;
	setAttr ".vclr[72].vfcl[71].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[72].vfcl[71].vfal" 1;
	setAttr ".vclr[72].vfcl[72].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[72].vfcl[72].vfal" 1;
	setAttr ".vclr[73].vxal" 1;
	setAttr -s 4 ".vclr[73].vfcl";
	setAttr ".vclr[73].vfcl[52].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[73].vfcl[52].vfal" 1;
	setAttr ".vclr[73].vfcl[53].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[73].vfcl[53].vfal" 1;
	setAttr ".vclr[73].vfcl[72].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[73].vfcl[72].vfal" 1;
	setAttr ".vclr[73].vfcl[73].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[73].vfcl[73].vfal" 1;
	setAttr ".vclr[74].vxal" 1;
	setAttr -s 4 ".vclr[74].vfcl";
	setAttr ".vclr[74].vfcl[53].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[74].vfcl[53].vfal" 1;
	setAttr ".vclr[74].vfcl[54].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[74].vfcl[54].vfal" 1;
	setAttr ".vclr[74].vfcl[73].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[74].vfcl[73].vfal" 1;
	setAttr ".vclr[74].vfcl[74].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[74].vfcl[74].vfal" 1;
	setAttr ".vclr[75].vxal" 1;
	setAttr -s 4 ".vclr[75].vfcl";
	setAttr ".vclr[75].vfcl[54].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[75].vfcl[54].vfal" 1;
	setAttr ".vclr[75].vfcl[55].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[75].vfcl[55].vfal" 1;
	setAttr ".vclr[75].vfcl[74].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[75].vfcl[74].vfal" 1;
	setAttr ".vclr[75].vfcl[75].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[75].vfcl[75].vfal" 1;
	setAttr ".vclr[76].vxal" 1;
	setAttr -s 4 ".vclr[76].vfcl";
	setAttr ".vclr[76].vfcl[55].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[76].vfcl[55].vfal" 1;
	setAttr ".vclr[76].vfcl[56].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[76].vfcl[56].vfal" 1;
	setAttr ".vclr[76].vfcl[75].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[76].vfcl[75].vfal" 1;
	setAttr ".vclr[76].vfcl[76].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[76].vfcl[76].vfal" 1;
	setAttr ".vclr[77].vxal" 1;
	setAttr -s 4 ".vclr[77].vfcl";
	setAttr ".vclr[77].vfcl[56].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[77].vfcl[56].vfal" 1;
	setAttr ".vclr[77].vfcl[57].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[77].vfcl[57].vfal" 1;
	setAttr ".vclr[77].vfcl[76].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[77].vfcl[76].vfal" 1;
	setAttr ".vclr[77].vfcl[77].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[77].vfcl[77].vfal" 1;
	setAttr ".vclr[78].vxal" 1;
	setAttr -s 4 ".vclr[78].vfcl";
	setAttr ".vclr[78].vfcl[57].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[78].vfcl[57].vfal" 1;
	setAttr ".vclr[78].vfcl[58].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[78].vfcl[58].vfal" 1;
	setAttr ".vclr[78].vfcl[77].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[78].vfcl[77].vfal" 1;
	setAttr ".vclr[78].vfcl[78].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[78].vfcl[78].vfal" 1;
	setAttr ".vclr[79].vxal" 1;
	setAttr -s 4 ".vclr[79].vfcl";
	setAttr ".vclr[79].vfcl[58].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[79].vfcl[58].vfal" 1;
	setAttr ".vclr[79].vfcl[59].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[79].vfcl[59].vfal" 1;
	setAttr ".vclr[79].vfcl[78].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[79].vfcl[78].vfal" 1;
	setAttr ".vclr[79].vfcl[79].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[79].vfcl[79].vfal" 1;
	setAttr ".vclr[80].vxal" 1;
	setAttr -s 4 ".vclr[80].vfcl";
	setAttr ".vclr[80].vfcl[60].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[80].vfcl[60].vfal" 1;
	setAttr ".vclr[80].vfcl[79].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[80].vfcl[79].vfal" 1;
	setAttr ".vclr[80].vfcl[80].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[80].vfcl[80].vfal" 1;
	setAttr ".vclr[80].vfcl[99].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[80].vfcl[99].vfal" 1;
	setAttr ".vclr[81].vxal" 1;
	setAttr -s 4 ".vclr[81].vfcl";
	setAttr ".vclr[81].vfcl[60].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[81].vfcl[60].vfal" 1;
	setAttr ".vclr[81].vfcl[61].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[81].vfcl[61].vfal" 1;
	setAttr ".vclr[81].vfcl[80].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[81].vfcl[80].vfal" 1;
	setAttr ".vclr[81].vfcl[81].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[81].vfcl[81].vfal" 1;
	setAttr ".vclr[82].vxal" 1;
	setAttr -s 4 ".vclr[82].vfcl";
	setAttr ".vclr[82].vfcl[61].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[82].vfcl[61].vfal" 1;
	setAttr ".vclr[82].vfcl[62].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[82].vfcl[62].vfal" 1;
	setAttr ".vclr[82].vfcl[81].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[82].vfcl[81].vfal" 1;
	setAttr ".vclr[82].vfcl[82].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[82].vfcl[82].vfal" 1;
	setAttr ".vclr[83].vxal" 1;
	setAttr -s 4 ".vclr[83].vfcl";
	setAttr ".vclr[83].vfcl[62].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[83].vfcl[62].vfal" 1;
	setAttr ".vclr[83].vfcl[63].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[83].vfcl[63].vfal" 1;
	setAttr ".vclr[83].vfcl[82].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[83].vfcl[82].vfal" 1;
	setAttr ".vclr[83].vfcl[83].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[83].vfcl[83].vfal" 1;
	setAttr ".vclr[84].vxal" 1;
	setAttr -s 4 ".vclr[84].vfcl";
	setAttr ".vclr[84].vfcl[63].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[63].vfal" 1;
	setAttr ".vclr[84].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[64].vfal" 1;
	setAttr ".vclr[84].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[83].vfal" 1;
	setAttr ".vclr[84].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[84].vfal" 1;
	setAttr ".vclr[85].vxal" 1;
	setAttr -s 4 ".vclr[85].vfcl";
	setAttr ".vclr[85].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[64].vfal" 1;
	setAttr ".vclr[85].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[65].vfal" 1;
	setAttr ".vclr[85].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[84].vfal" 1;
	setAttr ".vclr[85].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[85].vfal" 1;
	setAttr ".vclr[86].vxal" 1;
	setAttr -s 4 ".vclr[86].vfcl";
	setAttr ".vclr[86].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[65].vfal" 1;
	setAttr ".vclr[86].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[66].vfal" 1;
	setAttr ".vclr[86].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[85].vfal" 1;
	setAttr ".vclr[86].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[86].vfal" 1;
	setAttr ".vclr[87].vxal" 1;
	setAttr -s 4 ".vclr[87].vfcl";
	setAttr ".vclr[87].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[66].vfal" 1;
	setAttr ".vclr[87].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[67].vfal" 1;
	setAttr ".vclr[87].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[86].vfal" 1;
	setAttr ".vclr[87].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[87].vfal" 1;
	setAttr ".vclr[88].vxal" 1;
	setAttr -s 4 ".vclr[88].vfcl";
	setAttr ".vclr[88].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[67].vfal" 1;
	setAttr ".vclr[88].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[68].vfal" 1;
	setAttr ".vclr[88].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[87].vfal" 1;
	setAttr ".vclr[88].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[88].vfal" 1;
	setAttr ".vclr[89].vxal" 1;
	setAttr -s 4 ".vclr[89].vfcl";
	setAttr ".vclr[89].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[68].vfal" 1;
	setAttr ".vclr[89].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[69].vfal" 1;
	setAttr ".vclr[89].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[88].vfal" 1;
	setAttr ".vclr[89].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[89].vfal" 1;
	setAttr ".vclr[90].vxal" 1;
	setAttr -s 4 ".vclr[90].vfcl";
	setAttr ".vclr[90].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[69].vfal" 1;
	setAttr ".vclr[90].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[70].vfal" 1;
	setAttr ".vclr[90].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[89].vfal" 1;
	setAttr ".vclr[90].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[90].vfal" 1;
	setAttr ".vclr[91].vxal" 1;
	setAttr -s 4 ".vclr[91].vfcl";
	setAttr ".vclr[91].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[70].vfal" 1;
	setAttr ".vclr[91].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[71].vfal" 1;
	setAttr ".vclr[91].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[90].vfal" 1;
	setAttr ".vclr[91].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[91].vfal" 1;
	setAttr ".vclr[92].vxal" 1;
	setAttr -s 4 ".vclr[92].vfcl";
	setAttr ".vclr[92].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[71].vfal" 1;
	setAttr ".vclr[92].vfcl[72].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[72].vfal" 1;
	setAttr ".vclr[92].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[91].vfal" 1;
	setAttr ".vclr[92].vfcl[92].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[92].vfal" 1;
	setAttr ".vclr[93].vxal" 1;
	setAttr -s 4 ".vclr[93].vfcl";
	setAttr ".vclr[93].vfcl[72].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[93].vfcl[72].vfal" 1;
	setAttr ".vclr[93].vfcl[73].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[93].vfcl[73].vfal" 1;
	setAttr ".vclr[93].vfcl[92].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[93].vfcl[92].vfal" 1;
	setAttr ".vclr[93].vfcl[93].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[93].vfcl[93].vfal" 1;
	setAttr ".vclr[94].vxal" 1;
	setAttr -s 4 ".vclr[94].vfcl";
	setAttr ".vclr[94].vfcl[73].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[94].vfcl[73].vfal" 1;
	setAttr ".vclr[94].vfcl[74].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[94].vfcl[74].vfal" 1;
	setAttr ".vclr[94].vfcl[93].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[94].vfcl[93].vfal" 1;
	setAttr ".vclr[94].vfcl[94].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[94].vfcl[94].vfal" 1;
	setAttr ".vclr[95].vxal" 1;
	setAttr -s 4 ".vclr[95].vfcl";
	setAttr ".vclr[95].vfcl[74].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[95].vfcl[74].vfal" 1;
	setAttr ".vclr[95].vfcl[75].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[95].vfcl[75].vfal" 1;
	setAttr ".vclr[95].vfcl[94].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[95].vfcl[94].vfal" 1;
	setAttr ".vclr[95].vfcl[95].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[95].vfcl[95].vfal" 1;
	setAttr ".vclr[96].vxal" 1;
	setAttr -s 4 ".vclr[96].vfcl";
	setAttr ".vclr[96].vfcl[75].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[96].vfcl[75].vfal" 1;
	setAttr ".vclr[96].vfcl[76].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[96].vfcl[76].vfal" 1;
	setAttr ".vclr[96].vfcl[95].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[96].vfcl[95].vfal" 1;
	setAttr ".vclr[96].vfcl[96].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[96].vfcl[96].vfal" 1;
	setAttr ".vclr[97].vxal" 1;
	setAttr -s 4 ".vclr[97].vfcl";
	setAttr ".vclr[97].vfcl[76].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[97].vfcl[76].vfal" 1;
	setAttr ".vclr[97].vfcl[77].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[97].vfcl[77].vfal" 1;
	setAttr ".vclr[97].vfcl[96].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[97].vfcl[96].vfal" 1;
	setAttr ".vclr[97].vfcl[97].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[97].vfcl[97].vfal" 1;
	setAttr ".vclr[98].vxal" 1;
	setAttr -s 4 ".vclr[98].vfcl";
	setAttr ".vclr[98].vfcl[77].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[98].vfcl[77].vfal" 1;
	setAttr ".vclr[98].vfcl[78].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[98].vfcl[78].vfal" 1;
	setAttr ".vclr[98].vfcl[97].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[98].vfcl[97].vfal" 1;
	setAttr ".vclr[98].vfcl[98].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[98].vfcl[98].vfal" 1;
	setAttr ".vclr[99].vxal" 1;
	setAttr -s 4 ".vclr[99].vfcl";
	setAttr ".vclr[99].vfcl[78].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[99].vfcl[78].vfal" 1;
	setAttr ".vclr[99].vfcl[79].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[99].vfcl[79].vfal" 1;
	setAttr ".vclr[99].vfcl[98].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[99].vfcl[98].vfal" 1;
	setAttr ".vclr[99].vfcl[99].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[99].vfcl[99].vfal" 1;
	setAttr ".vclr[100].vxal" 1;
	setAttr -s 4 ".vclr[100].vfcl";
	setAttr ".vclr[100].vfcl[80].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[100].vfcl[80].vfal" 1;
	setAttr ".vclr[100].vfcl[99].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[100].vfcl[99].vfal" 1;
	setAttr ".vclr[100].vfcl[100].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[100].vfcl[100].vfal" 1;
	setAttr ".vclr[100].vfcl[119].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[100].vfcl[119].vfal" 1;
	setAttr ".vclr[101].vxal" 1;
	setAttr -s 4 ".vclr[101].vfcl";
	setAttr ".vclr[101].vfcl[80].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[101].vfcl[80].vfal" 1;
	setAttr ".vclr[101].vfcl[81].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[101].vfcl[81].vfal" 1;
	setAttr ".vclr[101].vfcl[100].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[101].vfcl[100].vfal" 1;
	setAttr ".vclr[101].vfcl[101].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[101].vfcl[101].vfal" 1;
	setAttr ".vclr[102].vxal" 1;
	setAttr -s 4 ".vclr[102].vfcl";
	setAttr ".vclr[102].vfcl[81].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[102].vfcl[81].vfal" 1;
	setAttr ".vclr[102].vfcl[82].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[102].vfcl[82].vfal" 1;
	setAttr ".vclr[102].vfcl[101].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[102].vfcl[101].vfal" 1;
	setAttr ".vclr[102].vfcl[102].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[102].vfcl[102].vfal" 1;
	setAttr ".vclr[103].vxal" 1;
	setAttr -s 4 ".vclr[103].vfcl";
	setAttr ".vclr[103].vfcl[82].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[82].vfal" 1;
	setAttr ".vclr[103].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[83].vfal" 1;
	setAttr ".vclr[103].vfcl[102].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[102].vfal" 1;
	setAttr ".vclr[103].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[103].vfal" 1;
	setAttr ".vclr[104].vxal" 1;
	setAttr -s 4 ".vclr[104].vfcl";
	setAttr ".vclr[104].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[83].vfal" 1;
	setAttr ".vclr[104].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[84].vfal" 1;
	setAttr ".vclr[104].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[103].vfal" 1;
	setAttr ".vclr[104].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[104].vfal" 1;
	setAttr ".vclr[105].vxal" 1;
	setAttr -s 4 ".vclr[105].vfcl";
	setAttr ".vclr[105].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[84].vfal" 1;
	setAttr ".vclr[105].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[85].vfal" 1;
	setAttr ".vclr[105].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[104].vfal" 1;
	setAttr ".vclr[105].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[105].vfal" 1;
	setAttr ".vclr[106].vxal" 1;
	setAttr -s 4 ".vclr[106].vfcl";
	setAttr ".vclr[106].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[85].vfal" 1;
	setAttr ".vclr[106].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[86].vfal" 1;
	setAttr ".vclr[106].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[105].vfal" 1;
	setAttr ".vclr[106].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[106].vfal" 1;
	setAttr ".vclr[107].vxal" 1;
	setAttr -s 4 ".vclr[107].vfcl";
	setAttr ".vclr[107].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[86].vfal" 1;
	setAttr ".vclr[107].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[87].vfal" 1;
	setAttr ".vclr[107].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[106].vfal" 1;
	setAttr ".vclr[107].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[107].vfal" 1;
	setAttr ".vclr[108].vxal" 1;
	setAttr -s 4 ".vclr[108].vfcl";
	setAttr ".vclr[108].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[87].vfal" 1;
	setAttr ".vclr[108].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[88].vfal" 1;
	setAttr ".vclr[108].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[107].vfal" 1;
	setAttr ".vclr[108].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[108].vfal" 1;
	setAttr ".vclr[109].vxal" 1;
	setAttr -s 4 ".vclr[109].vfcl";
	setAttr ".vclr[109].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[88].vfal" 1;
	setAttr ".vclr[109].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[89].vfal" 1;
	setAttr ".vclr[109].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[108].vfal" 1;
	setAttr ".vclr[109].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[109].vfal" 1;
	setAttr ".vclr[110].vxal" 1;
	setAttr -s 4 ".vclr[110].vfcl";
	setAttr ".vclr[110].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[89].vfal" 1;
	setAttr ".vclr[110].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[90].vfal" 1;
	setAttr ".vclr[110].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[109].vfal" 1;
	setAttr ".vclr[110].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[110].vfal" 1;
	setAttr ".vclr[111].vxal" 1;
	setAttr -s 4 ".vclr[111].vfcl";
	setAttr ".vclr[111].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[90].vfal" 1;
	setAttr ".vclr[111].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[91].vfal" 1;
	setAttr ".vclr[111].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[110].vfal" 1;
	setAttr ".vclr[111].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[111].vfal" 1;
	setAttr ".vclr[112].vxal" 1;
	setAttr -s 4 ".vclr[112].vfcl";
	setAttr ".vclr[112].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[91].vfal" 1;
	setAttr ".vclr[112].vfcl[92].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[92].vfal" 1;
	setAttr ".vclr[112].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[111].vfal" 1;
	setAttr ".vclr[112].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[112].vfal" 1;
	setAttr ".vclr[113].vxal" 1;
	setAttr -s 4 ".vclr[113].vfcl";
	setAttr ".vclr[113].vfcl[92].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[113].vfcl[92].vfal" 1;
	setAttr ".vclr[113].vfcl[93].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[113].vfcl[93].vfal" 1;
	setAttr ".vclr[113].vfcl[112].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[113].vfcl[112].vfal" 1;
	setAttr ".vclr[113].vfcl[113].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[113].vfcl[113].vfal" 1;
	setAttr ".vclr[114].vxal" 1;
	setAttr -s 4 ".vclr[114].vfcl";
	setAttr ".vclr[114].vfcl[93].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[114].vfcl[93].vfal" 1;
	setAttr ".vclr[114].vfcl[94].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[114].vfcl[94].vfal" 1;
	setAttr ".vclr[114].vfcl[113].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[114].vfcl[113].vfal" 1;
	setAttr ".vclr[114].vfcl[114].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[114].vfcl[114].vfal" 1;
	setAttr ".vclr[115].vxal" 1;
	setAttr -s 4 ".vclr[115].vfcl";
	setAttr ".vclr[115].vfcl[94].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[115].vfcl[94].vfal" 1;
	setAttr ".vclr[115].vfcl[95].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[115].vfcl[95].vfal" 1;
	setAttr ".vclr[115].vfcl[114].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[115].vfcl[114].vfal" 1;
	setAttr ".vclr[115].vfcl[115].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[115].vfcl[115].vfal" 1;
	setAttr ".vclr[116].vxal" 1;
	setAttr -s 4 ".vclr[116].vfcl";
	setAttr ".vclr[116].vfcl[95].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[116].vfcl[95].vfal" 1;
	setAttr ".vclr[116].vfcl[96].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[116].vfcl[96].vfal" 1;
	setAttr ".vclr[116].vfcl[115].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[116].vfcl[115].vfal" 1;
	setAttr ".vclr[116].vfcl[116].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[116].vfcl[116].vfal" 1;
	setAttr ".vclr[117].vxal" 1;
	setAttr -s 4 ".vclr[117].vfcl";
	setAttr ".vclr[117].vfcl[96].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[117].vfcl[96].vfal" 1;
	setAttr ".vclr[117].vfcl[97].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[117].vfcl[97].vfal" 1;
	setAttr ".vclr[117].vfcl[116].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[117].vfcl[116].vfal" 1;
	setAttr ".vclr[117].vfcl[117].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[117].vfcl[117].vfal" 1;
	setAttr ".vclr[118].vxal" 1;
	setAttr -s 4 ".vclr[118].vfcl";
	setAttr ".vclr[118].vfcl[97].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[118].vfcl[97].vfal" 1;
	setAttr ".vclr[118].vfcl[98].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[118].vfcl[98].vfal" 1;
	setAttr ".vclr[118].vfcl[117].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[118].vfcl[117].vfal" 1;
	setAttr ".vclr[118].vfcl[118].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[118].vfcl[118].vfal" 1;
	setAttr ".vclr[119].vxal" 1;
	setAttr -s 4 ".vclr[119].vfcl";
	setAttr ".vclr[119].vfcl[98].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[119].vfcl[98].vfal" 1;
	setAttr ".vclr[119].vfcl[99].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[119].vfcl[99].vfal" 1;
	setAttr ".vclr[119].vfcl[118].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[119].vfcl[118].vfal" 1;
	setAttr ".vclr[119].vfcl[119].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[119].vfcl[119].vfal" 1;
	setAttr ".vclr[120].vxal" 1;
	setAttr -s 4 ".vclr[120].vfcl";
	setAttr ".vclr[120].vfcl[100].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[120].vfcl[100].vfal" 1;
	setAttr ".vclr[120].vfcl[119].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[120].vfcl[119].vfal" 1;
	setAttr ".vclr[120].vfcl[120].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[120].vfcl[120].vfal" 1;
	setAttr ".vclr[120].vfcl[139].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[120].vfcl[139].vfal" 1;
	setAttr ".vclr[121].vxal" 1;
	setAttr -s 4 ".vclr[121].vfcl";
	setAttr ".vclr[121].vfcl[100].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[121].vfcl[100].vfal" 1;
	setAttr ".vclr[121].vfcl[101].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[121].vfcl[101].vfal" 1;
	setAttr ".vclr[121].vfcl[120].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[121].vfcl[120].vfal" 1;
	setAttr ".vclr[121].vfcl[121].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[121].vfcl[121].vfal" 1;
	setAttr ".vclr[122].vxal" 1;
	setAttr -s 4 ".vclr[122].vfcl";
	setAttr ".vclr[122].vfcl[101].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[122].vfcl[101].vfal" 1;
	setAttr ".vclr[122].vfcl[102].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[122].vfcl[102].vfal" 1;
	setAttr ".vclr[122].vfcl[121].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[122].vfcl[121].vfal" 1;
	setAttr ".vclr[122].vfcl[122].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[122].vfcl[122].vfal" 1;
	setAttr ".vclr[123].vxal" 1;
	setAttr -s 4 ".vclr[123].vfcl";
	setAttr ".vclr[123].vfcl[102].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[102].vfal" 1;
	setAttr ".vclr[123].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[103].vfal" 1;
	setAttr ".vclr[123].vfcl[122].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[122].vfal" 1;
	setAttr ".vclr[123].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[123].vfal" 1;
	setAttr ".vclr[124].vxal" 1;
	setAttr -s 4 ".vclr[124].vfcl";
	setAttr ".vclr[124].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[103].vfal" 1;
	setAttr ".vclr[124].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[104].vfal" 1;
	setAttr ".vclr[124].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[123].vfal" 1;
	setAttr ".vclr[124].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[124].vfal" 1;
	setAttr ".vclr[125].vxal" 1;
	setAttr -s 4 ".vclr[125].vfcl";
	setAttr ".vclr[125].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[104].vfal" 1;
	setAttr ".vclr[125].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[105].vfal" 1;
	setAttr ".vclr[125].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[124].vfal" 1;
	setAttr ".vclr[125].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[125].vfal" 1;
	setAttr ".vclr[126].vxal" 1;
	setAttr -s 4 ".vclr[126].vfcl";
	setAttr ".vclr[126].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[105].vfal" 1;
	setAttr ".vclr[126].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[106].vfal" 1;
	setAttr ".vclr[126].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[125].vfal" 1;
	setAttr ".vclr[126].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[126].vfal" 1;
	setAttr ".vclr[127].vxal" 1;
	setAttr -s 4 ".vclr[127].vfcl";
	setAttr ".vclr[127].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[106].vfal" 1;
	setAttr ".vclr[127].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[107].vfal" 1;
	setAttr ".vclr[127].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[126].vfal" 1;
	setAttr ".vclr[127].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[127].vfal" 1;
	setAttr ".vclr[128].vxal" 1;
	setAttr -s 4 ".vclr[128].vfcl";
	setAttr ".vclr[128].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[107].vfal" 1;
	setAttr ".vclr[128].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[108].vfal" 1;
	setAttr ".vclr[128].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[127].vfal" 1;
	setAttr ".vclr[128].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[128].vfal" 1;
	setAttr ".vclr[129].vxal" 1;
	setAttr -s 4 ".vclr[129].vfcl";
	setAttr ".vclr[129].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[108].vfal" 1;
	setAttr ".vclr[129].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[109].vfal" 1;
	setAttr ".vclr[129].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[128].vfal" 1;
	setAttr ".vclr[129].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[129].vfal" 1;
	setAttr ".vclr[130].vxal" 1;
	setAttr -s 4 ".vclr[130].vfcl";
	setAttr ".vclr[130].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[109].vfal" 1;
	setAttr ".vclr[130].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[110].vfal" 1;
	setAttr ".vclr[130].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[129].vfal" 1;
	setAttr ".vclr[130].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[130].vfal" 1;
	setAttr ".vclr[131].vxal" 1;
	setAttr -s 4 ".vclr[131].vfcl";
	setAttr ".vclr[131].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[110].vfal" 1;
	setAttr ".vclr[131].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[111].vfal" 1;
	setAttr ".vclr[131].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[130].vfal" 1;
	setAttr ".vclr[131].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[131].vfal" 1;
	setAttr ".vclr[132].vxal" 1;
	setAttr -s 4 ".vclr[132].vfcl";
	setAttr ".vclr[132].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[111].vfal" 1;
	setAttr ".vclr[132].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[112].vfal" 1;
	setAttr ".vclr[132].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[131].vfal" 1;
	setAttr ".vclr[132].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[132].vfal" 1;
	setAttr ".vclr[133].vxal" 1;
	setAttr -s 4 ".vclr[133].vfcl";
	setAttr ".vclr[133].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[112].vfal" 1;
	setAttr ".vclr[133].vfcl[113].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[113].vfal" 1;
	setAttr ".vclr[133].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[132].vfal" 1;
	setAttr ".vclr[133].vfcl[133].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[133].vfal" 1;
	setAttr ".vclr[134].vxal" 1;
	setAttr -s 4 ".vclr[134].vfcl";
	setAttr ".vclr[134].vfcl[113].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[134].vfcl[113].vfal" 1;
	setAttr ".vclr[134].vfcl[114].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[134].vfcl[114].vfal" 1;
	setAttr ".vclr[134].vfcl[133].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[134].vfcl[133].vfal" 1;
	setAttr ".vclr[134].vfcl[134].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[134].vfcl[134].vfal" 1;
	setAttr ".vclr[135].vxal" 1;
	setAttr -s 4 ".vclr[135].vfcl";
	setAttr ".vclr[135].vfcl[114].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[135].vfcl[114].vfal" 1;
	setAttr ".vclr[135].vfcl[115].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[135].vfcl[115].vfal" 1;
	setAttr ".vclr[135].vfcl[134].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[135].vfcl[134].vfal" 1;
	setAttr ".vclr[135].vfcl[135].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[135].vfcl[135].vfal" 1;
	setAttr ".vclr[136].vxal" 1;
	setAttr -s 4 ".vclr[136].vfcl";
	setAttr ".vclr[136].vfcl[115].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[136].vfcl[115].vfal" 1;
	setAttr ".vclr[136].vfcl[116].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[136].vfcl[116].vfal" 1;
	setAttr ".vclr[136].vfcl[135].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[136].vfcl[135].vfal" 1;
	setAttr ".vclr[136].vfcl[136].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[136].vfcl[136].vfal" 1;
	setAttr ".vclr[137].vxal" 1;
	setAttr -s 4 ".vclr[137].vfcl";
	setAttr ".vclr[137].vfcl[116].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[137].vfcl[116].vfal" 1;
	setAttr ".vclr[137].vfcl[117].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[137].vfcl[117].vfal" 1;
	setAttr ".vclr[137].vfcl[136].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[137].vfcl[136].vfal" 1;
	setAttr ".vclr[137].vfcl[137].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[137].vfcl[137].vfal" 1;
	setAttr ".vclr[138].vxal" 1;
	setAttr -s 4 ".vclr[138].vfcl";
	setAttr ".vclr[138].vfcl[117].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[138].vfcl[117].vfal" 1;
	setAttr ".vclr[138].vfcl[118].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[138].vfcl[118].vfal" 1;
	setAttr ".vclr[138].vfcl[137].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[138].vfcl[137].vfal" 1;
	setAttr ".vclr[138].vfcl[138].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[138].vfcl[138].vfal" 1;
	setAttr ".vclr[139].vxal" 1;
	setAttr -s 4 ".vclr[139].vfcl";
	setAttr ".vclr[139].vfcl[118].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[139].vfcl[118].vfal" 1;
	setAttr ".vclr[139].vfcl[119].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[139].vfcl[119].vfal" 1;
	setAttr ".vclr[139].vfcl[138].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[139].vfcl[138].vfal" 1;
	setAttr ".vclr[139].vfcl[139].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[139].vfcl[139].vfal" 1;
	setAttr ".vclr[140].vxal" 1;
	setAttr -s 4 ".vclr[140].vfcl";
	setAttr ".vclr[140].vfcl[120].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[140].vfcl[120].vfal" 1;
	setAttr ".vclr[140].vfcl[139].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[140].vfcl[139].vfal" 1;
	setAttr ".vclr[140].vfcl[140].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[140].vfcl[140].vfal" 1;
	setAttr ".vclr[140].vfcl[159].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[140].vfcl[159].vfal" 1;
	setAttr ".vclr[141].vxal" 1;
	setAttr -s 4 ".vclr[141].vfcl";
	setAttr ".vclr[141].vfcl[120].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[141].vfcl[120].vfal" 1;
	setAttr ".vclr[141].vfcl[121].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[141].vfcl[121].vfal" 1;
	setAttr ".vclr[141].vfcl[140].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[141].vfcl[140].vfal" 1;
	setAttr ".vclr[141].vfcl[141].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[141].vfcl[141].vfal" 1;
	setAttr ".vclr[142].vxal" 1;
	setAttr -s 4 ".vclr[142].vfcl";
	setAttr ".vclr[142].vfcl[121].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[142].vfcl[121].vfal" 1;
	setAttr ".vclr[142].vfcl[122].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[142].vfcl[122].vfal" 1;
	setAttr ".vclr[142].vfcl[141].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[142].vfcl[141].vfal" 1;
	setAttr ".vclr[142].vfcl[142].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[142].vfcl[142].vfal" 1;
	setAttr ".vclr[143].vxal" 1;
	setAttr -s 4 ".vclr[143].vfcl";
	setAttr ".vclr[143].vfcl[122].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[122].vfal" 1;
	setAttr ".vclr[143].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[123].vfal" 1;
	setAttr ".vclr[143].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[142].vfal" 1;
	setAttr ".vclr[143].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[143].vfal" 1;
	setAttr ".vclr[144].vxal" 1;
	setAttr -s 4 ".vclr[144].vfcl";
	setAttr ".vclr[144].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[123].vfal" 1;
	setAttr ".vclr[144].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[124].vfal" 1;
	setAttr ".vclr[144].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[143].vfal" 1;
	setAttr ".vclr[144].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[144].vfal" 1;
	setAttr ".vclr[145].vxal" 1;
	setAttr -s 4 ".vclr[145].vfcl";
	setAttr ".vclr[145].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[124].vfal" 1;
	setAttr ".vclr[145].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[125].vfal" 1;
	setAttr ".vclr[145].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[144].vfal" 1;
	setAttr ".vclr[145].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[145].vfal" 1;
	setAttr ".vclr[146].vxal" 1;
	setAttr -s 4 ".vclr[146].vfcl";
	setAttr ".vclr[146].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[125].vfal" 1;
	setAttr ".vclr[146].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[126].vfal" 1;
	setAttr ".vclr[146].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[145].vfal" 1;
	setAttr ".vclr[146].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[146].vfal" 1;
	setAttr ".vclr[147].vxal" 1;
	setAttr -s 4 ".vclr[147].vfcl";
	setAttr ".vclr[147].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[126].vfal" 1;
	setAttr ".vclr[147].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[127].vfal" 1;
	setAttr ".vclr[147].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[146].vfal" 1;
	setAttr ".vclr[147].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[147].vfal" 1;
	setAttr ".vclr[148].vxal" 1;
	setAttr -s 4 ".vclr[148].vfcl";
	setAttr ".vclr[148].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[127].vfal" 1;
	setAttr ".vclr[148].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[128].vfal" 1;
	setAttr ".vclr[148].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[147].vfal" 1;
	setAttr ".vclr[148].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[148].vfal" 1;
	setAttr ".vclr[149].vxal" 1;
	setAttr -s 4 ".vclr[149].vfcl";
	setAttr ".vclr[149].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[128].vfal" 1;
	setAttr ".vclr[149].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[129].vfal" 1;
	setAttr ".vclr[149].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[148].vfal" 1;
	setAttr ".vclr[149].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[149].vfal" 1;
	setAttr ".vclr[150].vxal" 1;
	setAttr -s 4 ".vclr[150].vfcl";
	setAttr ".vclr[150].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[129].vfal" 1;
	setAttr ".vclr[150].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[130].vfal" 1;
	setAttr ".vclr[150].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[149].vfal" 1;
	setAttr ".vclr[150].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[150].vfal" 1;
	setAttr ".vclr[151].vxal" 1;
	setAttr -s 4 ".vclr[151].vfcl";
	setAttr ".vclr[151].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[130].vfal" 1;
	setAttr ".vclr[151].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[131].vfal" 1;
	setAttr ".vclr[151].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[150].vfal" 1;
	setAttr ".vclr[151].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[151].vfal" 1;
	setAttr ".vclr[152].vxal" 1;
	setAttr -s 4 ".vclr[152].vfcl";
	setAttr ".vclr[152].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[131].vfal" 1;
	setAttr ".vclr[152].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[132].vfal" 1;
	setAttr ".vclr[152].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[151].vfal" 1;
	setAttr ".vclr[152].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[152].vfal" 1;
	setAttr ".vclr[153].vxal" 1;
	setAttr -s 4 ".vclr[153].vfcl";
	setAttr ".vclr[153].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[132].vfal" 1;
	setAttr ".vclr[153].vfcl[133].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[133].vfal" 1;
	setAttr ".vclr[153].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[152].vfal" 1;
	setAttr ".vclr[153].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[153].vfal" 1;
	setAttr ".vclr[154].vxal" 1;
	setAttr -s 4 ".vclr[154].vfcl";
	setAttr ".vclr[154].vfcl[133].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[154].vfcl[133].vfal" 1;
	setAttr ".vclr[154].vfcl[134].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[154].vfcl[134].vfal" 1;
	setAttr ".vclr[154].vfcl[153].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[154].vfcl[153].vfal" 1;
	setAttr ".vclr[154].vfcl[154].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[154].vfcl[154].vfal" 1;
	setAttr ".vclr[155].vxal" 1;
	setAttr -s 4 ".vclr[155].vfcl";
	setAttr ".vclr[155].vfcl[134].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[155].vfcl[134].vfal" 1;
	setAttr ".vclr[155].vfcl[135].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[155].vfcl[135].vfal" 1;
	setAttr ".vclr[155].vfcl[154].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[155].vfcl[154].vfal" 1;
	setAttr ".vclr[155].vfcl[155].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[155].vfcl[155].vfal" 1;
	setAttr ".vclr[156].vxal" 1;
	setAttr -s 4 ".vclr[156].vfcl";
	setAttr ".vclr[156].vfcl[135].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[156].vfcl[135].vfal" 1;
	setAttr ".vclr[156].vfcl[136].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[156].vfcl[136].vfal" 1;
	setAttr ".vclr[156].vfcl[155].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[156].vfcl[155].vfal" 1;
	setAttr ".vclr[156].vfcl[156].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[156].vfcl[156].vfal" 1;
	setAttr ".vclr[157].vxal" 1;
	setAttr -s 4 ".vclr[157].vfcl";
	setAttr ".vclr[157].vfcl[136].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[157].vfcl[136].vfal" 1;
	setAttr ".vclr[157].vfcl[137].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[157].vfcl[137].vfal" 1;
	setAttr ".vclr[157].vfcl[156].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[157].vfcl[156].vfal" 1;
	setAttr ".vclr[157].vfcl[157].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[157].vfcl[157].vfal" 1;
	setAttr ".vclr[158].vxal" 1;
	setAttr -s 4 ".vclr[158].vfcl";
	setAttr ".vclr[158].vfcl[137].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[158].vfcl[137].vfal" 1;
	setAttr ".vclr[158].vfcl[138].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[158].vfcl[138].vfal" 1;
	setAttr ".vclr[158].vfcl[157].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[158].vfcl[157].vfal" 1;
	setAttr ".vclr[158].vfcl[158].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[158].vfcl[158].vfal" 1;
	setAttr ".vclr[159].vxal" 1;
	setAttr -s 4 ".vclr[159].vfcl";
	setAttr ".vclr[159].vfcl[138].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[159].vfcl[138].vfal" 1;
	setAttr ".vclr[159].vfcl[139].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[159].vfcl[139].vfal" 1;
	setAttr ".vclr[159].vfcl[158].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[159].vfcl[158].vfal" 1;
	setAttr ".vclr[159].vfcl[159].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[159].vfcl[159].vfal" 1;
	setAttr ".vclr[160].vxal" 1;
	setAttr -s 4 ".vclr[160].vfcl";
	setAttr ".vclr[160].vfcl[140].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[160].vfcl[140].vfal" 1;
	setAttr ".vclr[160].vfcl[159].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[160].vfcl[159].vfal" 1;
	setAttr ".vclr[160].vfcl[160].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[160].vfcl[160].vfal" 1;
	setAttr ".vclr[160].vfcl[179].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[160].vfcl[179].vfal" 1;
	setAttr ".vclr[161].vxal" 1;
	setAttr -s 4 ".vclr[161].vfcl";
	setAttr ".vclr[161].vfcl[140].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[161].vfcl[140].vfal" 1;
	setAttr ".vclr[161].vfcl[141].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[161].vfcl[141].vfal" 1;
	setAttr ".vclr[161].vfcl[160].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[161].vfcl[160].vfal" 1;
	setAttr ".vclr[161].vfcl[161].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[161].vfcl[161].vfal" 1;
	setAttr ".vclr[162].vxal" 1;
	setAttr -s 4 ".vclr[162].vfcl";
	setAttr ".vclr[162].vfcl[141].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[141].vfal" 1;
	setAttr ".vclr[162].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[142].vfal" 1;
	setAttr ".vclr[162].vfcl[161].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[161].vfal" 1;
	setAttr ".vclr[162].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[162].vfal" 1;
	setAttr ".vclr[163].vxal" 1;
	setAttr -s 4 ".vclr[163].vfcl";
	setAttr ".vclr[163].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[142].vfal" 1;
	setAttr ".vclr[163].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[143].vfal" 1;
	setAttr ".vclr[163].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[162].vfal" 1;
	setAttr ".vclr[163].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[163].vfal" 1;
	setAttr ".vclr[164].vxal" 1;
	setAttr -s 4 ".vclr[164].vfcl";
	setAttr ".vclr[164].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[143].vfal" 1;
	setAttr ".vclr[164].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[144].vfal" 1;
	setAttr ".vclr[164].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[163].vfal" 1;
	setAttr ".vclr[164].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[164].vfal" 1;
	setAttr ".vclr[165].vxal" 1;
	setAttr -s 4 ".vclr[165].vfcl";
	setAttr ".vclr[165].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[144].vfal" 1;
	setAttr ".vclr[165].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[145].vfal" 1;
	setAttr ".vclr[165].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[164].vfal" 1;
	setAttr ".vclr[165].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[165].vfal" 1;
	setAttr ".vclr[166].vxal" 1;
	setAttr -s 4 ".vclr[166].vfcl";
	setAttr ".vclr[166].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[145].vfal" 1;
	setAttr ".vclr[166].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[146].vfal" 1;
	setAttr ".vclr[166].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[165].vfal" 1;
	setAttr ".vclr[166].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[166].vfal" 1;
	setAttr ".vclr[167].vxal" 1;
	setAttr -s 4 ".vclr[167].vfcl";
	setAttr ".vclr[167].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[146].vfal" 1;
	setAttr ".vclr[167].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[147].vfal" 1;
	setAttr ".vclr[167].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[166].vfal" 1;
	setAttr ".vclr[167].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[167].vfal" 1;
	setAttr ".vclr[168].vxal" 1;
	setAttr -s 4 ".vclr[168].vfcl";
	setAttr ".vclr[168].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[147].vfal" 1;
	setAttr ".vclr[168].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[148].vfal" 1;
	setAttr ".vclr[168].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[167].vfal" 1;
	setAttr ".vclr[168].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[168].vfal" 1;
	setAttr ".vclr[169].vxal" 1;
	setAttr -s 4 ".vclr[169].vfcl";
	setAttr ".vclr[169].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[148].vfal" 1;
	setAttr ".vclr[169].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[149].vfal" 1;
	setAttr ".vclr[169].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[168].vfal" 1;
	setAttr ".vclr[169].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[169].vfal" 1;
	setAttr ".vclr[170].vxal" 1;
	setAttr -s 4 ".vclr[170].vfcl";
	setAttr ".vclr[170].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[149].vfal" 1;
	setAttr ".vclr[170].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[150].vfal" 1;
	setAttr ".vclr[170].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[169].vfal" 1;
	setAttr ".vclr[170].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[170].vfal" 1;
	setAttr ".vclr[171].vxal" 1;
	setAttr -s 4 ".vclr[171].vfcl";
	setAttr ".vclr[171].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[150].vfal" 1;
	setAttr ".vclr[171].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[151].vfal" 1;
	setAttr ".vclr[171].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[170].vfal" 1;
	setAttr ".vclr[171].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[171].vfal" 1;
	setAttr ".vclr[172].vxal" 1;
	setAttr -s 4 ".vclr[172].vfcl";
	setAttr ".vclr[172].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[151].vfal" 1;
	setAttr ".vclr[172].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[152].vfal" 1;
	setAttr ".vclr[172].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[171].vfal" 1;
	setAttr ".vclr[172].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[172].vfal" 1;
	setAttr ".vclr[173].vxal" 1;
	setAttr -s 4 ".vclr[173].vfcl";
	setAttr ".vclr[173].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[152].vfal" 1;
	setAttr ".vclr[173].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[153].vfal" 1;
	setAttr ".vclr[173].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[172].vfal" 1;
	setAttr ".vclr[173].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[173].vfal" 1;
	setAttr ".vclr[174].vxal" 1;
	setAttr -s 4 ".vclr[174].vfcl";
	setAttr ".vclr[174].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[153].vfal" 1;
	setAttr ".vclr[174].vfcl[154].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[154].vfal" 1;
	setAttr ".vclr[174].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[173].vfal" 1;
	setAttr ".vclr[174].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[174].vfal" 1;
	setAttr ".vclr[175].vxal" 1;
	setAttr -s 4 ".vclr[175].vfcl";
	setAttr ".vclr[175].vfcl[154].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[175].vfcl[154].vfal" 1;
	setAttr ".vclr[175].vfcl[155].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[175].vfcl[155].vfal" 1;
	setAttr ".vclr[175].vfcl[174].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[175].vfcl[174].vfal" 1;
	setAttr ".vclr[175].vfcl[175].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[175].vfcl[175].vfal" 1;
	setAttr ".vclr[176].vxal" 1;
	setAttr -s 4 ".vclr[176].vfcl";
	setAttr ".vclr[176].vfcl[155].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[176].vfcl[155].vfal" 1;
	setAttr ".vclr[176].vfcl[156].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[176].vfcl[156].vfal" 1;
	setAttr ".vclr[176].vfcl[175].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[176].vfcl[175].vfal" 1;
	setAttr ".vclr[176].vfcl[176].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[176].vfcl[176].vfal" 1;
	setAttr ".vclr[177].vxal" 1;
	setAttr -s 4 ".vclr[177].vfcl";
	setAttr ".vclr[177].vfcl[156].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[177].vfcl[156].vfal" 1;
	setAttr ".vclr[177].vfcl[157].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[177].vfcl[157].vfal" 1;
	setAttr ".vclr[177].vfcl[176].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[177].vfcl[176].vfal" 1;
	setAttr ".vclr[177].vfcl[177].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[177].vfcl[177].vfal" 1;
	setAttr ".vclr[178].vxal" 1;
	setAttr -s 4 ".vclr[178].vfcl";
	setAttr ".vclr[178].vfcl[157].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[178].vfcl[157].vfal" 1;
	setAttr ".vclr[178].vfcl[158].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[178].vfcl[158].vfal" 1;
	setAttr ".vclr[178].vfcl[177].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[178].vfcl[177].vfal" 1;
	setAttr ".vclr[178].vfcl[178].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[178].vfcl[178].vfal" 1;
	setAttr ".vclr[179].vxal" 1;
	setAttr -s 4 ".vclr[179].vfcl";
	setAttr ".vclr[179].vfcl[158].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[179].vfcl[158].vfal" 1;
	setAttr ".vclr[179].vfcl[159].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[179].vfcl[159].vfal" 1;
	setAttr ".vclr[179].vfcl[178].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[179].vfcl[178].vfal" 1;
	setAttr ".vclr[179].vfcl[179].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[179].vfcl[179].vfal" 1;
	setAttr ".vclr[180].vxal" 1;
	setAttr -s 4 ".vclr[180].vfcl";
	setAttr ".vclr[180].vfcl[160].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[180].vfcl[160].vfal" 1;
	setAttr ".vclr[180].vfcl[179].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[180].vfcl[179].vfal" 1;
	setAttr ".vclr[180].vfcl[180].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[180].vfcl[180].vfal" 1;
	setAttr ".vclr[180].vfcl[199].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[180].vfcl[199].vfal" 1;
	setAttr ".vclr[181].vxal" 1;
	setAttr -s 4 ".vclr[181].vfcl";
	setAttr ".vclr[181].vfcl[160].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[181].vfcl[160].vfal" 1;
	setAttr ".vclr[181].vfcl[161].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[181].vfcl[161].vfal" 1;
	setAttr ".vclr[181].vfcl[180].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[181].vfcl[180].vfal" 1;
	setAttr ".vclr[181].vfcl[181].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[181].vfcl[181].vfal" 1;
	setAttr ".vclr[182].vxal" 1;
	setAttr -s 4 ".vclr[182].vfcl";
	setAttr ".vclr[182].vfcl[161].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[161].vfal" 1;
	setAttr ".vclr[182].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[162].vfal" 1;
	setAttr ".vclr[182].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[181].vfal" 1;
	setAttr ".vclr[182].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[182].vfal" 1;
	setAttr ".vclr[183].vxal" 1;
	setAttr -s 4 ".vclr[183].vfcl";
	setAttr ".vclr[183].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[162].vfal" 1;
	setAttr ".vclr[183].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[163].vfal" 1;
	setAttr ".vclr[183].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[182].vfal" 1;
	setAttr ".vclr[183].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[183].vfal" 1;
	setAttr ".vclr[184].vxal" 1;
	setAttr -s 4 ".vclr[184].vfcl";
	setAttr ".vclr[184].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[163].vfal" 1;
	setAttr ".vclr[184].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[164].vfal" 1;
	setAttr ".vclr[184].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[183].vfal" 1;
	setAttr ".vclr[184].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[184].vfal" 1;
	setAttr ".vclr[185].vxal" 1;
	setAttr -s 4 ".vclr[185].vfcl";
	setAttr ".vclr[185].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[164].vfal" 1;
	setAttr ".vclr[185].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[165].vfal" 1;
	setAttr ".vclr[185].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[184].vfal" 1;
	setAttr ".vclr[185].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[185].vfal" 1;
	setAttr ".vclr[186].vxal" 1;
	setAttr -s 4 ".vclr[186].vfcl";
	setAttr ".vclr[186].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[165].vfal" 1;
	setAttr ".vclr[186].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[166].vfal" 1;
	setAttr ".vclr[186].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[185].vfal" 1;
	setAttr ".vclr[186].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[186].vfal" 1;
	setAttr ".vclr[187].vxal" 1;
	setAttr -s 4 ".vclr[187].vfcl";
	setAttr ".vclr[187].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[166].vfal" 1;
	setAttr ".vclr[187].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[167].vfal" 1;
	setAttr ".vclr[187].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[186].vfal" 1;
	setAttr ".vclr[187].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[187].vfal" 1;
	setAttr ".vclr[188].vxal" 1;
	setAttr -s 4 ".vclr[188].vfcl";
	setAttr ".vclr[188].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[167].vfal" 1;
	setAttr ".vclr[188].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[168].vfal" 1;
	setAttr ".vclr[188].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[187].vfal" 1;
	setAttr ".vclr[188].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[188].vfal" 1;
	setAttr ".vclr[189].vxal" 1;
	setAttr -s 4 ".vclr[189].vfcl";
	setAttr ".vclr[189].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[168].vfal" 1;
	setAttr ".vclr[189].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[169].vfal" 1;
	setAttr ".vclr[189].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[188].vfal" 1;
	setAttr ".vclr[189].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[189].vfal" 1;
	setAttr ".vclr[190].vxal" 1;
	setAttr -s 4 ".vclr[190].vfcl";
	setAttr ".vclr[190].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[169].vfal" 1;
	setAttr ".vclr[190].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[170].vfal" 1;
	setAttr ".vclr[190].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[189].vfal" 1;
	setAttr ".vclr[190].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[190].vfal" 1;
	setAttr ".vclr[191].vxal" 1;
	setAttr -s 4 ".vclr[191].vfcl";
	setAttr ".vclr[191].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[170].vfal" 1;
	setAttr ".vclr[191].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[171].vfal" 1;
	setAttr ".vclr[191].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[190].vfal" 1;
	setAttr ".vclr[191].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[191].vfal" 1;
	setAttr ".vclr[192].vxal" 1;
	setAttr -s 4 ".vclr[192].vfcl";
	setAttr ".vclr[192].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[171].vfal" 1;
	setAttr ".vclr[192].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[172].vfal" 1;
	setAttr ".vclr[192].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[191].vfal" 1;
	setAttr ".vclr[192].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[192].vfal" 1;
	setAttr ".vclr[193].vxal" 1;
	setAttr -s 4 ".vclr[193].vfcl";
	setAttr ".vclr[193].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[172].vfal" 1;
	setAttr ".vclr[193].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[173].vfal" 1;
	setAttr ".vclr[193].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[192].vfal" 1;
	setAttr ".vclr[193].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[193].vfal" 1;
	setAttr ".vclr[194].vxal" 1;
	setAttr -s 4 ".vclr[194].vfcl";
	setAttr ".vclr[194].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[173].vfal" 1;
	setAttr ".vclr[194].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[174].vfal" 1;
	setAttr ".vclr[194].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[193].vfal" 1;
	setAttr ".vclr[194].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[194].vfal" 1;
	setAttr ".vclr[195].vxal" 1;
	setAttr -s 4 ".vclr[195].vfcl";
	setAttr ".vclr[195].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[174].vfal" 1;
	setAttr ".vclr[195].vfcl[175].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[175].vfal" 1;
	setAttr ".vclr[195].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[194].vfal" 1;
	setAttr ".vclr[195].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[195].vfal" 1;
	setAttr ".vclr[196].vxal" 1;
	setAttr -s 4 ".vclr[196].vfcl";
	setAttr ".vclr[196].vfcl[175].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[196].vfcl[175].vfal" 1;
	setAttr ".vclr[196].vfcl[176].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[196].vfcl[176].vfal" 1;
	setAttr ".vclr[196].vfcl[195].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[196].vfcl[195].vfal" 1;
	setAttr ".vclr[196].vfcl[196].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[196].vfcl[196].vfal" 1;
	setAttr ".vclr[197].vxal" 1;
	setAttr -s 4 ".vclr[197].vfcl";
	setAttr ".vclr[197].vfcl[176].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[197].vfcl[176].vfal" 1;
	setAttr ".vclr[197].vfcl[177].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[197].vfcl[177].vfal" 1;
	setAttr ".vclr[197].vfcl[196].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[197].vfcl[196].vfal" 1;
	setAttr ".vclr[197].vfcl[197].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[197].vfcl[197].vfal" 1;
	setAttr ".vclr[198].vxal" 1;
	setAttr -s 4 ".vclr[198].vfcl";
	setAttr ".vclr[198].vfcl[177].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[198].vfcl[177].vfal" 1;
	setAttr ".vclr[198].vfcl[178].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[198].vfcl[178].vfal" 1;
	setAttr ".vclr[198].vfcl[197].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[198].vfcl[197].vfal" 1;
	setAttr ".vclr[198].vfcl[198].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[198].vfcl[198].vfal" 1;
	setAttr ".vclr[199].vxal" 1;
	setAttr -s 4 ".vclr[199].vfcl";
	setAttr ".vclr[199].vfcl[178].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[199].vfcl[178].vfal" 1;
	setAttr ".vclr[199].vfcl[179].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[199].vfcl[179].vfal" 1;
	setAttr ".vclr[199].vfcl[198].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[199].vfcl[198].vfal" 1;
	setAttr ".vclr[199].vfcl[199].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[199].vfcl[199].vfal" 1;
	setAttr ".vclr[200].vxal" 1;
	setAttr -s 4 ".vclr[200].vfcl";
	setAttr ".vclr[200].vfcl[180].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[200].vfcl[180].vfal" 1;
	setAttr ".vclr[200].vfcl[199].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[200].vfcl[199].vfal" 1;
	setAttr ".vclr[200].vfcl[200].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[200].vfcl[200].vfal" 1;
	setAttr ".vclr[200].vfcl[219].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[200].vfcl[219].vfal" 1;
	setAttr ".vclr[201].vxal" 1;
	setAttr -s 4 ".vclr[201].vfcl";
	setAttr ".vclr[201].vfcl[180].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[180].vfal" 1;
	setAttr ".vclr[201].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[181].vfal" 1;
	setAttr ".vclr[201].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[200].vfal" 1;
	setAttr ".vclr[201].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[201].vfal" 1;
	setAttr ".vclr[202].vxal" 1;
	setAttr -s 4 ".vclr[202].vfcl";
	setAttr ".vclr[202].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[181].vfal" 1;
	setAttr ".vclr[202].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[182].vfal" 1;
	setAttr ".vclr[202].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[201].vfal" 1;
	setAttr ".vclr[202].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[202].vfal" 1;
	setAttr ".vclr[203].vxal" 1;
	setAttr -s 4 ".vclr[203].vfcl";
	setAttr ".vclr[203].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[182].vfal" 1;
	setAttr ".vclr[203].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[183].vfal" 1;
	setAttr ".vclr[203].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[202].vfal" 1;
	setAttr ".vclr[203].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[203].vfal" 1;
	setAttr ".vclr[204].vxal" 1;
	setAttr -s 4 ".vclr[204].vfcl";
	setAttr ".vclr[204].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[183].vfal" 1;
	setAttr ".vclr[204].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[184].vfal" 1;
	setAttr ".vclr[204].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[203].vfal" 1;
	setAttr ".vclr[204].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[204].vfal" 1;
	setAttr ".vclr[205].vxal" 1;
	setAttr -s 4 ".vclr[205].vfcl";
	setAttr ".vclr[205].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[184].vfal" 1;
	setAttr ".vclr[205].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[185].vfal" 1;
	setAttr ".vclr[205].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[204].vfal" 1;
	setAttr ".vclr[205].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[205].vfal" 1;
	setAttr ".vclr[206].vxal" 1;
	setAttr -s 4 ".vclr[206].vfcl";
	setAttr ".vclr[206].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[185].vfal" 1;
	setAttr ".vclr[206].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[186].vfal" 1;
	setAttr ".vclr[206].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[205].vfal" 1;
	setAttr ".vclr[206].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[206].vfal" 1;
	setAttr ".vclr[207].vxal" 1;
	setAttr -s 4 ".vclr[207].vfcl";
	setAttr ".vclr[207].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[186].vfal" 1;
	setAttr ".vclr[207].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[187].vfal" 1;
	setAttr ".vclr[207].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[206].vfal" 1;
	setAttr ".vclr[207].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[207].vfal" 1;
	setAttr ".vclr[208].vxal" 1;
	setAttr -s 4 ".vclr[208].vfcl";
	setAttr ".vclr[208].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[187].vfal" 1;
	setAttr ".vclr[208].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[188].vfal" 1;
	setAttr ".vclr[208].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[207].vfal" 1;
	setAttr ".vclr[208].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[208].vfal" 1;
	setAttr ".vclr[209].vxal" 1;
	setAttr -s 4 ".vclr[209].vfcl";
	setAttr ".vclr[209].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[188].vfal" 1;
	setAttr ".vclr[209].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[189].vfal" 1;
	setAttr ".vclr[209].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[208].vfal" 1;
	setAttr ".vclr[209].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[209].vfal" 1;
	setAttr ".vclr[210].vxal" 1;
	setAttr -s 4 ".vclr[210].vfcl";
	setAttr ".vclr[210].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[189].vfal" 1;
	setAttr ".vclr[210].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[190].vfal" 1;
	setAttr ".vclr[210].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[209].vfal" 1;
	setAttr ".vclr[210].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[210].vfal" 1;
	setAttr ".vclr[211].vxal" 1;
	setAttr -s 4 ".vclr[211].vfcl";
	setAttr ".vclr[211].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[190].vfal" 1;
	setAttr ".vclr[211].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[191].vfal" 1;
	setAttr ".vclr[211].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[210].vfal" 1;
	setAttr ".vclr[211].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[211].vfal" 1;
	setAttr ".vclr[212].vxal" 1;
	setAttr -s 4 ".vclr[212].vfcl";
	setAttr ".vclr[212].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[191].vfal" 1;
	setAttr ".vclr[212].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[192].vfal" 1;
	setAttr ".vclr[212].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[211].vfal" 1;
	setAttr ".vclr[212].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[212].vfal" 1;
	setAttr ".vclr[213].vxal" 1;
	setAttr -s 4 ".vclr[213].vfcl";
	setAttr ".vclr[213].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[192].vfal" 1;
	setAttr ".vclr[213].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[193].vfal" 1;
	setAttr ".vclr[213].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[212].vfal" 1;
	setAttr ".vclr[213].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[213].vfal" 1;
	setAttr ".vclr[214].vxal" 1;
	setAttr -s 4 ".vclr[214].vfcl";
	setAttr ".vclr[214].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[193].vfal" 1;
	setAttr ".vclr[214].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[194].vfal" 1;
	setAttr ".vclr[214].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[213].vfal" 1;
	setAttr ".vclr[214].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[214].vfal" 1;
	setAttr ".vclr[215].vxal" 1;
	setAttr -s 4 ".vclr[215].vfcl";
	setAttr ".vclr[215].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[194].vfal" 1;
	setAttr ".vclr[215].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[195].vfal" 1;
	setAttr ".vclr[215].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[214].vfal" 1;
	setAttr ".vclr[215].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[215].vfal" 1;
	setAttr ".vclr[216].vxal" 1;
	setAttr -s 4 ".vclr[216].vfcl";
	setAttr ".vclr[216].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[195].vfal" 1;
	setAttr ".vclr[216].vfcl[196].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[196].vfal" 1;
	setAttr ".vclr[216].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[215].vfal" 1;
	setAttr ".vclr[216].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[216].vfal" 1;
	setAttr ".vclr[217].vxal" 1;
	setAttr -s 4 ".vclr[217].vfcl";
	setAttr ".vclr[217].vfcl[196].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[217].vfcl[196].vfal" 1;
	setAttr ".vclr[217].vfcl[197].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[217].vfcl[197].vfal" 1;
	setAttr ".vclr[217].vfcl[216].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[217].vfcl[216].vfal" 1;
	setAttr ".vclr[217].vfcl[217].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[217].vfcl[217].vfal" 1;
	setAttr ".vclr[218].vxal" 1;
	setAttr -s 4 ".vclr[218].vfcl";
	setAttr ".vclr[218].vfcl[197].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[218].vfcl[197].vfal" 1;
	setAttr ".vclr[218].vfcl[198].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[218].vfcl[198].vfal" 1;
	setAttr ".vclr[218].vfcl[217].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[218].vfcl[217].vfal" 1;
	setAttr ".vclr[218].vfcl[218].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[218].vfcl[218].vfal" 1;
	setAttr ".vclr[219].vxal" 1;
	setAttr -s 4 ".vclr[219].vfcl";
	setAttr ".vclr[219].vfcl[198].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[219].vfcl[198].vfal" 1;
	setAttr ".vclr[219].vfcl[199].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[219].vfcl[199].vfal" 1;
	setAttr ".vclr[219].vfcl[218].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[219].vfcl[218].vfal" 1;
	setAttr ".vclr[219].vfcl[219].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[219].vfcl[219].vfal" 1;
	setAttr ".vclr[220].vxal" 1;
	setAttr -s 4 ".vclr[220].vfcl";
	setAttr ".vclr[220].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[200].vfal" 1;
	setAttr ".vclr[220].vfcl[219].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[219].vfal" 1;
	setAttr ".vclr[220].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[220].vfal" 1;
	setAttr ".vclr[220].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[239].vfal" 1;
	setAttr ".vclr[221].vxal" 1;
	setAttr -s 4 ".vclr[221].vfcl";
	setAttr ".vclr[221].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[200].vfal" 1;
	setAttr ".vclr[221].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[201].vfal" 1;
	setAttr ".vclr[221].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[220].vfal" 1;
	setAttr ".vclr[221].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[221].vfal" 1;
	setAttr ".vclr[222].vxal" 1;
	setAttr -s 4 ".vclr[222].vfcl";
	setAttr ".vclr[222].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[201].vfal" 1;
	setAttr ".vclr[222].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[202].vfal" 1;
	setAttr ".vclr[222].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[221].vfal" 1;
	setAttr ".vclr[222].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[222].vfal" 1;
	setAttr ".vclr[223].vxal" 1;
	setAttr -s 4 ".vclr[223].vfcl";
	setAttr ".vclr[223].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[202].vfal" 1;
	setAttr ".vclr[223].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[203].vfal" 1;
	setAttr ".vclr[223].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[222].vfal" 1;
	setAttr ".vclr[223].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[223].vfal" 1;
	setAttr ".vclr[224].vxal" 1;
	setAttr -s 4 ".vclr[224].vfcl";
	setAttr ".vclr[224].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[203].vfal" 1;
	setAttr ".vclr[224].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[204].vfal" 1;
	setAttr ".vclr[224].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[223].vfal" 1;
	setAttr ".vclr[224].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[224].vfal" 1;
	setAttr ".vclr[225].vxal" 1;
	setAttr -s 4 ".vclr[225].vfcl";
	setAttr ".vclr[225].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[204].vfal" 1;
	setAttr ".vclr[225].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[205].vfal" 1;
	setAttr ".vclr[225].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[224].vfal" 1;
	setAttr ".vclr[225].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[225].vfal" 1;
	setAttr ".vclr[226].vxal" 1;
	setAttr -s 4 ".vclr[226].vfcl";
	setAttr ".vclr[226].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[205].vfal" 1;
	setAttr ".vclr[226].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[206].vfal" 1;
	setAttr ".vclr[226].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[225].vfal" 1;
	setAttr ".vclr[226].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[226].vfal" 1;
	setAttr ".vclr[227].vxal" 1;
	setAttr -s 4 ".vclr[227].vfcl";
	setAttr ".vclr[227].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[206].vfal" 1;
	setAttr ".vclr[227].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[207].vfal" 1;
	setAttr ".vclr[227].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[226].vfal" 1;
	setAttr ".vclr[227].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[227].vfal" 1;
	setAttr ".vclr[228].vxal" 1;
	setAttr -s 4 ".vclr[228].vfcl";
	setAttr ".vclr[228].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[207].vfal" 1;
	setAttr ".vclr[228].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[208].vfal" 1;
	setAttr ".vclr[228].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[227].vfal" 1;
	setAttr ".vclr[228].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[228].vfal" 1;
	setAttr ".vclr[229].vxal" 1;
	setAttr -s 4 ".vclr[229].vfcl";
	setAttr ".vclr[229].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[208].vfal" 1;
	setAttr ".vclr[229].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[209].vfal" 1;
	setAttr ".vclr[229].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[228].vfal" 1;
	setAttr ".vclr[229].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[229].vfal" 1;
	setAttr ".vclr[230].vxal" 1;
	setAttr -s 4 ".vclr[230].vfcl";
	setAttr ".vclr[230].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[209].vfal" 1;
	setAttr ".vclr[230].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[210].vfal" 1;
	setAttr ".vclr[230].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[229].vfal" 1;
	setAttr ".vclr[230].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[230].vfal" 1;
	setAttr ".vclr[231].vxal" 1;
	setAttr -s 4 ".vclr[231].vfcl";
	setAttr ".vclr[231].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[210].vfal" 1;
	setAttr ".vclr[231].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[211].vfal" 1;
	setAttr ".vclr[231].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[230].vfal" 1;
	setAttr ".vclr[231].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[231].vfal" 1;
	setAttr ".vclr[232].vxal" 1;
	setAttr -s 4 ".vclr[232].vfcl";
	setAttr ".vclr[232].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[211].vfal" 1;
	setAttr ".vclr[232].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[212].vfal" 1;
	setAttr ".vclr[232].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[231].vfal" 1;
	setAttr ".vclr[232].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[232].vfal" 1;
	setAttr ".vclr[233].vxal" 1;
	setAttr -s 4 ".vclr[233].vfcl";
	setAttr ".vclr[233].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[212].vfal" 1;
	setAttr ".vclr[233].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[213].vfal" 1;
	setAttr ".vclr[233].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[232].vfal" 1;
	setAttr ".vclr[233].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[233].vfal" 1;
	setAttr ".vclr[234].vxal" 1;
	setAttr -s 4 ".vclr[234].vfcl";
	setAttr ".vclr[234].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[213].vfal" 1;
	setAttr ".vclr[234].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[214].vfal" 1;
	setAttr ".vclr[234].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[233].vfal" 1;
	setAttr ".vclr[234].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[234].vfal" 1;
	setAttr ".vclr[235].vxal" 1;
	setAttr -s 4 ".vclr[235].vfcl";
	setAttr ".vclr[235].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[214].vfal" 1;
	setAttr ".vclr[235].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[215].vfal" 1;
	setAttr ".vclr[235].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[234].vfal" 1;
	setAttr ".vclr[235].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[235].vfal" 1;
	setAttr ".vclr[236].vxal" 1;
	setAttr -s 4 ".vclr[236].vfcl";
	setAttr ".vclr[236].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[215].vfal" 1;
	setAttr ".vclr[236].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[216].vfal" 1;
	setAttr ".vclr[236].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[235].vfal" 1;
	setAttr ".vclr[236].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[236].vfal" 1;
	setAttr ".vclr[237].vxal" 1;
	setAttr -s 4 ".vclr[237].vfcl";
	setAttr ".vclr[237].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[216].vfal" 1;
	setAttr ".vclr[237].vfcl[217].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[217].vfal" 1;
	setAttr ".vclr[237].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[236].vfal" 1;
	setAttr ".vclr[237].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[237].vfal" 1;
	setAttr ".vclr[238].vxal" 1;
	setAttr -s 4 ".vclr[238].vfcl";
	setAttr ".vclr[238].vfcl[217].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[238].vfcl[217].vfal" 1;
	setAttr ".vclr[238].vfcl[218].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[238].vfcl[218].vfal" 1;
	setAttr ".vclr[238].vfcl[237].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[238].vfcl[237].vfal" 1;
	setAttr ".vclr[238].vfcl[238].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[238].vfcl[238].vfal" 1;
	setAttr ".vclr[239].vxal" 1;
	setAttr -s 4 ".vclr[239].vfcl";
	setAttr ".vclr[239].vfcl[218].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[239].vfcl[218].vfal" 1;
	setAttr ".vclr[239].vfcl[219].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[239].vfcl[219].vfal" 1;
	setAttr ".vclr[239].vfcl[238].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[239].vfcl[238].vfal" 1;
	setAttr ".vclr[239].vfcl[239].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[239].vfcl[239].vfal" 1;
	setAttr ".vclr[240].vxal" 1;
	setAttr -s 4 ".vclr[240].vfcl";
	setAttr ".vclr[240].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[220].vfal" 1;
	setAttr ".vclr[240].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[239].vfal" 1;
	setAttr ".vclr[240].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[240].vfal" 1;
	setAttr ".vclr[240].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[259].vfal" 1;
	setAttr ".vclr[241].vxal" 1;
	setAttr -s 4 ".vclr[241].vfcl";
	setAttr ".vclr[241].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[220].vfal" 1;
	setAttr ".vclr[241].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[221].vfal" 1;
	setAttr ".vclr[241].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[240].vfal" 1;
	setAttr ".vclr[241].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[241].vfal" 1;
	setAttr ".vclr[242].vxal" 1;
	setAttr -s 4 ".vclr[242].vfcl";
	setAttr ".vclr[242].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[221].vfal" 1;
	setAttr ".vclr[242].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[222].vfal" 1;
	setAttr ".vclr[242].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[241].vfal" 1;
	setAttr ".vclr[242].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[242].vfal" 1;
	setAttr ".vclr[243].vxal" 1;
	setAttr -s 4 ".vclr[243].vfcl";
	setAttr ".vclr[243].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[222].vfal" 1;
	setAttr ".vclr[243].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[223].vfal" 1;
	setAttr ".vclr[243].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[242].vfal" 1;
	setAttr ".vclr[243].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[243].vfal" 1;
	setAttr ".vclr[244].vxal" 1;
	setAttr -s 4 ".vclr[244].vfcl";
	setAttr ".vclr[244].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[223].vfal" 1;
	setAttr ".vclr[244].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[224].vfal" 1;
	setAttr ".vclr[244].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[243].vfal" 1;
	setAttr ".vclr[244].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[244].vfal" 1;
	setAttr ".vclr[245].vxal" 1;
	setAttr -s 4 ".vclr[245].vfcl";
	setAttr ".vclr[245].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[224].vfal" 1;
	setAttr ".vclr[245].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[225].vfal" 1;
	setAttr ".vclr[245].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[244].vfal" 1;
	setAttr ".vclr[245].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[245].vfal" 1;
	setAttr ".vclr[246].vxal" 1;
	setAttr -s 4 ".vclr[246].vfcl";
	setAttr ".vclr[246].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[225].vfal" 1;
	setAttr ".vclr[246].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[226].vfal" 1;
	setAttr ".vclr[246].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[245].vfal" 1;
	setAttr ".vclr[246].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[246].vfal" 1;
	setAttr ".vclr[247].vxal" 1;
	setAttr -s 4 ".vclr[247].vfcl";
	setAttr ".vclr[247].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[226].vfal" 1;
	setAttr ".vclr[247].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[227].vfal" 1;
	setAttr ".vclr[247].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[246].vfal" 1;
	setAttr ".vclr[247].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[247].vfal" 1;
	setAttr ".vclr[248].vxal" 1;
	setAttr -s 4 ".vclr[248].vfcl";
	setAttr ".vclr[248].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[227].vfal" 1;
	setAttr ".vclr[248].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[228].vfal" 1;
	setAttr ".vclr[248].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[247].vfal" 1;
	setAttr ".vclr[248].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[248].vfal" 1;
	setAttr ".vclr[249].vxal" 1;
	setAttr -s 4 ".vclr[249].vfcl";
	setAttr ".vclr[249].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[228].vfal" 1;
	setAttr ".vclr[249].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[229].vfal" 1;
	setAttr ".vclr[249].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[248].vfal" 1;
	setAttr ".vclr[249].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[249].vfal" 1;
	setAttr ".vclr[250].vxal" 1;
	setAttr -s 4 ".vclr[250].vfcl";
	setAttr ".vclr[250].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[229].vfal" 1;
	setAttr ".vclr[250].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[230].vfal" 1;
	setAttr ".vclr[250].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[249].vfal" 1;
	setAttr ".vclr[250].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[250].vfal" 1;
	setAttr ".vclr[251].vxal" 1;
	setAttr -s 4 ".vclr[251].vfcl";
	setAttr ".vclr[251].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[230].vfal" 1;
	setAttr ".vclr[251].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[231].vfal" 1;
	setAttr ".vclr[251].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[250].vfal" 1;
	setAttr ".vclr[251].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[251].vfal" 1;
	setAttr ".vclr[252].vxal" 1;
	setAttr -s 4 ".vclr[252].vfcl";
	setAttr ".vclr[252].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[231].vfal" 1;
	setAttr ".vclr[252].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[232].vfal" 1;
	setAttr ".vclr[252].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[251].vfal" 1;
	setAttr ".vclr[252].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[252].vfal" 1;
	setAttr ".vclr[253].vxal" 1;
	setAttr -s 4 ".vclr[253].vfcl";
	setAttr ".vclr[253].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[232].vfal" 1;
	setAttr ".vclr[253].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[233].vfal" 1;
	setAttr ".vclr[253].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[252].vfal" 1;
	setAttr ".vclr[253].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[253].vfal" 1;
	setAttr ".vclr[254].vxal" 1;
	setAttr -s 4 ".vclr[254].vfcl";
	setAttr ".vclr[254].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[233].vfal" 1;
	setAttr ".vclr[254].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[234].vfal" 1;
	setAttr ".vclr[254].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[253].vfal" 1;
	setAttr ".vclr[254].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[254].vfal" 1;
	setAttr ".vclr[255].vxal" 1;
	setAttr -s 4 ".vclr[255].vfcl";
	setAttr ".vclr[255].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[234].vfal" 1;
	setAttr ".vclr[255].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[235].vfal" 1;
	setAttr ".vclr[255].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[254].vfal" 1;
	setAttr ".vclr[255].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[255].vfal" 1;
	setAttr ".vclr[256].vxal" 1;
	setAttr -s 4 ".vclr[256].vfcl";
	setAttr ".vclr[256].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[235].vfal" 1;
	setAttr ".vclr[256].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[236].vfal" 1;
	setAttr ".vclr[256].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[255].vfal" 1;
	setAttr ".vclr[256].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[256].vfal" 1;
	setAttr ".vclr[257].vxal" 1;
	setAttr -s 4 ".vclr[257].vfcl";
	setAttr ".vclr[257].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[236].vfal" 1;
	setAttr ".vclr[257].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[237].vfal" 1;
	setAttr ".vclr[257].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[256].vfal" 1;
	setAttr ".vclr[257].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[257].vfal" 1;
	setAttr ".vclr[258].vxal" 1;
	setAttr -s 4 ".vclr[258].vfcl";
	setAttr ".vclr[258].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[237].vfal" 1;
	setAttr ".vclr[258].vfcl[238].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[238].vfal" 1;
	setAttr ".vclr[258].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[257].vfal" 1;
	setAttr ".vclr[258].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[258].vfal" 1;
	setAttr ".vclr[259].vxal" 1;
	setAttr -s 4 ".vclr[259].vfcl";
	setAttr ".vclr[259].vfcl[238].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[238].vfal" 1;
	setAttr ".vclr[259].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[239].vfal" 1;
	setAttr ".vclr[259].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[258].vfal" 1;
	setAttr ".vclr[259].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[259].vfal" 1;
	setAttr ".vclr[260].vxal" 1;
	setAttr -s 4 ".vclr[260].vfcl";
	setAttr ".vclr[260].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[240].vfal" 1;
	setAttr ".vclr[260].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[259].vfal" 1;
	setAttr ".vclr[260].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[260].vfal" 1;
	setAttr ".vclr[260].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[279].vfal" 1;
	setAttr ".vclr[261].vxal" 1;
	setAttr -s 4 ".vclr[261].vfcl";
	setAttr ".vclr[261].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[240].vfal" 1;
	setAttr ".vclr[261].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[241].vfal" 1;
	setAttr ".vclr[261].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[260].vfal" 1;
	setAttr ".vclr[261].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[261].vfal" 1;
	setAttr ".vclr[262].vxal" 1;
	setAttr -s 4 ".vclr[262].vfcl";
	setAttr ".vclr[262].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[241].vfal" 1;
	setAttr ".vclr[262].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[242].vfal" 1;
	setAttr ".vclr[262].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[261].vfal" 1;
	setAttr ".vclr[262].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[262].vfal" 1;
	setAttr ".vclr[263].vxal" 1;
	setAttr -s 4 ".vclr[263].vfcl";
	setAttr ".vclr[263].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[242].vfal" 1;
	setAttr ".vclr[263].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[243].vfal" 1;
	setAttr ".vclr[263].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[262].vfal" 1;
	setAttr ".vclr[263].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[263].vfal" 1;
	setAttr ".vclr[264].vxal" 1;
	setAttr -s 4 ".vclr[264].vfcl";
	setAttr ".vclr[264].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[243].vfal" 1;
	setAttr ".vclr[264].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[244].vfal" 1;
	setAttr ".vclr[264].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[263].vfal" 1;
	setAttr ".vclr[264].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[264].vfal" 1;
	setAttr ".vclr[265].vxal" 1;
	setAttr -s 4 ".vclr[265].vfcl";
	setAttr ".vclr[265].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[244].vfal" 1;
	setAttr ".vclr[265].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[245].vfal" 1;
	setAttr ".vclr[265].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[264].vfal" 1;
	setAttr ".vclr[265].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[265].vfal" 1;
	setAttr ".vclr[266].vxal" 1;
	setAttr -s 4 ".vclr[266].vfcl";
	setAttr ".vclr[266].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[245].vfal" 1;
	setAttr ".vclr[266].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[246].vfal" 1;
	setAttr ".vclr[266].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[265].vfal" 1;
	setAttr ".vclr[266].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[266].vfal" 1;
	setAttr ".vclr[267].vxal" 1;
	setAttr -s 4 ".vclr[267].vfcl";
	setAttr ".vclr[267].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[246].vfal" 1;
	setAttr ".vclr[267].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[247].vfal" 1;
	setAttr ".vclr[267].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[266].vfal" 1;
	setAttr ".vclr[267].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[267].vfal" 1;
	setAttr ".vclr[268].vxal" 1;
	setAttr -s 4 ".vclr[268].vfcl";
	setAttr ".vclr[268].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[247].vfal" 1;
	setAttr ".vclr[268].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[248].vfal" 1;
	setAttr ".vclr[268].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[267].vfal" 1;
	setAttr ".vclr[268].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[268].vfal" 1;
	setAttr ".vclr[269].vxal" 1;
	setAttr -s 4 ".vclr[269].vfcl";
	setAttr ".vclr[269].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[248].vfal" 1;
	setAttr ".vclr[269].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[249].vfal" 1;
	setAttr ".vclr[269].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[268].vfal" 1;
	setAttr ".vclr[269].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[269].vfal" 1;
	setAttr ".vclr[270].vxal" 1;
	setAttr -s 4 ".vclr[270].vfcl";
	setAttr ".vclr[270].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[249].vfal" 1;
	setAttr ".vclr[270].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[250].vfal" 1;
	setAttr ".vclr[270].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[269].vfal" 1;
	setAttr ".vclr[270].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[270].vfal" 1;
	setAttr ".vclr[271].vxal" 1;
	setAttr -s 4 ".vclr[271].vfcl";
	setAttr ".vclr[271].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[250].vfal" 1;
	setAttr ".vclr[271].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[251].vfal" 1;
	setAttr ".vclr[271].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[270].vfal" 1;
	setAttr ".vclr[271].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[271].vfal" 1;
	setAttr ".vclr[272].vxal" 1;
	setAttr -s 4 ".vclr[272].vfcl";
	setAttr ".vclr[272].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[251].vfal" 1;
	setAttr ".vclr[272].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[252].vfal" 1;
	setAttr ".vclr[272].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[271].vfal" 1;
	setAttr ".vclr[272].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[272].vfal" 1;
	setAttr ".vclr[273].vxal" 1;
	setAttr -s 4 ".vclr[273].vfcl";
	setAttr ".vclr[273].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[252].vfal" 1;
	setAttr ".vclr[273].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[253].vfal" 1;
	setAttr ".vclr[273].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[272].vfal" 1;
	setAttr ".vclr[273].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[273].vfal" 1;
	setAttr ".vclr[274].vxal" 1;
	setAttr -s 4 ".vclr[274].vfcl";
	setAttr ".vclr[274].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[253].vfal" 1;
	setAttr ".vclr[274].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[254].vfal" 1;
	setAttr ".vclr[274].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[273].vfal" 1;
	setAttr ".vclr[274].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[274].vfal" 1;
	setAttr ".vclr[275].vxal" 1;
	setAttr -s 4 ".vclr[275].vfcl";
	setAttr ".vclr[275].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[254].vfal" 1;
	setAttr ".vclr[275].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[255].vfal" 1;
	setAttr ".vclr[275].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[274].vfal" 1;
	setAttr ".vclr[275].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[275].vfal" 1;
	setAttr ".vclr[276].vxal" 1;
	setAttr -s 4 ".vclr[276].vfcl";
	setAttr ".vclr[276].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[255].vfal" 1;
	setAttr ".vclr[276].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[256].vfal" 1;
	setAttr ".vclr[276].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[275].vfal" 1;
	setAttr ".vclr[276].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[276].vfal" 1;
	setAttr ".vclr[277].vxal" 1;
	setAttr -s 4 ".vclr[277].vfcl";
	setAttr ".vclr[277].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[256].vfal" 1;
	setAttr ".vclr[277].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[257].vfal" 1;
	setAttr ".vclr[277].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[276].vfal" 1;
	setAttr ".vclr[277].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[277].vfal" 1;
	setAttr ".vclr[278].vxal" 1;
	setAttr -s 4 ".vclr[278].vfcl";
	setAttr ".vclr[278].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[278].vfcl[257].vfal" 1;
	setAttr ".vclr[278].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[278].vfcl[258].vfal" 1;
	setAttr ".vclr[278].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[278].vfcl[277].vfal" 1;
	setAttr ".vclr[278].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[278].vfcl[278].vfal" 1;
	setAttr ".vclr[279].vxal" 1;
	setAttr -s 4 ".vclr[279].vfcl";
	setAttr ".vclr[279].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[258].vfal" 1;
	setAttr ".vclr[279].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[259].vfal" 1;
	setAttr ".vclr[279].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[278].vfal" 1;
	setAttr ".vclr[279].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[279].vfal" 1;
	setAttr ".vclr[280].vxal" 1;
	setAttr -s 4 ".vclr[280].vfcl";
	setAttr ".vclr[280].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[260].vfal" 1;
	setAttr ".vclr[280].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[279].vfal" 1;
	setAttr ".vclr[280].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[280].vfal" 1;
	setAttr ".vclr[280].vfcl[299].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[299].vfal" 1;
	setAttr ".vclr[281].vxal" 1;
	setAttr -s 4 ".vclr[281].vfcl";
	setAttr ".vclr[281].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[260].vfal" 1;
	setAttr ".vclr[281].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[261].vfal" 1;
	setAttr ".vclr[281].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[280].vfal" 1;
	setAttr ".vclr[281].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[281].vfal" 1;
	setAttr ".vclr[282].vxal" 1;
	setAttr -s 4 ".vclr[282].vfcl";
	setAttr ".vclr[282].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[261].vfal" 1;
	setAttr ".vclr[282].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[262].vfal" 1;
	setAttr ".vclr[282].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[281].vfal" 1;
	setAttr ".vclr[282].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[282].vfal" 1;
	setAttr ".vclr[283].vxal" 1;
	setAttr -s 4 ".vclr[283].vfcl";
	setAttr ".vclr[283].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[262].vfal" 1;
	setAttr ".vclr[283].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[263].vfal" 1;
	setAttr ".vclr[283].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[282].vfal" 1;
	setAttr ".vclr[283].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[283].vfal" 1;
	setAttr ".vclr[284].vxal" 1;
	setAttr -s 4 ".vclr[284].vfcl";
	setAttr ".vclr[284].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[263].vfal" 1;
	setAttr ".vclr[284].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[264].vfal" 1;
	setAttr ".vclr[284].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[283].vfal" 1;
	setAttr ".vclr[284].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[284].vfal" 1;
	setAttr ".vclr[285].vxal" 1;
	setAttr -s 4 ".vclr[285].vfcl";
	setAttr ".vclr[285].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[264].vfal" 1;
	setAttr ".vclr[285].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[265].vfal" 1;
	setAttr ".vclr[285].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[284].vfal" 1;
	setAttr ".vclr[285].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[285].vfal" 1;
	setAttr ".vclr[286].vxal" 1;
	setAttr -s 4 ".vclr[286].vfcl";
	setAttr ".vclr[286].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[265].vfal" 1;
	setAttr ".vclr[286].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[266].vfal" 1;
	setAttr ".vclr[286].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[285].vfal" 1;
	setAttr ".vclr[286].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[286].vfal" 1;
	setAttr ".vclr[287].vxal" 1;
	setAttr -s 4 ".vclr[287].vfcl";
	setAttr ".vclr[287].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[266].vfal" 1;
	setAttr ".vclr[287].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[267].vfal" 1;
	setAttr ".vclr[287].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[286].vfal" 1;
	setAttr ".vclr[287].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[287].vfal" 1;
	setAttr ".vclr[288].vxal" 1;
	setAttr -s 4 ".vclr[288].vfcl";
	setAttr ".vclr[288].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[288].vfcl[267].vfal" 1;
	setAttr ".vclr[288].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[288].vfcl[268].vfal" 1;
	setAttr ".vclr[288].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[288].vfcl[287].vfal" 1;
	setAttr ".vclr[288].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[288].vfcl[288].vfal" 1;
	setAttr ".vclr[289].vxal" 1;
	setAttr -s 4 ".vclr[289].vfcl";
	setAttr ".vclr[289].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[289].vfcl[268].vfal" 1;
	setAttr ".vclr[289].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[289].vfcl[269].vfal" 1;
	setAttr ".vclr[289].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[289].vfcl[288].vfal" 1;
	setAttr ".vclr[289].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[289].vfcl[289].vfal" 1;
	setAttr ".vclr[290].vxal" 1;
	setAttr -s 4 ".vclr[290].vfcl";
	setAttr ".vclr[290].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[290].vfcl[269].vfal" 1;
	setAttr ".vclr[290].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[290].vfcl[270].vfal" 1;
	setAttr ".vclr[290].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[290].vfcl[289].vfal" 1;
	setAttr ".vclr[290].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[290].vfcl[290].vfal" 1;
	setAttr ".vclr[291].vxal" 1;
	setAttr -s 4 ".vclr[291].vfcl";
	setAttr ".vclr[291].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[291].vfcl[270].vfal" 1;
	setAttr ".vclr[291].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[291].vfcl[271].vfal" 1;
	setAttr ".vclr[291].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[291].vfcl[290].vfal" 1;
	setAttr ".vclr[291].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[291].vfcl[291].vfal" 1;
	setAttr ".vclr[292].vxal" 1;
	setAttr -s 4 ".vclr[292].vfcl";
	setAttr ".vclr[292].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[292].vfcl[271].vfal" 1;
	setAttr ".vclr[292].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[292].vfcl[272].vfal" 1;
	setAttr ".vclr[292].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[292].vfcl[291].vfal" 1;
	setAttr ".vclr[292].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[292].vfcl[292].vfal" 1;
	setAttr ".vclr[293].vxal" 1;
	setAttr -s 4 ".vclr[293].vfcl";
	setAttr ".vclr[293].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[293].vfcl[272].vfal" 1;
	setAttr ".vclr[293].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[293].vfcl[273].vfal" 1;
	setAttr ".vclr[293].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[293].vfcl[292].vfal" 1;
	setAttr ".vclr[293].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[293].vfcl[293].vfal" 1;
	setAttr ".vclr[294].vxal" 1;
	setAttr -s 4 ".vclr[294].vfcl";
	setAttr ".vclr[294].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[294].vfcl[273].vfal" 1;
	setAttr ".vclr[294].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[294].vfcl[274].vfal" 1;
	setAttr ".vclr[294].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[294].vfcl[293].vfal" 1;
	setAttr ".vclr[294].vfcl[294].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[294].vfcl[294].vfal" 1;
	setAttr ".vclr[295].vxal" 1;
	setAttr -s 4 ".vclr[295].vfcl";
	setAttr ".vclr[295].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[295].vfcl[274].vfal" 1;
	setAttr ".vclr[295].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[295].vfcl[275].vfal" 1;
	setAttr ".vclr[295].vfcl[294].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[295].vfcl[294].vfal" 1;
	setAttr ".vclr[295].vfcl[295].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[295].vfcl[295].vfal" 1;
	setAttr ".vclr[296].vxal" 1;
	setAttr -s 4 ".vclr[296].vfcl";
	setAttr ".vclr[296].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[275].vfal" 1;
	setAttr ".vclr[296].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[276].vfal" 1;
	setAttr ".vclr[296].vfcl[295].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[295].vfal" 1;
	setAttr ".vclr[296].vfcl[296].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[296].vfal" 1;
	setAttr ".vclr[297].vxal" 1;
	setAttr -s 4 ".vclr[297].vfcl";
	setAttr ".vclr[297].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[276].vfal" 1;
	setAttr ".vclr[297].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[277].vfal" 1;
	setAttr ".vclr[297].vfcl[296].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[296].vfal" 1;
	setAttr ".vclr[297].vfcl[297].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[297].vfal" 1;
	setAttr ".vclr[298].vxal" 1;
	setAttr -s 4 ".vclr[298].vfcl";
	setAttr ".vclr[298].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[298].vfcl[277].vfal" 1;
	setAttr ".vclr[298].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[298].vfcl[278].vfal" 1;
	setAttr ".vclr[298].vfcl[297].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[298].vfcl[297].vfal" 1;
	setAttr ".vclr[298].vfcl[298].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[298].vfcl[298].vfal" 1;
	setAttr ".vclr[299].vxal" 1;
	setAttr -s 4 ".vclr[299].vfcl";
	setAttr ".vclr[299].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[299].vfcl[278].vfal" 1;
	setAttr ".vclr[299].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[299].vfcl[279].vfal" 1;
	setAttr ".vclr[299].vfcl[298].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[299].vfcl[298].vfal" 1;
	setAttr ".vclr[299].vfcl[299].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[299].vfcl[299].vfal" 1;
	setAttr ".vclr[300].vxal" 1;
	setAttr -s 4 ".vclr[300].vfcl";
	setAttr ".vclr[300].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[300].vfcl[280].vfal" 1;
	setAttr ".vclr[300].vfcl[299].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[300].vfcl[299].vfal" 1;
	setAttr ".vclr[300].vfcl[300].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[300].vfcl[300].vfal" 1;
	setAttr ".vclr[300].vfcl[319].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[300].vfcl[319].vfal" 1;
	setAttr ".vclr[301].vxal" 1;
	setAttr -s 4 ".vclr[301].vfcl";
	setAttr ".vclr[301].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[301].vfcl[280].vfal" 1;
	setAttr ".vclr[301].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[301].vfcl[281].vfal" 1;
	setAttr ".vclr[301].vfcl[300].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[301].vfcl[300].vfal" 1;
	setAttr ".vclr[301].vfcl[301].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[301].vfcl[301].vfal" 1;
	setAttr ".vclr[302].vxal" 1;
	setAttr -s 4 ".vclr[302].vfcl";
	setAttr ".vclr[302].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[302].vfcl[281].vfal" 1;
	setAttr ".vclr[302].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[302].vfcl[282].vfal" 1;
	setAttr ".vclr[302].vfcl[301].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[302].vfcl[301].vfal" 1;
	setAttr ".vclr[302].vfcl[302].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[302].vfcl[302].vfal" 1;
	setAttr ".vclr[303].vxal" 1;
	setAttr -s 4 ".vclr[303].vfcl";
	setAttr ".vclr[303].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[303].vfcl[282].vfal" 1;
	setAttr ".vclr[303].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[303].vfcl[283].vfal" 1;
	setAttr ".vclr[303].vfcl[302].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[303].vfcl[302].vfal" 1;
	setAttr ".vclr[303].vfcl[303].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[303].vfcl[303].vfal" 1;
	setAttr ".vclr[304].vxal" 1;
	setAttr -s 4 ".vclr[304].vfcl";
	setAttr ".vclr[304].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[304].vfcl[283].vfal" 1;
	setAttr ".vclr[304].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[304].vfcl[284].vfal" 1;
	setAttr ".vclr[304].vfcl[303].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[304].vfcl[303].vfal" 1;
	setAttr ".vclr[304].vfcl[304].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[304].vfcl[304].vfal" 1;
	setAttr ".vclr[305].vxal" 1;
	setAttr -s 4 ".vclr[305].vfcl";
	setAttr ".vclr[305].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[305].vfcl[284].vfal" 1;
	setAttr ".vclr[305].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[305].vfcl[285].vfal" 1;
	setAttr ".vclr[305].vfcl[304].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[305].vfcl[304].vfal" 1;
	setAttr ".vclr[305].vfcl[305].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[305].vfcl[305].vfal" 1;
	setAttr ".vclr[306].vxal" 1;
	setAttr -s 4 ".vclr[306].vfcl";
	setAttr ".vclr[306].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[306].vfcl[285].vfal" 1;
	setAttr ".vclr[306].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[306].vfcl[286].vfal" 1;
	setAttr ".vclr[306].vfcl[305].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[306].vfcl[305].vfal" 1;
	setAttr ".vclr[306].vfcl[306].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[306].vfcl[306].vfal" 1;
	setAttr ".vclr[307].vxal" 1;
	setAttr -s 4 ".vclr[307].vfcl";
	setAttr ".vclr[307].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[307].vfcl[286].vfal" 1;
	setAttr ".vclr[307].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[307].vfcl[287].vfal" 1;
	setAttr ".vclr[307].vfcl[306].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[307].vfcl[306].vfal" 1;
	setAttr ".vclr[307].vfcl[307].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[307].vfcl[307].vfal" 1;
	setAttr ".vclr[308].vxal" 1;
	setAttr -s 4 ".vclr[308].vfcl";
	setAttr ".vclr[308].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[308].vfcl[287].vfal" 1;
	setAttr ".vclr[308].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[308].vfcl[288].vfal" 1;
	setAttr ".vclr[308].vfcl[307].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[308].vfcl[307].vfal" 1;
	setAttr ".vclr[308].vfcl[308].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[308].vfcl[308].vfal" 1;
	setAttr ".vclr[309].vxal" 1;
	setAttr -s 4 ".vclr[309].vfcl";
	setAttr ".vclr[309].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[309].vfcl[288].vfal" 1;
	setAttr ".vclr[309].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[309].vfcl[289].vfal" 1;
	setAttr ".vclr[309].vfcl[308].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[309].vfcl[308].vfal" 1;
	setAttr ".vclr[309].vfcl[309].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[309].vfcl[309].vfal" 1;
	setAttr ".vclr[310].vxal" 1;
	setAttr -s 4 ".vclr[310].vfcl";
	setAttr ".vclr[310].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[310].vfcl[289].vfal" 1;
	setAttr ".vclr[310].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[310].vfcl[290].vfal" 1;
	setAttr ".vclr[310].vfcl[309].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[310].vfcl[309].vfal" 1;
	setAttr ".vclr[310].vfcl[310].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[310].vfcl[310].vfal" 1;
	setAttr ".vclr[311].vxal" 1;
	setAttr -s 4 ".vclr[311].vfcl";
	setAttr ".vclr[311].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[311].vfcl[290].vfal" 1;
	setAttr ".vclr[311].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[311].vfcl[291].vfal" 1;
	setAttr ".vclr[311].vfcl[310].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[311].vfcl[310].vfal" 1;
	setAttr ".vclr[311].vfcl[311].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[311].vfcl[311].vfal" 1;
	setAttr ".vclr[312].vxal" 1;
	setAttr -s 4 ".vclr[312].vfcl";
	setAttr ".vclr[312].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[312].vfcl[291].vfal" 1;
	setAttr ".vclr[312].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[312].vfcl[292].vfal" 1;
	setAttr ".vclr[312].vfcl[311].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[312].vfcl[311].vfal" 1;
	setAttr ".vclr[312].vfcl[312].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[312].vfcl[312].vfal" 1;
	setAttr ".vclr[313].vxal" 1;
	setAttr -s 4 ".vclr[313].vfcl";
	setAttr ".vclr[313].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[313].vfcl[292].vfal" 1;
	setAttr ".vclr[313].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[313].vfcl[293].vfal" 1;
	setAttr ".vclr[313].vfcl[312].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[313].vfcl[312].vfal" 1;
	setAttr ".vclr[313].vfcl[313].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[313].vfcl[313].vfal" 1;
	setAttr ".vclr[314].vxal" 1;
	setAttr -s 4 ".vclr[314].vfcl";
	setAttr ".vclr[314].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[314].vfcl[293].vfal" 1;
	setAttr ".vclr[314].vfcl[294].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[314].vfcl[294].vfal" 1;
	setAttr ".vclr[314].vfcl[313].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[314].vfcl[313].vfal" 1;
	setAttr ".vclr[314].vfcl[314].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[314].vfcl[314].vfal" 1;
	setAttr ".vclr[315].vxal" 1;
	setAttr -s 4 ".vclr[315].vfcl";
	setAttr ".vclr[315].vfcl[294].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[315].vfcl[294].vfal" 1;
	setAttr ".vclr[315].vfcl[295].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[315].vfcl[295].vfal" 1;
	setAttr ".vclr[315].vfcl[314].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[315].vfcl[314].vfal" 1;
	setAttr ".vclr[315].vfcl[315].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[315].vfcl[315].vfal" 1;
	setAttr ".vclr[316].vxal" 1;
	setAttr -s 4 ".vclr[316].vfcl";
	setAttr ".vclr[316].vfcl[295].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[316].vfcl[295].vfal" 1;
	setAttr ".vclr[316].vfcl[296].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[316].vfcl[296].vfal" 1;
	setAttr ".vclr[316].vfcl[315].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[316].vfcl[315].vfal" 1;
	setAttr ".vclr[316].vfcl[316].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[316].vfcl[316].vfal" 1;
	setAttr ".vclr[317].vxal" 1;
	setAttr -s 4 ".vclr[317].vfcl";
	setAttr ".vclr[317].vfcl[296].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[317].vfcl[296].vfal" 1;
	setAttr ".vclr[317].vfcl[297].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[317].vfcl[297].vfal" 1;
	setAttr ".vclr[317].vfcl[316].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[317].vfcl[316].vfal" 1;
	setAttr ".vclr[317].vfcl[317].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[317].vfcl[317].vfal" 1;
	setAttr ".vclr[318].vxal" 1;
	setAttr -s 4 ".vclr[318].vfcl";
	setAttr ".vclr[318].vfcl[297].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[318].vfcl[297].vfal" 1;
	setAttr ".vclr[318].vfcl[298].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[318].vfcl[298].vfal" 1;
	setAttr ".vclr[318].vfcl[317].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[318].vfcl[317].vfal" 1;
	setAttr ".vclr[318].vfcl[318].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[318].vfcl[318].vfal" 1;
	setAttr ".vclr[319].vxal" 1;
	setAttr -s 4 ".vclr[319].vfcl";
	setAttr ".vclr[319].vfcl[298].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[319].vfcl[298].vfal" 1;
	setAttr ".vclr[319].vfcl[299].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[319].vfcl[299].vfal" 1;
	setAttr ".vclr[319].vfcl[318].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[319].vfcl[318].vfal" 1;
	setAttr ".vclr[319].vfcl[319].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[319].vfcl[319].vfal" 1;
	setAttr ".vclr[320].vxal" 1;
	setAttr -s 4 ".vclr[320].vfcl";
	setAttr ".vclr[320].vfcl[300].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[320].vfcl[300].vfal" 1;
	setAttr ".vclr[320].vfcl[319].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[320].vfcl[319].vfal" 1;
	setAttr ".vclr[320].vfcl[320].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[320].vfcl[320].vfal" 1;
	setAttr ".vclr[320].vfcl[339].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[320].vfcl[339].vfal" 1;
	setAttr ".vclr[321].vxal" 1;
	setAttr -s 4 ".vclr[321].vfcl";
	setAttr ".vclr[321].vfcl[300].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[321].vfcl[300].vfal" 1;
	setAttr ".vclr[321].vfcl[301].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[321].vfcl[301].vfal" 1;
	setAttr ".vclr[321].vfcl[320].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[321].vfcl[320].vfal" 1;
	setAttr ".vclr[321].vfcl[321].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[321].vfcl[321].vfal" 1;
	setAttr ".vclr[322].vxal" 1;
	setAttr -s 4 ".vclr[322].vfcl";
	setAttr ".vclr[322].vfcl[301].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[322].vfcl[301].vfal" 1;
	setAttr ".vclr[322].vfcl[302].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[322].vfcl[302].vfal" 1;
	setAttr ".vclr[322].vfcl[321].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[322].vfcl[321].vfal" 1;
	setAttr ".vclr[322].vfcl[322].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[322].vfcl[322].vfal" 1;
	setAttr ".vclr[323].vxal" 1;
	setAttr -s 4 ".vclr[323].vfcl";
	setAttr ".vclr[323].vfcl[302].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[323].vfcl[302].vfal" 1;
	setAttr ".vclr[323].vfcl[303].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[323].vfcl[303].vfal" 1;
	setAttr ".vclr[323].vfcl[322].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[323].vfcl[322].vfal" 1;
	setAttr ".vclr[323].vfcl[323].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[323].vfcl[323].vfal" 1;
	setAttr ".vclr[324].vxal" 1;
	setAttr -s 4 ".vclr[324].vfcl";
	setAttr ".vclr[324].vfcl[303].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[324].vfcl[303].vfal" 1;
	setAttr ".vclr[324].vfcl[304].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[324].vfcl[304].vfal" 1;
	setAttr ".vclr[324].vfcl[323].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[324].vfcl[323].vfal" 1;
	setAttr ".vclr[324].vfcl[324].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[324].vfcl[324].vfal" 1;
	setAttr ".vclr[325].vxal" 1;
	setAttr -s 4 ".vclr[325].vfcl";
	setAttr ".vclr[325].vfcl[304].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[325].vfcl[304].vfal" 1;
	setAttr ".vclr[325].vfcl[305].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[325].vfcl[305].vfal" 1;
	setAttr ".vclr[325].vfcl[324].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[325].vfcl[324].vfal" 1;
	setAttr ".vclr[325].vfcl[325].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[325].vfcl[325].vfal" 1;
	setAttr ".vclr[326].vxal" 1;
	setAttr -s 4 ".vclr[326].vfcl";
	setAttr ".vclr[326].vfcl[305].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[326].vfcl[305].vfal" 1;
	setAttr ".vclr[326].vfcl[306].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[326].vfcl[306].vfal" 1;
	setAttr ".vclr[326].vfcl[325].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[326].vfcl[325].vfal" 1;
	setAttr ".vclr[326].vfcl[326].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[326].vfcl[326].vfal" 1;
	setAttr ".vclr[327].vxal" 1;
	setAttr -s 4 ".vclr[327].vfcl";
	setAttr ".vclr[327].vfcl[306].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[327].vfcl[306].vfal" 1;
	setAttr ".vclr[327].vfcl[307].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[327].vfcl[307].vfal" 1;
	setAttr ".vclr[327].vfcl[326].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[327].vfcl[326].vfal" 1;
	setAttr ".vclr[327].vfcl[327].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[327].vfcl[327].vfal" 1;
	setAttr ".vclr[328].vxal" 1;
	setAttr -s 4 ".vclr[328].vfcl";
	setAttr ".vclr[328].vfcl[307].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[328].vfcl[307].vfal" 1;
	setAttr ".vclr[328].vfcl[308].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[328].vfcl[308].vfal" 1;
	setAttr ".vclr[328].vfcl[327].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[328].vfcl[327].vfal" 1;
	setAttr ".vclr[328].vfcl[328].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[328].vfcl[328].vfal" 1;
	setAttr ".vclr[329].vxal" 1;
	setAttr -s 4 ".vclr[329].vfcl";
	setAttr ".vclr[329].vfcl[308].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[329].vfcl[308].vfal" 1;
	setAttr ".vclr[329].vfcl[309].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[329].vfcl[309].vfal" 1;
	setAttr ".vclr[329].vfcl[328].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[329].vfcl[328].vfal" 1;
	setAttr ".vclr[329].vfcl[329].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[329].vfcl[329].vfal" 1;
	setAttr ".vclr[330].vxal" 1;
	setAttr -s 4 ".vclr[330].vfcl";
	setAttr ".vclr[330].vfcl[309].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[330].vfcl[309].vfal" 1;
	setAttr ".vclr[330].vfcl[310].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[330].vfcl[310].vfal" 1;
	setAttr ".vclr[330].vfcl[329].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[330].vfcl[329].vfal" 1;
	setAttr ".vclr[330].vfcl[330].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[330].vfcl[330].vfal" 1;
	setAttr ".vclr[331].vxal" 1;
	setAttr -s 4 ".vclr[331].vfcl";
	setAttr ".vclr[331].vfcl[310].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[331].vfcl[310].vfal" 1;
	setAttr ".vclr[331].vfcl[311].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[331].vfcl[311].vfal" 1;
	setAttr ".vclr[331].vfcl[330].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[331].vfcl[330].vfal" 1;
	setAttr ".vclr[331].vfcl[331].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[331].vfcl[331].vfal" 1;
	setAttr ".vclr[332].vxal" 1;
	setAttr -s 4 ".vclr[332].vfcl";
	setAttr ".vclr[332].vfcl[311].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[332].vfcl[311].vfal" 1;
	setAttr ".vclr[332].vfcl[312].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[332].vfcl[312].vfal" 1;
	setAttr ".vclr[332].vfcl[331].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[332].vfcl[331].vfal" 1;
	setAttr ".vclr[332].vfcl[332].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[332].vfcl[332].vfal" 1;
	setAttr ".vclr[333].vxal" 1;
	setAttr -s 4 ".vclr[333].vfcl";
	setAttr ".vclr[333].vfcl[312].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[333].vfcl[312].vfal" 1;
	setAttr ".vclr[333].vfcl[313].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[333].vfcl[313].vfal" 1;
	setAttr ".vclr[333].vfcl[332].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[333].vfcl[332].vfal" 1;
	setAttr ".vclr[333].vfcl[333].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[333].vfcl[333].vfal" 1;
	setAttr ".vclr[334].vxal" 1;
	setAttr -s 4 ".vclr[334].vfcl";
	setAttr ".vclr[334].vfcl[313].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[334].vfcl[313].vfal" 1;
	setAttr ".vclr[334].vfcl[314].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[334].vfcl[314].vfal" 1;
	setAttr ".vclr[334].vfcl[333].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[334].vfcl[333].vfal" 1;
	setAttr ".vclr[334].vfcl[334].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[334].vfcl[334].vfal" 1;
	setAttr ".vclr[335].vxal" 1;
	setAttr -s 4 ".vclr[335].vfcl";
	setAttr ".vclr[335].vfcl[314].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[335].vfcl[314].vfal" 1;
	setAttr ".vclr[335].vfcl[315].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[335].vfcl[315].vfal" 1;
	setAttr ".vclr[335].vfcl[334].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[335].vfcl[334].vfal" 1;
	setAttr ".vclr[335].vfcl[335].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[335].vfcl[335].vfal" 1;
	setAttr ".vclr[336].vxal" 1;
	setAttr -s 4 ".vclr[336].vfcl";
	setAttr ".vclr[336].vfcl[315].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[336].vfcl[315].vfal" 1;
	setAttr ".vclr[336].vfcl[316].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[336].vfcl[316].vfal" 1;
	setAttr ".vclr[336].vfcl[335].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[336].vfcl[335].vfal" 1;
	setAttr ".vclr[336].vfcl[336].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[336].vfcl[336].vfal" 1;
	setAttr ".vclr[337].vxal" 1;
	setAttr -s 4 ".vclr[337].vfcl";
	setAttr ".vclr[337].vfcl[316].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[337].vfcl[316].vfal" 1;
	setAttr ".vclr[337].vfcl[317].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[337].vfcl[317].vfal" 1;
	setAttr ".vclr[337].vfcl[336].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[337].vfcl[336].vfal" 1;
	setAttr ".vclr[337].vfcl[337].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[337].vfcl[337].vfal" 1;
	setAttr ".vclr[338].vxal" 1;
	setAttr -s 4 ".vclr[338].vfcl";
	setAttr ".vclr[338].vfcl[317].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[338].vfcl[317].vfal" 1;
	setAttr ".vclr[338].vfcl[318].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[338].vfcl[318].vfal" 1;
	setAttr ".vclr[338].vfcl[337].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[338].vfcl[337].vfal" 1;
	setAttr ".vclr[338].vfcl[338].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[338].vfcl[338].vfal" 1;
	setAttr ".vclr[339].vxal" 1;
	setAttr -s 4 ".vclr[339].vfcl";
	setAttr ".vclr[339].vfcl[318].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[339].vfcl[318].vfal" 1;
	setAttr ".vclr[339].vfcl[319].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[339].vfcl[319].vfal" 1;
	setAttr ".vclr[339].vfcl[338].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[339].vfcl[338].vfal" 1;
	setAttr ".vclr[339].vfcl[339].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[339].vfcl[339].vfal" 1;
	setAttr ".vclr[340].vxal" 1;
	setAttr -s 4 ".vclr[340].vfcl";
	setAttr ".vclr[340].vfcl[320].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[340].vfcl[320].vfal" 1;
	setAttr ".vclr[340].vfcl[339].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[340].vfcl[339].vfal" 1;
	setAttr ".vclr[340].vfcl[340].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[340].vfcl[340].vfal" 1;
	setAttr ".vclr[340].vfcl[359].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[340].vfcl[359].vfal" 1;
	setAttr ".vclr[341].vxal" 1;
	setAttr -s 4 ".vclr[341].vfcl";
	setAttr ".vclr[341].vfcl[320].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[341].vfcl[320].vfal" 1;
	setAttr ".vclr[341].vfcl[321].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[341].vfcl[321].vfal" 1;
	setAttr ".vclr[341].vfcl[340].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[341].vfcl[340].vfal" 1;
	setAttr ".vclr[341].vfcl[341].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[341].vfcl[341].vfal" 1;
	setAttr ".vclr[342].vxal" 1;
	setAttr -s 4 ".vclr[342].vfcl";
	setAttr ".vclr[342].vfcl[321].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[342].vfcl[321].vfal" 1;
	setAttr ".vclr[342].vfcl[322].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[342].vfcl[322].vfal" 1;
	setAttr ".vclr[342].vfcl[341].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[342].vfcl[341].vfal" 1;
	setAttr ".vclr[342].vfcl[342].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[342].vfcl[342].vfal" 1;
	setAttr ".vclr[343].vxal" 1;
	setAttr -s 4 ".vclr[343].vfcl";
	setAttr ".vclr[343].vfcl[322].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[343].vfcl[322].vfal" 1;
	setAttr ".vclr[343].vfcl[323].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[343].vfcl[323].vfal" 1;
	setAttr ".vclr[343].vfcl[342].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[343].vfcl[342].vfal" 1;
	setAttr ".vclr[343].vfcl[343].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[343].vfcl[343].vfal" 1;
	setAttr ".vclr[344].vxal" 1;
	setAttr -s 4 ".vclr[344].vfcl";
	setAttr ".vclr[344].vfcl[323].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[344].vfcl[323].vfal" 1;
	setAttr ".vclr[344].vfcl[324].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[344].vfcl[324].vfal" 1;
	setAttr ".vclr[344].vfcl[343].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[344].vfcl[343].vfal" 1;
	setAttr ".vclr[344].vfcl[344].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[344].vfcl[344].vfal" 1;
	setAttr ".vclr[345].vxal" 1;
	setAttr -s 4 ".vclr[345].vfcl";
	setAttr ".vclr[345].vfcl[324].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[345].vfcl[324].vfal" 1;
	setAttr ".vclr[345].vfcl[325].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[345].vfcl[325].vfal" 1;
	setAttr ".vclr[345].vfcl[344].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[345].vfcl[344].vfal" 1;
	setAttr ".vclr[345].vfcl[345].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[345].vfcl[345].vfal" 1;
	setAttr ".vclr[346].vxal" 1;
	setAttr -s 4 ".vclr[346].vfcl";
	setAttr ".vclr[346].vfcl[325].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[346].vfcl[325].vfal" 1;
	setAttr ".vclr[346].vfcl[326].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[346].vfcl[326].vfal" 1;
	setAttr ".vclr[346].vfcl[345].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[346].vfcl[345].vfal" 1;
	setAttr ".vclr[346].vfcl[346].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[346].vfcl[346].vfal" 1;
	setAttr ".vclr[347].vxal" 1;
	setAttr -s 4 ".vclr[347].vfcl";
	setAttr ".vclr[347].vfcl[326].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[347].vfcl[326].vfal" 1;
	setAttr ".vclr[347].vfcl[327].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[347].vfcl[327].vfal" 1;
	setAttr ".vclr[347].vfcl[346].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[347].vfcl[346].vfal" 1;
	setAttr ".vclr[347].vfcl[347].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[347].vfcl[347].vfal" 1;
	setAttr ".vclr[348].vxal" 1;
	setAttr -s 4 ".vclr[348].vfcl";
	setAttr ".vclr[348].vfcl[327].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[348].vfcl[327].vfal" 1;
	setAttr ".vclr[348].vfcl[328].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[348].vfcl[328].vfal" 1;
	setAttr ".vclr[348].vfcl[347].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[348].vfcl[347].vfal" 1;
	setAttr ".vclr[348].vfcl[348].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[348].vfcl[348].vfal" 1;
	setAttr ".vclr[349].vxal" 1;
	setAttr -s 4 ".vclr[349].vfcl";
	setAttr ".vclr[349].vfcl[328].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[349].vfcl[328].vfal" 1;
	setAttr ".vclr[349].vfcl[329].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[349].vfcl[329].vfal" 1;
	setAttr ".vclr[349].vfcl[348].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[349].vfcl[348].vfal" 1;
	setAttr ".vclr[349].vfcl[349].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[349].vfcl[349].vfal" 1;
	setAttr ".vclr[350].vxal" 1;
	setAttr -s 4 ".vclr[350].vfcl";
	setAttr ".vclr[350].vfcl[329].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[350].vfcl[329].vfal" 1;
	setAttr ".vclr[350].vfcl[330].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[350].vfcl[330].vfal" 1;
	setAttr ".vclr[350].vfcl[349].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[350].vfcl[349].vfal" 1;
	setAttr ".vclr[350].vfcl[350].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[350].vfcl[350].vfal" 1;
	setAttr ".vclr[351].vxal" 1;
	setAttr -s 4 ".vclr[351].vfcl";
	setAttr ".vclr[351].vfcl[330].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[351].vfcl[330].vfal" 1;
	setAttr ".vclr[351].vfcl[331].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[351].vfcl[331].vfal" 1;
	setAttr ".vclr[351].vfcl[350].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[351].vfcl[350].vfal" 1;
	setAttr ".vclr[351].vfcl[351].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[351].vfcl[351].vfal" 1;
	setAttr ".vclr[352].vxal" 1;
	setAttr -s 4 ".vclr[352].vfcl";
	setAttr ".vclr[352].vfcl[331].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[352].vfcl[331].vfal" 1;
	setAttr ".vclr[352].vfcl[332].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[352].vfcl[332].vfal" 1;
	setAttr ".vclr[352].vfcl[351].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[352].vfcl[351].vfal" 1;
	setAttr ".vclr[352].vfcl[352].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[352].vfcl[352].vfal" 1;
	setAttr ".vclr[353].vxal" 1;
	setAttr -s 4 ".vclr[353].vfcl";
	setAttr ".vclr[353].vfcl[332].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[353].vfcl[332].vfal" 1;
	setAttr ".vclr[353].vfcl[333].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[353].vfcl[333].vfal" 1;
	setAttr ".vclr[353].vfcl[352].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[353].vfcl[352].vfal" 1;
	setAttr ".vclr[353].vfcl[353].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[353].vfcl[353].vfal" 1;
	setAttr ".vclr[354].vxal" 1;
	setAttr -s 4 ".vclr[354].vfcl";
	setAttr ".vclr[354].vfcl[333].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[354].vfcl[333].vfal" 1;
	setAttr ".vclr[354].vfcl[334].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[354].vfcl[334].vfal" 1;
	setAttr ".vclr[354].vfcl[353].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[354].vfcl[353].vfal" 1;
	setAttr ".vclr[354].vfcl[354].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[354].vfcl[354].vfal" 1;
	setAttr ".vclr[355].vxal" 1;
	setAttr -s 4 ".vclr[355].vfcl";
	setAttr ".vclr[355].vfcl[334].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[355].vfcl[334].vfal" 1;
	setAttr ".vclr[355].vfcl[335].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[355].vfcl[335].vfal" 1;
	setAttr ".vclr[355].vfcl[354].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[355].vfcl[354].vfal" 1;
	setAttr ".vclr[355].vfcl[355].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[355].vfcl[355].vfal" 1;
	setAttr ".vclr[356].vxal" 1;
	setAttr -s 4 ".vclr[356].vfcl";
	setAttr ".vclr[356].vfcl[335].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[356].vfcl[335].vfal" 1;
	setAttr ".vclr[356].vfcl[336].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[356].vfcl[336].vfal" 1;
	setAttr ".vclr[356].vfcl[355].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[356].vfcl[355].vfal" 1;
	setAttr ".vclr[356].vfcl[356].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[356].vfcl[356].vfal" 1;
	setAttr ".vclr[357].vxal" 1;
	setAttr -s 4 ".vclr[357].vfcl";
	setAttr ".vclr[357].vfcl[336].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[357].vfcl[336].vfal" 1;
	setAttr ".vclr[357].vfcl[337].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[357].vfcl[337].vfal" 1;
	setAttr ".vclr[357].vfcl[356].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[357].vfcl[356].vfal" 1;
	setAttr ".vclr[357].vfcl[357].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[357].vfcl[357].vfal" 1;
	setAttr ".vclr[358].vxal" 1;
	setAttr -s 4 ".vclr[358].vfcl";
	setAttr ".vclr[358].vfcl[337].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[358].vfcl[337].vfal" 1;
	setAttr ".vclr[358].vfcl[338].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[358].vfcl[338].vfal" 1;
	setAttr ".vclr[358].vfcl[357].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[358].vfcl[357].vfal" 1;
	setAttr ".vclr[358].vfcl[358].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[358].vfcl[358].vfal" 1;
	setAttr ".vclr[359].vxal" 1;
	setAttr -s 4 ".vclr[359].vfcl";
	setAttr ".vclr[359].vfcl[338].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[359].vfcl[338].vfal" 1;
	setAttr ".vclr[359].vfcl[339].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[359].vfcl[339].vfal" 1;
	setAttr ".vclr[359].vfcl[358].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[359].vfcl[358].vfal" 1;
	setAttr ".vclr[359].vfcl[359].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[359].vfcl[359].vfal" 1;
	setAttr ".vclr[360].vxal" 1;
	setAttr -s 4 ".vclr[360].vfcl";
	setAttr ".vclr[360].vfcl[340].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[360].vfcl[340].vfal" 1;
	setAttr ".vclr[360].vfcl[359].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[360].vfcl[359].vfal" 1;
	setAttr ".vclr[360].vfcl[380].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[360].vfcl[380].vfal" 1;
	setAttr ".vclr[360].vfcl[399].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[360].vfcl[399].vfal" 1;
	setAttr ".vclr[361].vxal" 1;
	setAttr -s 4 ".vclr[361].vfcl";
	setAttr ".vclr[361].vfcl[340].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[361].vfcl[340].vfal" 1;
	setAttr ".vclr[361].vfcl[341].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[361].vfcl[341].vfal" 1;
	setAttr ".vclr[361].vfcl[380].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[361].vfcl[380].vfal" 1;
	setAttr ".vclr[361].vfcl[381].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[361].vfcl[381].vfal" 1;
	setAttr ".vclr[362].vxal" 1;
	setAttr -s 4 ".vclr[362].vfcl";
	setAttr ".vclr[362].vfcl[341].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[362].vfcl[341].vfal" 1;
	setAttr ".vclr[362].vfcl[342].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[362].vfcl[342].vfal" 1;
	setAttr ".vclr[362].vfcl[381].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[362].vfcl[381].vfal" 1;
	setAttr ".vclr[362].vfcl[382].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[362].vfcl[382].vfal" 1;
	setAttr ".vclr[363].vxal" 1;
	setAttr -s 4 ".vclr[363].vfcl";
	setAttr ".vclr[363].vfcl[342].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[363].vfcl[342].vfal" 1;
	setAttr ".vclr[363].vfcl[343].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[363].vfcl[343].vfal" 1;
	setAttr ".vclr[363].vfcl[382].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[363].vfcl[382].vfal" 1;
	setAttr ".vclr[363].vfcl[383].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[363].vfcl[383].vfal" 1;
	setAttr ".vclr[364].vxal" 1;
	setAttr -s 4 ".vclr[364].vfcl";
	setAttr ".vclr[364].vfcl[343].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[364].vfcl[343].vfal" 1;
	setAttr ".vclr[364].vfcl[344].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[364].vfcl[344].vfal" 1;
	setAttr ".vclr[364].vfcl[383].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[364].vfcl[383].vfal" 1;
	setAttr ".vclr[364].vfcl[384].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[364].vfcl[384].vfal" 1;
	setAttr ".vclr[365].vxal" 1;
	setAttr -s 4 ".vclr[365].vfcl";
	setAttr ".vclr[365].vfcl[344].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[365].vfcl[344].vfal" 1;
	setAttr ".vclr[365].vfcl[345].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[365].vfcl[345].vfal" 1;
	setAttr ".vclr[365].vfcl[384].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[365].vfcl[384].vfal" 1;
	setAttr ".vclr[365].vfcl[385].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[365].vfcl[385].vfal" 1;
	setAttr ".vclr[366].vxal" 1;
	setAttr -s 4 ".vclr[366].vfcl";
	setAttr ".vclr[366].vfcl[345].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[366].vfcl[345].vfal" 1;
	setAttr ".vclr[366].vfcl[346].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[366].vfcl[346].vfal" 1;
	setAttr ".vclr[366].vfcl[385].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[366].vfcl[385].vfal" 1;
	setAttr ".vclr[366].vfcl[386].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[366].vfcl[386].vfal" 1;
	setAttr ".vclr[367].vxal" 1;
	setAttr -s 4 ".vclr[367].vfcl";
	setAttr ".vclr[367].vfcl[346].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[367].vfcl[346].vfal" 1;
	setAttr ".vclr[367].vfcl[347].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[367].vfcl[347].vfal" 1;
	setAttr ".vclr[367].vfcl[386].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[367].vfcl[386].vfal" 1;
	setAttr ".vclr[367].vfcl[387].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[367].vfcl[387].vfal" 1;
	setAttr ".vclr[368].vxal" 1;
	setAttr -s 4 ".vclr[368].vfcl";
	setAttr ".vclr[368].vfcl[347].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[368].vfcl[347].vfal" 1;
	setAttr ".vclr[368].vfcl[348].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[368].vfcl[348].vfal" 1;
	setAttr ".vclr[368].vfcl[387].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[368].vfcl[387].vfal" 1;
	setAttr ".vclr[368].vfcl[388].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[368].vfcl[388].vfal" 1;
	setAttr ".vclr[369].vxal" 1;
	setAttr -s 4 ".vclr[369].vfcl";
	setAttr ".vclr[369].vfcl[348].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[369].vfcl[348].vfal" 1;
	setAttr ".vclr[369].vfcl[349].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[369].vfcl[349].vfal" 1;
	setAttr ".vclr[369].vfcl[388].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[369].vfcl[388].vfal" 1;
	setAttr ".vclr[369].vfcl[389].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[369].vfcl[389].vfal" 1;
	setAttr ".vclr[370].vxal" 1;
	setAttr -s 4 ".vclr[370].vfcl";
	setAttr ".vclr[370].vfcl[349].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[370].vfcl[349].vfal" 1;
	setAttr ".vclr[370].vfcl[350].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[370].vfcl[350].vfal" 1;
	setAttr ".vclr[370].vfcl[389].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[370].vfcl[389].vfal" 1;
	setAttr ".vclr[370].vfcl[390].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[370].vfcl[390].vfal" 1;
	setAttr ".vclr[371].vxal" 1;
	setAttr -s 4 ".vclr[371].vfcl";
	setAttr ".vclr[371].vfcl[350].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[371].vfcl[350].vfal" 1;
	setAttr ".vclr[371].vfcl[351].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[371].vfcl[351].vfal" 1;
	setAttr ".vclr[371].vfcl[390].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[371].vfcl[390].vfal" 1;
	setAttr ".vclr[371].vfcl[391].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[371].vfcl[391].vfal" 1;
	setAttr ".vclr[372].vxal" 1;
	setAttr -s 4 ".vclr[372].vfcl";
	setAttr ".vclr[372].vfcl[351].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[372].vfcl[351].vfal" 1;
	setAttr ".vclr[372].vfcl[352].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[372].vfcl[352].vfal" 1;
	setAttr ".vclr[372].vfcl[391].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[372].vfcl[391].vfal" 1;
	setAttr ".vclr[372].vfcl[392].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[372].vfcl[392].vfal" 1;
	setAttr ".vclr[373].vxal" 1;
	setAttr -s 4 ".vclr[373].vfcl";
	setAttr ".vclr[373].vfcl[352].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[373].vfcl[352].vfal" 1;
	setAttr ".vclr[373].vfcl[353].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[373].vfcl[353].vfal" 1;
	setAttr ".vclr[373].vfcl[392].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[373].vfcl[392].vfal" 1;
	setAttr ".vclr[373].vfcl[393].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[373].vfcl[393].vfal" 1;
	setAttr ".vclr[374].vxal" 1;
	setAttr -s 4 ".vclr[374].vfcl";
	setAttr ".vclr[374].vfcl[353].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[374].vfcl[353].vfal" 1;
	setAttr ".vclr[374].vfcl[354].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[374].vfcl[354].vfal" 1;
	setAttr ".vclr[374].vfcl[393].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[374].vfcl[393].vfal" 1;
	setAttr ".vclr[374].vfcl[394].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[374].vfcl[394].vfal" 1;
	setAttr ".vclr[375].vxal" 1;
	setAttr -s 4 ".vclr[375].vfcl";
	setAttr ".vclr[375].vfcl[354].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[375].vfcl[354].vfal" 1;
	setAttr ".vclr[375].vfcl[355].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[375].vfcl[355].vfal" 1;
	setAttr ".vclr[375].vfcl[394].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[375].vfcl[394].vfal" 1;
	setAttr ".vclr[375].vfcl[395].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[375].vfcl[395].vfal" 1;
	setAttr ".vclr[376].vxal" 1;
	setAttr -s 4 ".vclr[376].vfcl";
	setAttr ".vclr[376].vfcl[355].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[376].vfcl[355].vfal" 1;
	setAttr ".vclr[376].vfcl[356].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[376].vfcl[356].vfal" 1;
	setAttr ".vclr[376].vfcl[395].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[376].vfcl[395].vfal" 1;
	setAttr ".vclr[376].vfcl[396].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[376].vfcl[396].vfal" 1;
	setAttr ".vclr[377].vxal" 1;
	setAttr -s 4 ".vclr[377].vfcl";
	setAttr ".vclr[377].vfcl[356].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[377].vfcl[356].vfal" 1;
	setAttr ".vclr[377].vfcl[357].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[377].vfcl[357].vfal" 1;
	setAttr ".vclr[377].vfcl[396].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[377].vfcl[396].vfal" 1;
	setAttr ".vclr[377].vfcl[397].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[377].vfcl[397].vfal" 1;
	setAttr ".vclr[378].vxal" 1;
	setAttr -s 4 ".vclr[378].vfcl";
	setAttr ".vclr[378].vfcl[357].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[378].vfcl[357].vfal" 1;
	setAttr ".vclr[378].vfcl[358].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[378].vfcl[358].vfal" 1;
	setAttr ".vclr[378].vfcl[397].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[378].vfcl[397].vfal" 1;
	setAttr ".vclr[378].vfcl[398].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[378].vfcl[398].vfal" 1;
	setAttr ".vclr[379].vxal" 1;
	setAttr -s 4 ".vclr[379].vfcl";
	setAttr ".vclr[379].vfcl[358].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[379].vfcl[358].vfal" 1;
	setAttr ".vclr[379].vfcl[359].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[379].vfcl[359].vfal" 1;
	setAttr ".vclr[379].vfcl[398].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[379].vfcl[398].vfal" 1;
	setAttr ".vclr[379].vfcl[399].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[379].vfcl[399].vfal" 1;
	setAttr ".vclr[380].vxal" 1;
	setAttr -s 20 ".vclr[380].vfcl";
	setAttr ".vclr[380].vfcl[360].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[360].vfal" 1;
	setAttr ".vclr[380].vfcl[361].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[361].vfal" 1;
	setAttr ".vclr[380].vfcl[362].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[362].vfal" 1;
	setAttr ".vclr[380].vfcl[363].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[363].vfal" 1;
	setAttr ".vclr[380].vfcl[364].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[364].vfal" 1;
	setAttr ".vclr[380].vfcl[365].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[365].vfal" 1;
	setAttr ".vclr[380].vfcl[366].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[366].vfal" 1;
	setAttr ".vclr[380].vfcl[367].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[367].vfal" 1;
	setAttr ".vclr[380].vfcl[368].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[368].vfal" 1;
	setAttr ".vclr[380].vfcl[369].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[369].vfal" 1;
	setAttr ".vclr[380].vfcl[370].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[370].vfal" 1;
	setAttr ".vclr[380].vfcl[371].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[371].vfal" 1;
	setAttr ".vclr[380].vfcl[372].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[372].vfal" 1;
	setAttr ".vclr[380].vfcl[373].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[373].vfal" 1;
	setAttr ".vclr[380].vfcl[374].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[374].vfal" 1;
	setAttr ".vclr[380].vfcl[375].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[375].vfal" 1;
	setAttr ".vclr[380].vfcl[376].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[376].vfal" 1;
	setAttr ".vclr[380].vfcl[377].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[377].vfal" 1;
	setAttr ".vclr[380].vfcl[378].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[378].vfal" 1;
	setAttr ".vclr[380].vfcl[379].frgb" -type "float3" 0 1 0 ;
	setAttr ".vclr[380].vfcl[379].vfal" 1;
	setAttr ".vclr[381].vxal" 1;
	setAttr -s 20 ".vclr[381].vfcl";
	setAttr ".vclr[381].vfcl[380].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[380].vfal" 1;
	setAttr ".vclr[381].vfcl[381].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[381].vfal" 1;
	setAttr ".vclr[381].vfcl[382].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[382].vfal" 1;
	setAttr ".vclr[381].vfcl[383].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[383].vfal" 1;
	setAttr ".vclr[381].vfcl[384].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[384].vfal" 1;
	setAttr ".vclr[381].vfcl[385].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[385].vfal" 1;
	setAttr ".vclr[381].vfcl[386].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[386].vfal" 1;
	setAttr ".vclr[381].vfcl[387].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[387].vfal" 1;
	setAttr ".vclr[381].vfcl[388].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[388].vfal" 1;
	setAttr ".vclr[381].vfcl[389].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[389].vfal" 1;
	setAttr ".vclr[381].vfcl[390].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[390].vfal" 1;
	setAttr ".vclr[381].vfcl[391].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[391].vfal" 1;
	setAttr ".vclr[381].vfcl[392].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[392].vfal" 1;
	setAttr ".vclr[381].vfcl[393].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[393].vfal" 1;
	setAttr ".vclr[381].vfcl[394].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[394].vfal" 1;
	setAttr ".vclr[381].vfcl[395].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[395].vfal" 1;
	setAttr ".vclr[381].vfcl[396].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[396].vfal" 1;
	setAttr ".vclr[381].vfcl[397].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[397].vfal" 1;
	setAttr ".vclr[381].vfcl[398].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[398].vfal" 1;
	setAttr ".vclr[381].vfcl[399].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[381].vfcl[399].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "62C9D2CE-49F0-0C26-3356-F7B0052B0EC5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -127.77777270034527 -195.23808748003071 ;
	setAttr ".tgi[0].vh" -type "double2" 461.11109278820243 196.82538900425857 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -88.571426391601563;
	setAttr ".tgi[0].ni[0].y" -30;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 82.857139587402344;
	setAttr ".tgi[0].ni[1].y" -31.428571701049805;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 195.23808288574219;
	setAttr ".tgi[0].ni[2].y" 34.126983642578125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -232.85714721679688;
	setAttr ".tgi[0].ni[3].y" 32.857143402099609;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 227.14285278320313;
	setAttr ".tgi[0].ni[4].y" -31.428571701049805;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -88.571426391601563;
	setAttr ".tgi[0].ni[5].y" 100;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 381.42855834960938;
	setAttr ".tgi[0].ni[6].y" 32.857143402099609;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 62.857143402099609;
	setAttr ".tgi[0].ni[7].y" 98.571426391601563;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 74.285713195800781;
	setAttr ".tgi[0].ni[8].y" 32.857143402099609;
	setAttr ".tgi[0].ni[8].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pivot_matrix.wm" "bifrostGraphShape1.inPivotMatrix";
connectAttr "local_matrix.xm" "bifrostGraphShape1.inLocalMatrix";
connectAttr "pSphereShape1.w" "bifrostGraphShape1.mesh";
connectAttr "decomposeMatrix1.or" "world_matrix.r";
connectAttr "decomposeMatrix1.os" "world_matrix.s";
connectAttr "decomposeMatrix1.ot" "world_matrix.t";
connectAttr "polyColorPerVertex1.out" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bifrostGraphShape1.out_worldMat" "decomposeMatrix1.imat";
connectAttr "polySphere1.out" "polyColorPerVertex1.ip";
connectAttr "world_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "decomposeMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "polySphere1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "pSphere1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "world_matrixShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "pSphereShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "polyColorPerVertex1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bifrostGraphShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "world_matrixShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of compound_validator.ma
