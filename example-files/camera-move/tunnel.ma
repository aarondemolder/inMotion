//Maya ASCII 2017ff04 scene
//Name: tunnel.ma
//Last modified: Fri, Mar 16, 2018 02:56:07 pm
//Codeset: UTF-8
requires maya "2017ff04";
requires -nodeType "VRaySettingsNode" -dataType "vrayFloatVectorData" -dataType "vrayFloatVectorData"
		 -dataType "vrayIntData" "vrayformaya" "3.52.02";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "1.4.2.0";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftBokeh" -nodeType "RedshiftLensDistortion"
		 -nodeType "RedshiftPhysicalLight" -nodeType "RedshiftDisplacement" -nodeType "RedshiftVolumeScattering"
		 -nodeType "RedshiftTriPlanar" -nodeType "RedshiftNoise" -nodeType "RedshiftMaterial"
		 "redshift4maya" "2.5.45";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201702071345-1015190";
fileInfo "osv" "Linux 3.10.0-514.21.1.el7.x86_64 #1 SMP Sat Apr 22 02:41:35 EDT 2017 x86_64";
fileInfo "license" "education";
fileInfo "vrayBuild" "3.52.02 45aa5cc";
createNode transform -s -n "persp";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002BA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.94885718719321166 5.1215369495601797 7.986845191186406 ;
	setAttr ".r" -type "double3" -9.9383527297647891 -365.00000000000972 -4.9885998181945109e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002BB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 100000;
	setAttr ".coi" 5.5651373209685167;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002BD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002BF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Motion_Import_Locator";
	rename -uid "820E2900-0000-1C38-5AAB-B7E8000002D9";
createNode locator -n "Motion_Import_LocatorShape" -p "Motion_Import_Locator";
	rename -uid "820E2900-0000-1C38-5AAB-B7E8000002DA";
	setAttr -k off ".v";
createNode transform -n "camera1" -p "Motion_Import_Locator";
	rename -uid "820E2900-0000-1C38-5AAB-B9E000000305";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "820E2900-0000-1C38-5AAB-B9E000000306";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".fl" 18;
	setAttr ".coi" 53.73491291477972;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" 11.04859213306521 -1.9917191018596316 -36.612807105312825 ;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "pasted__rsPhysicalLight2" -p "Motion_Import_Locator";
	rename -uid "820E2900-0000-1C38-5AAB-C3770000065B";
	setAttr ".r" -type "double3" -3.2758035761705546 -1.8657569086877859 2.2002297307324463 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999989 ;
createNode RedshiftPhysicalLight -n "pasted__rsPhysicalLightShape2" -p "pasted__rsPhysicalLight2";
	rename -uid "820E2900-0000-1C38-5AAB-C3770000065C";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".lightType" 2;
	setAttr ".spotConeAngle" 23.505916595458984;
	setAttr ".areaSamples" 64;
	setAttr ".color" -type "float3" 0.65999997 0.89538193 1 ;
	setAttr ".intensity" 40;
	setAttr ".spotConeFalloffAngle" 180;
	setAttr ".volumeNumSamples" 32;
	setAttr ".de" 2;
	setAttr ".urs" yes;
createNode transform -n "rsPhysicalLight2" -p "Motion_Import_Locator";
	rename -uid "820E2900-0000-1C38-5AAB-C0EC000005DA";
	setAttr ".r" -type "double3" -3.2758035761705546 -1.8657569086877859 2.2002297307324463 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999989 ;
createNode RedshiftPhysicalLight -n "rsPhysicalLightShape2" -p "rsPhysicalLight2";
	rename -uid "820E2900-0000-1C38-5AAB-C0EC000005D9";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".lightType" 2;
	setAttr ".spotConeAngle" 30;
	setAttr ".areaSamples" 64;
	setAttr ".color" -type "float3" 0.86500001 0.97923023 1 ;
	setAttr ".intensity" 10;
	setAttr ".spotConeFalloffAngle" 10;
	setAttr ".volumeNumSamples" 32;
	setAttr ".de" 2;
	setAttr ".urs" yes;
createNode transform -n "pPipe1";
	rename -uid "820E2900-0000-1C38-5AAB-BAA60000039F";
	setAttr ".t" -type "double3" 0 1.3725136212100031 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 -12.346669334626817 8.1396425548579646e-16 ;
	setAttr ".s" -type "double3" 0.59915330917729204 0.59915330917729204 0.59915330917729204 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "820E2900-0000-1C38-5AAB-BAA60000039E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999979138374329 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane1";
	rename -uid "820E2900-0000-1C38-5AAB-BAD2000003AD";
	setAttr ".t" -type "double3" 0 -2.4245074762311578 0 ;
	setAttr ".s" -type "double3" 301.63799926057123 301.63799926057123 301.63799926057123 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "820E2900-0000-1C38-5AAB-BAD2000003AC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "curve1";
	rename -uid "820E2900-0000-1C38-5AAB-BB05000003B9";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "820E2900-0000-1C38-5AAB-BB05000003B8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		0.010683172182695475 0 -1.4465386016996229
		0.45972141417893164 0 -15.327679963782966
		1.3577978981714038 0 -43.089962687949438
		0.5581801053527311 0 -68.402646480818461
		54.324399872982809 0 -126.34395221584035
		63.899636484763072 0 -127.21559994789644
		68.6872547906531 0 -127.65142381392425
		;
createNode transform -n "curve2";
	rename -uid "820E2900-0000-1C38-5AAB-BC64000004A5";
createNode nurbsCurve -n "curveShape2" -p "curve2";
	rename -uid "820E2900-0000-1C38-5AAB-BC64000004A4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 6 0 no 3
		11 0 0 0 1 2 3 4 5 6 6 6
		
		9
		-0.057801569160393716 0 0.86171093698993706
		-0.48750467493352823 0 5.7490388639586412
		-1.3469108864797905 0 15.523694717895969
		-12.095177081678418 0 33.856046589485707
		-45.263662801471689 0 45.687207719399844
		-57.541618119836258 0 64.588458506852959
		-45.386005450693887 0 129.56621295973065
		-16.200332461041381 0 121.09026300347691
		-1.6074959662149972 0 116.85228802534957
		;
createNode transform -n "rsPhysicalLight1";
	rename -uid "820E2900-0000-1C38-5AAB-BDBD0000050F";
createNode RedshiftPhysicalLight -n "rsPhysicalLightShape1" -p "rsPhysicalLight1";
	rename -uid "820E2900-0000-1C38-5AAB-BDBD0000050E";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".color" -type "float3" 0.5 1 0.96153331 ;
	setAttr ".temperature" 17371.904296875;
	setAttr ".intensity" 500;
	setAttr ".de" 2;
	setAttr ".urs" yes;
createNode transform -n "group";
	rename -uid "820E2900-0000-1C38-5AAB-C3770000065D";
	setAttr ".rp" -type "double3" 0.81697128664057983 -0.022181497149942553 -0.57625159261300318 ;
	setAttr ".sp" -type "double3" 0.81697128664057983 -0.022181497149942553 -0.57625159261300318 ;
createNode transform -n "rsPhysicalLight3";
	rename -uid "820E2900-0000-1C38-5AAB-C44100000662";
	setAttr ".t" -type "double3" -42.805260505558309 0 35.495536570596713 ;
	setAttr ".r" -type "double3" 0 -77.101141658517506 0 ;
	setAttr ".s" -type "double3" 0.61498681946341816 0.92620258995938187 0.78917439593844463 ;
createNode RedshiftPhysicalLight -n "rsPhysicalLightShape3" -p "rsPhysicalLight3";
	rename -uid "820E2900-0000-1C38-5AAB-C44100000661";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".areaSamples" 32;
	setAttr ".color" -type "float3" 0.65700001 0.51804453 0.37908903 ;
	setAttr ".intensity" 4000;
	setAttr ".de" 2;
	setAttr ".urs" yes;
createNode transform -n "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C76F0000079B";
createNode transform -n "pCube15" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C76A00000797";
	setAttr ".t" -type "double3" -30.424719249382115 -2.6327760915631253 31.981956108801739 ;
	setAttr ".r" -type "double3" 0 -71.445006438295422 0 ;
	setAttr ".s" -type "double3" 4.7582715661069095 0.61712425750915079 0.44511443315388621 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "820E2900-0000-1C38-5AAB-C76A00000798";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C76A00000794";
	setAttr ".t" -type "double3" -27.699207843534378 -2.6327760915631258 30.856773708889946 ;
	setAttr ".r" -type "double3" 0 -69.940707473993754 0 ;
	setAttr ".s" -type "double3" 4.7582715661069095 0.61712425750915079 0.44511443315388632 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "820E2900-0000-1C38-5AAB-C76A00000795";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C76900000791";
	setAttr ".t" -type "double3" -25.004173999337738 -2.6327760915631262 29.660429095029851 ;
	setAttr ".r" -type "double3" 0 -68.4364085096921 0 ;
	setAttr ".s" -type "double3" 4.7582715661069095 0.61712425750915079 0.44511443315388638 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "820E2900-0000-1C38-5AAB-C76900000792";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C7690000078E";
	setAttr ".t" -type "double3" -22.341475360085692 -2.6327760915631266 28.393746888238155 ;
	setAttr ".r" -type "double3" 0 -66.932109545390432 0 ;
	setAttr ".s" -type "double3" 4.7582715661069095 0.61712425750915079 0.44511443315388649 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "820E2900-0000-1C38-5AAB-C7690000078F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C7660000078B";
	setAttr ".t" -type "double3" -19.712947280937307 -2.6327760915631271 27.057600192098139 ;
	setAttr ".r" -type "double3" 0 -65.42781058108875 0 ;
	setAttr ".s" -type "double3" 4.7582715661069095 0.61712425750915079 0.4451144331538866 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "820E2900-0000-1C38-5AAB-C7660000078C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C76400000788";
	setAttr ".t" -type "double3" -17.120401563836555 -2.6327760915631275 25.652909990943471 ;
	setAttr ".r" -type "double3" 0 -63.923511616787053 0 ;
	setAttr ".s" -type "double3" 4.7582715661069095 0.61712425750915079 0.44511443315388666 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "820E2900-0000-1C38-5AAB-C76400000789";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C76100000785";
	setAttr ".t" -type "double3" -14.565625208666514 -2.6327760915631275 24.180644515038576 ;
	setAttr ".r" -type "double3" 0 -62.419212652485356 0 ;
	setAttr ".s" -type "double3" 4.7582715661069086 0.61712425750915079 0.44511443315388677 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "820E2900-0000-1C38-5AAB-C76100000786";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C75C0000077E";
	setAttr ".t" -type "double3" -12.282203725876018 -2.6327760915631275 22.315052333341768 ;
	setAttr ".r" -type "double3" 0 -53.123805664257617 0 ;
	setAttr ".s" -type "double3" 4.7582715661069077 0.61712425750915079 0.44511443315388693 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "820E2900-0000-1C38-5AAB-C75C0000077F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C7590000077A";
	setAttr ".t" -type "double3" -10.330105847040606 -2.6327760915631275 20.105128866810933 ;
	setAttr ".r" -type "double3" 0 -43.828398676029856 0 ;
	setAttr ".s" -type "double3" 4.7582715661069068 0.6171242575091509 0.44511443315388693 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "820E2900-0000-1C38-5AAB-C7590000077B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C75000000776";
	setAttr ".t" -type "double3" -8.3780079682051962 -2.6327760915631271 17.895205400280101 ;
	setAttr ".r" -type "double3" 0 -43.828398676029835 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915101 0.44511443315388688 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "820E2900-0000-1C38-5AAB-C75000000777";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C73E00000764";
	setAttr ".t" -type "double3" -6.6397418402656054 -2.6327760915631271 15.208204228049549 ;
	setAttr ".r" -type "double3" 0 -43.828398676029835 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915101 0.44511443315388688 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "820E2900-0000-1C38-5AAB-C73E00000765";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C73E00000760";
	setAttr ".t" -type "double3" -4.9519960859938816 -2.6327760915631271 12.493915810399116 ;
	setAttr ".r" -type "double3" 0 -42.977115809079407 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915112 0.44511443315388693 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "820E2900-0000-1C38-5AAB-C73E00000761";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C73D0000075C";
	setAttr ".t" -type "double3" -3.5643640844509976 -2.6327760915631271 9.9882180963306233 ;
	setAttr ".r" -type "double3" 0 -37.920308696658807 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915123 0.44511443315388699 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "820E2900-0000-1C38-5AAB-C73D0000075D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C72700000753";
	setAttr ".t" -type "double3" -2.5161832022858093 -2.6327760915631271 7.8763815368002934 ;
	setAttr ".r" -type "double3" 0 -28.261969727897174 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915134 0.44511443315388705 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "820E2900-0000-1C38-5AAB-C72700000754";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "sleeper_back";
	rename -uid "820E2900-0000-1C38-5AAB-C6D60000072A";
	setAttr ".t" -type "double3" -1.8371678563107039 -2.6327760915631271 5.6186226976334961 ;
	setAttr ".r" -type "double3" 0 -18.603630759135548 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915134 0.44511443315388705 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "820E2900-0000-1C38-5AAB-C6D600000729";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C914000008E8";
createNode transform -n "pasted__pCube1" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C89B0000084A";
	setAttr ".t" -type "double3" -0.99576019619624501 -2.6327760915631271 3.1454956394707976 ;
	setAttr ".r" -type "double3" 0 -18.603630759135548 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915134 0.44511443315388705 ;
createNode mesh -n "pasted__pCubeShape1" -p "pasted__pCube1";
	rename -uid "820E2900-0000-1C38-5AAB-C89B0000084B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube2" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8B800000861";
	setAttr ".t" -type "double3" 0.18178080729917678 -2.6327760915631271 -0.10100825275689251 ;
	setAttr ".r" -type "double3" 0 -18.603630759135548 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915134 0.44511443315388705 ;
createNode mesh -n "pasted__pCubeShape2" -p "pasted__pCube2";
	rename -uid "820E2900-0000-1C38-5AAB-C8B800000862";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube3" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8C400000865";
	setAttr ".t" -type "double3" 1.0515283777243605 -2.6327760915631266 -3.3475121449845826 ;
	setAttr ".r" -type "double3" 0 -18.603630759135541 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915123 0.4451144331538871 ;
createNode mesh -n "pasted__pCubeShape3" -p "pasted__pCube3";
	rename -uid "820E2900-0000-1C38-5AAB-C8C400000866";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube4" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8C600000869";
	setAttr ".t" -type "double3" 1.9212759481495438 -2.6327760915631262 -6.5940160372122723 ;
	setAttr ".r" -type "double3" 0 -18.603630759135537 0 ;
	setAttr ".s" -type "double3" 4.7582715661069059 0.61712425750915112 0.4451144331538871 ;
createNode mesh -n "pasted__pCubeShape4" -p "pasted__pCube4";
	rename -uid "820E2900-0000-1C38-5AAB-C8C60000086A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube5" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8C70000086D";
	setAttr ".t" -type "double3" 2.7910235185747272 -2.6327760915631258 -9.8405199294399619 ;
	setAttr ".r" -type "double3" 0 -18.603630759135537 0 ;
	setAttr ".s" -type "double3" 4.758271566106905 0.61712425750915101 0.4451144331538871 ;
createNode mesh -n "pasted__pCubeShape5" -p "pasted__pCube5";
	rename -uid "820E2900-0000-1C38-5AAB-C8C70000086E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube6" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8C700000871";
	setAttr ".t" -type "double3" 3.5065857834189598 -2.6327760915631253 -13.087023821667652 ;
	setAttr ".r" -type "double3" 0 -16.197997933963805 0 ;
	setAttr ".s" -type "double3" 4.758271566106905 0.6171242575091509 0.4451144331538871 ;
createNode mesh -n "pasted__pCubeShape6" -p "pasted__pCube6";
	rename -uid "820E2900-0000-1C38-5AAB-C8C700000872";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube7" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8CF00000878";
	setAttr ".t" -type "double3" 4.0852490688984506 -2.6327760915631249 -16.360701521007744 ;
	setAttr ".r" -type "double3" 0 -13.792365108792076 0 ;
	setAttr ".s" -type "double3" 4.758271566106905 0.61712425750915079 0.44511443315388716 ;
createNode mesh -n "pasted__pCubeShape7" -p "pasted__pCube7";
	rename -uid "820E2900-0000-1C38-5AAB-C8CF00000879";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube8" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8D00000087B";
	setAttr ".t" -type "double3" 4.5259934328493818 -2.6327760915631244 -19.6557828982675 ;
	setAttr ".r" -type "double3" 0 -15.090477651708461 0 ;
	setAttr ".s" -type "double3" 4.7582715661069042 0.61712425750915068 0.44511443315388732 ;
createNode mesh -n "pasted__pCubeShape8" -p "pasted__pCube8";
	rename -uid "820E2900-0000-1C38-5AAB-C8D00000087C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube9" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8D40000087E";
	setAttr ".t" -type "double3" 5.0412727730326354 -2.6327760915631244 -22.940033814184076 ;
	setAttr ".r" -type "double3" 0 -16.38859019462484 0 ;
	setAttr ".s" -type "double3" 4.7582715661069024 0.61712425750915056 0.44511443315388755 ;
createNode mesh -n "pasted__pCubeShape9" -p "pasted__pCube9";
	rename -uid "820E2900-0000-1C38-5AAB-C8D40000087F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube10" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8D500000881";
	setAttr ".t" -type "double3" 5.829612155354261 -2.6327760915631244 -26.21176850318561 ;
	setAttr ".r" -type "double3" 0 -17.686702737541225 0 ;
	setAttr ".s" -type "double3" 4.7582715661069006 0.61712425750915045 0.44511443315388766 ;
createNode mesh -n "pasted__pCubeShape10" -p "pasted__pCube10";
	rename -uid "820E2900-0000-1C38-5AAB-C8D500000882";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube11" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8D900000886";
	setAttr ".t" -type "double3" 6.691868400578433 -2.6327760915631244 -29.464804166148301 ;
	setAttr ".r" -type "double3" 0 -18.984815280457621 0 ;
	setAttr ".s" -type "double3" 4.7582715661068997 0.61712425750915023 0.44511443315388782 ;
createNode mesh -n "pasted__pCubeShape11" -p "pasted__pCube11";
	rename -uid "820E2900-0000-1C38-5AAB-C8D900000887";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube12" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8D90000088A";
	setAttr ".t" -type "double3" 7.6275989231873176 -2.6327760915631244 -32.697471059905425 ;
	setAttr ".r" -type "double3" 0 -20.28292782337401 0 ;
	setAttr ".s" -type "double3" 4.7582715661068979 0.61712425750915001 0.44511443315388799 ;
createNode mesh -n "pasted__pCubeShape12" -p "pasted__pCube12";
	rename -uid "820E2900-0000-1C38-5AAB-C8D90000088B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube13" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8DA0000088E";
	setAttr ".t" -type "double3" 8.6363234242208335 -2.6327760915631244 -35.908109896328781 ;
	setAttr ".r" -type "double3" 0 -21.581040366290399 0 ;
	setAttr ".s" -type "double3" 4.7582715661068971 0.61712425750914979 0.44511443315388816 ;
createNode mesh -n "pasted__pCubeShape13" -p "pasted__pCube13";
	rename -uid "820E2900-0000-1C38-5AAB-C8DA0000088F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube14" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8DD00000892";
	setAttr ".t" -type "double3" 9.7175241378081996 -2.6327760915631244 -39.095072694020871 ;
	setAttr ".r" -type "double3" 0 -22.879152909206802 0 ;
	setAttr ".s" -type "double3" 4.7582715661068953 0.61712425750914957 0.44511443315388832 ;
createNode mesh -n "pasted__pCubeShape14" -p "pasted__pCube14";
	rename -uid "820E2900-0000-1C38-5AAB-C8DD00000893";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube15" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8DD00000896";
	setAttr ".t" -type "double3" 10.588434831098935 -2.6327760915631244 -42.256723624203474 ;
	setAttr ".r" -type "double3" 0 -24.177265452123212 0 ;
	setAttr ".s" -type "double3" 4.7582715661068935 0.61712425750914934 0.44511443315388854 ;
createNode mesh -n "pasted__pCubeShape15" -p "pasted__pCube15";
	rename -uid "820E2900-0000-1C38-5AAB-C8DD00000897";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube16" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8DF0000089A";
	setAttr ".t" -type "double3" 11.506611105585431 -2.6327760915631249 -45.397833177184111 ;
	setAttr ".r" -type "double3" 0 -25.475377995039626 0 ;
	setAttr ".s" -type "double3" 4.7582715661068926 0.61712425750914912 0.44511443315388888 ;
createNode mesh -n "pasted__pCubeShape16" -p "pasted__pCube16";
	rename -uid "820E2900-0000-1C38-5AAB-C8DF0000089B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube17" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8E00000089E";
	setAttr ".t" -type "double3" 12.495711687092989 -2.6327760915631253 -48.517335851412419 ;
	setAttr ".r" -type "double3" 0 -26.773490537956025 0 ;
	setAttr ".s" -type "double3" 4.7582715661068908 0.61712425750914901 0.44511443315388916 ;
createNode mesh -n "pasted__pCubeShape17" -p "pasted__pCube17";
	rename -uid "820E2900-0000-1C38-5AAB-C8E00000089F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube18" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8E1000008A2";
	setAttr ".t" -type "double3" 13.555228882467185 -2.6327760915631258 -51.613630444561231 ;
	setAttr ".r" -type "double3" 0 -28.071603080872432 0 ;
	setAttr ".s" -type "double3" 4.7582715661068899 0.6171242575091489 0.44511443315388943 ;
createNode mesh -n "pasted__pCubeShape18" -p "pasted__pCube18";
	rename -uid "820E2900-0000-1C38-5AAB-C8E1000008A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube19" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8E1000008A6";
	setAttr ".t" -type "double3" 14.684618854572403 -2.6327760915631262 -54.685127666725748 ;
	setAttr ".r" -type "double3" 0 -29.369715623788824 0 ;
	setAttr ".s" -type "double3" 4.7582715661068891 0.61712425750914879 0.44511443315388977 ;
createNode mesh -n "pasted__pCubeShape19" -p "pasted__pCube19";
	rename -uid "820E2900-0000-1C38-5AAB-C8E1000008A7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube20" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8E6000008AA";
	setAttr ".t" -type "double3" 15.883301901436734 -2.6327760915631266 -57.730250956186495 ;
	setAttr ".r" -type "double3" -1.3997920157917738 -33.960068082524259 0.093477389714159087 ;
	setAttr ".s" -type "double3" 4.7582715661068891 0.61712425750914868 0.4451144331538901 ;
createNode mesh -n "pasted__pCubeShape20" -p "pasted__pCube20";
	rename -uid "820E2900-0000-1C38-5AAB-C8E6000008AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube21" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8EA000008B1";
	setAttr ".t" -type "double3" 17.687825893082106 -2.6713355852944067 -60.668872343366125 ;
	setAttr ".r" -type "double3" -2.8938933289097606 -38.546954143411185 0.33580843078975264 ;
	setAttr ".s" -type "double3" 4.7582715661068908 0.61712425750914834 0.44511443315389049 ;
createNode mesh -n "pasted__pCubeShape21" -p "pasted__pCube21";
	rename -uid "820E2900-0000-1C38-5AAB-C8EA000008B2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube22" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C8ED000008B6";
	setAttr ".t" -type "double3" 19.720379606778803 -2.5986157891239863 -63.451239815321323 ;
	setAttr ".r" -type "double3" -4.521595125611678 -43.126830934127355 0.75910691687015253 ;
	setAttr ".s" -type "double3" 4.7582715661068908 0.61712425750914812 0.44511443315389099 ;
createNode mesh -n "pasted__pCubeShape22" -p "pasted__pCube22";
	rename -uid "820E2900-0000-1C38-5AAB-C8ED000008B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube23" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C903000008D6";
	setAttr ".t" -type "double3" 21.878074009277679 -2.5986157891239863 -66.047321370064282 ;
	setAttr ".r" -type "double3" -4.521595125611678 -43.126830934127355 0.75910691687015253 ;
	setAttr ".s" -type "double3" 4.7582715661068908 0.61712425750914812 0.44511443315389099 ;
createNode mesh -n "pasted__pCubeShape23" -p "pasted__pCube23";
	rename -uid "820E2900-0000-1C38-5AAB-C903000008D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube24" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C90A000008DA";
	setAttr ".t" -type "double3" 24.035768411776562 -2.5986157891239867 -68.643402924807233 ;
	setAttr ".r" -type "double3" -4.5215951256116798 -43.126830934127376 0.75910691687015341 ;
	setAttr ".s" -type "double3" 4.7582715661068926 0.61712425750914823 0.44511443315389093 ;
createNode mesh -n "pasted__pCubeShape24" -p "pasted__pCube24";
	rename -uid "820E2900-0000-1C38-5AAB-C90A000008DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube25" -p "sleeper_frpnt";
	rename -uid "820E2900-0000-1C38-5AAB-C90A000008DE";
	setAttr ".t" -type "double3" 26.193462814275446 -2.5986157891239872 -71.239484479550185 ;
	setAttr ".r" -type "double3" -4.5215951256116789 -43.126830934127391 0.75910691687015464 ;
	setAttr ".s" -type "double3" 4.7582715661068944 0.61712425750914834 0.44511443315389088 ;
createNode mesh -n "pasted__pCubeShape25" -p "pasted__pCube25";
	rename -uid "820E2900-0000-1C38-5AAB-C90A000008DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	rename -uid "820E2900-0000-1C38-5AAB-C93900000957";
	setAttr ".t" -type "double3" 1.5439006154904149 -2.1993851541153489 -1.4911412082944047 ;
	setAttr ".r" -type "double3" 0 -19.737480526671419 0 ;
	setAttr ".s" -type "double3" 0.24854971230938672 0.23574223937299424 0.59512903846380016 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "820E2900-0000-1C38-5AAB-C93900000956";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.14883283525705338 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "curve3";
	rename -uid "820E2900-0000-1C38-5AAB-C9D00000098D";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	rename -uid "820E2900-0000-1C38-5AAB-C9D00000098C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 6 0 no 3
		11 0 0 0 1 2 3 4 5 6 6 6
		
		9
		0.30105097572547324 0 -0.38566156787219319
		1.6743066960150386 0 -4.6813659297662493
		4.4208181365941464 0 -13.272774653554293
		4.0058120327253572 0 -20.085941708318622
		9.4804129797301933 0 -38.318180504873688
		13.143302456627822 0 -51.304593599015114
		19.672207914196285 0 -63.778711272528739
		24.099662647476009 0 -67.218619053771945
		26.313390014115793 0 -68.938572944393314
		;
createNode transform -n "pCube18";
	rename -uid "820E2900-0000-1C38-5AAB-CA77000009D2";
	setAttr ".t" -type "double3" -1.4066324305278322 -2.1993851541153489 -1.4911412082944047 ;
	setAttr ".r" -type "double3" 0 -19.737480526671419 0 ;
	setAttr ".s" -type "double3" 0.24854971230938672 0.23574223937299424 0.59512903846380016 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "820E2900-0000-1C38-5AAB-CA77000009D3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "pCube18";
	rename -uid "820E2900-0000-1C38-5AAB-CA99000009E0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.14883283525705338 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 464 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.56197345 0.875 0.18802655 0.125 0.18802655 0.375
		 0.56197345 0.375 0.18802655 0.625 0.18802655 0.625 0.64036083 0.875 0.10963912 0.125
		 0.10963912 0.375 0.64036083 0.375 0.10963912 0.625 0.10963912 0.625 0.72872174 0.875
		 0.021278296 0.125 0.021278296 0.375 0.72872174 0.375 0.021278296 0.625 0.021278296
		 0.625 0.52766156 0.875 0.2223385 0.125 0.2223385 0.375 0.52766156 0.375 0.2223385
		 0.625 0.2223385 0.58441925 0.5 0.58441925 0.52766156 0.58441925 0.56197345 0.58441925
		 0.64036083 0.58441925 0.72872174 0.58441925 0.75 0.58441925 0 0.58441925 1 0.58441925
		 0.021278296 0.58441925 0.10963912 0.58441925 0.18802655 0.58441925 0.2223385 0.58441925
		 0.25 0.41303018 0.5 0.41303015 0.52766156 0.41303015 0.56197345 0.41303015 0.64036083
		 0.41303015 0.72872174 0.41303018 0.75 0.41303018 0 0.41303018 1 0.41303018 0.021278296
		 0.41303018 0.10963913 0.41303018 0.18802656 0.41303018 0.22233851 0.41303018 0.25
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.41303018
		 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018
		 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018
		 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018
		 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018 0.5 0.41303018
		 0.5 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156
		 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156
		 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156
		 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156
		 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156 0.375 0.52766156
		 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083
		 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083
		 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083
		 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083
		 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083 0.375 0.64036083
		 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345
		 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345
		 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345
		 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345
		 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345 0.375 0.56197345
		 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174
		 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174
		 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174
		 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174
		 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174 0.375 0.72872174
		 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018
		 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75
		 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018
		 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75
		 0.41303018 0.75 0.41303018 0.75 0.41303018 0.75 0.375 0.75 0.375 0.75 0.375 0.75
		 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375
		 0.75;
	setAttr ".uvst[0].uvsp[250:463]" 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75
		 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375
		 0.75 0.375 0.75 0.375 0.75 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925
		 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925
		 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925
		 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925
		 0.5 0.58441925 0.5 0.58441925 0.5 0.58441925 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625
		 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5
		 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625
		 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.52766156 0.625 0.52766156 0.625
		 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625
		 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625
		 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625
		 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625
		 0.52766156 0.625 0.52766156 0.625 0.52766156 0.625 0.56197345 0.625 0.56197345 0.625
		 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625
		 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625
		 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625
		 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625
		 0.56197345 0.625 0.56197345 0.625 0.56197345 0.625 0.64036083 0.625 0.64036083 0.625
		 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625
		 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625
		 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625
		 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625
		 0.64036083 0.625 0.64036083 0.625 0.64036083 0.625 0.72872174 0.625 0.72872174 0.625
		 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625
		 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625
		 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625
		 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625
		 0.72872174 0.625 0.72872174 0.625 0.72872174 0.625 0.75 0.625 0.75 0.625 0.75 0.625
		 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75
		 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625
		 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.58441925
		 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75
		 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925
		 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75
		 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925 0.75 0.58441925
		 0.75 0.58441925 0.75 0.58441925 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 448 ".vt";
	setAttr ".vt[0:165]"  -0.50000006 -0.50000006 0.5 0.5 -0.50000006 0.5 -0.50000006 0.50000006 0.5
		 0.5 0.50000006 0.5 -0.5 0.50000006 -0.5 0.50000006 0.50000006 -0.5 -0.5 -0.50000006 -0.5
		 0.50000006 -0.50000006 -0.5 0.3728669 0.25210622 -0.5 -0.37286684 0.25210622 -0.49999997
		 -0.3728669 0.25210622 0.5 0.37286684 0.25210622 0.49999997 0.3728669 -0.061443496 -0.5
		 -0.37286684 -0.061443496 -0.49999997 -0.3728669 -0.061443511 0.5 0.37286684 -0.061443511 0.49999997
		 0.50000006 -0.41488683 -0.5 -0.5 -0.41488683 -0.5 -0.50000006 -0.41488683 0.5 0.5 -0.41488683 0.5
		 0.50000006 0.38935402 -0.5 -0.5 0.38935402 -0.5 -0.50000006 0.38935402 0.5 0.5 0.38935402 0.5
		 0.337677 0.50000006 -0.5 0.337677 -0.50000006 -0.5 0.33767697 -0.50000006 0.49999997
		 0.33767697 -0.41488683 0.49999997 0.33767697 -0.061443511 0.49999997 0.33767697 0.25210622 0.49999997
		 0.33767697 0.38935402 0.49999997 0.33767697 0.50000006 0.49999997 -0.34787923 0.50000006 -0.5
		 -0.34787923 -0.50000006 -0.5 -0.34787926 -0.50000006 0.5 -0.34787926 -0.41488683 0.5
		 -0.34787926 -0.061443511 0.5 -0.34787926 0.25210622 0.5 -0.34787926 0.38935402 0.5
		 -0.34787926 0.50000006 0.5 -0.35913038 0.46696666 -6.20807266 -0.96050692 0.46700275 -11.45194817
		 -1.80835533 0.46700275 -16.36655426 -3.024874687 0.46700275 -20.77218437 -4.69882298 0.46700275 -24.56032181
		 -6.70474529 0.46700275 -28.03717041 -8.83155441 0.46700275 -31.67387962 -10.86189461 0.46700275 -35.93375015
		 -12.58917427 0.46700275 -41.23153687 -13.98480797 0.46700275 -47.46959305 -15.13820267 0.46700275 -54.22834015
		 -16.14044571 0.46700275 -61.084701538 -17.076824188 0.46700275 -67.62626648 -17.91474152 0.46700275 -73.71279144
		 -18.50363922 0.46700275 -79.4750824 -18.68727875 0.46700275 -85.053665161 -18.31014252 0.46700275 -90.5866394
		 -17.2805748 0.46700275 -96.096008301 -15.60622025 0.46700275 -101.42588806 -13.30278778 0.46700275 -106.40686798
		 -10.38513184 0.46700275 -110.87033081 -6.9008255 0.46700275 -114.73262787 -2.98345947 0.46700275 -118.11644745
		 1.21903229 0.46700275 -121.17790985 5.55835724 0.46700275 -124.074302673 -0.20701742 0.46696857 -6.20741796
		 -0.80856037 0.46699396 -11.45498371 -1.65662766 0.46699396 -16.37111855 -2.8737545 0.46699396 -20.779459
		 -4.54922295 0.46699396 -24.57184219 -6.55685425 0.46699396 -28.052047729 -8.68377495 0.46699396 -31.6889534
		 -10.71269989 0.46699396 -35.94615173 -12.43843842 0.46699396 -41.24010468 -13.83334541 0.46699396 -47.47550583
		 -14.98646736 0.46699396 -54.23286057 -15.9886055 0.46699396 -61.088569641 -16.92496872 0.46699396 -67.63005829
		 -17.76287079 0.46699396 -73.71643066 -18.35165787 0.46699396 -79.4777832 -18.53517532 0.46699396 -85.054542542
		 -18.15808105 0.46699396 -90.58483124 -17.12892532 0.46699396 -96.091064453 -15.45538712 0.46699396 -101.41762543
		 -13.15341949 0.46699396 -106.39481354 -10.2383728 0.46699396 -110.85358429 -6.75844574 0.46699396 -114.71019745
		 -2.84650421 0.46699396 -118.088768005 1.35101318 0.46699396 -121.14628601 5.68732452 0.46699396 -124.040588379
		 5.68731689 0.35634798 -124.040603638 -0.35913134 0.35632092 -6.20797205 -0.96051359 0.35635677 -11.45194817
		 -1.8083601 0.35635677 -16.36655426 -3.024879456 0.35635677 -20.77218246 -4.6988287 0.35635677 -24.5603199
		 -6.70475101 0.35635677 -28.03717041 -8.83155823 0.35635677 -31.67387962 -10.86190033 0.35635677 -35.93375015
		 -12.58917809 0.35635677 -41.23153687 -13.98481369 0.35635677 -47.46959305 -15.13820839 0.35635677 -54.22834015
		 -16.14044952 0.35635677 -61.084701538 -17.076828003 0.35635677 -67.62626648 -17.91474533 0.35635677 -73.71279144
		 -18.50364304 0.35635677 -79.4750824 -18.68728256 0.35635677 -85.053665161 -18.31014633 0.35635677 -90.5866394
		 -17.28058243 0.35635677 -96.096008301 -15.60622025 0.35635677 -101.42588806 -13.30278778 0.35635677 -106.40686798
		 -10.38513184 0.35635677 -110.87033081 -6.9008255 0.35635677 -114.73262787 -2.98345947 0.35635677 -118.11644745
		 1.21903229 0.35635677 -121.17790985 5.55835724 0.35635677 -124.074302673 5.68731689 0.21910015 -124.040603638
		 -0.23200703 0.21907507 -6.20730066 -0.83353329 0.21910161 -11.45448589 -1.68156338 0.21910161 -16.37036896
		 -2.89859009 0.21910161 -20.77826309 -4.57381058 0.21910161 -24.5699501 -6.5811615 0.21910161 -28.049602509
		 -8.70806694 0.21910161 -31.68647575 -10.73721886 0.21910161 -35.94411087 -12.46321487 0.21910161 -41.23869324
		 -13.85823631 0.21910161 -47.47452927 -15.01140213 0.21910161 -54.23211288 -16.013561249 0.21910161 -61.087928772
		 -16.94992447 0.21910161 -67.62942505 -17.78782654 0.21910161 -73.71582794 -18.37662888 0.21910161 -79.47733307
		 -18.56016159 0.21910161 -85.054382324 -18.18307114 0.21910161 -90.58511353 -17.15383911 0.21910161 -96.091850281
		 -15.48017883 0.21910161 -101.41895294 -13.17797852 0.21910161 -106.39678192 -10.26251221 0.21910161 -110.85633087
		 -6.78187561 0.21910161 -114.71388245 -2.86904907 0.21910161 -118.093315125 1.3292923 0.21910161 -121.15148163
		 5.66609192 0.21910161 -124.046127319 5.68730164 -0.094449565 -124.040596008 -0.23201036 -0.094473824 -6.20701599
		 -0.8335495 -0.094448119 -11.45448494 -1.68158054 -0.094448119 -16.37036705 -2.89860821 -0.094448119 -20.77826309
		 -4.57382679 -0.094448119 -24.56994629 -6.58117771 -0.094448119 -28.049598694 -8.70808411 -0.094448119 -31.68647385
		 -10.73723602 -0.094448119 -35.94410706 -12.46323013 -0.094448119 -41.23869324 -13.85825539 -0.094448119 -47.47452927
		 -15.011421204 -0.094448119 -54.23211288 -16.013572693 -0.094448119 -61.087928772
		 -16.94993973 -0.094448119 -67.62942505 -17.78783798 -0.094448119 -73.71582794 -18.37664413 -0.094448119 -79.47733307
		 -18.56017685 -0.094448119 -85.054382324 -18.1830864 -0.094448119 -90.5851059 -17.15385437 -0.094448119 -96.091842651
		 -15.48019409 -0.094448119 -101.41895294 -13.17799377 -0.094448119 -106.39678192 -10.26252747 -0.094448119 -110.85633087
		 -6.78189087 -0.094448119 -114.71388245 -2.86906433 -0.094448119 -118.093307495;
	setAttr ".vt[166:331]" 1.32927704 -0.094448119 -121.15148163 5.66607666 -0.094448119 -124.046127319
		 5.68727875 -0.4478929 -124.040596008 -0.35914087 -0.44791782 -6.20724201 -0.96055508 -0.44788414 -11.45194721
		 -1.80840206 -0.44788414 -16.36655235 -3.024921417 -0.44788414 -20.77217865 -4.6988678 -0.44788414 -24.56031609
		 -6.70479107 -0.44788414 -28.037164688 -8.83159828 -0.44788414 -31.6738739 -10.86193848 -0.44788414 -35.93374634
		 -12.58922195 -0.44788414 -41.23153305 -13.98485756 -0.44788414 -47.46958923 -15.13825226 -0.44788414 -54.22834015
		 -16.14048767 -0.44788414 -61.084693909 -17.07686615 -0.44788414 -67.62625885 -17.91478729 -0.44788414 -73.71278381
		 -18.50368118 -0.44788414 -79.47507477 -18.68732071 -0.44788414 -85.053657532 -18.31018448 -0.44788414 -90.5866394
		 -17.28062057 -0.44788414 -96.096000671 -15.60625076 -0.44788414 -101.42588043 -13.3028183 -0.44788414 -106.40686798
		 -10.38516235 -0.44788414 -110.87032318 -6.90085602 -0.44788414 -114.73262787 -2.98349762 -0.44788414 -118.11645508
		 1.21900177 -0.44788414 -121.17791748 5.55832672 -0.44788414 -124.074310303 -0.20702839 -0.5330289 -6.20650959
		 -0.80861282 -0.53300607 -11.4549818 -1.6566782 -0.53300607 -16.37111664 -2.87380409 -0.53300607 -20.77945328
		 -4.54927158 -0.53300607 -24.57183456 -6.55690289 -0.53300607 -28.0520401 -8.68382454 -0.53300607 -31.68894577
		 -10.71274757 -0.53300607 -35.9461441 -12.43849182 -0.53300607 -41.24010086 -13.83339691 -0.53300607 -47.47550201
		 -14.98652077 -0.53300607 -54.23285294 -15.98865509 -0.53300607 -61.088562012 -16.92501831 -0.53300607 -67.63005066
		 -17.76292038 -0.53300607 -73.71642303 -18.35170746 -0.53300607 -79.47777557 -18.53522491 -0.53300607 -85.054534912
		 -18.15813065 -0.53300607 -90.58482361 -17.12897491 -0.53300607 -96.091056824 -15.45544434 -0.53300607 -101.4176178
		 -13.15348053 -0.53300607 -106.39480591 -10.23843384 -0.53300607 -110.85358429 -6.7585144 -0.53300607 -114.71020508
		 -2.84655762 -0.53300607 -118.088775635 1.35096741 -0.53300607 -121.14629364 5.68727875 -0.53300607 -124.040596008
		 -0.35914183 -0.53303081 -6.20716476 -0.96055984 -0.53299731 -11.45194721 -1.80840588 -0.53299731 -16.36655235
		 -3.024925232 -0.53299731 -20.77217865 -4.69887161 -0.53299731 -24.56031609 -6.70479393 -0.53299731 -28.037164688
		 -8.8316021 -0.53299731 -31.67387199 -10.86194229 -0.53299731 -35.93374252 -12.58922577 -0.53299731 -41.23153305
		 -13.98486137 -0.53299731 -47.46958923 -15.13825607 -0.53299731 -54.22833633 -16.14049149 -0.53299731 -61.084693909
		 -17.076869965 -0.53299731 -67.62625885 -17.91479111 -0.53299731 -73.71278381 -18.503685 -0.53299731 -79.47507477
		 -18.68732452 -0.53299731 -85.053657532 -18.31018829 -0.53299731 -90.5866394 -17.28062439 -0.53299731 -96.096000671
		 -15.60626984 -0.53299731 -101.42588043 -13.30284119 -0.53299731 -106.40686035 -10.38517761 -0.53299731 -110.87033081
		 -6.90087128 -0.53299731 -114.73262024 -2.98351288 -0.53299731 -118.11645508 1.21898651 -0.53299731 -121.17791748
		 5.55831146 -0.53299731 -124.074310303 0.47850227 0.46697712 -6.20446634 -0.12378597 0.46695438 -11.46866131
		 -0.97284031 0.46695438 -16.3916893 -2.19270706 0.46695438 -20.81224823 -3.87503624 0.46695438 -24.62376976
		 -5.89035416 0.46695438 -28.11909103 -8.017791748 0.46695438 -31.75688744 -10.040323257 0.46695438 -36.0020332336
		 -11.75914383 0.46695438 -41.27871704 -13.15075874 0.46695438 -47.50213242 -14.30264282 0.46695438 -54.25321198
		 -15.30432129 0.46695438 -61.10601425 -16.24063492 0.46695438 -67.6471405 -17.07844162 0.46695438 -73.73286438
		 -17.66672516 0.46695438 -79.48999786 -17.84967804 0.46695438 -85.05847168 -17.47281265 0.46695438 -90.57667542
		 -16.44544983 0.46695438 -96.068771362 -14.77567291 0.46695438 -101.38035583 -12.48032379 0.46695438 -106.34049225
		 -9.57706451 0.46695438 -110.77814484 -6.11698914 0.46695438 -114.60919952 -2.22938538 0.46695438 -117.9641037
		 1.9457016 0.46695438 -121.0038604736 6.26847076 0.46695438 -123.88871002 0.64081669 0.46697912 -6.2037673
		 0.038350105 0.46694496 -11.47189999 -0.81093979 0.46694496 -16.39656067 -2.031452179 0.46694496 -20.82001114
		 -3.71540451 0.46694496 -24.63606644 -5.73254776 0.46694496 -28.1349659 -7.86010933 0.46694496 -31.77297211
		 -9.8811245 0.46694496 -36.015266418 -11.59830475 0.46694496 -41.28785324 -12.98913574 0.46694496 -47.5084343
		 -14.1407299 0.46694496 -54.25802612 -15.14229202 0.46694496 -61.11013794 -16.078590393 0.46694496 -67.65117645
		 -16.91637421 0.46694496 -73.73674774 -17.50453568 0.46694496 -79.49287415 -17.68735886 0.46694496 -85.059387207
		 -17.31054306 0.46694496 -90.57473755 -16.2836113 0.46694496 -96.063476563 -14.61471558 0.46694496 -101.37152863
		 -12.32093811 0.46694496 -106.32762146 -9.42046356 0.46694496 -110.76026917 -5.96510315 0.46694496 -114.58526611
		 -2.083267212 0.46694496 -117.93457031 2.086494446 0.46694496 -120.97013092 6.40605164 0.46694496 -123.85275269
		 0.64081573 0.35633337 -6.20366716 0.038344383 0.35629892 -11.47189903 -0.81094551 0.35629892 -16.39656067
		 -2.031457901 0.35629892 -20.82000923 -3.71541023 0.35629892 -24.63606262 -5.73254967 0.35629892 -28.13496399
		 -7.86010933 0.35629892 -31.77296829 -9.8811264 0.35629892 -36.015262604 -11.59830666 0.35629892 -41.28784943
		 -12.98913765 0.35629892 -47.50842667 -14.14073181 0.35629892 -54.25802231 -15.14229584 0.35629892 -61.11013794
		 -16.078594208 0.35629892 -67.65117645 -16.91637802 0.35629892 -73.73674774 -17.50453949 0.35629892 -79.49287415
		 -17.68736267 0.35629892 -85.059387207 -17.31054688 0.35629892 -90.57473755 -16.28361893 0.35629892 -96.063476563
		 -14.61473083 0.35629892 -101.371521 -12.32095337 0.35629892 -106.32762146 -9.42047882 0.35629892 -110.76027679
		 -5.96512604 0.35629892 -114.58528137 -2.0832901 0.35629892 -117.93457031 2.086463928 0.35629892 -120.97014618
		 6.40603638 0.35629892 -123.85276031 6.26847076 0.35630834 -123.88871002 6.26845551 0.21906054 -123.88871002
		 0.51368809 0.21908437 -6.20408964 -0.088650703 0.21905851 -11.46936417 -0.93775749 0.21905851 -16.39274597
		 -2.15776443 0.21905851 -20.81393051 -3.84044361 0.21905851 -24.62643623 -5.85615921 0.21905851 -28.12253189
		 -7.9836216 0.21905851 -31.76037216 -10.0058250427 0.21905851 -36.004901886 -11.72429085 0.21905851 -41.28069687
		 -13.11573601 0.21905851 -47.50349808 -14.26755714 0.21905851 -54.25425339;
	setAttr ".vt[332:447]" -15.26921082 0.21905851 -61.10691071 -16.20551682 0.21905851 -67.64801788
		 -17.043319702 0.21905851 -73.73371124 -17.63157272 0.21905851 -79.49062347 -17.81450272 0.21905851 -85.058662415
		 -17.43763733 0.21905851 -90.57624817 -16.4103775 0.21905851 -96.067611694 -14.74079132 0.21905851 -101.37844086
		 -12.44577789 0.21905851 -106.33770752 -9.54311371 0.21905851 -110.7742691 -6.084083557 0.21905851 -114.60401154
		 -2.19772339 0.21905851 -117.95768738 1.97621155 0.21905851 -120.99653625 6.29827881 0.21905851 -123.88092041
		 6.26844025 -0.094489172 -123.88871002 0.51368427 -0.094464533 -6.20380449 -0.088665962 -0.094491214 -11.46936321
		 -0.9377737 -0.094491214 -16.39274597 -2.15777874 -0.094491214 -20.81393051 -3.84046173 -0.094491214 -24.62643623
		 -5.85617828 -0.094491214 -28.12252998 -7.98364067 -0.094491214 -31.76036835 -10.0058422089 -0.094491214 -36.0048980713
		 -11.72430992 -0.094491214 -41.28069305 -13.11575317 -0.094491214 -47.50349426 -14.26757431 -0.094491214 -54.25425339
		 -15.26922607 -0.094491214 -61.10690689 -16.20553589 -0.094491214 -67.64801788 -17.043338776 -0.094491214 -73.73371124
		 -17.6315918 -0.094491214 -79.49062347 -17.81452179 -0.094491214 -85.058662415 -17.4376564 -0.094491214 -90.57624817
		 -16.41039658 -0.094491214 -96.067611694 -14.74081421 -0.094491214 -101.37844086 -12.44580078 -0.094491214 -106.33769989
		 -9.54314423 -0.094491214 -110.77426147 -6.084106445 -0.094491214 -114.60401154 -2.19775391 -0.094491214 -117.95767975
		 1.97618103 -0.094491214 -120.99652863 6.29824829 -0.094491214 -123.88091278 6.26841736 -0.44793248 -123.88871765
		 0.64080667 -0.44790536 -6.20293617 0.038304329 -0.4479419 -11.47189903 -0.81098461 -0.4479419 -16.39655876
		 -2.031496048 -0.4479419 -20.82000542 -3.71545029 -0.4479419 -24.63606071 -5.73259163 -0.4479419 -28.13496017
		 -7.86015129 -0.4479419 -31.77296448 -9.88116646 -0.4479419 -36.015258789 -11.59834862 -0.4479419 -41.28784561
		 -12.98918343 -0.4479419 -47.50843048 -14.14077759 -0.4479419 -54.25802231 -15.14234161 -0.4479419 -61.11013794
		 -16.078636169 -0.4479419 -67.65117645 -16.9164238 -0.4479419 -73.73675537 -17.50458527 -0.4479419 -79.49287415
		 -17.68741226 -0.4479419 -85.059387207 -17.31059265 -0.4479419 -90.57473755 -16.2836647 -0.4479419 -96.063476563
		 -14.61476135 -0.4479419 -101.371521 -12.32098389 -0.4479419 -106.32762146 -9.42051697 -0.4479419 -110.76027679
		 -5.96515656 -0.4479419 -114.58528137 -2.083320618 -0.4479419 -117.93457031 2.086433411 -0.4479419 -120.97013855
		 6.40600586 -0.4479419 -123.85275269 0.47849083 -0.53302032 -6.20355844 -0.12383938 -0.53304565 -11.46866035
		 -0.97289371 -0.53304565 -16.3916893 -2.19275761 -0.53304565 -20.81224442 -3.87508488 -0.53304565 -24.62376595
		 -5.89040565 -0.53304565 -28.11908531 -8.017843246 -0.53304565 -31.75688171 -10.040372849 -0.53304565 -36.0020294189
		 -11.75919151 -0.53304565 -41.27870941 -13.15080833 -0.53304565 -47.5021286 -14.30269432 -0.53304565 -54.25320816
		 -15.30437469 -0.53304565 -61.10601807 -16.24068832 -0.53304565 -67.6471405 -17.078491211 -0.53304565 -73.73286438
		 -17.66677475 -0.53304565 -79.48999786 -17.84973526 -0.53304565 -85.05846405 -17.47286606 -0.53304565 -90.57668304
		 -16.44550705 -0.53304565 -96.068771362 -14.77573395 -0.53304565 -101.38036346 -12.48038483 -0.53304565 -106.34049988
		 -9.57711792 -0.53304565 -110.77815247 -6.11704254 -0.53304565 -114.60920715 -2.22943878 -0.53304565 -117.9641037
		 1.94564819 -0.53304565 -121.003868103 6.26841736 -0.53304565 -123.88871765 0.64080524 -0.53301835 -6.20285892
		 0.038298607 -0.53305507 -11.47189903 -0.81099033 -0.53305507 -16.39655876 -2.031502724 -0.53305507 -20.82000732
		 -3.71545696 -0.53305507 -24.63606262 -5.73259735 -0.53305507 -28.13495827 -7.86015701 -0.53305507 -31.77296448
		 -9.88117218 -0.53305507 -36.015258789 -11.59835052 -0.53305507 -41.28784561 -12.98918724 -0.53305507 -47.50843048
		 -14.1407814 -0.53305507 -54.25802231 -15.14234543 -0.53305507 -61.11013794 -16.078639984 -0.53305507 -67.65117645
		 -16.91642761 -0.53305507 -73.73675537 -17.50458908 -0.53305507 -79.49287415 -17.68741608 -0.53305507 -85.059387207
		 -17.31059647 -0.53305507 -90.57473755 -16.28366852 -0.53305507 -96.063476563 -14.61477661 -0.53305507 -101.371521
		 -12.32099915 -0.53305507 -106.32762146 -9.42053223 -0.53305507 -110.76027679 -5.96517181 -0.53305507 -114.58527374
		 -2.083335876 -0.53305507 -117.93457031 2.086418152 -0.53305507 -120.97013855 6.4059906 -0.53305507 -123.85275269;
	setAttr -s 892 ".ed";
	setAttr ".ed[0:165]"  0 34 0 2 39 0 4 32 1 6 33 1 0 18 0 1 19 0 2 4 0 3 5 0
		 4 21 1 5 20 1 6 0 0 7 1 0 8 12 1 9 13 1 10 22 0 9 10 1 11 23 0 10 37 1 11 8 1 12 16 1
		 13 17 1 14 10 0 13 14 1 15 11 0 14 36 1 15 12 1 16 7 1 17 6 1 18 14 0 17 18 1 19 15 0
		 18 35 1 19 16 1 20 8 1 21 9 1 22 2 0 21 22 1 23 3 0 22 38 1 23 20 1 24 5 1 25 7 1
		 26 1 0 25 26 1 27 19 1 26 27 1 28 15 1 27 28 1 29 11 1 28 29 1 30 23 1 29 30 1 31 3 0
		 30 31 1 31 24 1 32 24 1 33 25 1 34 26 0 33 34 1 35 27 1 34 35 1 36 28 1 35 36 1 37 29 1
		 36 37 1 38 30 1 37 38 1 39 31 0 38 39 1 39 32 1 4 40 0 40 41 0 41 42 0 42 43 0 43 44 0
		 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0
		 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 32 65 1 65 66 1
		 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1
		 88 89 1 40 65 1 41 66 1 42 67 1 43 68 1 44 69 1 45 70 1 46 71 1 47 72 1 48 73 1 49 74 1
		 50 75 1 51 76 1 52 77 1 53 78 1 54 79 1 55 80 1 56 81 1 57 82 1 58 83 1 59 84 1 60 85 1
		 61 86 1 62 87 1 63 88 1 64 89 0 89 90 1 21 91 0 91 92 0 92 93 0 93 94 0 94 95 0 95 96 0
		 96 97 0 97 98 0 98 99 0 99 100 0 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0
		 105 106 0 106 107 0 107 108 0 108 109 0 109 110 0;
	setAttr ".ed[166:331]" 110 111 0 111 112 0 112 113 0 113 114 0 114 115 0 90 115 1
		 40 91 1 41 92 1 42 93 1 43 94 1 44 95 1 45 96 1 46 97 1 47 98 1 48 99 1 49 100 1
		 50 101 1 51 102 1 52 103 1 53 104 1 54 105 1 55 106 1 56 107 1 57 108 1 58 109 1
		 59 110 1 60 111 1 61 112 1 62 113 1 63 114 1 64 115 0 9 117 0 117 118 0 118 119 0
		 119 120 0 120 121 0 121 122 0 122 123 0 123 124 0 124 125 0 125 126 0 126 127 0 127 128 0
		 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0 133 134 0 134 135 0 135 136 0 136 137 0
		 137 138 0 138 139 0 139 140 0 140 141 0 116 141 1 116 142 1 13 143 1 143 144 1 144 145 1
		 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1 153 154 1
		 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 142 167 1 117 143 1 118 144 1 119 145 1 120 146 1
		 121 147 1 122 148 1 123 149 1 124 150 1 125 151 1 126 152 1 127 153 1 128 154 1 129 155 1
		 130 156 1 131 157 1 132 158 1 133 159 1 134 160 1 135 161 1 136 162 1 137 163 1 138 164 1
		 139 165 1 140 166 1 141 167 0 142 168 1 17 169 1 169 170 1 170 171 1 171 172 1 172 173 1
		 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 191 192 1 192 193 1 168 193 1 143 169 1 144 170 1 145 171 1 146 172 1 147 173 1 148 174 1
		 149 175 1 150 176 1 151 177 1 152 178 1 153 179 1 154 180 1 155 181 1 156 182 1 157 183 1
		 158 184 1 159 185 1 160 186 1 161 187 1 162 188 1 163 189 1 164 190 1 165 191 1 166 192 1
		 167 193 0 33 194 1 194 195 1 195 196 1 196 197 1 197 198 1;
	setAttr ".ed[332:497]" 198 199 1 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1
		 204 205 1 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1
		 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 168 218 1 6 219 0 219 220 0 220 221 0
		 221 222 0 222 223 0 223 224 0 224 225 0 225 226 0 226 227 0 227 228 0 228 229 0 229 230 0
		 230 231 0 231 232 0 232 233 0 233 234 0 234 235 0 235 236 0 236 237 0 237 238 0 238 239 0
		 239 240 0 240 241 0 241 242 0 242 243 0 219 194 1 220 195 1 221 196 1 222 197 1 223 198 1
		 224 199 1 225 200 1 226 201 1 227 202 1 228 203 1 229 204 1 230 205 1 231 206 1 232 207 1
		 233 208 1 234 209 1 235 210 1 236 211 1 237 212 1 238 213 1 239 214 1 240 215 1 241 216 1
		 242 217 1 243 218 0 169 219 1 170 220 1 171 221 1 172 222 1 173 223 1 174 224 1 175 225 1
		 176 226 1 177 227 1 178 228 1 179 229 1 180 230 1 181 231 1 182 232 1 183 233 1 184 234 1
		 185 235 1 186 236 1 187 237 1 188 238 1 189 239 1 190 240 1 191 241 1 192 242 1 193 243 0
		 90 116 1 91 117 1 92 118 1 93 119 1 94 120 1 95 121 1 96 122 1 97 123 1 98 124 1
		 99 125 1 100 126 1 101 127 1 102 128 1 103 129 1 104 130 1 105 131 1 106 132 1 107 133 1
		 108 134 1 109 135 1 110 136 1 111 137 1 112 138 1 113 139 1 114 140 1 115 141 0 24 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 260 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 5 269 0 269 270 0 270 271 0
		 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 280 0
		 280 281 0 281 282 0 282 283 0 283 284 0 284 285 0 285 286 0 286 287 0;
	setAttr ".ed[498:663]" 287 288 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0
		 244 269 1 245 270 1 246 271 1 247 272 1 248 273 1 249 274 1 250 275 1 251 276 1 252 277 1
		 253 278 1 254 279 1 255 280 1 256 281 1 257 282 1 258 283 1 259 284 1 260 285 1 261 286 1
		 262 287 1 263 288 1 264 289 1 265 290 1 266 291 1 267 292 1 268 293 0 20 294 0 294 295 0
		 295 296 0 296 297 0 297 298 0 298 299 0 299 300 0 300 301 0 301 302 0 302 303 0 303 304 0
		 304 305 0 305 306 0 306 307 0 307 308 0 308 309 0 309 310 0 310 311 0 311 312 0 312 313 0
		 313 314 0 314 315 0 315 316 0 316 317 0 317 318 0 269 294 1 270 295 1 271 296 1 272 297 1
		 273 298 1 274 299 1 275 300 1 276 301 1 277 302 1 278 303 1 279 304 1 280 305 1 281 306 1
		 282 307 1 283 308 1 284 309 1 285 310 1 286 311 1 287 312 1 288 313 1 289 314 1 290 315 1
		 291 316 1 292 317 1 293 318 0 318 319 1 268 319 1 319 320 1 8 321 0 321 322 0 322 323 0
		 323 324 0 324 325 0 325 326 0 326 327 0 327 328 0 328 329 0 329 330 0 330 331 0 331 332 0
		 332 333 0 333 334 0 334 335 0 335 336 0 336 337 0 337 338 0 338 339 0 339 340 0 340 341 0
		 341 342 0 342 343 0 343 344 0 344 345 0 294 321 1 295 322 1 296 323 1 297 324 1 298 325 1
		 299 326 1 300 327 1 301 328 1 302 329 1 303 330 1 304 331 1 305 332 1 306 333 1 307 334 1
		 308 335 1 309 336 1 310 337 1 311 338 1 312 339 1 313 340 1 314 341 1 315 342 1 316 343 1
		 317 344 1 318 345 0 345 320 1 320 346 1 12 347 1 347 348 1 348 349 1 349 350 1 350 351 1
		 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1 359 360 1
		 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 367 368 1 368 369 1
		 369 370 1 370 371 1 321 347 1 322 348 1 323 349 1 324 350 1 325 351 1;
	setAttr ".ed[664:829]" 326 352 1 327 353 1 328 354 1 329 355 1 330 356 1 331 357 1
		 332 358 1 333 359 1 334 360 1 335 361 1 336 362 1 337 363 1 338 364 1 339 365 1 340 366 1
		 341 367 1 342 368 1 343 369 1 344 370 1 345 371 0 371 346 1 346 372 1 16 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 347 373 1 348 374 1 349 375 1 350 376 1
		 351 377 1 352 378 1 353 379 1 354 380 1 355 381 1 356 382 1 357 383 1 358 384 1 359 385 1
		 360 386 1 361 387 1 362 388 1 363 389 1 364 390 1 365 391 1 366 392 1 367 393 1 368 394 1
		 369 395 1 370 396 1 371 397 0 397 372 1 25 398 1 398 399 1 399 400 1 400 401 1 401 402 1
		 402 403 1 403 404 1 404 405 1 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1 410 411 1
		 411 412 1 412 413 1 413 414 1 414 415 1 415 416 1 416 417 1 417 418 1 418 419 1 419 420 1
		 420 421 1 421 422 1 372 422 1 7 423 0 423 424 0 424 425 0 425 426 0 426 427 0 427 428 0
		 428 429 0 429 430 0 430 431 0 431 432 0 432 433 0 433 434 0 434 435 0 435 436 0 436 437 0
		 437 438 0 438 439 0 439 440 0 440 441 0 441 442 0 442 443 0 443 444 0 444 445 0 445 446 0
		 446 447 0 373 423 1 374 424 1 375 425 1 376 426 1 377 427 1 378 428 1 379 429 1 380 430 1
		 381 431 1 382 432 1 383 433 1 384 434 1 385 435 1 386 436 1 387 437 1 388 438 1 389 439 1
		 390 440 1 391 441 1 392 442 1 393 443 1 394 444 1 395 445 1 396 446 1 397 447 0 398 423 1
		 399 424 1 400 425 1 401 426 1 402 427 1 403 428 1 404 429 1 405 430 1 406 431 1 407 432 1
		 408 433 1 409 434 1 410 435 1 411 436 1 412 437 1 413 438 1 414 439 1;
	setAttr ".ed[830:891]" 415 440 1 416 441 1 417 442 1 418 443 1 419 444 1 420 445 1
		 421 446 1 422 447 0 65 244 1 66 245 1 67 246 1 68 247 1 69 248 1 70 249 1 71 250 1
		 72 251 1 73 252 1 74 253 1 75 254 1 76 255 1 77 256 1 78 257 1 79 258 1 80 259 1
		 81 260 1 82 261 1 83 262 1 84 263 1 85 264 1 86 265 1 87 266 1 88 267 1 89 268 0
		 319 90 1 320 116 1 346 142 1 372 168 1 194 398 1 195 399 1 196 400 1 197 401 1 198 402 1
		 199 403 1 200 404 1 201 405 1 202 406 1 203 407 1 204 408 1 205 409 1 206 410 1 207 411 1
		 208 412 1 209 413 1 210 414 1 211 415 1 212 416 1 213 417 1 214 418 1 215 419 1 216 420 1
		 217 421 1 218 422 0;
	setAttr -s 446 -ch 1784 ".fc[0:445]" -type "polyFaces" 
		f 4 38 68 -2 -36
		mu 0 4 36 62 63 2
		f 4 1 69 -3 -7
		mu 0 4 2 63 51 4
		f 4 144 145 171 -197
		mu 0 4 88 113 52 138
		f 4 3 58 -1 -11
		mu 0 4 6 56 58 8
		f 4 39 -10 -8 -38
		mu 0 4 37 33 11 3
		f 4 36 35 6 8
		mu 0 4 34 36 2 13
		f 4 -223 223 249 -275
		mu 0 4 188 53 54 163
		f 4 22 21 -16 13
		mu 0 4 22 24 18 16
		f 4 24 64 -18 -22
		mu 0 4 24 60 61 18
		f 4 25 -13 -19 -24
		mu 0 4 25 21 15 19
		f 4 -250 275 301 -327
		mu 0 4 163 54 55 213
		f 4 29 28 -23 20
		mu 0 4 28 30 24 22
		f 4 31 62 -25 -29
		mu 0 4 30 59 60 24
		f 4 32 -20 -26 -31
		mu 0 4 31 27 21 25
		f 4 -302 352 -403 -428
		mu 0 4 213 55 238 263
		f 4 10 4 -30 27
		mu 0 4 12 0 30 28
		f 4 0 60 -32 -5
		mu 0 4 0 57 59 30
		f 4 -12 -27 -33 -6
		mu 0 4 1 10 27 31
		f 4 -172 428 222 -454
		mu 0 4 138 52 53 188
		f 4 15 14 -37 34
		mu 0 4 16 18 36 34
		f 4 17 66 -39 -15
		mu 0 4 18 61 62 36
		f 4 18 -34 -40 -17
		mu 0 4 19 15 33 37
		f 4 528 578 579 -581
		mu 0 4 288 313 338 39
		f 4 -582 -580 631 632
		mu 0 4 40 39 338 363
		f 4 -634 -633 683 684
		mu 0 4 41 40 363 388
		f 4 -686 -685 735 736
		mu 0 4 42 41 388 413
		f 4 -763 -737 812 -838
		mu 0 4 463 42 413 438
		f 4 -44 41 11 -43
		mu 0 4 45 43 7 9
		f 4 -46 42 5 -45
		mu 0 4 46 44 1 31
		f 4 -48 44 30 -47
		mu 0 4 47 46 31 25
		f 4 -50 46 23 -49
		mu 0 4 48 47 25 19
		f 4 -52 48 16 -51
		mu 0 4 49 48 19 37
		f 4 -54 50 37 -53
		mu 0 4 50 49 37 3
		f 4 -55 52 7 -41
		mu 0 4 38 50 3 5
		f 4 862 580 863 -146
		mu 0 4 113 288 39 52
		f 4 -429 -864 581 864
		mu 0 4 53 52 39 40
		f 4 -224 -865 633 865
		mu 0 4 54 53 40 41
		f 4 -276 -866 685 866
		mu 0 4 55 54 41 42
		f 4 -353 -867 762 -892
		mu 0 4 238 55 42 463
		f 4 -59 56 43 -58
		mu 0 4 58 56 43 45
		f 4 -61 57 45 -60
		mu 0 4 59 57 44 46
		f 4 -63 59 47 -62
		mu 0 4 60 59 46 47
		f 4 -65 61 49 -64
		mu 0 4 61 60 47 48
		f 4 -67 63 51 -66
		mu 0 4 62 61 48 49
		f 4 -69 65 53 -68
		mu 0 4 63 62 49 50
		f 4 -70 67 54 -56
		mu 0 4 51 63 50 38
		f 4 2 95 -121 -71
		mu 0 4 4 51 89 64
		f 4 120 96 -122 -72
		mu 0 4 64 89 90 65
		f 4 121 97 -123 -73
		mu 0 4 65 90 91 66
		f 4 122 98 -124 -74
		mu 0 4 66 91 92 67
		f 4 123 99 -125 -75
		mu 0 4 67 92 93 68
		f 4 124 100 -126 -76
		mu 0 4 68 93 94 69
		f 4 125 101 -127 -77
		mu 0 4 69 94 95 70
		f 4 126 102 -128 -78
		mu 0 4 70 95 96 71
		f 4 127 103 -129 -79
		mu 0 4 71 96 97 72
		f 4 128 104 -130 -80
		mu 0 4 72 97 98 73
		f 4 129 105 -131 -81
		mu 0 4 73 98 99 74
		f 4 130 106 -132 -82
		mu 0 4 74 99 100 75
		f 4 131 107 -133 -83
		mu 0 4 75 100 101 76
		f 4 132 108 -134 -84
		mu 0 4 76 101 102 77
		f 4 133 109 -135 -85
		mu 0 4 77 102 103 78
		f 4 134 110 -136 -86
		mu 0 4 78 103 104 79
		f 4 135 111 -137 -87
		mu 0 4 79 104 105 80
		f 4 136 112 -138 -88
		mu 0 4 80 105 106 81
		f 4 137 113 -139 -89
		mu 0 4 81 106 107 82
		f 4 138 114 -140 -90
		mu 0 4 82 107 108 83
		f 4 139 115 -141 -91
		mu 0 4 83 108 109 84
		f 4 140 116 -142 -92
		mu 0 4 84 109 110 85
		f 4 141 117 -143 -93
		mu 0 4 85 110 111 86
		f 4 142 118 -144 -94
		mu 0 4 86 111 112 87
		f 4 143 119 -145 -95
		mu 0 4 87 112 113 88
		f 4 -9 70 172 -147
		mu 0 4 35 4 64 114
		f 4 -173 71 173 -148
		mu 0 4 114 64 65 115
		f 4 -174 72 174 -149
		mu 0 4 115 65 66 116
		f 4 -175 73 175 -150
		mu 0 4 116 66 67 117
		f 4 -176 74 176 -151
		mu 0 4 117 67 68 118
		f 4 -177 75 177 -152
		mu 0 4 118 68 69 119
		f 4 -178 76 178 -153
		mu 0 4 119 69 70 120
		f 4 -179 77 179 -154
		mu 0 4 120 70 71 121
		f 4 -180 78 180 -155
		mu 0 4 121 71 72 122
		f 4 -181 79 181 -156
		mu 0 4 122 72 73 123
		f 4 -182 80 182 -157
		mu 0 4 123 73 74 124
		f 4 -183 81 183 -158
		mu 0 4 124 74 75 125
		f 4 -184 82 184 -159
		mu 0 4 125 75 76 126
		f 4 -185 83 185 -160
		mu 0 4 126 76 77 127
		f 4 -186 84 186 -161
		mu 0 4 127 77 78 128
		f 4 -187 85 187 -162
		mu 0 4 128 78 79 129
		f 4 -188 86 188 -163
		mu 0 4 129 79 80 130
		f 4 -189 87 189 -164
		mu 0 4 130 80 81 131
		f 4 -190 88 190 -165
		mu 0 4 131 81 82 132
		f 4 -191 89 191 -166
		mu 0 4 132 82 83 133
		f 4 -192 90 192 -167
		mu 0 4 133 83 84 134
		f 4 -193 91 193 -168
		mu 0 4 134 84 85 135
		f 4 -194 92 194 -169
		mu 0 4 135 85 86 136
		f 4 -195 93 195 -170
		mu 0 4 136 86 87 137
		f 4 -196 94 196 -171
		mu 0 4 137 87 88 138
		f 4 -14 197 250 -225
		mu 0 4 23 17 164 139
		f 4 -251 198 251 -226
		mu 0 4 139 164 165 140
		f 4 -252 199 252 -227
		mu 0 4 140 165 166 141
		f 4 -253 200 253 -228
		mu 0 4 141 166 167 142
		f 4 -254 201 254 -229
		mu 0 4 142 167 168 143
		f 4 -255 202 255 -230
		mu 0 4 143 168 169 144
		f 4 -256 203 256 -231
		mu 0 4 144 169 170 145
		f 4 -257 204 257 -232
		mu 0 4 145 170 171 146
		f 4 -258 205 258 -233
		mu 0 4 146 171 172 147
		f 4 -259 206 259 -234
		mu 0 4 147 172 173 148
		f 4 -260 207 260 -235
		mu 0 4 148 173 174 149
		f 4 -261 208 261 -236
		mu 0 4 149 174 175 150
		f 4 -262 209 262 -237
		mu 0 4 150 175 176 151
		f 4 -263 210 263 -238
		mu 0 4 151 176 177 152
		f 4 -264 211 264 -239
		mu 0 4 152 177 178 153
		f 4 -265 212 265 -240
		mu 0 4 153 178 179 154
		f 4 -266 213 266 -241
		mu 0 4 154 179 180 155
		f 4 -267 214 267 -242
		mu 0 4 155 180 181 156
		f 4 -268 215 268 -243
		mu 0 4 156 181 182 157
		f 4 -269 216 269 -244
		mu 0 4 157 182 183 158
		f 4 -270 217 270 -245
		mu 0 4 158 183 184 159
		f 4 -271 218 271 -246
		mu 0 4 159 184 185 160
		f 4 -272 219 272 -247
		mu 0 4 160 185 186 161
		f 4 -273 220 273 -248
		mu 0 4 161 186 187 162
		f 4 -274 221 274 -249
		mu 0 4 162 187 188 163
		f 4 -21 224 302 -277
		mu 0 4 29 23 139 189
		f 4 -303 225 303 -278
		mu 0 4 189 139 140 190
		f 4 -304 226 304 -279
		mu 0 4 190 140 141 191
		f 4 -305 227 305 -280
		mu 0 4 191 141 142 192
		f 4 -306 228 306 -281
		mu 0 4 192 142 143 193
		f 4 -307 229 307 -282
		mu 0 4 193 143 144 194
		f 4 -308 230 308 -283
		mu 0 4 194 144 145 195
		f 4 -309 231 309 -284
		mu 0 4 195 145 146 196
		f 4 -310 232 310 -285
		mu 0 4 196 146 147 197
		f 4 -311 233 311 -286
		mu 0 4 197 147 148 198
		f 4 -312 234 312 -287
		mu 0 4 198 148 149 199
		f 4 -313 235 313 -288
		mu 0 4 199 149 150 200
		f 4 -314 236 314 -289
		mu 0 4 200 150 151 201
		f 4 -315 237 315 -290
		mu 0 4 201 151 152 202
		f 4 -316 238 316 -291
		mu 0 4 202 152 153 203
		f 4 -317 239 317 -292
		mu 0 4 203 153 154 204
		f 4 -318 240 318 -293
		mu 0 4 204 154 155 205
		f 4 -319 241 319 -294
		mu 0 4 205 155 156 206
		f 4 -320 242 320 -295
		mu 0 4 206 156 157 207
		f 4 -321 243 321 -296
		mu 0 4 207 157 158 208
		f 4 -322 244 322 -297
		mu 0 4 208 158 159 209
		f 4 -323 245 323 -298
		mu 0 4 209 159 160 210
		f 4 -324 246 324 -299
		mu 0 4 210 160 161 211
		f 4 -325 247 325 -300
		mu 0 4 211 161 162 212
		f 4 -326 248 326 -301
		mu 0 4 212 162 163 213
		f 4 -4 353 378 -328
		mu 0 4 56 6 239 214
		f 4 -379 354 379 -329
		mu 0 4 214 239 240 215
		f 4 -380 355 380 -330
		mu 0 4 215 240 241 216
		f 4 -381 356 381 -331
		mu 0 4 216 241 242 217
		f 4 -382 357 382 -332
		mu 0 4 217 242 243 218
		f 4 -383 358 383 -333
		mu 0 4 218 243 244 219
		f 4 -384 359 384 -334
		mu 0 4 219 244 245 220
		f 4 -385 360 385 -335
		mu 0 4 220 245 246 221
		f 4 -386 361 386 -336
		mu 0 4 221 246 247 222
		f 4 -387 362 387 -337
		mu 0 4 222 247 248 223
		f 4 -388 363 388 -338
		mu 0 4 223 248 249 224
		f 4 -389 364 389 -339
		mu 0 4 224 249 250 225
		f 4 -390 365 390 -340
		mu 0 4 225 250 251 226
		f 4 -391 366 391 -341
		mu 0 4 226 251 252 227
		f 4 -392 367 392 -342
		mu 0 4 227 252 253 228
		f 4 -393 368 393 -343
		mu 0 4 228 253 254 229
		f 4 -394 369 394 -344
		mu 0 4 229 254 255 230
		f 4 -395 370 395 -345
		mu 0 4 230 255 256 231
		f 4 -396 371 396 -346
		mu 0 4 231 256 257 232
		f 4 -397 372 397 -347
		mu 0 4 232 257 258 233
		f 4 -398 373 398 -348
		mu 0 4 233 258 259 234
		f 4 -399 374 399 -349
		mu 0 4 234 259 260 235
		f 4 -400 375 400 -350
		mu 0 4 235 260 261 236
		f 4 -401 376 401 -351
		mu 0 4 236 261 262 237
		f 4 -402 377 402 -352
		mu 0 4 237 262 263 238
		f 4 -28 276 403 -354
		mu 0 4 6 29 189 239
		f 4 -404 277 404 -355
		mu 0 4 239 189 190 240
		f 4 -405 278 405 -356
		mu 0 4 240 190 191 241
		f 4 -406 279 406 -357
		mu 0 4 241 191 192 242
		f 4 -407 280 407 -358
		mu 0 4 242 192 193 243
		f 4 -408 281 408 -359
		mu 0 4 243 193 194 244
		f 4 -409 282 409 -360
		mu 0 4 244 194 195 245
		f 4 -410 283 410 -361
		mu 0 4 245 195 196 246
		f 4 -411 284 411 -362
		mu 0 4 246 196 197 247
		f 4 -412 285 412 -363
		mu 0 4 247 197 198 248
		f 4 -413 286 413 -364
		mu 0 4 248 198 199 249
		f 4 -414 287 414 -365
		mu 0 4 249 199 200 250
		f 4 -415 288 415 -366
		mu 0 4 250 200 201 251
		f 4 -416 289 416 -367
		mu 0 4 251 201 202 252
		f 4 -417 290 417 -368
		mu 0 4 252 202 203 253
		f 4 -418 291 418 -369
		mu 0 4 253 203 204 254
		f 4 -419 292 419 -370
		mu 0 4 254 204 205 255
		f 4 -420 293 420 -371
		mu 0 4 255 205 206 256
		f 4 -421 294 421 -372
		mu 0 4 256 206 207 257
		f 4 -422 295 422 -373
		mu 0 4 257 207 208 258
		f 4 -423 296 423 -374
		mu 0 4 258 208 209 259
		f 4 -424 297 424 -375
		mu 0 4 259 209 210 260
		f 4 -425 298 425 -376
		mu 0 4 260 210 211 261
		f 4 -426 299 426 -377
		mu 0 4 261 211 212 262
		f 4 -427 300 427 -378
		mu 0 4 262 212 213 263
		f 4 -35 146 429 -198
		mu 0 4 17 35 114 164
		f 4 -430 147 430 -199
		mu 0 4 164 114 115 165
		f 4 -431 148 431 -200
		mu 0 4 165 115 116 166
		f 4 -432 149 432 -201
		mu 0 4 166 116 117 167
		f 4 -433 150 433 -202
		mu 0 4 167 117 118 168
		f 4 -434 151 434 -203
		mu 0 4 168 118 119 169
		f 4 -435 152 435 -204
		mu 0 4 169 119 120 170
		f 4 -436 153 436 -205
		mu 0 4 170 120 121 171
		f 4 -437 154 437 -206
		mu 0 4 171 121 122 172
		f 4 -438 155 438 -207
		mu 0 4 172 122 123 173
		f 4 -439 156 439 -208
		mu 0 4 173 123 124 174
		f 4 -440 157 440 -209
		mu 0 4 174 124 125 175
		f 4 -441 158 441 -210
		mu 0 4 175 125 126 176
		f 4 -442 159 442 -211
		mu 0 4 176 126 127 177
		f 4 -443 160 443 -212
		mu 0 4 177 127 128 178
		f 4 -444 161 444 -213
		mu 0 4 178 128 129 179
		f 4 -445 162 445 -214
		mu 0 4 179 129 130 180
		f 4 -446 163 446 -215
		mu 0 4 180 130 131 181
		f 4 -447 164 447 -216
		mu 0 4 181 131 132 182
		f 4 -448 165 448 -217
		mu 0 4 182 132 133 183
		f 4 -449 166 449 -218
		mu 0 4 183 133 134 184
		f 4 -450 167 450 -219
		mu 0 4 184 134 135 185
		f 4 -451 168 451 -220
		mu 0 4 185 135 136 186
		f 4 -452 169 452 -221
		mu 0 4 186 136 137 187
		f 4 -453 170 453 -222
		mu 0 4 187 137 138 188
		f 4 40 479 -505 -455
		mu 0 4 38 5 289 264
		f 4 504 480 -506 -456
		mu 0 4 264 289 290 265
		f 4 505 481 -507 -457
		mu 0 4 265 290 291 266
		f 4 506 482 -508 -458
		mu 0 4 266 291 292 267
		f 4 507 483 -509 -459
		mu 0 4 267 292 293 268
		f 4 508 484 -510 -460
		mu 0 4 268 293 294 269
		f 4 509 485 -511 -461
		mu 0 4 269 294 295 270
		f 4 510 486 -512 -462
		mu 0 4 270 295 296 271
		f 4 511 487 -513 -463
		mu 0 4 271 296 297 272
		f 4 512 488 -514 -464
		mu 0 4 272 297 298 273
		f 4 513 489 -515 -465
		mu 0 4 273 298 299 274
		f 4 514 490 -516 -466
		mu 0 4 274 299 300 275
		f 4 515 491 -517 -467
		mu 0 4 275 300 301 276
		f 4 516 492 -518 -468
		mu 0 4 276 301 302 277
		f 4 517 493 -519 -469
		mu 0 4 277 302 303 278
		f 4 518 494 -520 -470
		mu 0 4 278 303 304 279
		f 4 519 495 -521 -471
		mu 0 4 279 304 305 280
		f 4 520 496 -522 -472
		mu 0 4 280 305 306 281
		f 4 521 497 -523 -473
		mu 0 4 281 306 307 282
		f 4 522 498 -524 -474
		mu 0 4 282 307 308 283
		f 4 523 499 -525 -475
		mu 0 4 283 308 309 284
		f 4 524 500 -526 -476
		mu 0 4 284 309 310 285
		f 4 525 501 -527 -477
		mu 0 4 285 310 311 286
		f 4 526 502 -528 -478
		mu 0 4 286 311 312 287
		f 4 527 503 -529 -479
		mu 0 4 287 312 313 288
		f 4 9 529 -555 -480
		mu 0 4 5 32 314 289
		f 4 554 530 -556 -481
		mu 0 4 289 314 315 290
		f 4 555 531 -557 -482
		mu 0 4 290 315 316 291
		f 4 556 532 -558 -483
		mu 0 4 291 316 317 292
		f 4 557 533 -559 -484
		mu 0 4 292 317 318 293
		f 4 558 534 -560 -485
		mu 0 4 293 318 319 294
		f 4 559 535 -561 -486
		mu 0 4 294 319 320 295
		f 4 560 536 -562 -487
		mu 0 4 295 320 321 296
		f 4 561 537 -563 -488
		mu 0 4 296 321 322 297
		f 4 562 538 -564 -489
		mu 0 4 297 322 323 298
		f 4 563 539 -565 -490
		mu 0 4 298 323 324 299
		f 4 564 540 -566 -491
		mu 0 4 299 324 325 300
		f 4 565 541 -567 -492
		mu 0 4 300 325 326 301
		f 4 566 542 -568 -493
		mu 0 4 301 326 327 302
		f 4 567 543 -569 -494
		mu 0 4 302 327 328 303
		f 4 568 544 -570 -495
		mu 0 4 303 328 329 304
		f 4 569 545 -571 -496
		mu 0 4 304 329 330 305
		f 4 570 546 -572 -497
		mu 0 4 305 330 331 306
		f 4 571 547 -573 -498
		mu 0 4 306 331 332 307
		f 4 572 548 -574 -499
		mu 0 4 307 332 333 308
		f 4 573 549 -575 -500
		mu 0 4 308 333 334 309
		f 4 574 550 -576 -501
		mu 0 4 309 334 335 310
		f 4 575 551 -577 -502
		mu 0 4 310 335 336 311
		f 4 576 552 -578 -503
		mu 0 4 311 336 337 312
		f 4 577 553 -579 -504
		mu 0 4 312 337 338 313
		f 4 33 582 -608 -530
		mu 0 4 32 14 339 314
		f 4 607 583 -609 -531
		mu 0 4 314 339 340 315
		f 4 608 584 -610 -532
		mu 0 4 315 340 341 316
		f 4 609 585 -611 -533
		mu 0 4 316 341 342 317
		f 4 610 586 -612 -534
		mu 0 4 317 342 343 318
		f 4 611 587 -613 -535
		mu 0 4 318 343 344 319
		f 4 612 588 -614 -536
		mu 0 4 319 344 345 320
		f 4 613 589 -615 -537
		mu 0 4 320 345 346 321
		f 4 614 590 -616 -538
		mu 0 4 321 346 347 322
		f 4 615 591 -617 -539
		mu 0 4 322 347 348 323
		f 4 616 592 -618 -540
		mu 0 4 323 348 349 324
		f 4 617 593 -619 -541
		mu 0 4 324 349 350 325
		f 4 618 594 -620 -542
		mu 0 4 325 350 351 326
		f 4 619 595 -621 -543
		mu 0 4 326 351 352 327
		f 4 620 596 -622 -544
		mu 0 4 327 352 353 328
		f 4 621 597 -623 -545
		mu 0 4 328 353 354 329
		f 4 622 598 -624 -546
		mu 0 4 329 354 355 330
		f 4 623 599 -625 -547
		mu 0 4 330 355 356 331
		f 4 624 600 -626 -548
		mu 0 4 331 356 357 332
		f 4 625 601 -627 -549
		mu 0 4 332 357 358 333
		f 4 626 602 -628 -550
		mu 0 4 333 358 359 334
		f 4 627 603 -629 -551
		mu 0 4 334 359 360 335
		f 4 628 604 -630 -552
		mu 0 4 335 360 361 336
		f 4 629 605 -631 -553
		mu 0 4 336 361 362 337
		f 4 630 606 -632 -554
		mu 0 4 337 362 363 338
		f 4 12 634 -660 -583
		mu 0 4 14 20 364 339
		f 4 659 635 -661 -584
		mu 0 4 339 364 365 340
		f 4 660 636 -662 -585
		mu 0 4 340 365 366 341
		f 4 661 637 -663 -586
		mu 0 4 341 366 367 342
		f 4 662 638 -664 -587
		mu 0 4 342 367 368 343
		f 4 663 639 -665 -588
		mu 0 4 343 368 369 344
		f 4 664 640 -666 -589
		mu 0 4 344 369 370 345
		f 4 665 641 -667 -590
		mu 0 4 345 370 371 346
		f 4 666 642 -668 -591
		mu 0 4 346 371 372 347
		f 4 667 643 -669 -592
		mu 0 4 347 372 373 348
		f 4 668 644 -670 -593
		mu 0 4 348 373 374 349
		f 4 669 645 -671 -594
		mu 0 4 349 374 375 350
		f 4 670 646 -672 -595
		mu 0 4 350 375 376 351
		f 4 671 647 -673 -596
		mu 0 4 351 376 377 352
		f 4 672 648 -674 -597
		mu 0 4 352 377 378 353
		f 4 673 649 -675 -598
		mu 0 4 353 378 379 354
		f 4 674 650 -676 -599
		mu 0 4 354 379 380 355
		f 4 675 651 -677 -600
		mu 0 4 355 380 381 356
		f 4 676 652 -678 -601
		mu 0 4 356 381 382 357
		f 4 677 653 -679 -602
		mu 0 4 357 382 383 358
		f 4 678 654 -680 -603
		mu 0 4 358 383 384 359
		f 4 679 655 -681 -604
		mu 0 4 359 384 385 360
		f 4 680 656 -682 -605
		mu 0 4 360 385 386 361
		f 4 681 657 -683 -606
		mu 0 4 361 386 387 362
		f 4 682 658 -684 -607
		mu 0 4 362 387 388 363
		f 4 19 686 -712 -635
		mu 0 4 20 26 389 364
		f 4 711 687 -713 -636
		mu 0 4 364 389 390 365
		f 4 712 688 -714 -637
		mu 0 4 365 390 391 366
		f 4 713 689 -715 -638
		mu 0 4 366 391 392 367
		f 4 714 690 -716 -639
		mu 0 4 367 392 393 368
		f 4 715 691 -717 -640
		mu 0 4 368 393 394 369
		f 4 716 692 -718 -641
		mu 0 4 369 394 395 370
		f 4 717 693 -719 -642
		mu 0 4 370 395 396 371
		f 4 718 694 -720 -643
		mu 0 4 371 396 397 372
		f 4 719 695 -721 -644
		mu 0 4 372 397 398 373
		f 4 720 696 -722 -645
		mu 0 4 373 398 399 374
		f 4 721 697 -723 -646
		mu 0 4 374 399 400 375
		f 4 722 698 -724 -647
		mu 0 4 375 400 401 376
		f 4 723 699 -725 -648
		mu 0 4 376 401 402 377
		f 4 724 700 -726 -649
		mu 0 4 377 402 403 378
		f 4 725 701 -727 -650
		mu 0 4 378 403 404 379
		f 4 726 702 -728 -651
		mu 0 4 379 404 405 380
		f 4 727 703 -729 -652
		mu 0 4 380 405 406 381
		f 4 728 704 -730 -653
		mu 0 4 381 406 407 382
		f 4 729 705 -731 -654
		mu 0 4 382 407 408 383
		f 4 730 706 -732 -655
		mu 0 4 383 408 409 384
		f 4 731 707 -733 -656
		mu 0 4 384 409 410 385
		f 4 732 708 -734 -657
		mu 0 4 385 410 411 386
		f 4 733 709 -735 -658
		mu 0 4 386 411 412 387
		f 4 734 710 -736 -659
		mu 0 4 387 412 413 388
		f 4 26 763 -789 -687
		mu 0 4 26 7 414 389
		f 4 788 764 -790 -688
		mu 0 4 389 414 415 390
		f 4 789 765 -791 -689
		mu 0 4 390 415 416 391
		f 4 790 766 -792 -690
		mu 0 4 391 416 417 392
		f 4 791 767 -793 -691
		mu 0 4 392 417 418 393
		f 4 792 768 -794 -692
		mu 0 4 393 418 419 394
		f 4 793 769 -795 -693
		mu 0 4 394 419 420 395
		f 4 794 770 -796 -694
		mu 0 4 395 420 421 396
		f 4 795 771 -797 -695
		mu 0 4 396 421 422 397
		f 4 796 772 -798 -696
		mu 0 4 397 422 423 398
		f 4 797 773 -799 -697
		mu 0 4 398 423 424 399
		f 4 798 774 -800 -698
		mu 0 4 399 424 425 400
		f 4 799 775 -801 -699
		mu 0 4 400 425 426 401
		f 4 800 776 -802 -700
		mu 0 4 401 426 427 402
		f 4 801 777 -803 -701
		mu 0 4 402 427 428 403
		f 4 802 778 -804 -702
		mu 0 4 403 428 429 404
		f 4 803 779 -805 -703
		mu 0 4 404 429 430 405
		f 4 804 780 -806 -704
		mu 0 4 405 430 431 406
		f 4 805 781 -807 -705
		mu 0 4 406 431 432 407
		f 4 806 782 -808 -706
		mu 0 4 407 432 433 408
		f 4 807 783 -809 -707
		mu 0 4 408 433 434 409
		f 4 808 784 -810 -708
		mu 0 4 409 434 435 410
		f 4 809 785 -811 -709
		mu 0 4 410 435 436 411
		f 4 810 786 -812 -710
		mu 0 4 411 436 437 412
		f 4 811 787 -813 -711
		mu 0 4 412 437 438 413
		f 4 -42 737 813 -764
		mu 0 4 7 43 439 414
		f 4 -814 738 814 -765
		mu 0 4 414 439 440 415
		f 4 -815 739 815 -766
		mu 0 4 415 440 441 416
		f 4 -816 740 816 -767
		mu 0 4 416 441 442 417
		f 4 -817 741 817 -768
		mu 0 4 417 442 443 418
		f 4 -818 742 818 -769
		mu 0 4 418 443 444 419
		f 4 -819 743 819 -770
		mu 0 4 419 444 445 420
		f 4 -820 744 820 -771
		mu 0 4 420 445 446 421
		f 4 -821 745 821 -772
		mu 0 4 421 446 447 422
		f 4 -822 746 822 -773
		mu 0 4 422 447 448 423
		f 4 -823 747 823 -774
		mu 0 4 423 448 449 424
		f 4 -824 748 824 -775
		mu 0 4 424 449 450 425
		f 4 -825 749 825 -776
		mu 0 4 425 450 451 426
		f 4 -826 750 826 -777
		mu 0 4 426 451 452 427
		f 4 -827 751 827 -778
		mu 0 4 427 452 453 428
		f 4 -828 752 828 -779
		mu 0 4 428 453 454 429
		f 4 -829 753 829 -780
		mu 0 4 429 454 455 430
		f 4 -830 754 830 -781
		mu 0 4 430 455 456 431
		f 4 -831 755 831 -782
		mu 0 4 431 456 457 432
		f 4 -832 756 832 -783
		mu 0 4 432 457 458 433
		f 4 -833 757 833 -784
		mu 0 4 433 458 459 434
		f 4 -834 758 834 -785
		mu 0 4 434 459 460 435
		f 4 -835 759 835 -786
		mu 0 4 435 460 461 436
		f 4 -836 760 836 -787
		mu 0 4 436 461 462 437
		f 4 -837 761 837 -788
		mu 0 4 437 462 463 438
		f 4 55 454 -839 -96
		mu 0 4 51 38 264 89
		f 4 838 455 -840 -97
		mu 0 4 89 264 265 90
		f 4 839 456 -841 -98
		mu 0 4 90 265 266 91
		f 4 840 457 -842 -99
		mu 0 4 91 266 267 92
		f 4 841 458 -843 -100
		mu 0 4 92 267 268 93
		f 4 842 459 -844 -101
		mu 0 4 93 268 269 94
		f 4 843 460 -845 -102
		mu 0 4 94 269 270 95
		f 4 844 461 -846 -103
		mu 0 4 95 270 271 96
		f 4 845 462 -847 -104
		mu 0 4 96 271 272 97
		f 4 846 463 -848 -105
		mu 0 4 97 272 273 98
		f 4 847 464 -849 -106
		mu 0 4 98 273 274 99
		f 4 848 465 -850 -107
		mu 0 4 99 274 275 100
		f 4 849 466 -851 -108
		mu 0 4 100 275 276 101
		f 4 850 467 -852 -109
		mu 0 4 101 276 277 102
		f 4 851 468 -853 -110
		mu 0 4 102 277 278 103
		f 4 852 469 -854 -111
		mu 0 4 103 278 279 104
		f 4 853 470 -855 -112
		mu 0 4 104 279 280 105
		f 4 854 471 -856 -113
		mu 0 4 105 280 281 106
		f 4 855 472 -857 -114
		mu 0 4 106 281 282 107
		f 4 856 473 -858 -115
		mu 0 4 107 282 283 108
		f 4 857 474 -859 -116
		mu 0 4 108 283 284 109
		f 4 858 475 -860 -117
		mu 0 4 109 284 285 110
		f 4 859 476 -861 -118
		mu 0 4 110 285 286 111
		f 4 860 477 -862 -119
		mu 0 4 111 286 287 112
		f 4 861 478 -863 -120
		mu 0 4 112 287 288 113
		f 4 -57 327 867 -738
		mu 0 4 43 56 214 439
		f 4 -868 328 868 -739
		mu 0 4 439 214 215 440
		f 4 -869 329 869 -740
		mu 0 4 440 215 216 441
		f 4 -870 330 870 -741
		mu 0 4 441 216 217 442
		f 4 -871 331 871 -742
		mu 0 4 442 217 218 443
		f 4 -872 332 872 -743
		mu 0 4 443 218 219 444
		f 4 -873 333 873 -744
		mu 0 4 444 219 220 445
		f 4 -874 334 874 -745
		mu 0 4 445 220 221 446
		f 4 -875 335 875 -746
		mu 0 4 446 221 222 447
		f 4 -876 336 876 -747
		mu 0 4 447 222 223 448
		f 4 -877 337 877 -748
		mu 0 4 448 223 224 449
		f 4 -878 338 878 -749
		mu 0 4 449 224 225 450
		f 4 -879 339 879 -750
		mu 0 4 450 225 226 451
		f 4 -880 340 880 -751
		mu 0 4 451 226 227 452
		f 4 -881 341 881 -752
		mu 0 4 452 227 228 453
		f 4 -882 342 882 -753
		mu 0 4 453 228 229 454
		f 4 -883 343 883 -754
		mu 0 4 454 229 230 455
		f 4 -884 344 884 -755
		mu 0 4 455 230 231 456
		f 4 -885 345 885 -756
		mu 0 4 456 231 232 457
		f 4 -886 346 886 -757
		mu 0 4 457 232 233 458
		f 4 -887 347 887 -758
		mu 0 4 458 233 234 459
		f 4 -888 348 888 -759
		mu 0 4 459 234 235 460
		f 4 -889 349 889 -760
		mu 0 4 460 235 236 461
		f 4 -890 350 890 -761
		mu 0 4 461 236 237 462
		f 4 -891 351 891 -762
		mu 0 4 462 237 238 463;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "curve4";
	rename -uid "820E2900-0000-1C38-5AAB-CBE100000A7C";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	rename -uid "820E2900-0000-1C38-5AAB-CBE100000A7B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-0.19853730799161878 0 0.33859465969754587
		-1.1216616699008117 0 3.3591085100681313
		-2.9679103937191842 0 9.4001362108092508
		-10.31398559204656 0 21.226703012768031
		-21.282201728519041 0 27.456807665488867
		-27.736242400800922 0 29.636494249333037
		-30.963262736941822 0 30.726337541255067
		;
createNode transform -n "pCube17";
	rename -uid "820E2900-0000-1C38-5AAB-CA2F000009A3";
	setAttr ".t" -type "double3" -1.2249029162090341 -2.2187161142972389 0 ;
	setAttr ".r" -type "double3" 0 -19.737480526671419 0 ;
	setAttr ".s" -type "double3" 0.24854971230938672 0.23574223937299424 0.59512903846380016 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "820E2900-0000-1C38-5AAB-CA2F000009A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[64]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[65]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[90]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[115]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[140]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[141]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[142]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[167]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[192]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[193]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[218]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[243]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[268]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[269]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[294]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[319]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[320]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[345]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[346]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[371]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[372]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[397]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[422]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[447]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "pCube17";
	rename -uid "820E2900-0000-1C38-5AAB-CC0E00000A7F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.14883283525705338 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.56197345 0.875 0.18802655 0.125 0.18802655
		 0.375 0.56197345 0.375 0.18802655 0.625 0.18802655 0.625 0.64036083 0.875 0.10963912
		 0.125 0.10963912 0.375 0.64036083 0.375 0.10963912 0.625 0.10963912 0.625 0.72872174
		 0.875 0.021278296 0.125 0.021278296 0.375 0.72872174 0.375 0.021278296 0.625 0.021278296
		 0.625 0.52766156 0.875 0.2223385 0.125 0.2223385 0.375 0.52766156 0.375 0.2223385
		 0.625 0.2223385 0.58441925 0.5 0.58441925 0.52766156 0.58441925 0.56197345 0.58441925
		 0.64036083 0.58441925 0.72872174 0.58441925 0.75 0.58441925 0 0.58441925 1 0.58441925
		 0.021278296 0.58441925 0.10963912 0.58441925 0.18802655 0.58441925 0.2223385 0.58441925
		 0.25 0.41303018 0.5 0.41303015 0.52766156 0.41303015 0.56197345 0.41303015 0.64036083
		 0.41303015 0.72872174 0.41303018 0.75 0.41303018 0 0.41303018 1 0.41303018 0.021278296
		 0.41303018 0.10963913 0.41303018 0.18802656 0.41303018 0.22233851 0.41303018 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[8:15]" -type "float3"  -0.12713313 0 0 0.12713313 0 0 0.12713313 
		0 0 -0.12713313 0 0 -0.12713313 0 0 0.12713313 0 0 0.12713313 0 0 -0.12713313 0 0;
	setAttr -s 48 ".vt[0:47]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 0.25210619 -0.5 -0.5 0.25210619 -0.5
		 -0.5 0.25210619 0.5 0.5 0.25210619 0.5 0.5 -0.061443493 -0.5 -0.5 -0.061443493 -0.5
		 -0.5 -0.061443508 0.5 0.5 -0.061443508 0.5 0.5 -0.4148868 -0.5 -0.5 -0.4148868 -0.5
		 -0.5 -0.4148868 0.5 0.5 -0.4148868 0.5 0.5 0.38935399 -0.5 -0.5 0.38935399 -0.5 -0.5 0.38935399 0.5
		 0.5 0.38935399 0.5 0.337677 0.5 -0.5 0.337677 0.38935399 -0.5 0.337677 0.25210619 -0.5
		 0.337677 -0.061443493 -0.5 0.337677 -0.4148868 -0.5 0.337677 -0.5 -0.5 0.337677 -0.5 0.5
		 0.337677 -0.4148868 0.5 0.337677 -0.061443508 0.5 0.337677 0.25210619 0.5 0.337677 0.38935399 0.5
		 0.337677 0.5 0.5 -0.34787926 0.5 -0.5 -0.34787929 0.38935399 -0.5 -0.34787929 0.25210619 -0.5
		 -0.34787929 -0.061443493 -0.5 -0.34787929 -0.4148868 -0.5 -0.34787926 -0.5 -0.5 -0.34787926 -0.5 0.5
		 -0.34787926 -0.4148868 0.5 -0.34787926 -0.061443508 0.5 -0.34787926 0.25210619 0.5
		 -0.34787926 0.38935399 0.5 -0.34787926 0.5 0.5;
	setAttr -s 92 ".ed[0:91]"  0 42 0 2 47 0 4 36 0 6 41 0 0 18 0 1 19 0
		 2 4 0 3 5 0 4 21 0 5 20 0 6 0 0 7 1 0 8 12 0 9 13 0 8 26 1 10 22 0 9 10 1 11 23 0
		 10 45 1 11 8 1 12 16 0 13 17 0 12 27 1 14 10 0 13 14 1 15 11 0 14 44 1 15 12 1 16 7 0
		 17 6 0 16 28 1 18 14 0 17 18 1 19 15 0 18 43 1 19 16 1 20 8 0 21 9 0 20 25 1 22 2 0
		 21 22 1 23 3 0 22 46 1 23 20 1 24 5 0 25 37 1 24 25 1 26 38 1 25 26 1 27 39 1 26 27 1
		 28 40 1 27 28 1 29 7 0 28 29 1 30 1 0 29 30 1 31 19 1 30 31 1 32 15 1 31 32 1 33 11 1
		 32 33 1 34 23 1 33 34 1 35 3 0 34 35 1 35 24 1 36 24 0 37 21 1 36 37 1 38 9 1 37 38 1
		 39 13 1 38 39 1 40 17 1 39 40 1 41 29 0 40 41 1 42 30 0 41 42 1 43 31 1 42 43 1 44 32 1
		 43 44 1 45 33 1 44 45 1 46 34 1 45 46 1 47 35 0 46 47 1 47 36 1;
	setAttr -s 46 -ch 184 ".fc[0:45]" -type "polyFaces" 
		f 4 42 90 -2 -40
		mu 0 4 36 62 63 2
		f 4 1 91 -3 -7
		mu 0 4 2 63 51 4
		f 4 2 70 69 -9
		mu 0 4 4 51 52 35
		f 4 3 80 -1 -11
		mu 0 4 6 56 58 8
		f 4 43 -10 -8 -42
		mu 0 4 37 33 11 3
		f 4 40 39 6 8
		mu 0 4 34 36 2 13
		f 4 -72 74 73 -14
		mu 0 4 17 53 54 23
		f 4 24 23 -17 13
		mu 0 4 22 24 18 16
		f 4 26 86 -19 -24
		mu 0 4 24 60 61 18
		f 4 27 -13 -20 -26
		mu 0 4 25 21 15 19
		f 4 -74 76 75 -22
		mu 0 4 23 54 55 29
		f 4 32 31 -25 21
		mu 0 4 28 30 24 22
		f 4 34 84 -27 -32
		mu 0 4 30 59 60 24
		f 4 35 -21 -28 -34
		mu 0 4 31 27 21 25
		f 4 -76 78 -4 -30
		mu 0 4 29 55 56 6
		f 4 10 4 -33 29
		mu 0 4 12 0 30 28
		f 4 0 82 -35 -5
		mu 0 4 0 57 59 30
		f 4 -12 -29 -36 -6
		mu 0 4 1 10 27 31
		f 4 -70 72 71 -38
		mu 0 4 35 52 53 17
		f 4 16 15 -41 37
		mu 0 4 16 18 36 34
		f 4 18 88 -43 -16
		mu 0 4 18 61 62 36
		f 4 19 -37 -44 -18
		mu 0 4 19 15 33 37
		f 4 44 9 38 -47
		mu 0 4 38 5 32 39
		f 4 -49 -39 36 14
		mu 0 4 40 39 32 14
		f 4 -51 -15 12 22
		mu 0 4 41 40 14 20
		f 4 -53 -23 20 30
		mu 0 4 42 41 20 26
		f 4 -55 -31 28 -54
		mu 0 4 43 42 26 7
		f 4 -57 53 11 -56
		mu 0 4 45 43 7 9
		f 4 -59 55 5 -58
		mu 0 4 46 44 1 31
		f 4 -61 57 33 -60
		mu 0 4 47 46 31 25
		f 4 -63 59 25 -62
		mu 0 4 48 47 25 19
		f 4 -65 61 17 -64
		mu 0 4 49 48 19 37
		f 4 -67 63 41 -66
		mu 0 4 50 49 37 3
		f 4 -68 65 7 -45
		mu 0 4 38 50 3 5
		f 4 68 46 45 -71
		mu 0 4 51 38 39 52
		f 4 -73 -46 48 47
		mu 0 4 53 52 39 40
		f 4 -75 -48 50 49
		mu 0 4 54 53 40 41
		f 4 -77 -50 52 51
		mu 0 4 55 54 41 42
		f 4 -79 -52 54 -78
		mu 0 4 56 55 42 43
		f 4 -81 77 56 -80
		mu 0 4 58 56 43 45
		f 4 -83 79 58 -82
		mu 0 4 59 57 44 46
		f 4 -85 81 60 -84
		mu 0 4 60 59 46 47
		f 4 -87 83 62 -86
		mu 0 4 61 60 47 48
		f 4 -89 85 64 -88
		mu 0 4 62 61 48 49
		f 4 -91 87 66 -90
		mu 0 4 63 62 49 50
		f 4 -92 89 67 -69
		mu 0 4 51 63 50 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube19";
	rename -uid "820E2900-0000-1C38-5AAB-CCB000000AAB";
	setAttr ".t" -type "double3" 1.7388726230057037 -2.2187161142972389 0 ;
	setAttr ".r" -type "double3" 0 -17.47289159627476 0 ;
	setAttr ".s" -type "double3" 0.24854971230938672 0.23574223937299424 0.59512903846380016 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "820E2900-0000-1C38-5AAB-CCB000000AAC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "pCube19";
	rename -uid "820E2900-0000-1C38-5AAB-CCB000000AAD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.14883283525705338 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.56197345 0.875 0.18802655 0.125 0.18802655
		 0.375 0.56197345 0.375 0.18802655 0.625 0.18802655 0.625 0.64036083 0.875 0.10963912
		 0.125 0.10963912 0.375 0.64036083 0.375 0.10963912 0.625 0.10963912 0.625 0.72872174
		 0.875 0.021278296 0.125 0.021278296 0.375 0.72872174 0.375 0.021278296 0.625 0.021278296
		 0.625 0.52766156 0.875 0.2223385 0.125 0.2223385 0.375 0.52766156 0.375 0.2223385
		 0.625 0.2223385 0.58441925 0.5 0.58441925 0.52766156 0.58441925 0.56197345 0.58441925
		 0.64036083 0.58441925 0.72872174 0.58441925 0.75 0.58441925 0 0.58441925 1 0.58441925
		 0.021278296 0.58441925 0.10963912 0.58441925 0.18802655 0.58441925 0.2223385 0.58441925
		 0.25 0.41303018 0.5 0.41303015 0.52766156 0.41303015 0.56197345 0.41303015 0.64036083
		 0.41303015 0.72872174 0.41303018 0.75 0.41303018 0 0.41303018 1 0.41303018 0.021278296
		 0.41303018 0.10963913 0.41303018 0.18802656 0.41303018 0.22233851 0.41303018 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[8:15]" -type "float3"  -0.12713313 0 0 0.12713313 0 0 0.12713313 
		0 0 -0.12713313 0 0 -0.12713313 0 0 0.12713313 0 0 0.12713313 0 0 -0.12713313 0 0;
	setAttr -s 48 ".vt[0:47]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 0.25210619 -0.5 -0.5 0.25210619 -0.5
		 -0.5 0.25210619 0.5 0.5 0.25210619 0.5 0.5 -0.061443493 -0.5 -0.5 -0.061443493 -0.5
		 -0.5 -0.061443508 0.5 0.5 -0.061443508 0.5 0.5 -0.4148868 -0.5 -0.5 -0.4148868 -0.5
		 -0.5 -0.4148868 0.5 0.5 -0.4148868 0.5 0.5 0.38935399 -0.5 -0.5 0.38935399 -0.5 -0.5 0.38935399 0.5
		 0.5 0.38935399 0.5 0.337677 0.5 -0.5 0.337677 0.38935399 -0.5 0.337677 0.25210619 -0.5
		 0.337677 -0.061443493 -0.5 0.337677 -0.4148868 -0.5 0.337677 -0.5 -0.5 0.337677 -0.5 0.5
		 0.337677 -0.4148868 0.5 0.337677 -0.061443508 0.5 0.337677 0.25210619 0.5 0.337677 0.38935399 0.5
		 0.337677 0.5 0.5 -0.34787926 0.5 -0.5 -0.34787929 0.38935399 -0.5 -0.34787929 0.25210619 -0.5
		 -0.34787929 -0.061443493 -0.5 -0.34787929 -0.4148868 -0.5 -0.34787926 -0.5 -0.5 -0.34787926 -0.5 0.5
		 -0.34787926 -0.4148868 0.5 -0.34787926 -0.061443508 0.5 -0.34787926 0.25210619 0.5
		 -0.34787926 0.38935399 0.5 -0.34787926 0.5 0.5;
	setAttr -s 92 ".ed[0:91]"  0 42 0 2 47 0 4 36 0 6 41 0 0 18 0 1 19 0
		 2 4 0 3 5 0 4 21 0 5 20 0 6 0 0 7 1 0 8 12 0 9 13 0 8 26 1 10 22 0 9 10 1 11 23 0
		 10 45 1 11 8 1 12 16 0 13 17 0 12 27 1 14 10 0 13 14 1 15 11 0 14 44 1 15 12 1 16 7 0
		 17 6 0 16 28 1 18 14 0 17 18 1 19 15 0 18 43 1 19 16 1 20 8 0 21 9 0 20 25 1 22 2 0
		 21 22 1 23 3 0 22 46 1 23 20 1 24 5 0 25 37 1 24 25 1 26 38 1 25 26 1 27 39 1 26 27 1
		 28 40 1 27 28 1 29 7 0 28 29 1 30 1 0 29 30 1 31 19 1 30 31 1 32 15 1 31 32 1 33 11 1
		 32 33 1 34 23 1 33 34 1 35 3 0 34 35 1 35 24 1 36 24 0 37 21 1 36 37 1 38 9 1 37 38 1
		 39 13 1 38 39 1 40 17 1 39 40 1 41 29 0 40 41 1 42 30 0 41 42 1 43 31 1 42 43 1 44 32 1
		 43 44 1 45 33 1 44 45 1 46 34 1 45 46 1 47 35 0 46 47 1 47 36 1;
	setAttr -s 46 -ch 184 ".fc[0:45]" -type "polyFaces" 
		f 4 42 90 -2 -40
		mu 0 4 36 62 63 2
		f 4 1 91 -3 -7
		mu 0 4 2 63 51 4
		f 4 2 70 69 -9
		mu 0 4 4 51 52 35
		f 4 3 80 -1 -11
		mu 0 4 6 56 58 8
		f 4 43 -10 -8 -42
		mu 0 4 37 33 11 3
		f 4 40 39 6 8
		mu 0 4 34 36 2 13
		f 4 -72 74 73 -14
		mu 0 4 17 53 54 23
		f 4 24 23 -17 13
		mu 0 4 22 24 18 16
		f 4 26 86 -19 -24
		mu 0 4 24 60 61 18
		f 4 27 -13 -20 -26
		mu 0 4 25 21 15 19
		f 4 -74 76 75 -22
		mu 0 4 23 54 55 29
		f 4 32 31 -25 21
		mu 0 4 28 30 24 22
		f 4 34 84 -27 -32
		mu 0 4 30 59 60 24
		f 4 35 -21 -28 -34
		mu 0 4 31 27 21 25
		f 4 -76 78 -4 -30
		mu 0 4 29 55 56 6
		f 4 10 4 -33 29
		mu 0 4 12 0 30 28
		f 4 0 82 -35 -5
		mu 0 4 0 57 59 30
		f 4 -12 -29 -36 -6
		mu 0 4 1 10 27 31
		f 4 -70 72 71 -38
		mu 0 4 35 52 53 17
		f 4 16 15 -41 37
		mu 0 4 16 18 36 34
		f 4 18 88 -43 -16
		mu 0 4 18 61 62 36
		f 4 19 -37 -44 -18
		mu 0 4 19 15 33 37
		f 4 44 9 38 -47
		mu 0 4 38 5 32 39
		f 4 -49 -39 36 14
		mu 0 4 40 39 32 14
		f 4 -51 -15 12 22
		mu 0 4 41 40 14 20
		f 4 -53 -23 20 30
		mu 0 4 42 41 20 26
		f 4 -55 -31 28 -54
		mu 0 4 43 42 26 7
		f 4 -57 53 11 -56
		mu 0 4 45 43 7 9
		f 4 -59 55 5 -58
		mu 0 4 46 44 1 31
		f 4 -61 57 33 -60
		mu 0 4 47 46 31 25
		f 4 -63 59 25 -62
		mu 0 4 48 47 25 19
		f 4 -65 61 17 -64
		mu 0 4 49 48 19 37
		f 4 -67 63 41 -66
		mu 0 4 50 49 37 3
		f 4 -68 65 7 -45
		mu 0 4 38 50 3 5
		f 4 68 46 45 -71
		mu 0 4 51 38 39 52
		f 4 -73 -46 48 47
		mu 0 4 53 52 39 40
		f 4 -75 -48 50 49
		mu 0 4 54 53 40 41
		f 4 -77 -50 52 51
		mu 0 4 55 54 41 42
		f 4 -79 -52 54 -78
		mu 0 4 56 55 42 43
		f 4 -81 77 56 -80
		mu 0 4 58 56 43 45
		f 4 -83 79 58 -82
		mu 0 4 59 57 44 46
		f 4 -85 81 60 -84
		mu 0 4 60 59 46 47
		f 4 -87 83 62 -86
		mu 0 4 61 60 47 48
		f 4 -89 85 64 -88
		mu 0 4 62 61 48 49
		f 4 -91 87 66 -90
		mu 0 4 63 62 49 50
		f 4 -92 89 67 -69
		mu 0 4 51 63 50 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape3" -p "pCube19";
	rename -uid "820E2900-0000-1C38-5AAB-CCCA00000AB6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.2051825225353241 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 464 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.56197345 0.875 0.18802655 0.125 0.18802655 0.375
		 0.56197345 0.375 0.18802655 0.625 0.18802655 0.625 0.64036083 0.875 0.10963912 0.125
		 0.10963912 0.375 0.64036083 0.375 0.10963912 0.625 0.10963912 0.625 0.72872174 0.875
		 0.021278296 0.125 0.021278296 0.375 0.72872174 0.375 0.021278296 0.625 0.021278296
		 0.625 0.52766156 0.875 0.2223385 0.125 0.2223385 0.375 0.52766156 0.375 0.2223385
		 0.625 0.2223385 0.58441925 0.5 0.58441925 0.52766156 0.58441925 0.56197345 0.58441925
		 0.64036083 0.58441925 0.72872174 0.58441925 0.75 0.58441925 0 0.58441925 1 0.58441925
		 0.021278296 0.58441925 0.10963912 0.58441925 0.18802655 0.58441925 0.2223385 0.58441925
		 0.25 0.41303018 0.5 0.41303015 0.52766156 0.41303015 0.56197345 0.41303015 0.64036083
		 0.41303015 0.72872174 0.41303018 0.75 0.41303018 0 0.41303018 1 0.41303018 0.021278296
		 0.41303018 0.10963913 0.41303018 0.18802656 0.41303018 0.22233851 0.41303018 0.25
		 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018
		 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25
		 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018
		 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25
		 0.41303018 0.25 0.41303018 0.25 0.41303018 0.25 0.375 0.25 0.375 0.25 0.375 0.25
		 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375
		 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25
		 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375
		 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385
		 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375
		 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385
		 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375
		 0.2223385 0.375 0.2223385 0.375 0.2223385 0.375 0.18802655 0.375 0.18802655 0.375
		 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375
		 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375
		 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375
		 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375
		 0.18802655 0.375 0.18802655 0.375 0.18802655 0.375 0.10963912 0.375 0.10963912 0.375
		 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375
		 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375
		 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375
		 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375
		 0.10963912 0.375 0.10963912 0.375 0.10963912 0.375 0.021278296 0.375 0.021278296
		 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296
		 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296
		 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296
		 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296
		 0.375 0.021278296 0.375 0.021278296 0.375 0.021278296 0.375 0 0.375 0 0.375 0 0.375
		 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0
		 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375
		 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018
		 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0;
	setAttr ".uvst[0].uvsp[250:463]" 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018
		 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018 0 0.41303018
		 0 0.41303018 0 0.41303018 0 0.41303018 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925
		 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925
		 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925
		 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925 0 0.58441925
		 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0
		 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625
		 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296
		 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296
		 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296
		 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296
		 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296 0.625 0.021278296
		 0.625 0.021278296 0.625 0.021278296 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912
		 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912
		 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912
		 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912
		 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912 0.625 0.10963912
		 0.625 0.10963912 0.625 0.10963912 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655
		 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655
		 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655
		 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655
		 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655 0.625 0.18802655
		 0.625 0.18802655 0.625 0.18802655 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385
		 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625
		 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385
		 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625
		 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385 0.625 0.2223385
		 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625
		 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25
		 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625
		 0.25 0.625 0.25 0.625 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925
		 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25
		 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925
		 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25
		 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25 0.58441925 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[64]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[65]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[90]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[115]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[140]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[141]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[142]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[167]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[192]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[193]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[218]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[243]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[268]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[269]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[294]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[319]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[320]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[345]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[346]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[371]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[372]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[397]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[422]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[447]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr -s 448 ".vt";
	setAttr ".vt[0:165]"  -0.50000006 -0.50000006 0.5 0.5 -0.50000006 0.5 -0.50000006 0.50000006 0.5
		 0.5 0.50000006 0.5 -0.5 0.50000006 -0.5 0.50000006 0.50000006 -0.5 -0.5 -0.50000006 -0.5
		 0.50000006 -0.50000006 -0.5 0.3728669 0.25210622 -0.5 -0.37286684 0.25210622 -0.49999997
		 -0.3728669 0.25210622 0.5 0.37286684 0.25210622 0.49999997 0.3728669 -0.061443496 -0.5
		 -0.37286684 -0.061443496 -0.49999997 -0.3728669 -0.061443511 0.5 0.37286684 -0.061443511 0.49999997
		 0.50000006 -0.41488683 -0.5 -0.5 -0.41488683 -0.5 -0.50000006 -0.41488683 0.5 0.5 -0.41488683 0.5
		 0.50000006 0.38935402 -0.5 -0.5 0.38935402 -0.5 -0.50000006 0.38935402 0.5 0.5 0.38935402 0.5
		 0.337677 0.50000006 -0.5 0.337677 0.38935402 -0.5 0.337677 0.25210622 -0.5 0.337677 -0.061443496 -0.5
		 0.337677 -0.41488683 -0.5 0.337677 -0.50000006 -0.5 0.33767697 -0.50000006 0.49999997
		 0.33767697 0.50000006 0.49999997 -0.34787923 0.50000006 -0.5 -0.34787929 0.38935402 -0.5
		 -0.34787929 0.25210622 -0.5 -0.34787929 -0.061443496 -0.5 -0.34787929 -0.41488683 -0.5
		 -0.34787923 -0.50000006 -0.5 -0.34787926 -0.50000006 0.5 -0.34787926 0.50000006 0.5
		 -0.50572371 0.35632497 3.1979413 -0.27834749 0.35628134 5.78287697 -0.16273451 0.35628134 8.41397095
		 -0.21374607 0.35628134 11.12910271 -0.48671341 0.35628134 13.95713997 -1.037006378 0.35628134 16.92700577
		 -1.91840649 0.35628134 20.061658859 -3.17012978 0.35628134 23.33187485 -4.82372665 0.35628134 26.68126297
		 -6.910532 0.35628134 30.053150177 -9.46168709 0.35628134 33.39087677 -12.50807762 0.35628134 36.63778687
		 -16.077768326 0.35628134 39.7386055 -20.14229774 0.35628134 42.66969299 -24.61607742 0.35628134 45.43725967
		 -29.40921783 0.35628134 48.046943665 -34.43155289 0.35628134 50.50423813 -39.59272003 0.35628134 52.81464386
		 -44.80253601 0.35628134 54.98370743 -49.999897 0.35628134 57.021995544 -55.1809082 0.35628134 58.95009232
		 -60.34932709 0.35628134 60.79016876 -65.5089798 0.35628134 62.5644455 -70.66364288 0.35628134 64.29512024
		 -75.81703186 0.35628182 66.0043945313 -75.72244263 0.35629612 66.054145813 -0.35360336 0.46696931 3.19821048
		 -0.12633896 0.46694165 5.7805419 -0.010649681 0.46694165 8.41280556 -0.061640739 0.46694165 11.12959957
		 -0.33472633 0.46694165 13.95969677 -0.88534927 0.46694165 16.93190384 -1.76733303 0.46694165 20.069065094
		 -3.019924164 0.46694165 23.34189987 -4.67474937 0.46694165 26.69408607 -6.76325607 0.46694165 30.069046021
		 -9.31677628 0.46694165 33.4101944 -12.36644745 0.46694165 36.66095734 -15.94067192 0.46694165 39.76612473
		 -20.010662079 0.46694165 42.70152283 -24.4900074 0.46694165 45.47279739 -29.288517 0.46694165 48.085601807
		 -34.31583786 0.46694165 50.54547882 -39.48148346 0.46694165 52.85797882 -44.69513702 0.46694165 55.028701782
		 -49.8957634 0.46694165 57.068313599 -55.079715729 0.46694165 58.99752426 -60.2506485 0.46694165 60.83851624
		 -65.41229248 0.46694165 62.61348343 -70.56834412 0.46694165 64.34463501 -75.72245789 0.46694213 66.054138184
		 -0.50572395 0.4669697 3.19815397 -0.27835655 0.46692741 5.78287792 -0.16274357 0.46692741 8.4139719
		 -0.21375561 0.46692741 11.12910271 -0.4867239 0.46692741 13.95713997 -1.037015915 0.46692741 16.92700577
		 -1.91841507 0.46692741 20.061656952 -3.17013741 0.46692741 23.33187485 -4.8237381 0.46692741 26.68125916
		 -6.91054153 0.46692741 30.053146362 -9.46169281 0.46692741 33.39087677 -12.50808334 0.46692741 36.63778305
		 -16.077774048 0.46692741 39.73860168 -20.14230537 0.46692741 42.66969299 -24.61608696 0.46692741 45.43725586
		 -29.40922546 0.46692741 48.046936035 -34.43155289 0.46692741 50.5042305 -39.59272003 0.46692741 52.81463623
		 -44.80253601 0.46692741 54.98369598 -49.999897 0.46692741 57.021987915 -55.18090439 0.46692741 58.9500885
		 -60.34932327 0.46692741 60.79016113 -65.5089798 0.46692741 62.56443787 -70.66364288 0.46692741 64.29512024
		 -75.81703186 0.46692789 66.0043869019 -0.37858963 -0.094467558 3.19712257 -0.15126133 -0.094504252 5.78092432
		 -0.035583973 -0.094504252 8.41299629 -0.086578369 -0.094504252 11.12951851 -0.35964584 -0.094504252 13.9592762
		 -0.91021538 -0.094504252 16.93109894 -1.79210377 -0.094504252 20.067848206 -3.044555664 -0.094504252 23.34025574
		 -4.69917679 -0.094504252 26.69198227 -6.78740501 -0.094504252 30.066436768 -9.34053802 -0.094504252 33.40702057
		 -12.38967133 -0.094504252 36.65715408 -15.96315193 -0.094504252 39.76160431 -20.032243729 -0.094504252 42.69630051
		 -24.51067543 -0.094504252 45.46696854 -29.30831146 -0.094504252 48.079257965 -34.33481216 -0.094504252 50.53871155
		 -39.49971771 -0.094504252 52.85086823 -44.71273804 -0.094504252 55.021312714 -49.91282654 -0.094504252 57.060710907
		 -55.096290588 -0.094504252 58.98973846 -60.26681519 -0.094504252 60.83058167 -65.42813873 -0.094504252 62.60544205
		 -70.58396149 -0.094504252 64.33651733 -75.73794556 -0.094503775 66.045974731 -75.72240448 -0.094501421 66.054153442
		 -75.72244263 0.21904832 66.054145813 -0.37859011 0.21907848 3.19772506 -0.15128803 0.21904548 5.7809248
		 -0.035610676 0.21904548 8.41299629 -0.086606026 0.21904548 11.1295166 -0.35967159 0.21904548 13.9592762
		 -0.91024113 0.21904548 16.93109894 -1.79212952 0.21904548 20.067848206 -3.04458046 0.21904548 23.34025574
		 -4.69920158 0.21904548 26.69197845 -6.78743172 0.21904548 30.06643486 -9.34056282 0.21904548 33.40702057
		 -12.38969231 0.21904548 36.65715027 -15.96317673 0.21904548 39.76160431 -20.032266617 0.21904548 42.69629669
		 -24.51069641 0.21904548 45.46696472 -29.30833054 0.21904548 48.07925415 -34.33483124 0.21904548 50.53870773
		 -39.49973679 0.21904548 52.85086441 -44.71275711 0.21904548 55.021308899 -49.91284943 0.21904548 57.060707092
		 -55.096309662 0.21904548 58.98973846 -60.26683426 0.21904548 60.83058167 -65.42814636 0.21904548 62.60543823;
	setAttr ".vt[166:331]" -70.58398438 0.21904548 64.3365097 -75.73796082 0.21904595 66.045974731
		 -0.50572205 -0.44790637 3.19639635 -0.27827883 -0.44795948 5.78287601 -0.16266537 -0.44795948 8.41397095
		 -0.21367741 -0.44795948 11.12910271 -0.48664665 -0.44795948 13.95714092 -1.036938667 -0.44795948 16.92700768
		 -1.91833878 -0.44795948 20.061660767 -3.17006111 -0.44795948 23.33188057 -4.8236599 -0.44795948 26.68126678
		 -6.91046715 -0.44795948 30.053155899 -9.46162415 -0.44795948 33.3908844 -12.50801849 -0.44795948 36.63779449
		 -16.077709198 -0.44795948 39.73861313 -20.14224625 -0.44795948 42.66970444 -24.61602974 -0.44795948 45.43727112
		 -29.40916824 -0.44795948 48.046955109 -34.43149948 -0.44795948 50.50425339 -39.59266281 -0.44795948 52.81465912
		 -44.80249023 -0.44795948 54.98372269 -49.99985123 -0.44795948 57.022010803 -55.18087006 -0.44795948 58.95010757
		 -60.34928894 -0.44795948 60.79018402 -65.50894928 -0.44795948 62.56446075 -70.66361237 -0.44795948 64.2951355
		 -75.81700134 -0.44795901 66.00440979 -75.72241211 -0.44794476 66.054161072 -0.50572205 -0.53301859 3.19623303
		 -0.27827168 -0.53307271 5.78287601 -0.16265869 -0.53307271 8.41397095 -0.21366978 -0.53307271 11.12910366
		 -0.48663807 -0.53307271 13.95714188 -1.036931038 -0.53307271 16.92700768 -1.91833019 -0.53307271 20.061662674
		 -3.17005348 -0.53307271 23.33188057 -4.82365417 -0.53307271 26.68126678 -6.91045761 -0.53307271 30.053157806
		 -9.4616127 -0.53307271 33.3908844 -12.50800514 -0.53307271 36.63779831 -16.077695847 -0.53307271 39.73861694
		 -20.14223289 -0.53307271 42.66970825 -24.61601448 -0.53307271 45.43727875 -29.40915298 -0.53307271 48.046962738
		 -34.43148422 -0.53307271 50.50426483 -39.59265518 -0.53307271 52.81466675 -44.8024826 -0.53307271 54.98373032
		 -49.9998436 -0.53307271 57.022026062 -55.18085861 -0.53307271 58.95011902 -60.3492775 -0.53307271 60.79019928
		 -65.50894165 -0.53307271 62.5644722 -70.66360474 -0.53307271 64.29515076 -75.81700134 -0.53307223 66.0044250488
		 -0.35360122 -0.53301901 3.1962893 -0.12625408 -0.53305846 5.78054047 -0.01056385 -0.53305846 8.4128046
		 -0.061554909 -0.53305846 11.12959957 -0.33464146 -0.53305846 13.95969772 -0.88526344 -0.53305846 16.93190575
		 -1.76724815 -0.53305846 20.069068909 -3.01984024 -0.53305846 23.3419075 -4.67466545 -0.53305846 26.69409561
		 -6.76317596 -0.53305846 30.06905365 -9.31669617 -0.53305846 33.41020203 -12.36636734 -0.53305846 36.66096878
		 -15.94059563 -0.53305846 39.76613235 -20.0105896 -0.53305846 42.70153427 -24.48993301 -0.53305846 45.47281647
		 -29.28845596 -0.53305846 48.08562088 -34.31578064 -0.53305846 50.54550171 -39.48143005 -0.53305846 52.85800171
		 -44.6950798 -0.53305846 55.028717041 -49.89570618 -0.53305846 57.068332672 -55.079654694 -0.53305846 58.99754715
		 -60.25058746 -0.53305846 60.83853149 -65.41223907 -0.53305846 62.6135025 -70.56829834 -0.53305846 64.34465027
		 -75.72239685 -0.53305799 66.054153442 0.33195496 -0.5330205 3.19654298 0.55883908 -0.53299397 5.77001429
		 0.67487717 -0.53299397 8.407547 0.62398148 -0.53299397 11.13183975 0.35035992 -0.53299397 13.97122002
		 -0.20174885 -0.53299397 16.95398331 -1.086367607 -0.53299397 20.10244751 -2.34287453 -0.53299397 23.38708878
		 -4.0032253265 -0.53299397 26.7518959 -6.099420547 -0.53299397 30.14068222 -8.66357994 -0.53299397 33.4972496
		 -11.72802925 -0.53299397 36.76539993 -15.32268524 -0.53299397 39.89015961 -19.41726875 -0.53299397 42.84498596
		 -23.92168045 -0.53299397 45.63299179 -28.7444458 -0.53299397 48.25985718 -33.79431152 -0.53299397 50.73137283
		 -38.98012161 -0.53299397 53.05330658 -44.21104813 -0.53299397 55.23148346 -49.42640686 -0.53299397 57.2770462
		 -54.62356186 -0.53299397 59.21131134 -59.80583572 -0.53299397 61.056427002 -64.97647095 -0.53299397 62.83454895
		 -70.13874817 -0.53299397 64.56781006 -75.29603577 -0.5329935 66.27838135 -75.29605103 -0.4478803 66.27837372
		 0.49427772 -0.53302091 3.19660282 0.72105265 -0.53297871 5.76752234 0.83717299 -0.53297871 8.40630245
		 0.78629971 -0.53297871 11.13237 0.51255226 -0.53297871 13.97394848 -0.039908409 -0.53297871 16.95921135
		 -0.92515087 -0.53297871 20.11034966 -2.18258667 -0.53297871 23.39778328 -3.84424591 -0.53297871 26.76558113
		 -5.94226074 -0.53297871 30.15764046 -8.50894547 -0.53297871 33.51785278 -11.57689476 -0.53297871 36.79011536
		 -15.17638206 -0.53297871 39.91952133 -19.27679253 -0.53297871 42.8789444 -23.78713608 -0.53297871 45.6709137
		 -28.61564255 -0.53297871 48.30110931 -33.67084122 -0.53297871 50.77537537 -38.86142349 -0.53297871 53.09954834
		 -44.096439362 -0.53297871 55.27948761 -49.3152771 -0.53297871 57.32646179 -54.51556396 -0.53297871 59.26192093
		 -59.70053101 -0.53297871 61.10801697 -64.87329102 -0.53297871 62.88687897 -70.03704834 -0.53297871 64.62064362
		 -75.19508362 -0.53297824 66.33146667 0.4942776 -0.44790867 3.19676638 0.72104502 -0.44786549 5.76752186
		 0.83716488 -0.44786549 8.40630245 0.7862916 -0.44786549 11.13236809 0.51254463 -0.44786549 13.97394657
		 -0.039916039 -0.44786549 16.95921135 -0.92515945 -0.44786549 20.11034775 -2.1825943 -0.44786549 23.39778137
		 -3.84425163 -0.44786549 26.76558113 -5.94226837 -0.44786549 30.15764046 -8.50895309 -0.44786549 33.51785278
		 -11.57690239 -0.44786549 36.79011917 -15.17638969 -0.44786549 39.91952133 -19.27680016 -0.44786549 42.8789444
		 -23.78714752 -0.44786549 45.67090988 -28.61565018 -0.44786549 48.3011055 -33.67084885 -0.44786549 50.77537155
		 -38.86143112 -0.44786549 53.099544525 -44.096450806 -0.44786549 55.27948761 -49.31528854 -0.44786549 57.32645798
		 -54.51557922 -0.44786549 59.26191711 -59.70054245 -0.44786549 61.10800934 -64.87330627 -0.44786549 62.88687134
		 -70.037055969 -0.44786549 64.62063599 -75.19509125 -0.44786501 66.33145905 -75.29605865 -0.094436951 66.27836609
		 0.36714363 -0.094469242 3.19739819 0.59396815 -0.094434127 5.76947451 0.71002388 -0.094434127 8.40727711
		 0.65913296 -0.094434127 11.13195419 0.3854847 -0.094434127 13.97181034 -0.16670036 -0.094434127 16.95511627
		 -1.051452637 -0.094434127 20.10416031 -2.30816269 -0.094434127 23.38940239 -3.96879768 -0.094434127 26.75485992
		 -6.065385818 -0.094434127 30.14435387 -8.63010025 -0.094434127 33.50170898;
	setAttr ".vt[332:447]" -11.69530296 -0.094434127 36.77074814 -15.291008 -0.094434127 39.89651489
		 -19.38685608 -0.094434127 42.85233688 -23.89254761 -0.094434127 45.64120102 -28.71655273 -0.094434127 48.2687912
		 -33.76757431 -0.094434127 50.74090195 -38.95441437 -0.094434127 53.06332016 -44.18622971 -0.094434127 55.24188232
		 -49.40233994 -0.094434127 57.28775024 -54.60017014 -0.094434127 59.22227097 -59.78302002 -0.094434127 61.06760025
		 -64.95411682 -0.094434127 62.84587479 -70.11671448 -0.094434127 64.57924652 -75.27416992 -0.09443365 66.28987122
		 -75.29606628 0.2191128 66.27835083 0.36714315 0.21907681 3.19800067 0.59394121 0.21911564 5.76947498
		 0.70999765 0.21911564 8.40727806 0.65910673 0.21911564 11.13195419 0.38545799 0.21911564 13.97181034
		 -0.16672611 0.21911564 16.95511436 -1.05147934 0.21911564 20.10415649 -2.30818748 0.21911564 23.38940239
		 -3.96882057 0.21911564 26.75485611 -6.065412521 0.21911564 30.14435196 -8.63012505 0.21911564 33.50170517
		 -11.69532394 0.21911564 36.77074432 -15.29102516 0.21911564 39.89651489 -19.38687134 0.21911564 42.85233307
		 -23.89256287 0.21911564 45.64119339 -28.71657562 0.21911564 48.26878357 -33.76760101 0.21911564 50.7408905
		 -38.95444107 0.21911564 53.063308716 -44.18625259 0.21911564 55.24187088 -49.40236282 0.21911564 57.28774261
		 -54.60019302 0.21911564 59.22225952 -59.78304672 0.21911564 61.067588806 -64.95414734 0.21911564 62.84586334
		 -70.116745 0.21911564 64.57923889 -75.27419281 0.21911612 66.28985596 -75.29608154 0.35636061 66.27835083
		 0.49427581 0.35632268 3.19831157 0.72097707 0.35637537 5.76752329 0.83709764 0.35637537 8.40630341
		 0.78622341 0.35637537 11.13236904 0.51247597 0.35637537 13.97394657 -0.039983749 0.35637537 16.95920944
		 -0.92522526 0.35637537 20.11034775 -2.18266106 0.35637537 23.39777946 -3.8443203 0.35637537 26.76557541
		 -5.94233322 0.35637537 30.15763283 -8.50901794 0.35637537 33.51784515 -11.57695961 0.35637537 36.79011154
		 -15.17645454 0.35637537 39.91950989 -19.27686119 0.35637537 42.87893677 -23.78720093 0.35637537 45.67089462
		 -28.61569977 0.35637537 48.30109787 -33.67089844 0.35637537 50.77536011 -38.8614769 0.35637537 53.099529266
		 -44.096496582 0.35637537 55.27947235 -49.31533813 0.35637537 57.32644272 -54.51562881 0.35637537 59.26189423
		 -59.70058441 0.35637537 61.10799408 -64.87334442 0.35637537 62.88685226 -70.037101746 0.35637537 64.6206131
		 -75.19513702 0.35637584 66.33143616 0.33195281 0.46696779 3.19846392 0.55875421 0.46700615 5.77001572
		 0.67479181 0.46700615 8.40754795 0.62389612 0.46700615 11.13183784 0.35027409 0.46700615 13.97121811
		 -0.20183277 0.46700615 16.9539814 -1.086450577 0.46700615 20.1024437 -2.34295845 0.46700615 23.38708115
		 -4.0033092499 0.46700615 26.75189018 -6.099502563 0.46700615 30.14067459 -8.66366386 0.46700615 33.49723816
		 -11.72810936 0.46700615 36.76538849 -15.32276154 0.46700615 39.89014816 -19.41734314 0.46700615 42.8449707
		 -23.92175293 0.46700615 45.63297272 -28.74451828 0.46700615 48.2598381 -33.79437256 0.46700615 50.73134995
		 -38.98018265 0.46700615 53.053287506 -44.21110916 0.46700615 55.23146439 -49.4264679 0.46700615 57.27702332
		 -54.62362289 0.46700615 59.21128845 -59.80589294 0.46700615 61.056404114 -64.97653198 0.46700615 62.83451843
		 -70.13881683 0.46700615 64.56777954 -75.2960968 0.46700662 66.27835083 0.49427569 0.4669674 3.19852424
		 0.72096753 0.46702141 5.76752329 0.83708763 0.46702141 8.40630341 0.7862134 0.46702141 11.13236809
		 0.51246643 0.46702141 13.97394562 -0.039995193 0.46702141 16.95920753 -0.92523766 0.46702141 20.11034393
		 -2.1826725 0.46702141 23.39777756 -3.84432983 0.46702141 26.7655735 -5.94234467 0.46702141 30.15763092
		 -8.50902939 0.46702141 33.51784515 -11.57697105 0.46702141 36.79010773 -15.17646599 0.46702141 39.91950607
		 -19.27686691 0.46702141 42.87893295 -23.78720856 0.46702141 45.67089844 -28.61571121 0.46702141 48.30109406
		 -33.67090607 0.46702141 50.77536011 -38.86148834 0.46702141 53.099525452 -44.096504211 0.46702141 55.27947235
		 -49.31534576 0.46702141 57.3264389 -54.51563644 0.46702141 59.26189804 -59.70059204 0.46702141 61.10799408
		 -64.87335205 0.46702141 62.88685226 -70.037109375 0.46702141 64.62062073 -75.19514465 0.46702188 66.33143616;
	setAttr -s 892 ".ed";
	setAttr ".ed[0:165]"  0 38 1 2 39 1 4 32 0 6 37 0 0 18 1 1 19 1 2 4 0 3 5 0
		 4 21 0 5 20 0 6 0 0 7 1 0 8 12 0 9 13 0 8 26 1 10 22 1 9 10 1 11 23 1 11 8 1 12 16 0
		 13 17 0 12 27 1 14 10 1 13 14 1 15 11 1 15 12 1 16 7 0 17 6 0 16 28 1 18 14 1 17 18 1
		 19 15 1 19 16 1 20 8 0 21 9 0 20 25 1 22 2 1 21 22 1 23 3 1 23 20 1 24 5 0 25 33 1
		 24 25 1 26 34 1 25 26 1 27 35 1 26 27 1 28 36 1 27 28 1 29 7 0 28 29 1 30 1 1 29 30 1
		 31 3 1 31 24 1 32 24 0 33 21 1 32 33 1 34 9 1 33 34 1 35 13 1 34 35 1 36 17 1 35 36 1
		 37 29 0 36 37 1 38 30 1 37 38 1 39 31 1 39 32 1 22 40 0 40 41 0 41 42 0 42 43 0 43 44 0
		 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0
		 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 1 39 66 1
		 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1
		 88 89 1 89 90 1 65 90 1 2 91 0 91 92 0 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0
		 98 99 0 99 100 0 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0 105 106 0 106 107 0
		 107 108 0 108 109 0 109 110 0 110 111 0 111 112 0 112 113 0 113 114 0 114 115 0 91 66 1
		 92 67 1 93 68 1 94 69 1 95 70 1 96 71 1 97 72 1 98 73 1 99 74 1 100 75 1 101 76 1
		 102 77 1 103 78 1 104 79 1 105 80 1 106 81 1 107 82 1 108 83 1 109 84 1;
	setAttr ".ed[166:331]" 110 85 1 111 86 1 112 87 1 113 88 1 114 89 1 115 90 0
		 40 91 1 41 92 1 42 93 1 43 94 1 44 95 1 45 96 1 46 97 1 47 98 1 48 99 1 49 100 1
		 50 101 1 51 102 1 52 103 1 53 104 1 54 105 1 55 106 1 56 107 1 57 108 1 58 109 1
		 59 110 1 60 111 1 61 112 1 62 113 1 63 114 1 64 115 0 14 116 1 116 117 1 117 118 1
		 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1
		 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1
		 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 10 143 0 143 144 0 144 145 0
		 145 146 0 146 147 0 147 148 0 148 149 0 149 150 0 150 151 0 151 152 0 152 153 0 153 154 0
		 154 155 0 155 156 0 156 157 0 157 158 0 158 159 0 159 160 0 160 161 0 161 162 0 162 163 0
		 163 164 0 164 165 0 165 166 0 166 167 0 167 142 1 116 143 1 117 144 1 118 145 1 119 146 1
		 120 147 1 121 148 1 122 149 1 123 150 1 124 151 1 125 152 1 126 153 1 127 154 1 128 155 1
		 129 156 1 130 157 1 131 158 1 132 159 1 133 160 1 134 161 1 135 162 1 136 163 1 137 164 1
		 138 165 1 139 166 1 140 167 0 18 168 1 168 169 1 169 170 1 170 171 1 171 172 1 172 173 1
		 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 191 192 1 192 193 1 193 141 1 168 116 1 169 117 1 170 118 1 171 119 1 172 120 1 173 121 1
		 174 122 1 175 123 1 176 124 1 177 125 1 178 126 1 179 127 1 180 128 1 181 129 1 182 130 1
		 183 131 1 184 132 1 185 133 1 186 134 1 187 135 1 188 136 1 189 137 1 190 138 1 191 139 1
		 192 140 0 0 194 0 194 195 0 195 196 0 196 197 0 197 198 0;
	setAttr ".ed[332:497]" 198 199 0 199 200 0 200 201 0 201 202 0 202 203 0 203 204 0
		 204 205 0 205 206 0 206 207 0 207 208 0 208 209 0 209 210 0 210 211 0 211 212 0 212 213 0
		 213 214 0 214 215 0 215 216 0 216 217 0 217 218 0 38 219 1 219 220 1 220 221 1 221 222 1
		 222 223 1 223 224 1 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1
		 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 240 1
		 240 241 1 241 242 1 242 243 1 194 219 1 195 220 1 196 221 1 197 222 1 198 223 1 199 224 1
		 200 225 1 201 226 1 202 227 1 203 228 1 204 229 1 205 230 1 206 231 1 207 232 1 208 233 1
		 209 234 1 210 235 1 211 236 1 212 237 1 213 238 1 214 239 1 215 240 1 216 241 1 217 242 1
		 218 243 0 243 193 1 194 168 1 195 169 1 196 170 1 197 171 1 198 172 1 199 173 1 200 174 1
		 201 175 1 202 176 1 203 177 1 204 178 1 205 179 1 206 180 1 207 181 1 208 182 1 209 183 1
		 210 184 1 211 185 1 212 186 1 213 187 1 214 188 1 215 189 1 216 190 1 217 191 1 218 192 0
		 142 65 1 143 40 1 144 41 1 145 42 1 146 43 1 147 44 1 148 45 1 149 46 1 150 47 1
		 151 48 1 152 49 1 153 50 1 154 51 1 155 52 1 156 53 1 157 54 1 158 55 1 159 56 1
		 160 57 1 161 58 1 162 59 1 163 60 1 164 61 1 165 62 1 166 63 1 167 64 0 30 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 260 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 1 270 0 270 271 0
		 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 280 0
		 280 281 0 281 282 0 282 283 0 283 284 0 284 285 0 285 286 0 286 287 0;
	setAttr ".ed[498:663]" 287 288 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0
		 293 294 0 244 270 1 245 271 1 246 272 1 247 273 1 248 274 1 249 275 1 250 276 1 251 277 1
		 252 278 1 253 279 1 254 280 1 255 281 1 256 282 1 257 283 1 258 284 1 259 285 1 260 286 1
		 261 287 1 262 288 1 263 289 1 264 290 1 265 291 1 266 292 1 267 293 1 268 294 0 19 295 1
		 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1 301 302 1 302 303 1 303 304 1
		 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1
		 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 270 295 1 271 296 1 272 297 1
		 273 298 1 274 299 1 275 300 1 276 301 1 277 302 1 278 303 1 279 304 1 280 305 1 281 306 1
		 282 307 1 283 308 1 284 309 1 285 310 1 286 311 1 287 312 1 288 313 1 289 314 1 290 315 1
		 291 316 1 292 317 1 293 318 1 294 319 0 269 319 1 269 320 1 15 321 1 321 322 1 322 323 1
		 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1
		 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1 338 339 1 339 340 1 340 341 1
		 341 342 1 342 343 1 343 344 1 344 345 1 295 321 1 296 322 1 297 323 1 298 324 1 299 325 1
		 300 326 1 301 327 1 302 328 1 303 329 1 304 330 1 305 331 1 306 332 1 307 333 1 308 334 1
		 309 335 1 310 336 1 311 337 1 312 338 1 313 339 1 314 340 1 315 341 1 316 342 1 317 343 1
		 318 344 1 319 345 0 320 345 1 320 346 1 11 347 0 347 348 0 348 349 0 349 350 0 350 351 0
		 351 352 0 352 353 0 353 354 0 354 355 0 355 356 0 356 357 0 357 358 0 358 359 0 359 360 0
		 360 361 0 361 362 0 362 363 0 363 364 0 364 365 0 365 366 0 366 367 0 367 368 0 368 369 0
		 369 370 0 370 371 0 321 347 1 322 348 1 323 349 1 324 350 1 325 351 1;
	setAttr ".ed[664:829]" 326 352 1 327 353 1 328 354 1 329 355 1 330 356 1 331 357 1
		 332 358 1 333 359 1 334 360 1 335 361 1 336 362 1 337 363 1 338 364 1 339 365 1 340 366 1
		 341 367 1 342 368 1 343 369 1 344 370 1 345 371 0 346 371 1 346 372 1 23 373 0 373 374 0
		 374 375 0 375 376 0 376 377 0 377 378 0 378 379 0 379 380 0 380 381 0 381 382 0 382 383 0
		 383 384 0 384 385 0 385 386 0 386 387 0 387 388 0 388 389 0 389 390 0 390 391 0 391 392 0
		 392 393 0 393 394 0 394 395 0 395 396 0 396 397 0 347 373 1 348 374 1 349 375 1 350 376 1
		 351 377 1 352 378 1 353 379 1 354 380 1 355 381 1 356 382 1 357 383 1 358 384 1 359 385 1
		 360 386 1 361 387 1 362 388 1 363 389 1 364 390 1 365 391 1 366 392 1 367 393 1 368 394 1
		 369 395 1 370 396 1 371 397 0 372 397 1 31 398 1 398 399 1 399 400 1 400 401 1 401 402 1
		 402 403 1 403 404 1 404 405 1 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1 410 411 1
		 411 412 1 412 413 1 413 414 1 414 415 1 415 416 1 416 417 1 417 418 1 418 419 1 419 420 1
		 420 421 1 421 422 1 372 422 1 3 423 0 423 424 0 424 425 0 425 426 0 426 427 0 427 428 0
		 428 429 0 429 430 0 430 431 0 431 432 0 432 433 0 433 434 0 434 435 0 435 436 0 436 437 0
		 437 438 0 438 439 0 439 440 0 440 441 0 441 442 0 442 443 0 443 444 0 444 445 0 445 446 0
		 446 447 0 373 423 1 374 424 1 375 425 1 376 426 1 377 427 1 378 428 1 379 429 1 380 430 1
		 381 431 1 382 432 1 383 433 1 384 434 1 385 435 1 386 436 1 387 437 1 388 438 1 389 439 1
		 390 440 1 391 441 1 392 442 1 393 443 1 394 444 1 395 445 1 396 446 1 397 447 0 398 423 1
		 399 424 1 400 425 1 401 426 1 402 427 1 403 428 1 404 429 1 405 430 1 406 431 1 407 432 1
		 408 433 1 409 434 1 410 435 1 411 436 1 412 437 1 413 438 1 414 439 1;
	setAttr ".ed[830:891]" 415 440 1 416 441 1 417 442 1 418 443 1 419 444 1 420 445 1
		 421 446 1 422 447 0 219 244 1 220 245 1 221 246 1 222 247 1 223 248 1 224 249 1 225 250 1
		 226 251 1 227 252 1 228 253 1 229 254 1 230 255 1 231 256 1 232 257 1 233 258 1 234 259 1
		 235 260 1 236 261 1 237 262 1 238 263 1 239 264 1 240 265 1 241 266 1 242 267 1 243 268 0
		 193 269 1 141 320 1 142 346 1 65 372 1 66 398 1 67 399 1 68 400 1 69 401 1 70 402 1
		 71 403 1 72 404 1 73 405 1 74 406 1 75 407 1 76 408 1 77 409 1 78 410 1 79 411 1
		 80 412 1 81 413 1 82 414 1 83 415 1 84 416 1 85 417 1 86 418 1 87 419 1 88 420 1
		 89 421 1 90 422 0;
	setAttr -s 446 -ch 1784 ".fc[0:445]" -type "polyFaces" 
		f 4 95 121 -172 -197
		mu 0 4 138 62 88 113
		f 4 1 69 -3 -7
		mu 0 4 2 63 51 4
		f 4 2 57 56 -9
		mu 0 4 4 51 52 35
		f 4 3 67 -1 -11
		mu 0 4 6 56 58 8
		f 4 39 -10 -8 -39
		mu 0 4 37 33 11 3
		f 4 37 36 6 8
		mu 0 4 34 36 2 13
		f 4 -59 61 60 -14
		mu 0 4 17 53 54 23
		f 4 23 22 -17 13
		mu 0 4 22 24 18 16
		f 4 222 223 -250 -275
		mu 0 4 188 60 61 163
		f 4 25 -13 -19 -25
		mu 0 4 25 21 15 19
		f 4 -61 63 62 -21
		mu 0 4 23 54 55 29
		f 4 30 29 -24 20
		mu 0 4 28 30 24 22
		f 4 300 301 -223 -327
		mu 0 4 213 59 60 188
		f 4 32 -20 -26 -32
		mu 0 4 31 27 21 25
		f 4 -63 65 -4 -28
		mu 0 4 29 55 56 6
		f 4 10 4 -31 27
		mu 0 4 12 0 30 28
		f 4 401 402 -301 -428
		mu 0 4 238 263 59 213
		f 4 -12 -27 -33 -6
		mu 0 4 1 10 27 31
		f 4 -57 59 58 -35
		mu 0 4 35 52 53 17
		f 4 16 15 -38 34
		mu 0 4 16 18 36 34
		f 4 249 428 -96 -454
		mu 0 4 163 61 62 138
		f 4 18 -34 -40 -18
		mu 0 4 19 15 33 37
		f 4 40 9 35 -43
		mu 0 4 38 5 32 39
		f 4 -45 -36 33 14
		mu 0 4 40 39 32 14
		f 4 -47 -15 12 21
		mu 0 4 41 40 14 20
		f 4 -49 -22 19 28
		mu 0 4 42 41 20 26
		f 4 -51 -29 26 -50
		mu 0 4 43 42 26 7
		f 4 -53 49 11 -52
		mu 0 4 45 43 7 9
		f 4 -480 529 579 -581
		mu 0 4 46 288 313 338
		f 4 -582 580 631 -633
		mu 0 4 47 46 338 363
		f 4 -634 632 683 -685
		mu 0 4 48 47 363 388
		f 4 -686 684 735 -737
		mu 0 4 49 48 388 413
		f 4 -763 736 812 -838
		mu 0 4 463 49 413 438
		f 4 -55 53 7 -41
		mu 0 4 38 50 3 5
		f 4 55 42 41 -58
		mu 0 4 51 38 39 52
		f 4 -60 -42 44 43
		mu 0 4 53 52 39 40
		f 4 -62 -44 46 45
		mu 0 4 54 53 40 41
		f 4 -64 -46 48 47
		mu 0 4 55 54 41 42
		f 4 -66 -48 50 -65
		mu 0 4 56 55 42 43
		f 4 -68 64 52 -67
		mu 0 4 58 56 43 45
		f 4 -403 862 479 -864
		mu 0 4 59 263 288 46
		f 4 -302 863 581 -865
		mu 0 4 60 59 46 47
		f 4 -224 864 633 -866
		mu 0 4 61 60 47 48
		f 4 -429 865 685 -867
		mu 0 4 62 61 48 49
		f 4 -122 866 762 -892
		mu 0 4 88 62 49 463
		f 4 -70 68 54 -56
		mu 0 4 51 63 50 38
		f 4 -2 122 147 -97
		mu 0 4 63 2 89 64
		f 4 -148 123 148 -98
		mu 0 4 64 89 90 65
		f 4 -149 124 149 -99
		mu 0 4 65 90 91 66
		f 4 -150 125 150 -100
		mu 0 4 66 91 92 67
		f 4 -151 126 151 -101
		mu 0 4 67 92 93 68
		f 4 -152 127 152 -102
		mu 0 4 68 93 94 69
		f 4 -153 128 153 -103
		mu 0 4 69 94 95 70
		f 4 -154 129 154 -104
		mu 0 4 70 95 96 71
		f 4 -155 130 155 -105
		mu 0 4 71 96 97 72
		f 4 -156 131 156 -106
		mu 0 4 72 97 98 73
		f 4 -157 132 157 -107
		mu 0 4 73 98 99 74
		f 4 -158 133 158 -108
		mu 0 4 74 99 100 75
		f 4 -159 134 159 -109
		mu 0 4 75 100 101 76
		f 4 -160 135 160 -110
		mu 0 4 76 101 102 77
		f 4 -161 136 161 -111
		mu 0 4 77 102 103 78
		f 4 -162 137 162 -112
		mu 0 4 78 103 104 79
		f 4 -163 138 163 -113
		mu 0 4 79 104 105 80
		f 4 -164 139 164 -114
		mu 0 4 80 105 106 81
		f 4 -165 140 165 -115
		mu 0 4 81 106 107 82
		f 4 -166 141 166 -116
		mu 0 4 82 107 108 83
		f 4 -167 142 167 -117
		mu 0 4 83 108 109 84
		f 4 -168 143 168 -118
		mu 0 4 84 109 110 85
		f 4 -169 144 169 -119
		mu 0 4 85 110 111 86
		f 4 -170 145 170 -120
		mu 0 4 86 111 112 87
		f 4 -171 146 171 -121
		mu 0 4 87 112 113 88
		f 4 -37 70 172 -123
		mu 0 4 2 36 114 89
		f 4 -173 71 173 -124
		mu 0 4 89 114 115 90
		f 4 -174 72 174 -125
		mu 0 4 90 115 116 91
		f 4 -175 73 175 -126
		mu 0 4 91 116 117 92
		f 4 -176 74 176 -127
		mu 0 4 92 117 118 93
		f 4 -177 75 177 -128
		mu 0 4 93 118 119 94
		f 4 -178 76 178 -129
		mu 0 4 94 119 120 95
		f 4 -179 77 179 -130
		mu 0 4 95 120 121 96
		f 4 -180 78 180 -131
		mu 0 4 96 121 122 97
		f 4 -181 79 181 -132
		mu 0 4 97 122 123 98
		f 4 -182 80 182 -133
		mu 0 4 98 123 124 99
		f 4 -183 81 183 -134
		mu 0 4 99 124 125 100
		f 4 -184 82 184 -135
		mu 0 4 100 125 126 101
		f 4 -185 83 185 -136
		mu 0 4 101 126 127 102
		f 4 -186 84 186 -137
		mu 0 4 102 127 128 103
		f 4 -187 85 187 -138
		mu 0 4 103 128 129 104
		f 4 -188 86 188 -139
		mu 0 4 104 129 130 105
		f 4 -189 87 189 -140
		mu 0 4 105 130 131 106
		f 4 -190 88 190 -141
		mu 0 4 106 131 132 107
		f 4 -191 89 191 -142
		mu 0 4 107 132 133 108
		f 4 -192 90 192 -143
		mu 0 4 108 133 134 109
		f 4 -193 91 193 -144
		mu 0 4 109 134 135 110
		f 4 -194 92 194 -145
		mu 0 4 110 135 136 111
		f 4 -195 93 195 -146
		mu 0 4 111 136 137 112
		f 4 -196 94 196 -147
		mu 0 4 112 137 138 113
		f 4 -23 197 250 -225
		mu 0 4 18 24 164 139
		f 4 -251 198 251 -226
		mu 0 4 139 164 165 140
		f 4 -252 199 252 -227
		mu 0 4 140 165 166 141
		f 4 -253 200 253 -228
		mu 0 4 141 166 167 142
		f 4 -254 201 254 -229
		mu 0 4 142 167 168 143
		f 4 -255 202 255 -230
		mu 0 4 143 168 169 144
		f 4 -256 203 256 -231
		mu 0 4 144 169 170 145
		f 4 -257 204 257 -232
		mu 0 4 145 170 171 146
		f 4 -258 205 258 -233
		mu 0 4 146 171 172 147
		f 4 -259 206 259 -234
		mu 0 4 147 172 173 148
		f 4 -260 207 260 -235
		mu 0 4 148 173 174 149
		f 4 -261 208 261 -236
		mu 0 4 149 174 175 150
		f 4 -262 209 262 -237
		mu 0 4 150 175 176 151
		f 4 -263 210 263 -238
		mu 0 4 151 176 177 152
		f 4 -264 211 264 -239
		mu 0 4 152 177 178 153
		f 4 -265 212 265 -240
		mu 0 4 153 178 179 154
		f 4 -266 213 266 -241
		mu 0 4 154 179 180 155
		f 4 -267 214 267 -242
		mu 0 4 155 180 181 156
		f 4 -268 215 268 -243
		mu 0 4 156 181 182 157
		f 4 -269 216 269 -244
		mu 0 4 157 182 183 158
		f 4 -270 217 270 -245
		mu 0 4 158 183 184 159
		f 4 -271 218 271 -246
		mu 0 4 159 184 185 160
		f 4 -272 219 272 -247
		mu 0 4 160 185 186 161
		f 4 -273 220 273 -248
		mu 0 4 161 186 187 162
		f 4 -274 221 274 -249
		mu 0 4 162 187 188 163
		f 4 -30 275 302 -198
		mu 0 4 24 30 189 164
		f 4 -303 276 303 -199
		mu 0 4 164 189 190 165
		f 4 -304 277 304 -200
		mu 0 4 165 190 191 166
		f 4 -305 278 305 -201
		mu 0 4 166 191 192 167
		f 4 -306 279 306 -202
		mu 0 4 167 192 193 168
		f 4 -307 280 307 -203
		mu 0 4 168 193 194 169
		f 4 -308 281 308 -204
		mu 0 4 169 194 195 170
		f 4 -309 282 309 -205
		mu 0 4 170 195 196 171
		f 4 -310 283 310 -206
		mu 0 4 171 196 197 172
		f 4 -311 284 311 -207
		mu 0 4 172 197 198 173
		f 4 -312 285 312 -208
		mu 0 4 173 198 199 174
		f 4 -313 286 313 -209
		mu 0 4 174 199 200 175
		f 4 -314 287 314 -210
		mu 0 4 175 200 201 176
		f 4 -315 288 315 -211
		mu 0 4 176 201 202 177
		f 4 -316 289 316 -212
		mu 0 4 177 202 203 178
		f 4 -317 290 317 -213
		mu 0 4 178 203 204 179
		f 4 -318 291 318 -214
		mu 0 4 179 204 205 180
		f 4 -319 292 319 -215
		mu 0 4 180 205 206 181
		f 4 -320 293 320 -216
		mu 0 4 181 206 207 182
		f 4 -321 294 321 -217
		mu 0 4 182 207 208 183
		f 4 -322 295 322 -218
		mu 0 4 183 208 209 184
		f 4 -323 296 323 -219
		mu 0 4 184 209 210 185
		f 4 -324 297 324 -220
		mu 0 4 185 210 211 186
		f 4 -325 298 325 -221
		mu 0 4 186 211 212 187
		f 4 -326 299 326 -222
		mu 0 4 187 212 213 188
		f 4 0 352 -378 -328
		mu 0 4 0 57 239 214
		f 4 377 353 -379 -329
		mu 0 4 214 239 240 215
		f 4 378 354 -380 -330
		mu 0 4 215 240 241 216
		f 4 379 355 -381 -331
		mu 0 4 216 241 242 217
		f 4 380 356 -382 -332
		mu 0 4 217 242 243 218
		f 4 381 357 -383 -333
		mu 0 4 218 243 244 219
		f 4 382 358 -384 -334
		mu 0 4 219 244 245 220
		f 4 383 359 -385 -335
		mu 0 4 220 245 246 221
		f 4 384 360 -386 -336
		mu 0 4 221 246 247 222
		f 4 385 361 -387 -337
		mu 0 4 222 247 248 223
		f 4 386 362 -388 -338
		mu 0 4 223 248 249 224
		f 4 387 363 -389 -339
		mu 0 4 224 249 250 225
		f 4 388 364 -390 -340
		mu 0 4 225 250 251 226
		f 4 389 365 -391 -341
		mu 0 4 226 251 252 227
		f 4 390 366 -392 -342
		mu 0 4 227 252 253 228
		f 4 391 367 -393 -343
		mu 0 4 228 253 254 229
		f 4 392 368 -394 -344
		mu 0 4 229 254 255 230
		f 4 393 369 -395 -345
		mu 0 4 230 255 256 231
		f 4 394 370 -396 -346
		mu 0 4 231 256 257 232
		f 4 395 371 -397 -347
		mu 0 4 232 257 258 233
		f 4 396 372 -398 -348
		mu 0 4 233 258 259 234
		f 4 397 373 -399 -349
		mu 0 4 234 259 260 235
		f 4 398 374 -400 -350
		mu 0 4 235 260 261 236
		f 4 399 375 -401 -351
		mu 0 4 236 261 262 237
		f 4 400 376 -402 -352
		mu 0 4 237 262 263 238
		f 4 -5 327 403 -276
		mu 0 4 30 0 214 189
		f 4 -404 328 404 -277
		mu 0 4 189 214 215 190
		f 4 -405 329 405 -278
		mu 0 4 190 215 216 191
		f 4 -406 330 406 -279
		mu 0 4 191 216 217 192
		f 4 -407 331 407 -280
		mu 0 4 192 217 218 193
		f 4 -408 332 408 -281
		mu 0 4 193 218 219 194
		f 4 -409 333 409 -282
		mu 0 4 194 219 220 195
		f 4 -410 334 410 -283
		mu 0 4 195 220 221 196
		f 4 -411 335 411 -284
		mu 0 4 196 221 222 197
		f 4 -412 336 412 -285
		mu 0 4 197 222 223 198
		f 4 -413 337 413 -286
		mu 0 4 198 223 224 199
		f 4 -414 338 414 -287
		mu 0 4 199 224 225 200
		f 4 -415 339 415 -288
		mu 0 4 200 225 226 201
		f 4 -416 340 416 -289
		mu 0 4 201 226 227 202
		f 4 -417 341 417 -290
		mu 0 4 202 227 228 203
		f 4 -418 342 418 -291
		mu 0 4 203 228 229 204
		f 4 -419 343 419 -292
		mu 0 4 204 229 230 205
		f 4 -420 344 420 -293
		mu 0 4 205 230 231 206
		f 4 -421 345 421 -294
		mu 0 4 206 231 232 207
		f 4 -422 346 422 -295
		mu 0 4 207 232 233 208
		f 4 -423 347 423 -296
		mu 0 4 208 233 234 209
		f 4 -424 348 424 -297
		mu 0 4 209 234 235 210
		f 4 -425 349 425 -298
		mu 0 4 210 235 236 211
		f 4 -426 350 426 -299
		mu 0 4 211 236 237 212
		f 4 -427 351 427 -300
		mu 0 4 212 237 238 213
		f 4 -16 224 429 -71
		mu 0 4 36 18 139 114
		f 4 -430 225 430 -72
		mu 0 4 114 139 140 115
		f 4 -431 226 431 -73
		mu 0 4 115 140 141 116
		f 4 -432 227 432 -74
		mu 0 4 116 141 142 117
		f 4 -433 228 433 -75
		mu 0 4 117 142 143 118
		f 4 -434 229 434 -76
		mu 0 4 118 143 144 119
		f 4 -435 230 435 -77
		mu 0 4 119 144 145 120
		f 4 -436 231 436 -78
		mu 0 4 120 145 146 121
		f 4 -437 232 437 -79
		mu 0 4 121 146 147 122
		f 4 -438 233 438 -80
		mu 0 4 122 147 148 123
		f 4 -439 234 439 -81
		mu 0 4 123 148 149 124
		f 4 -440 235 440 -82
		mu 0 4 124 149 150 125
		f 4 -441 236 441 -83
		mu 0 4 125 150 151 126
		f 4 -442 237 442 -84
		mu 0 4 126 151 152 127
		f 4 -443 238 443 -85
		mu 0 4 127 152 153 128
		f 4 -444 239 444 -86
		mu 0 4 128 153 154 129
		f 4 -445 240 445 -87
		mu 0 4 129 154 155 130
		f 4 -446 241 446 -88
		mu 0 4 130 155 156 131
		f 4 -447 242 447 -89
		mu 0 4 131 156 157 132
		f 4 -448 243 448 -90
		mu 0 4 132 157 158 133
		f 4 -449 244 449 -91
		mu 0 4 133 158 159 134
		f 4 -450 245 450 -92
		mu 0 4 134 159 160 135
		f 4 -451 246 451 -93
		mu 0 4 135 160 161 136
		f 4 -452 247 452 -94
		mu 0 4 136 161 162 137
		f 4 -453 248 453 -95
		mu 0 4 137 162 163 138
		f 4 51 480 -506 -455
		mu 0 4 44 1 289 264
		f 4 505 481 -507 -456
		mu 0 4 264 289 290 265
		f 4 506 482 -508 -457
		mu 0 4 265 290 291 266
		f 4 507 483 -509 -458
		mu 0 4 266 291 292 267
		f 4 508 484 -510 -459
		mu 0 4 267 292 293 268
		f 4 509 485 -511 -460
		mu 0 4 268 293 294 269
		f 4 510 486 -512 -461
		mu 0 4 269 294 295 270
		f 4 511 487 -513 -462
		mu 0 4 270 295 296 271
		f 4 512 488 -514 -463
		mu 0 4 271 296 297 272
		f 4 513 489 -515 -464
		mu 0 4 272 297 298 273
		f 4 514 490 -516 -465
		mu 0 4 273 298 299 274
		f 4 515 491 -517 -466
		mu 0 4 274 299 300 275
		f 4 516 492 -518 -467
		mu 0 4 275 300 301 276
		f 4 517 493 -519 -468
		mu 0 4 276 301 302 277
		f 4 518 494 -520 -469
		mu 0 4 277 302 303 278
		f 4 519 495 -521 -470
		mu 0 4 278 303 304 279
		f 4 520 496 -522 -471
		mu 0 4 279 304 305 280
		f 4 521 497 -523 -472
		mu 0 4 280 305 306 281
		f 4 522 498 -524 -473
		mu 0 4 281 306 307 282
		f 4 523 499 -525 -474
		mu 0 4 282 307 308 283
		f 4 524 500 -526 -475
		mu 0 4 283 308 309 284
		f 4 525 501 -527 -476
		mu 0 4 284 309 310 285
		f 4 526 502 -528 -477
		mu 0 4 285 310 311 286
		f 4 527 503 -529 -478
		mu 0 4 286 311 312 287
		f 4 528 504 -530 -479
		mu 0 4 287 312 313 288
		f 4 5 530 -556 -481
		mu 0 4 1 31 314 289
		f 4 555 531 -557 -482
		mu 0 4 289 314 315 290
		f 4 556 532 -558 -483
		mu 0 4 290 315 316 291
		f 4 557 533 -559 -484
		mu 0 4 291 316 317 292
		f 4 558 534 -560 -485
		mu 0 4 292 317 318 293
		f 4 559 535 -561 -486
		mu 0 4 293 318 319 294
		f 4 560 536 -562 -487
		mu 0 4 294 319 320 295
		f 4 561 537 -563 -488
		mu 0 4 295 320 321 296
		f 4 562 538 -564 -489
		mu 0 4 296 321 322 297
		f 4 563 539 -565 -490
		mu 0 4 297 322 323 298
		f 4 564 540 -566 -491
		mu 0 4 298 323 324 299
		f 4 565 541 -567 -492
		mu 0 4 299 324 325 300
		f 4 566 542 -568 -493
		mu 0 4 300 325 326 301
		f 4 567 543 -569 -494
		mu 0 4 301 326 327 302
		f 4 568 544 -570 -495
		mu 0 4 302 327 328 303
		f 4 569 545 -571 -496
		mu 0 4 303 328 329 304
		f 4 570 546 -572 -497
		mu 0 4 304 329 330 305
		f 4 571 547 -573 -498
		mu 0 4 305 330 331 306
		f 4 572 548 -574 -499
		mu 0 4 306 331 332 307
		f 4 573 549 -575 -500
		mu 0 4 307 332 333 308
		f 4 574 550 -576 -501
		mu 0 4 308 333 334 309
		f 4 575 551 -577 -502
		mu 0 4 309 334 335 310
		f 4 576 552 -578 -503
		mu 0 4 310 335 336 311
		f 4 577 553 -579 -504
		mu 0 4 311 336 337 312
		f 4 578 554 -580 -505
		mu 0 4 312 337 338 313
		f 4 31 582 -608 -531
		mu 0 4 31 25 339 314
		f 4 607 583 -609 -532
		mu 0 4 314 339 340 315
		f 4 608 584 -610 -533
		mu 0 4 315 340 341 316
		f 4 609 585 -611 -534
		mu 0 4 316 341 342 317
		f 4 610 586 -612 -535
		mu 0 4 317 342 343 318
		f 4 611 587 -613 -536
		mu 0 4 318 343 344 319
		f 4 612 588 -614 -537
		mu 0 4 319 344 345 320
		f 4 613 589 -615 -538
		mu 0 4 320 345 346 321
		f 4 614 590 -616 -539
		mu 0 4 321 346 347 322
		f 4 615 591 -617 -540
		mu 0 4 322 347 348 323
		f 4 616 592 -618 -541
		mu 0 4 323 348 349 324
		f 4 617 593 -619 -542
		mu 0 4 324 349 350 325
		f 4 618 594 -620 -543
		mu 0 4 325 350 351 326
		f 4 619 595 -621 -544
		mu 0 4 326 351 352 327
		f 4 620 596 -622 -545
		mu 0 4 327 352 353 328
		f 4 621 597 -623 -546
		mu 0 4 328 353 354 329
		f 4 622 598 -624 -547
		mu 0 4 329 354 355 330
		f 4 623 599 -625 -548
		mu 0 4 330 355 356 331
		f 4 624 600 -626 -549
		mu 0 4 331 356 357 332
		f 4 625 601 -627 -550
		mu 0 4 332 357 358 333
		f 4 626 602 -628 -551
		mu 0 4 333 358 359 334
		f 4 627 603 -629 -552
		mu 0 4 334 359 360 335
		f 4 628 604 -630 -553
		mu 0 4 335 360 361 336
		f 4 629 605 -631 -554
		mu 0 4 336 361 362 337
		f 4 630 606 -632 -555
		mu 0 4 337 362 363 338
		f 4 24 634 -660 -583
		mu 0 4 25 19 364 339
		f 4 659 635 -661 -584
		mu 0 4 339 364 365 340
		f 4 660 636 -662 -585
		mu 0 4 340 365 366 341
		f 4 661 637 -663 -586
		mu 0 4 341 366 367 342
		f 4 662 638 -664 -587
		mu 0 4 342 367 368 343
		f 4 663 639 -665 -588
		mu 0 4 343 368 369 344
		f 4 664 640 -666 -589
		mu 0 4 344 369 370 345
		f 4 665 641 -667 -590
		mu 0 4 345 370 371 346
		f 4 666 642 -668 -591
		mu 0 4 346 371 372 347
		f 4 667 643 -669 -592
		mu 0 4 347 372 373 348
		f 4 668 644 -670 -593
		mu 0 4 348 373 374 349
		f 4 669 645 -671 -594
		mu 0 4 349 374 375 350
		f 4 670 646 -672 -595
		mu 0 4 350 375 376 351
		f 4 671 647 -673 -596
		mu 0 4 351 376 377 352
		f 4 672 648 -674 -597
		mu 0 4 352 377 378 353
		f 4 673 649 -675 -598
		mu 0 4 353 378 379 354
		f 4 674 650 -676 -599
		mu 0 4 354 379 380 355
		f 4 675 651 -677 -600
		mu 0 4 355 380 381 356
		f 4 676 652 -678 -601
		mu 0 4 356 381 382 357
		f 4 677 653 -679 -602
		mu 0 4 357 382 383 358
		f 4 678 654 -680 -603
		mu 0 4 358 383 384 359
		f 4 679 655 -681 -604
		mu 0 4 359 384 385 360
		f 4 680 656 -682 -605
		mu 0 4 360 385 386 361
		f 4 681 657 -683 -606
		mu 0 4 361 386 387 362
		f 4 682 658 -684 -607
		mu 0 4 362 387 388 363
		f 4 17 686 -712 -635
		mu 0 4 19 37 389 364
		f 4 711 687 -713 -636
		mu 0 4 364 389 390 365
		f 4 712 688 -714 -637
		mu 0 4 365 390 391 366
		f 4 713 689 -715 -638
		mu 0 4 366 391 392 367
		f 4 714 690 -716 -639
		mu 0 4 367 392 393 368
		f 4 715 691 -717 -640
		mu 0 4 368 393 394 369
		f 4 716 692 -718 -641
		mu 0 4 369 394 395 370
		f 4 717 693 -719 -642
		mu 0 4 370 395 396 371
		f 4 718 694 -720 -643
		mu 0 4 371 396 397 372
		f 4 719 695 -721 -644
		mu 0 4 372 397 398 373
		f 4 720 696 -722 -645
		mu 0 4 373 398 399 374
		f 4 721 697 -723 -646
		mu 0 4 374 399 400 375
		f 4 722 698 -724 -647
		mu 0 4 375 400 401 376
		f 4 723 699 -725 -648
		mu 0 4 376 401 402 377
		f 4 724 700 -726 -649
		mu 0 4 377 402 403 378
		f 4 725 701 -727 -650
		mu 0 4 378 403 404 379
		f 4 726 702 -728 -651
		mu 0 4 379 404 405 380
		f 4 727 703 -729 -652
		mu 0 4 380 405 406 381
		f 4 728 704 -730 -653
		mu 0 4 381 406 407 382
		f 4 729 705 -731 -654
		mu 0 4 382 407 408 383
		f 4 730 706 -732 -655
		mu 0 4 383 408 409 384
		f 4 731 707 -733 -656
		mu 0 4 384 409 410 385
		f 4 732 708 -734 -657
		mu 0 4 385 410 411 386
		f 4 733 709 -735 -658
		mu 0 4 386 411 412 387
		f 4 734 710 -736 -659
		mu 0 4 387 412 413 388
		f 4 38 763 -789 -687
		mu 0 4 37 3 414 389
		f 4 788 764 -790 -688
		mu 0 4 389 414 415 390
		f 4 789 765 -791 -689
		mu 0 4 390 415 416 391
		f 4 790 766 -792 -690
		mu 0 4 391 416 417 392
		f 4 791 767 -793 -691
		mu 0 4 392 417 418 393
		f 4 792 768 -794 -692
		mu 0 4 393 418 419 394
		f 4 793 769 -795 -693
		mu 0 4 394 419 420 395
		f 4 794 770 -796 -694
		mu 0 4 395 420 421 396
		f 4 795 771 -797 -695
		mu 0 4 396 421 422 397
		f 4 796 772 -798 -696
		mu 0 4 397 422 423 398
		f 4 797 773 -799 -697
		mu 0 4 398 423 424 399
		f 4 798 774 -800 -698
		mu 0 4 399 424 425 400
		f 4 799 775 -801 -699
		mu 0 4 400 425 426 401
		f 4 800 776 -802 -700
		mu 0 4 401 426 427 402
		f 4 801 777 -803 -701
		mu 0 4 402 427 428 403
		f 4 802 778 -804 -702
		mu 0 4 403 428 429 404
		f 4 803 779 -805 -703
		mu 0 4 404 429 430 405
		f 4 804 780 -806 -704
		mu 0 4 405 430 431 406
		f 4 805 781 -807 -705
		mu 0 4 406 431 432 407
		f 4 806 782 -808 -706
		mu 0 4 407 432 433 408
		f 4 807 783 -809 -707
		mu 0 4 408 433 434 409
		f 4 808 784 -810 -708
		mu 0 4 409 434 435 410
		f 4 809 785 -811 -709
		mu 0 4 410 435 436 411
		f 4 810 786 -812 -710
		mu 0 4 411 436 437 412
		f 4 811 787 -813 -711
		mu 0 4 412 437 438 413
		f 4 -54 737 813 -764
		mu 0 4 3 50 439 414
		f 4 -814 738 814 -765
		mu 0 4 414 439 440 415
		f 4 -815 739 815 -766
		mu 0 4 415 440 441 416
		f 4 -816 740 816 -767
		mu 0 4 416 441 442 417
		f 4 -817 741 817 -768
		mu 0 4 417 442 443 418
		f 4 -818 742 818 -769
		mu 0 4 418 443 444 419
		f 4 -819 743 819 -770
		mu 0 4 419 444 445 420
		f 4 -820 744 820 -771
		mu 0 4 420 445 446 421
		f 4 -821 745 821 -772
		mu 0 4 421 446 447 422
		f 4 -822 746 822 -773
		mu 0 4 422 447 448 423
		f 4 -823 747 823 -774
		mu 0 4 423 448 449 424
		f 4 -824 748 824 -775
		mu 0 4 424 449 450 425
		f 4 -825 749 825 -776
		mu 0 4 425 450 451 426
		f 4 -826 750 826 -777
		mu 0 4 426 451 452 427
		f 4 -827 751 827 -778
		mu 0 4 427 452 453 428
		f 4 -828 752 828 -779
		mu 0 4 428 453 454 429
		f 4 -829 753 829 -780
		mu 0 4 429 454 455 430
		f 4 -830 754 830 -781
		mu 0 4 430 455 456 431
		f 4 -831 755 831 -782
		mu 0 4 431 456 457 432
		f 4 -832 756 832 -783
		mu 0 4 432 457 458 433
		f 4 -833 757 833 -784
		mu 0 4 433 458 459 434
		f 4 -834 758 834 -785
		mu 0 4 434 459 460 435
		f 4 -835 759 835 -786
		mu 0 4 435 460 461 436
		f 4 -836 760 836 -787
		mu 0 4 436 461 462 437
		f 4 -837 761 837 -788
		mu 0 4 437 462 463 438
		f 4 66 454 -839 -353
		mu 0 4 57 44 264 239
		f 4 838 455 -840 -354
		mu 0 4 239 264 265 240
		f 4 839 456 -841 -355
		mu 0 4 240 265 266 241
		f 4 840 457 -842 -356
		mu 0 4 241 266 267 242
		f 4 841 458 -843 -357
		mu 0 4 242 267 268 243
		f 4 842 459 -844 -358
		mu 0 4 243 268 269 244
		f 4 843 460 -845 -359
		mu 0 4 244 269 270 245
		f 4 844 461 -846 -360
		mu 0 4 245 270 271 246
		f 4 845 462 -847 -361
		mu 0 4 246 271 272 247
		f 4 846 463 -848 -362
		mu 0 4 247 272 273 248
		f 4 847 464 -849 -363
		mu 0 4 248 273 274 249
		f 4 848 465 -850 -364
		mu 0 4 249 274 275 250
		f 4 849 466 -851 -365
		mu 0 4 250 275 276 251
		f 4 850 467 -852 -366
		mu 0 4 251 276 277 252
		f 4 851 468 -853 -367
		mu 0 4 252 277 278 253
		f 4 852 469 -854 -368
		mu 0 4 253 278 279 254
		f 4 853 470 -855 -369
		mu 0 4 254 279 280 255
		f 4 854 471 -856 -370
		mu 0 4 255 280 281 256
		f 4 855 472 -857 -371
		mu 0 4 256 281 282 257
		f 4 856 473 -858 -372
		mu 0 4 257 282 283 258
		f 4 857 474 -859 -373
		mu 0 4 258 283 284 259
		f 4 858 475 -860 -374
		mu 0 4 259 284 285 260
		f 4 859 476 -861 -375
		mu 0 4 260 285 286 261
		f 4 860 477 -862 -376
		mu 0 4 261 286 287 262
		f 4 861 478 -863 -377
		mu 0 4 262 287 288 263
		f 4 -69 96 867 -738
		mu 0 4 50 63 64 439
		f 4 -868 97 868 -739
		mu 0 4 439 64 65 440
		f 4 -869 98 869 -740
		mu 0 4 440 65 66 441
		f 4 -870 99 870 -741
		mu 0 4 441 66 67 442
		f 4 -871 100 871 -742
		mu 0 4 442 67 68 443
		f 4 -872 101 872 -743
		mu 0 4 443 68 69 444
		f 4 -873 102 873 -744
		mu 0 4 444 69 70 445
		f 4 -874 103 874 -745
		mu 0 4 445 70 71 446
		f 4 -875 104 875 -746
		mu 0 4 446 71 72 447
		f 4 -876 105 876 -747
		mu 0 4 447 72 73 448
		f 4 -877 106 877 -748
		mu 0 4 448 73 74 449
		f 4 -878 107 878 -749
		mu 0 4 449 74 75 450
		f 4 -879 108 879 -750
		mu 0 4 450 75 76 451
		f 4 -880 109 880 -751
		mu 0 4 451 76 77 452
		f 4 -881 110 881 -752
		mu 0 4 452 77 78 453
		f 4 -882 111 882 -753
		mu 0 4 453 78 79 454
		f 4 -883 112 883 -754
		mu 0 4 454 79 80 455
		f 4 -884 113 884 -755
		mu 0 4 455 80 81 456
		f 4 -885 114 885 -756
		mu 0 4 456 81 82 457
		f 4 -886 115 886 -757
		mu 0 4 457 82 83 458
		f 4 -887 116 887 -758
		mu 0 4 458 83 84 459
		f 4 -888 117 888 -759
		mu 0 4 459 84 85 460
		f 4 -889 118 889 -760
		mu 0 4 460 85 86 461
		f 4 -890 119 890 -761
		mu 0 4 461 86 87 462
		f 4 -891 120 891 -762
		mu 0 4 462 87 88 463;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C2";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C4";
createNode displayLayerManager -n "layerManager";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C5";
createNode displayLayer -n "defaultLayer";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C8";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002C9";
	setAttr ".version" -type "string" "1.4.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002CA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002CB";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "820E2900-0000-1C38-5AAB-B59F000002CC";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTA -n "Motion_Import_Locator_rotateX";
	rename -uid "820E2900-0000-1C38-5AAB-B7E8000002DF";
	setAttr ".tan" 18;
	setAttr -s 295 ".ktv";
	setAttr ".ktv[0:249]"  1 183.2037 2 183.3139 3 183.77100000000004 4 184.6226 5 185.6922
		 6 186.6139 7 187.1596 8 187.518 9 187.486 10 187.25400000000002 11 187.187 12 187.4435 13 187.8089
		 14 188.1674 15 188.6164 16 188.8952 17 188.8847 18 188.6626 19 188.31119999999999 20 187.81090000000003 21 187.44389999999999
		 22 187.2079 23 186.70350000000002 24 185.713 25 184.4827 26 183.2892 27 182.14069999999998 28 181.1953 29 181.1184
		 30 181.4417 31 181.6944 32 181.9023 33 182.1375 34 182.08100000000005 35 181.9057 36 181.5208
		 37 181.2345 38 181.2083 39 181.4207 40 181.8711 41 182.5847 42 183.3355 43 183.97230000000002
		 44 184.4539 45 184.7218 46 184.9674 47 185.2562 48 185.6157 49 185.93080000000003 50 186.67270000000002 51 187.27100000000002
		 52 187.4198 53 187.2732 54 186.9939 55 186.2632 56 185.7278 57 185.4765 58 185.2344
		 59 185.1044 60 184.96280000000002 61 184.8059 62 184.82170000000002 63 185.0346 64 185.3081 65 185.5737 66 185.86950000000002
		 67 186.16250000000002 68 186.54559999999998 69 187.0899 70 187.7957 71 188.6226 72 189.26260000000005 73 189.73579999999998 74 190.00799999999998
		 75 190.65 76 192.112 77 194.611 78 197.7 79 201.167 80 204.231 81 206.46699999999998 82 207.882
		 83 208.457 84 208.398 85 207.801 86 206.642 87 204.794 88 202.588 89 200.05900000000003 90 197.50900000000001
		 91 195.163 92 193.34 93 191.60899999999998 94 190.172 95 188.5608 96 186.8262 97 184.74180000000004 98 182.8946
		 99 181.2449 100 180.32670000000002 101 179.8526 102 179.7286 103 179.9835 104 180.4737 105 181.1087
		 106 181.7658 107 182.4313 108 182.9715 109 183.3614 110 183.61000000000004 111 183.8558 112 184.1874
		 113 184.7337 114 185.29930000000004 115 185.607 116 185.7727 117 185.5951 118 184.8955 119 184.0396
		 120 183.0544 121 181.7419 122 180.4922 123 179.5645 124 178.8117 125 178.382 126 178.3462
		 127 178.4965 128 178.6528 129 178.8321 130 179.0396 131 179.2491 132 179.52519999999998 133 179.8619
		 134 180.35660000000001 135 181.04649999999998 136 181.8914 137 182.85790000000003 138 183.8452 139 184.6728 140 185.23000000000002
		 141 185.48059999999998 142 185.25029999999998 143 184.6789 144 183.9358 145 182.94240000000002 146 181.8711 147 180.7996
		 148 179.9831 149 179.15030000000002 150 178.51370000000003 151 177.926 152 177.4393 153 177.27550000000002 154 177.674
		 155 178.3059 156 178.94740000000002 157 179.8956 158 180.5278 159 180.65789999999998 160 180.7133 161 180.9267
		 162 180.9928 163 181.293 164 181.5925 165 181.78289999999998 166 181.7424 167 181.7833 168 181.91469999999998
		 169 182.42849999999999 170 183.0737 171 184.18970000000002 172 185.4452 173 186.4927 174 187.3675 175 188.0942
		 176 188.5033 177 188.89610000000002 178 189.1639 179 189.2954 180 189.2895 181 189.2894 182 189.06029999999998
		 183 188.74410000000003 184 188.29840000000002 185 188.0118 186 187.6716 187 187.297 188 187.0115 189 186.83929999999998
		 190 186.6086 191 186.4769 192 186.441 193 186.4065 194 186.4108 195 186.4687 196 186.33780000000002
		 197 186.0915 198 185.68529999999998 199 185.1479 200 184.3571 201 183.6972 202 183.21370000000002 203 182.749
		 204 182.4799 205 182.4641 206 182.51690000000002 207 182.4872 208 182.539 209 182.5033 210 182.4949
		 211 182.4425 212 182.3734 213 182.14010000000005 214 181.5949 215 180.95600000000002 216 180.32139999999998 217 179.50650000000005
		 218 178.8177 219 178.5121 220 178.358 221 178.4607 222 178.8442 223 179.25209999999998 224 179.5498
		 225 180.1652 226 180.8819 227 182.04649999999998 228 183.2835 229 185.463 230 187.76139999999998 231 190.668
		 232 193.688 233 196.881 234 198.853 235 199.939 236 199.457 237 197.481 238 194.816
		 239 191.905 240 188.62720000000002 241 185.19029999999998 242 182.34 243 179.94670000000002 244 178.0847 245 176.9888
		 246 176.6542 247 176.8121 248 177.13650000000004 249 177.5795 250 178.1663;
	setAttr ".ktv[250:294]" 251 178.9239 252 179.6907 253 180.66989999999998 254 181.56310000000002 255 182.48160000000001
		 256 183.2601 257 183.7312 258 184.0267 259 184.5066 260 184.72050000000002 261 184.90359999999998 262 185.47230000000002
		 263 185.5795 264 185.40460000000002 265 185.2919 266 185.21359999999999 267 185.0591 268 185.2279 269 185.49450000000002
		 270 185.77530000000002 271 186.0761 272 186.1705 273 186.385 274 186.61090000000002 275 186.7754 276 186.9493
		 277 187.0888 278 187.06330000000003 279 186.9383 280 186.84120000000001 281 186.73430000000002 282 186.6301 283 186.55450000000002
		 284 186.5913 285 186.5923 286 186.5139 287 186.4712 288 186.4067 289 186.28879999999998 290 186.2457
		 291 186.268 292 186.22050000000002 293 186.17770000000002 294 184.9587 295 183.7182;
createNode animCurveTA -n "Motion_Import_Locator_rotateY";
	rename -uid "820E2900-0000-1C38-5AAB-B7E8000002E0";
	setAttr ".tan" 18;
	setAttr -s 295 ".ktv";
	setAttr ".ktv[0:249]"  1 -181.9871 2 -181.5207 3 -178.1526 4 -180.01659999999998 5 -179.7991
		 6 -182.47480000000002 7 -187.3699 8 -192.513 9 -194.039 10 -196.363 11 -196.56100000000004 12 -198.84 13 -200.84199999999998
		 14 -201.471 15 -201.578 16 -201.09199999999998 17 -200.711 18 -202.064 19 -203.551 20 -204.583
		 21 -204.713 22 -203.05 23 -202.386 24 -204 25 -201.829 26 -197.877 27 -195.049 28 -192.97899999999998
		 29 -184.8707 30 -182.3715 31 -182.95659999999998 32 -183.70659999999998 33 -182.4275 34 -182.3103 35 -180.24390000000002
		 36 -175.84 37 -167.85500000000002 38 -157.2813 39 -145.535 40 -135.3447 41 -127.1769 42 -123.5272
		 43 -121.1992 44 -122.78440000000002 45 -123.14180000000002 46 -119.72490000000002 47 -116.1531 48 -120.46050000000001 49 -124.65270000000002 50 -131.9992
		 51 -142.7202 52 -151.6282 53 -157.3151 54 -164.428 55 -167.89749999999998 56 -170.9115 57 -173.8746
		 58 -174.7135 59 -174.197 60 -174.0405 61 -175.67610000000002 62 -177.60840000000002 63 -178.4891 64 -181.06220000000002
		 65 -183.4691 66 -184.8714 67 -185.74009999999998 68 -186.49439999999998 69 -187.60500000000002 70 -188.0731 71 -188.99720000000002 72 -191.252
		 73 -193.953 74 -194.503 75 -195.275 76 -197.061 77 -197.238 78 -196.524 79 -194.934
		 80 -193.453 81 -189.8397 82 -186.2981 83 -184.8314 84 -185.2049 85 -185.89159999999998 86 -186.6366
		 87 -189.3409 88 -192.83100000000002 89 -189.52290000000002 90 -186.71460000000002 91 -185.7337 92 -183.6092 93 -178.71030000000002 94 -177.7927
		 95 -176.5525 96 -174.20510000000002 97 -173.519 98 -174.84480000000002 99 -179.4461 100 -181.4124 101 -182.28789999999998
		 102 -181.51479999999998 103 -180.4499 104 -181.18940000000003 105 -182.763 106 -185.1605 107 -187.9758 108 -188.7256
		 109 -185.33339999999998 110 -183.8169 111 -179.9681 112 -175.5731 113 -172.87279999999998 114 -169.8381 115 -165.50889999999998
		 116 -163.9197 117 -161.91410000000005 118 -162.0917 119 -159.8812 120 -156.73059999999998 121 -154.6961 122 -154.30110000000002
		 123 -151.8493 124 -152.4922 125 -153.3389 126 -153.2375 127 -152.02179999999998 128 -151.0529
		 129 -149.7398 130 -150.5568 131 -152.0439 132 -153.4641 133 -155.0405 134 -157.0728
		 135 -159.16469999999998 136 -162.4863 137 -168.7548 138 -171.0915 139 -172.2705 140 -175.81709999999998 141 -178.0537
		 142 -178.9663 143 -180.7826 144 -183.1027 145 -182.08780000000002 146 -181.9386 147 -178.0211
		 148 -176.15879999999999 149 -161.8062 150 -139.1376 151 -104.68980000000002 152 -82.999946240234365 153 -58.976300000000009 154 -42.3035
		 155 -29.789399999999997 156 -15.343700000000014 157 -7.9419000000000057 158 -1.5251000000000077 159 4.7529000000000021 160 10.506900000000002 161 13.470900000000002 162 17.61290000000001
		 163 21.130900000000015 164 23.530900000000013 165 24.893900000000016 166 26.6479 167 27.507899999999985 168 28.941900000000015 169 31.259899999999995 170 33.620899999999985
		 171 35.884899999999995 172 37.817899999999987 173 39.79890000000001 174 41.6179 175 42.910900000000012 176 43.723899999999979 177 45.11789999999997 178 45.752899999999968
		 179 45.712899999999969 180 45.469899999999981 181 45.136899999999983 182 44.420899999999975 183 43.572900000000011 184 42.003899999999994 185 41.093900000000005 186 40.054900000000011
		 187 38.251899999999985 188 36.494900000000015 189 33.860899999999994 190 30.43490000000001 191 28.4029 192 26.073899999999991 193 23.123900000000003 194 21.004900000000013
		 195 19.702900000000003 196 17.155900000000006 197 15.739900000000009 198 14.402900000000008 199 13.948900000000014 200 13.495900000000006 201 12.968900000000007 202 12.268900000000006
		 203 12.394900000000007 204 11.927900000000006 205 11.4619 206 11.220899999999999 207 10.632900000000005 208 9.8068999999999917 209 9.8699 210 9.9689000000000014
		 211 10.717899999999998 212 12.425900000000002 213 14.147900000000011 214 14.770900000000003 215 16.174900000000015 216 16.787900000000011 217 16.907899999999998 218 16.848900000000008
		 219 17.809900000000003 220 18.588900000000013 221 19.296900000000011 222 18.92690000000001 223 18.37990000000001 224 17.395899999999997 225 15.647900000000014 226 11.630900000000011
		 227 7.1148999999999951 228 2.9408999999999854 229 -3.2841000000000089 230 -11.289600000000009 231 -20.4925 232 -30.5744 233 -42.009600000000013
		 234 -56.1845 235 -64.978781005859361 236 -74.235321386718738 237 -86.03565 238 -99.68006 239 -108.36430000000001 240 -122.2137
		 241 -129.4607 242 -135.5551 243 -142.0864 244 -147.7464 245 -149.6024 246 -155.2647
		 247 -161.6532 248 -167.5713 249 -172.6184 250 -173.6803;
	setAttr ".ktv[250:294]" 251 -178.8514 252 -181.93250000000003 253 -185.675 254 -190.743
		 255 -197.803 256 -200.93099999999998 257 -204.781 258 -206.203 259 -206.35899999999998 260 -206.76 261 -207.022
		 262 -204.82999999999998 263 -206.14000000000001 264 -209.445 265 -210.253 266 -206.92000000000002 267 -203.62700000000004 268 -198.75400000000002
		 269 -193.176 270 -185.97760000000002 271 -183.9005 272 -183.7937 273 -182.4848 274 -178.6255 275 -177.07550000000003
		 276 -174.5829 277 -172.0236 278 -170.0383 279 -171.1551 280 -172.0101 281 -172.62680000000003
		 282 -173.7954 283 -172.8193 284 -173.6987 285 -174.4971 286 -175.27800000000002 287 -175.35899999999998 288 -175.0097
		 289 -171.7336 290 -167.942 291 -163.8979 292 -162.36950000000002 293 -162.8244 294 -166.5488 295 -170.5775;
createNode animCurveTA -n "Motion_Import_Locator_rotateZ";
	rename -uid "820E2900-0000-1C38-5AAB-B7E8000002E1";
	setAttr ".tan" 18;
	setAttr -s 295 ".ktv";
	setAttr ".ktv[0:249]"  1 177.9087 2 177.7712 3 177.2245 4 176.43040000000002 5 175.7039
		 6 175.3937 7 175.8794 8 176.7286 9 178.06220000000002 10 179.5206 11 180.7174 12 181.4863 13 182.16070000000002
		 14 182.61060000000003 15 182.8827 16 182.90140000000002 17 182.81770000000003 18 182.7791 19 182.7071 20 182.6208 21 182.4999
		 22 181.77620000000002 23 180.7763 24 180.0078 25 179.3213 26 178.6725 27 178.5693 28 178.9793
		 29 179.0044 30 178.9051 31 178.97719999999998 32 179.066 33 178.9127 34 178.9017 35 178.94490000000002 36 179.0649
		 37 179.27429999999998 38 179.34019999999998 39 179.333 40 179.34359999999998 41 179.20170000000002 42 179.08859999999999 43 179.1191 44 179.24450000000002
		 45 179.4256 46 179.6748 47 179.755 48 179.81900000000002 49 179.90550000000002 50 179.4418 51 179.2252 52 179.3179
		 53 179.4308 54 179.7456 55 180.53730000000002 56 180.88209999999998 57 180.852 58 180.95690000000002 59 180.8765 60 180.8472
		 61 181.05419999999998 62 181.3487 63 181.4706 64 181.53460000000004 65 181.5761 66 181.47660000000002 67 181.29579999999999 68 181.08230000000003
		 69 180.9023 70 180.6492 71 180.4296 72 180.40210000000005 73 180.46519999999998 74 180.5361 75 180.6625 76 181.00990000000002
		 77 181.23059999999998 78 181.19819999999999 79 180.9991 80 180.74290000000002 81 180.1311 82 179.3923 83 179.06310000000002 84 179.034
		 85 179.05040000000002 86 179.14409999999998 87 179.515 88 180.0155 89 180.5494 90 181.2278 91 182.0789 92 182.80800000000002
		 93 183.47539999999998 94 184.072 95 184.6249 96 184.9337 97 185.1801 98 185.0485 99 184.6661
		 100 183.8818 101 183.0392 102 182.2588 103 181.4119 104 180.61759999999998 105 179.9026 106 179.2699
		 107 178.61 108 178.0115 109 177.3998 110 177.0849 111 176.8338 112 176.65179999999998 113 176.6466
		 114 176.574 115 176.3502 116 176.1698 117 175.9779 118 175.99169999999998 119 176.2376 120 176.60320000000002
		 121 177.12490000000003 122 177.6893 123 177.9663 124 178.2491 125 178.5581 126 178.7037 127 178.77620000000002
		 128 179.0461 129 179.2913 130 179.5019 131 179.81 132 180.0789 133 180.3261 134 180.53719999999998
		 135 180.709 136 180.725 137 180.5466 138 180.1346 139 179.471 140 178.604 141 177.5788
		 142 176.36669999999998 143 174.917 144 173.58350000000002 145 172.7573 146 172.3687 147 172.865 148 173.7014
		 149 175.1169 150 176.6051 151 178.4872 152 180.4712 153 182.89530000000002 154 185.184 155 186.9192
		 156 187.53 157 187.46570000000003 158 186.9228 159 185.88729999999998 160 184.7706 161 184.2846 162 184.2133
		 163 184.0513 164 184.1184 165 184.4484 166 184.4871 167 184.24349999999998 168 183.8338 169 183.1494
		 170 182.47700000000003 171 181.953 172 181.4348 173 181.2045 174 181.154 175 181.0865 176 181.14530000000002
		 177 181.17239999999998 178 181.222 179 181.32729999999998 180 181.5512 181 181.6831 182 181.9135 183 182.1851
		 184 182.5145 185 182.70069999999998 186 182.8703 187 182.9463 188 182.91700000000003 189 182.7748 190 182.6004
		 191 182.313 192 182.1107 193 181.96490000000003 194 181.86849999999998 195 181.8338 196 182.01330000000002 197 182.166
		 198 182.47440000000003 199 182.9038 200 183.45250000000001 201 183.888 202 184.1819 203 184.4364 204 184.50110000000004
		 205 184.4466 206 184.45839999999998 207 184.7186 208 184.9076 209 185.18540000000002 210 185.46519999999998 211 185.6837
		 212 185.6209 213 185.26049999999998 214 184.5138 215 183.59879999999998 216 182.7011 217 181.688 218 180.8801
		 219 180.56900000000002 220 180.69819999999999 221 180.9744 222 181.6778 223 182.5052 224 183.1821 225 183.3111
		 226 183.1327 227 182.67090000000005 228 182.1249 229 181.5521 230 181.28390000000002 231 181.2021 232 181.12470000000002
		 233 181.46790000000001 234 182.1322 235 182.6744 236 183.00709999999998 237 183.2403 238 182.94119999999998 239 182.1351
		 240 181.4611 241 181.363 242 181.5602 243 181.82280000000003 244 182.2456 245 182.8788 246 183.11939999999998
		 247 183.4592 248 183.9005 249 184.2067 250 183.96440000000004;
	setAttr ".ktv[250:294]" 251 183.6747 252 183.164 253 182.55180000000001 254 182.15300000000002 255 181.8284
		 256 181.40980000000002 257 181.2449 258 180.86169999999998 259 180.1328 260 179.81 261 179.6287 262 178.8535
		 263 178.69930000000002 264 179.0112 265 179.1399 266 179.44500000000002 267 179.7442 268 179.4308 269 178.99720000000002
		 270 178.2713 271 177.2033 272 176.4768 273 175.9168 274 175.3733 275 175.2021 276 175.1482
		 277 175.10720000000003 278 175.16809999999998 279 175.3063 280 175.4093 281 175.5389 282 175.7274 283 175.9293
		 284 176.019 285 176.111 286 176.22740000000002 287 176.2207 288 176.17149999999998 289 176.0854 290 175.9019
		 291 175.6377 292 175.4247 293 175.1563 294 176.0179 295 176.93080000000003;
createNode animCurveTL -n "camera1_translateX";
	rename -uid "820E2900-0000-1C38-5AAB-BA110000031F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "camera1_translateY";
	rename -uid "820E2900-0000-1C38-5AAB-BA1100000320";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "camera1_translateZ";
	rename -uid "820E2900-0000-1C38-5AAB-BA1100000321";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "camera1_rotateX";
	rename -uid "820E2900-0000-1C38-5AAB-BA1700000322";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -3.2758035761705537;
createNode animCurveTA -n "camera1_rotateY";
	rename -uid "820E2900-0000-1C38-5AAB-BA1700000323";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -1.8657569086877541;
createNode animCurveTA -n "camera1_rotateZ";
	rename -uid "820E2900-0000-1C38-5AAB-BA1700000324";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 2.2002297307324454;
createNode polyPipe -n "polyPipe1";
	rename -uid "820E2900-0000-1C38-5AAB-BAA60000039D";
	setAttr ".r" 9.1927551172445625;
	setAttr ".h" 11.743520422416777;
	setAttr ".sa" 50;
	setAttr ".sc" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "820E2900-0000-1C38-5AAB-BAD2000003AB";
	setAttr ".cuv" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "820E2900-0000-1C38-5AAB-BAF0000003B6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 811\n            -height 351\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 810\n            -height 351\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 811\n            -height 351\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1628\n            -height 745\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.041667\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1628\\n    -height 745\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1628\\n    -height 745\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "820E2900-0000-1C38-5AAB-BAF0000003B7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 295 -ast 1 -aet 295 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "820E2900-0000-1C38-5AAB-BB7D000003E3";
	setAttr ".ics" -type "componentList" 1 "f[150:199]";
	setAttr ".ix" -type "matrix" 0.59915330917729204 0 0 0 0 1.3303875982579695e-16 0.59915330917729204 0
		 0 -0.59915330917729204 1.3303875982579695e-16 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9998899e-06 -1.1427942e-06 -1.7590424 ;
	setAttr ".rs" 1252671055;
	setAttr ".d" 25;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.507873425991491 -5.4970054527205479 -1.7590423276956415 ;
	setAttr ".cbx" -type "double3" 5.5078694262116334 5.4970031671320578 -1.7590423276956393 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "820E2900-0000-1C38-5AAB-BC7F000004A7";
	setAttr ".ics" -type "componentList" 1 "f[50:99]";
	setAttr ".ix" -type "matrix" 0.59915330917729204 0 0 0 0 1.3303875982579695e-16 0.59915330917729204 0
		 0 -0.59915330917729204 1.3303875982579695e-16 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9998899e-06 -8.570957e-07 1.7590424 ;
	setAttr ".rs" 406363575;
	setAttr ".d" 25;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.507873425991491 -5.4970048813234254 1.7590423276956393 ;
	setAttr ".cbx" -type "double3" 5.5078694262116334 5.4970031671320578 1.7590423276956415 ;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "820E2900-0000-1C38-5AAB-BD52000004F3";
	addAttr -s false -ci true -h true -sn "physicalSky" -ln "physicalSky" -at "message";
	setAttr ".imageFilePrefix" -type "string" "";
	setAttr ".imageFormat" 1;
	setAttr ".motionBlurEnable" yes;
	setAttr ".primaryGIEngine" 1;
	setAttr ".bruteForceGINumRays" 32;
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "820E2900-0000-1C38-5AAB-BF160000057F";
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" 1;
	setAttr ".srflc" 1;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gopl" 2;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".vfbSA" -type "Int32Array" 29 112 15 0 0 0 0
		 0 0 0 0 -1073724351 0 0 0 0 0 0 0
		 0 16777215 0 -1074790400 0 -1074790400 0 -1074790400 0 -1074790400 0 ;
	setAttr ".mSceneName" -type "string" "/home/i7463487/Documents/Innovations/Conversion/Maya_Script/Maya_Saves/tunnel/tunnel.ma";
	setAttr ".rt_engineType" 3;
createNode RedshiftMaterial -n "Walls";
	rename -uid "820E2900-0000-1C38-5AAB-BF1B00000583";
	setAttr ".v" 1;
	setAttr ".transl_color" -type "float3" 1 1 1 ;
	setAttr ".transl_weight" 0.25;
	setAttr ".refl_reflectivity" -type "float3" 0 0 0 ;
	setAttr ".refl_ior3" -type "float3" 1 1 1 ;
	setAttr ".refl_ior" 1;
createNode shadingEngine -n "rsMaterial1SG";
	rename -uid "820E2900-0000-1C38-5AAB-BF1B00000584";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "820E2900-0000-1C38-5AAB-BF1B00000585";
	setAttr -s 2 ".t";
createNode RedshiftMaterial -n "Ground";
	rename -uid "820E2900-0000-1C38-5AAB-BF5A0000058B";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.059259258210659027;
	setAttr ".refl_roughness" 0.32592591643333435;
createNode shadingEngine -n "rsMaterial2SG";
	rename -uid "820E2900-0000-1C38-5AAB-BF5A0000058C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "820E2900-0000-1C38-5AAB-BF5A0000058D";
	setAttr -s 2 ".t";
createNode file -n "file1";
	rename -uid "820E2900-0000-1C38-5AAB-BF980000058E";
	setAttr ".ftn" -type "string" "/home/i7463487/Desktop/boarded-concrete-light-grey.jpg";
	setAttr ".exp" -1.3758388757705688;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "820E2900-0000-1C38-5AAB-BF980000058F";
	setAttr ".s" yes;
	setAttr ".re" -type "float2" 0.0099999998 0.0099999998 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "820E2900-0000-1C38-5AAB-BFA400000598";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5199]";
	setAttr ".ix" -type "matrix" 0.58529592963540378 0 0.12811464650978896 0 -0.12811464650978893 1.3303875982579695e-16 0.58529592963540378 0
		 -2.4944767467336927e-17 -0.59915330917729193 1.3303875982579695e-16 0 0 1.3725136212100031 0 1;
	setAttr ".s" -type "double3" 235.69009795532179 235.69009795532179 235.69009795532179 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "820E2900-0000-1C38-5AAB-BFB2000005A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5199]";
	setAttr ".ix" -type "matrix" 0.58529592963540378 0 0.12811464650978896 0 -0.12811464650978893 1.3303875982579695e-16 0.58529592963540378 0
		 -2.4944767467336927e-17 -0.59915330917729193 1.3303875982579695e-16 0 0 1.3725136212100031 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 9.9239768981933594 1.3725135326385498 2.0397758483886719 ;
	setAttr ".ps" -type "double2" 180 10.994008541107178 ;
	setAttr ".r" 235.69008636474609;
createNode RedshiftTriPlanar -n "rsTriPlanar1";
	rename -uid "820E2900-0000-1C38-5AAB-BFE2000005CB";
	setAttr ".imageXAlpha" 0.6645161509513855;
	setAttr ".blendAmount" 0.6645161509513855;
	setAttr ".blendCurve" 6.022099494934082;
createNode RedshiftDisplacement -n "rsDisplacement1";
	rename -uid "820E2900-0000-1C38-5AAB-C11F000005E1";
	setAttr ".scale" 40;
	setAttr ".newrange_max" 40;
createNode animCurveTL -n "rsPhysicalLight1_translateX";
	rename -uid "820E2900-0000-1C38-5AAB-C4F800000688";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 46.744148851255382 22 38.813210618685005 49 48.436133780401363 64 39.364335139154136 86 46.397500994183076
		 101 38.534673942795081 115 44.491104268845966 135 39.450680642798147 143 44.759719965998329 155 39.432220317589753 167 44.244444108800401 182 38.52951195755832 195 44.386628319216527
		 210 39.220904827955636 227 44.778190180061102 243 47.681607737636078 250 37.313421401322884 260 42.815812832023127 274 39.217796963309773 289 43.475881840334601 295 46.309403962602424;
createNode animCurveTL -n "rsPhysicalLight1_translateY";
	rename -uid "820E2900-0000-1C38-5AAB-C4F800000689";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 0.22990379984378384 22 0.22990379984378384 49 0.22990379984378384 64 0.22990379984378384 86 0.22990379984378384
		 101 0.22990379984378384 115 0.22990379984378384 135 0.22990379984378384 143 0.22990379984378384 155 0.22990379984378384 167 0.22990379984378384 182 0.22990379984378384 195 0.22990379984378384
		 210 0.22990379984378384 227 0.22990379984378384 243 0.22990379984378384 250 0.22990379984378384 260 0.22990379984378384 274 0.22990379984378384 289 0.22990379984378384 295 0.22990379984378384;
createNode animCurveTL -n "rsPhysicalLight1_translateZ";
	rename -uid "820E2900-0000-1C38-5AAB-C4F80000068A";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 -85.240341926871807 22 -85.240341926871807 49 -85.240341926871807 64 -85.240341926871807 86 -85.240341926871807
		 101 -85.240341926871807 115 -85.240341926871807 135 -85.240341926871807 143 -85.240341926871807 155 -85.240341926871807 167 -85.240341926871807 182 -85.240341926871807 195 -85.240341926871807
		 210 -85.240341926871807 227 -85.240341926871807 243 -85.240341926871807 250 -85.240341926871807 260 -85.240341926871807 274 -85.240341926871807 289 -85.240341926871807 295 -85.240341926871807;
createNode animCurveTU -n "rsPhysicalLight1_visibility";
	rename -uid "820E2900-0000-1C38-5AAB-C4F80000068B";
	setAttr ".tan" 9;
	setAttr -s 21 ".ktv[0:20]"  1 1 22 1 49 1 64 1 86 1 101 1 115 1 135 1
		 143 1 155 1 167 1 182 1 195 1 210 1 227 1 243 1 250 1 260 1 274 1 289 1 295 1;
	setAttr -s 21 ".kot[0:20]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "rsPhysicalLight1_rotateX";
	rename -uid "820E2900-0000-1C38-5AAB-C4F80000068C";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 0 22 0 49 0 64 0 86 0 101 0 115 0 135 0
		 143 0 155 0 167 0 182 0 195 0 210 0 227 0 243 0 250 0 260 0 274 0 289 0 295 0;
createNode animCurveTA -n "rsPhysicalLight1_rotateY";
	rename -uid "820E2900-0000-1C38-5AAB-C4F80000068D";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 133.49885267693574 22 133.49885267693574 49 133.49885267693574 64 133.49885267693574 86 133.49885267693574
		 101 133.49885267693574 115 133.49885267693574 135 133.49885267693574 143 133.49885267693574 155 133.49885267693574 167 133.49885267693574 182 133.49885267693574 195 133.49885267693574
		 210 133.49885267693574 227 133.49885267693574 243 133.49885267693574 250 133.49885267693574 260 133.49885267693574 274 133.49885267693574 289 133.49885267693574 295 133.49885267693574;
createNode animCurveTA -n "rsPhysicalLight1_rotateZ";
	rename -uid "820E2900-0000-1C38-5AAB-C4F80000068E";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 0 22 0 49 0 64 0 86 0 101 0 115 0 135 0
		 143 0 155 0 167 0 182 0 195 0 210 0 227 0 243 0 250 0 260 0 274 0 289 0 295 0;
createNode animCurveTU -n "rsPhysicalLight1_scaleX";
	rename -uid "820E2900-0000-1C38-5AAB-C4F80000068F";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 1.8881100964495432 22 1.8881100964495432 49 1.8881100964495432 64 1.8881100964495432 86 1.8881100964495432
		 101 1.8881100964495432 115 1.8881100964495432 135 1.8881100964495432 143 1.8881100964495432 155 1.8881100964495432 167 1.8881100964495432 182 1.8881100964495432 195 1.8881100964495432
		 210 1.8881100964495432 227 1.8881100964495432 243 1.8881100964495432 250 1.8881100964495432 260 1.8881100964495432 274 1.8881100964495432 289 1.8881100964495432 295 1.8881100964495432;
createNode animCurveTU -n "rsPhysicalLight1_scaleY";
	rename -uid "820E2900-0000-1C38-5AAB-C4F800000690";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 1.8881100964495432 22 1.8881100964495432 49 1.8881100964495432 64 1.8881100964495432 86 1.8881100964495432
		 101 1.8881100964495432 115 1.8881100964495432 135 1.8881100964495432 143 1.8881100964495432 155 1.8881100964495432 167 1.8881100964495432 182 1.8881100964495432 195 1.8881100964495432
		 210 1.8881100964495432 227 1.8881100964495432 243 1.8881100964495432 250 1.8881100964495432 260 1.8881100964495432 274 1.8881100964495432 289 1.8881100964495432 295 1.8881100964495432;
createNode animCurveTU -n "rsPhysicalLight1_scaleZ";
	rename -uid "820E2900-0000-1C38-5AAB-C4F800000691";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 1.8881100964495432 22 1.8881100964495432 49 1.8881100964495432 64 1.8881100964495432 86 1.8881100964495432
		 101 1.8881100964495432 115 1.8881100964495432 135 1.8881100964495432 143 1.8881100964495432 155 1.8881100964495432 167 1.8881100964495432 182 1.8881100964495432 195 1.8881100964495432
		 210 1.8881100964495432 227 1.8881100964495432 243 1.8881100964495432 250 1.8881100964495432 260 1.8881100964495432 274 1.8881100964495432 289 1.8881100964495432 295 1.8881100964495432;
createNode RedshiftTriPlanar -n "rsTriPlanar2";
	rename -uid "820E2900-0000-1C38-5AAB-C5AF000006F3";
createNode file -n "file2";
	rename -uid "820E2900-0000-1C38-5AAB-C5B8000006F5";
	setAttr ".ftn" -type "string" "/home/i7463487/Downloads/concrete_floor_20131007_1557821133.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "820E2900-0000-1C38-5AAB-C5B8000006F6";
	setAttr ".re" -type "float2" 100 100 ;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "820E2900-0000-1C38-5AAB-C5CD000006FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:99]";
	setAttr ".ix" -type "matrix" 301.63799926057123 0 0 0 0 301.63799926057123 0 0
		 0 0 301.63799926057123 0 0 -2.4245074762311578 0 1;
	setAttr ".s" -type "double3" 301.63799926057123 301.63799926057123 301.63799926057123 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId1";
	rename -uid "820E2900-0000-1C38-5AAB-C5DD0000070A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "820E2900-0000-1C38-5AAB-C5DD0000070B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId2";
	rename -uid "820E2900-0000-1C38-5AAB-C5DD0000070C";
	setAttr ".ihi" 0;
createNode RedshiftDisplacement -n "rsDisplacement2";
	rename -uid "820E2900-0000-1C38-5AAB-C66000000717";
createNode polyCube -n "polyCube1";
	rename -uid "820E2900-0000-1C38-5AAB-C6D600000728";
	setAttr ".cuv" 4;
createNode RedshiftMaterial -n "sleepers";
	rename -uid "820E2900-0000-1C38-5AAB-C77F000007FD";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".refl_roughness" 0.34814813733100891;
	setAttr ".refl_reflectivity" -type "float3" 0.038725 0.038725 0.038725 ;
	setAttr ".refl_ior3" -type "float3" 1.49 1.49 1.49 ;
	setAttr ".refl_ior" 1.4900000095367432;
createNode shadingEngine -n "rsMaterial3SG";
	rename -uid "820E2900-0000-1C38-5AAB-C77F000007FE";
	setAttr ".ihi" 0;
	setAttr -s 44 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "820E2900-0000-1C38-5AAB-C77F000007FF";
createNode RedshiftNoise -n "rsNoise1";
	rename -uid "820E2900-0000-1C38-5AAB-C7CA00000804";
createNode RedshiftDisplacement -n "rsDisplacement3";
	rename -uid "820E2900-0000-1C38-5AAB-C7DA00000806";
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "820E2900-0000-1C38-5AAB-C86A0000082B";
createNode shadingEngine -n "pasted__rsMaterial3SG";
	rename -uid "820E2900-0000-1C38-5AAB-C86A0000082C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode RedshiftMaterial -n "pasted__sleepers";
	rename -uid "820E2900-0000-1C38-5AAB-C86A0000082D";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.17037037 0.17037037 0.17037037 ;
	setAttr ".diffuse_weight" 0.68148148059844971;
	setAttr ".diffuse_roughness" 0.28888890147209167;
	setAttr ".transl_color" -type "float3" 1 1 1 ;
	setAttr ".transl_weight" 0.25;
	setAttr ".refl_reflectivity" -type "float3" 0 0 0 ;
	setAttr ".refl_ior3" -type "float3" 1 1 1 ;
	setAttr ".refl_ior" 1;
createNode RedshiftNoise -n "pasted__rsNoise1";
	rename -uid "820E2900-0000-1C38-5AAB-C86A0000082E";
createNode RedshiftDisplacement -n "pasted__rsDisplacement3";
	rename -uid "820E2900-0000-1C38-5AAB-C86A0000082F";
createNode polyCube -n "pasted__polyCube1";
	rename -uid "820E2900-0000-1C38-5AAB-C89B0000084C";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo4";
	rename -uid "820E2900-0000-1C38-5AAB-C89B0000084D";
createNode shadingEngine -n "pasted__rsMaterial3SG1";
	rename -uid "820E2900-0000-1C38-5AAB-C89B0000084E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode RedshiftMaterial -n "pasted__sleepers1";
	rename -uid "820E2900-0000-1C38-5AAB-C89B0000084F";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 0.17037037 0.17037037 0.17037037 ;
	setAttr ".diffuse_weight" 0.68148148059844971;
	setAttr ".diffuse_roughness" 0.28888890147209167;
	setAttr ".transl_color" -type "float3" 1 1 1 ;
	setAttr ".transl_weight" 0.25;
	setAttr ".refl_reflectivity" -type "float3" 0 0 0 ;
	setAttr ".refl_ior3" -type "float3" 1 1 1 ;
	setAttr ".refl_ior" 1;
createNode RedshiftNoise -n "pasted__rsNoise2";
	rename -uid "820E2900-0000-1C38-5AAB-C89B00000850";
createNode RedshiftDisplacement -n "pasted__rsDisplacement4";
	rename -uid "820E2900-0000-1C38-5AAB-C89B00000851";
createNode polyCube -n "polyCube2";
	rename -uid "820E2900-0000-1C38-5AAB-C93900000955";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "820E2900-0000-1C38-5AAB-C95D00000966";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.33184831660153447 0 0.085658365892311267 0 0 0.33751838835231268 0 0
		 -0.14874237327290982 0 0.57624151084071484 0 0 -2.136383979769795 0 1;
	setAttr ".wt" 0.24789378046989441;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "820E2900-0000-1C38-5AAB-C96200000967";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[12:13]";
	setAttr ".ix" -type "matrix" 0.33184831660153447 0 0.085658365892311267 0 0 0.33751838835231268 0 0
		 -0.14874237327290982 0 0.57624151084071484 0 0 -2.136383979769795 0 1;
	setAttr ".wt" 0.41689547896385193;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "820E2900-0000-1C38-5AAB-C96300000968";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[20:21]";
	setAttr ".ix" -type "matrix" 0.33184831660153447 0 0.085658365892311267 0 0 0.33751838835231268 0 0
		 -0.14874237327290982 0 0.57624151084071484 0 0 -2.136383979769795 0 1;
	setAttr ".wt" 0.80592423677444458;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "820E2900-0000-1C38-5AAB-C96500000969";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 0.33184831660153447 0 0.085658365892311267 0 0 0.33751838835231268 0 0
		 -0.14874237327290982 0 0.57624151084071484 0 0 -2.136383979769795 0 1;
	setAttr ".wt" 0.44634440541267395;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "820E2900-0000-1C38-5AAB-C9680000096A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]";
	setAttr ".ix" -type "matrix" 0.33184831660153447 0 0.085658365892311267 0 0 0.33751838835231268 0 0
		 -0.14874237327290982 0 0.57624151084071484 0 0 -2.136383979769795 0 1;
	setAttr ".wt" 0.837677001953125;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "820E2900-0000-1C38-5AAB-C96A0000096B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[18]" "e[26]" "e[34]" "e[42]" "e[45]" "e[47]" "e[49]" "e[51]";
	setAttr ".ix" -type "matrix" 0.33184831660153447 0 0.085658365892311267 0 0 0.33751838835231268 0 0
		 -0.14874237327290982 0 0.57624151084071484 0 0 -2.136383979769795 0 1;
	setAttr ".wt" 0.18159833550453186;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "820E2900-0000-1C38-5AAB-CA40000009A6";
	setAttr ".ics" -type "componentList" 7 "f[2]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:26]" "f[34:38]";
	setAttr ".ix" -type "matrix" 0.23394737436534879 0 0.083937986136422477 0 0 0.23574223937299424 0 0
		 -0.20098165681147859 0 0.56016510606084735 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.10049083 0 -0.28008255 ;
	setAttr ".rs" 1131249374;
	setAttr ".d" 25;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.016482858776935103 -0.11787111968649712 -0.3220515460986349 ;
	setAttr ".cbx" -type "double3" 0.21746451558841368 0.11787111968649712 -0.23811355996221245 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "820E2900-0000-1C38-5AAB-CA40000009A7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  -0.12713313 0 0 0.12713313
		 0 0 0.12713313 0 0 -0.12713313 0 0 -0.12713313 0 0 0.12713313 0 0 0.12713313 0 0
		 -0.12713313 0 0;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "820E2900-0000-1C38-5AAB-CA99000009DF";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace2";
	rename -uid "820E2900-0000-1C38-5AAB-CA99000009E4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "820E2900-0000-1C38-5AAB-CC0E00000A7E";
	setAttr ".ics" -type "componentList" 7 "f[0]" "f[8]" "f[12]" "f[16]" "f[20]" "f[28:32]" "f[40:44]";
	setAttr ".ix" -type "matrix" 0.23394737436534879 0 0.083937986136422477 0 0 0.23574223937299424 0 0
		 -0.20098165681147859 0 0.56016510606084735 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.10049083 0 0.28008255 ;
	setAttr ".rs" 1178755183;
	setAttr ".d" 25;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21746451558841368 -0.11787111968649712 0.23811355996221245 ;
	setAttr ".cbx" -type "double3" 0.016482858776935103 0.11787111968649712 0.3220515460986349 ;
createNode polySmoothFace -n "polySmoothFace3";
	rename -uid "820E2900-0000-1C38-5AAB-CCCA00000AB5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace4";
	rename -uid "820E2900-0000-1C38-5AAB-CCCA00000AB9";
	setAttr ".ics" -type "componentList" 1 "f[219]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace5";
	rename -uid "820E2900-0000-1C38-5AAB-CCD400000ACB";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode RedshiftLensDistortion -n "rsLensDistortion1";
	rename -uid "820E2900-0000-1C38-5AAB-CEFC00000B57";
	setAttr ".LDenable" no;
createNode RedshiftBokeh -n "rsBokeh1";
	rename -uid "820E2900-0000-1C38-5AAB-CF0300000B58";
	setAttr ".dofOn" no;
	setAttr ".dofDeriveFocusDistanceFromCamera" no;
	setAttr ".dofFocusDistance" 20;
	setAttr ".dofRadius" 4;
	setAttr ".dofBladeCount" 3;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "820E2900-0000-1C38-5AAB-D03800000BBF";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -5542.3584216126619 -2921.7160520670927 ;
	setAttr ".tgi[0].vh" -type "double2" 8852.5374715602193 6176.5963522075617 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -687.14288330078125;
	setAttr ".tgi[0].ni[0].y" 1522.857177734375;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -735.6845703125;
	setAttr ".tgi[0].ni[1].y" 69.864082336425781;
	setAttr ".tgi[0].ni[1].nvs" 1922;
	setAttr ".tgi[0].ni[2].x" -47.142856597900391;
	setAttr ".tgi[0].ni[2].y" 1660;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -342.16848754882812;
	setAttr ".tgi[0].ni[3].y" -208.88188171386719;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -380;
	setAttr ".tgi[0].ni[4].y" -3104.28564453125;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -367.14285278320312;
	setAttr ".tgi[0].ni[5].y" 190;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -60;
	setAttr ".tgi[0].ni[6].y" 190;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -380;
	setAttr ".tgi[0].ni[7].y" 6382.85693359375;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode polySmoothFace -n "polySmoothFace6";
	rename -uid "820E2900-0000-1C38-5AAB-D06300000BD0";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode RedshiftVolumeScattering -n "rsVolumeScattering1";
	rename -uid "820E2900-0000-1C38-5AAB-D07400000BD8";
	setAttr ".tint" -type "float3" 0.5 0.94230831 1 ;
	setAttr ".scatteringAmount" 7.5824175823152391;
	setAttr ".attenuationAmount" 0.82417582315239279;
	setAttr ".fogAmbient" -type "float3" 0.055865921 0.055865921 0.055865921 ;
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
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 14 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 4 ".l";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "redshift";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 295;
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 2048;
	setAttr ".h" 858;
	setAttr ".pa" 1;
	setAttr ".dar" 2.386946439743042;
select -ne :defaultLightSet;
	setAttr -s 4 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "Motion_Import_Locator_rotateX.o" "Motion_Import_Locator.rx";
connectAttr "Motion_Import_Locator_rotateY.o" "Motion_Import_Locator.ry";
connectAttr "Motion_Import_Locator_rotateZ.o" "Motion_Import_Locator.rz";
connectAttr "camera1_translateX.o" "camera1.tx";
connectAttr "camera1_translateY.o" "camera1.ty";
connectAttr "camera1_translateZ.o" "camera1.tz";
connectAttr "camera1_rotateX.o" "camera1.rx";
connectAttr "camera1_rotateY.o" "camera1.ry";
connectAttr "camera1_rotateZ.o" "camera1.rz";
connectAttr "polySmoothFace6.out" "pPipeShape1.i";
connectAttr "groupId1.id" "pPlaneShape1.iog.og[0].gid";
connectAttr "rsMaterial2SG.mwc" "pPlaneShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pPlaneShape1.i";
connectAttr "groupId2.id" "pPlaneShape1.ciog.cog[0].cgid";
connectAttr "rsPhysicalLight1_translateX.o" "rsPhysicalLight1.tx";
connectAttr "rsPhysicalLight1_translateY.o" "rsPhysicalLight1.ty";
connectAttr "rsPhysicalLight1_translateZ.o" "rsPhysicalLight1.tz";
connectAttr "rsPhysicalLight1_visibility.o" "rsPhysicalLight1.v";
connectAttr "rsPhysicalLight1_rotateX.o" "rsPhysicalLight1.rx";
connectAttr "rsPhysicalLight1_rotateY.o" "rsPhysicalLight1.ry";
connectAttr "rsPhysicalLight1_rotateZ.o" "rsPhysicalLight1.rz";
connectAttr "rsPhysicalLight1_scaleX.o" "rsPhysicalLight1.sx";
connectAttr "rsPhysicalLight1_scaleY.o" "rsPhysicalLight1.sy";
connectAttr "rsPhysicalLight1_scaleZ.o" "rsPhysicalLight1.sz";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "pasted__polyCube1.out" "pasted__pCubeShape1.i";
connectAttr "polySmoothFace2.out" "pCubeShape16.i";
connectAttr "polySmoothFace1.out" "pCubeShape18.i";
connectAttr "polySmoothFace5.out" "pCubeShape17.i";
connectAttr "polySmoothFace3.out" "pCubeShape19.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__rsMaterial3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__rsMaterial3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__rsMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__rsMaterial3SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyPipe1.out" "polyExtrudeFace1.ip";
connectAttr "curveShape1.ws" "polyExtrudeFace1.ipc";
connectAttr "pPipeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "curveShape2.ws" "polyExtrudeFace2.ipc";
connectAttr "pPipeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "rsLensDistortion1.msg" ":redshiftOptions.lensDistortion";
connectAttr "rsBokeh1.msg" ":redshiftOptions.bokeh";
connectAttr "rsVolumeScattering1.msg" ":redshiftOptions.atmosphere";
connectAttr "rsTriPlanar1.oc" "Walls.diffuse_color";
connectAttr "rsTriPlanar1.oc" "Walls.bump_input";
connectAttr "Walls.oc" "rsMaterial1SG.ss";
connectAttr "pPipeShape1.iog" "rsMaterial1SG.dsm" -na;
connectAttr "rsDisplacement1.oc" "rsMaterial1SG.ds";
connectAttr "rsMaterial1SG.msg" "materialInfo1.sg";
connectAttr "Walls.msg" "materialInfo1.m";
connectAttr "rsTriPlanar1.msg" "materialInfo1.t" -na;
connectAttr "rsTriPlanar2.oc" "Ground.diffuse_color";
connectAttr "rsTriPlanar2.oc" "Ground.bump_input";
connectAttr "Ground.oc" "rsMaterial2SG.ss";
connectAttr "pPlaneShape1.iog.og[0]" "rsMaterial2SG.dsm" -na;
connectAttr "rsDisplacement2.oc" "rsMaterial2SG.ds";
connectAttr "rsMaterial2SG.msg" "materialInfo2.sg";
connectAttr "Ground.msg" "materialInfo2.m";
connectAttr "rsTriPlanar2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyExtrudeFace2.out" "polyAutoProj1.ip";
connectAttr "pPipeShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyCylProj1.ip";
connectAttr "pPipeShape1.wm" "polyCylProj1.mp";
connectAttr "file1.oc" "rsTriPlanar1.imageX";
connectAttr "file1.oc" "rsTriPlanar1.imageY";
connectAttr "file1.oc" "rsTriPlanar1.imageZ";
connectAttr "rsTriPlanar1.oc" "rsDisplacement1.texMap";
connectAttr "file2.oc" "rsTriPlanar2.imageX";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "polyPlane1.out" "polyAutoProj2.ip";
connectAttr "pPlaneShape1.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "rsTriPlanar2.oc" "rsDisplacement2.texMap";
connectAttr "rsNoise1.oc" "sleepers.bump_input";
connectAttr "sleepers.oc" "rsMaterial3SG.ss";
connectAttr "pCubeShape1.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape2.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape3.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape4.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape5.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape6.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape7.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape8.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape9.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape10.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape11.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape12.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape13.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape14.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape15.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape25.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape24.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape23.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape22.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape21.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape20.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape19.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape18.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape17.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape16.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape15.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape14.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape13.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape12.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape11.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape10.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape9.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape8.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape7.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape6.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape5.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape4.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape3.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape2.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pasted__pCubeShape1.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape16.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape18.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape17.iog" "rsMaterial3SG.dsm" -na;
connectAttr "pCubeShape19.iog" "rsMaterial3SG.dsm" -na;
connectAttr "rsDisplacement3.oc" "rsMaterial3SG.ds";
connectAttr "rsMaterial3SG.msg" "materialInfo3.sg";
connectAttr "sleepers.msg" "materialInfo3.m";
connectAttr "rsNoise1.msg" "materialInfo3.t" -na;
connectAttr "rsNoise1.oc" "rsDisplacement3.texMap";
connectAttr "pasted__rsMaterial3SG.msg" "pasted__materialInfo3.sg";
connectAttr "pasted__sleepers.msg" "pasted__materialInfo3.m";
connectAttr "pasted__rsNoise1.msg" "pasted__materialInfo3.t" -na;
connectAttr "pasted__sleepers.oc" "pasted__rsMaterial3SG.ss";
connectAttr "pasted__rsDisplacement3.oc" "pasted__rsMaterial3SG.ds";
connectAttr "pasted__rsNoise1.oc" "pasted__sleepers.bump_input";
connectAttr "pasted__rsNoise1.oc" "pasted__rsDisplacement3.texMap";
connectAttr "pasted__rsMaterial3SG1.msg" "pasted__materialInfo4.sg";
connectAttr "pasted__sleepers1.msg" "pasted__materialInfo4.m";
connectAttr "pasted__rsNoise2.msg" "pasted__materialInfo4.t" -na;
connectAttr "pasted__sleepers1.oc" "pasted__rsMaterial3SG1.ss";
connectAttr "pasted__rsDisplacement4.oc" "pasted__rsMaterial3SG1.ds";
connectAttr "pasted__rsNoise2.oc" "pasted__sleepers1.bump_input";
connectAttr "pasted__rsNoise2.oc" "pasted__rsDisplacement4.texMap";
connectAttr "polyCube2.out" "polySplitRing1.ip";
connectAttr "pCubeShape16.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape16.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape16.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape16.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape16.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape16.wm" "polySplitRing6.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "curveShape3.ws" "polyExtrudeFace3.ipc";
connectAttr "pCubeShape16.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing6.out" "polyTweak1.ip";
connectAttr "polySurfaceShape1.o" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace3.out" "polySmoothFace2.ip";
connectAttr "|pCube17|polySurfaceShape2.o" "polyExtrudeFace4.ip";
connectAttr "curveShape4.ws" "polyExtrudeFace4.ipc";
connectAttr "pCubeShape17.wm" "polyExtrudeFace4.mp";
connectAttr "polySurfaceShape3.o" "polySmoothFace3.ip";
connectAttr "polyExtrudeFace4.out" "polySmoothFace4.ip";
connectAttr "polySmoothFace4.out" "polySmoothFace5.ip";
connectAttr "pasted__rsNoise1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "rsNoise1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "pasted__rsMaterial3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "rsDisplacement3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "pasted__rsDisplacement3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "sleepers.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "rsMaterial3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "pasted__sleepers.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "polyCylProj1.out" "polySmoothFace6.ip";
connectAttr "rsMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial2SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__rsMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__rsMaterial3SG1.pa" ":renderPartition.st" -na;
connectAttr "Walls.msg" ":defaultShaderList1.s" -na;
connectAttr "Ground.msg" ":defaultShaderList1.s" -na;
connectAttr "rsDisplacement1.msg" ":defaultShaderList1.s" -na;
connectAttr "rsDisplacement2.msg" ":defaultShaderList1.s" -na;
connectAttr "sleepers.msg" ":defaultShaderList1.s" -na;
connectAttr "rsDisplacement3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__sleepers.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__rsDisplacement3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__sleepers1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__rsDisplacement4.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsTriPlanar1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsTriPlanar2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsLensDistortion1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBokeh1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsVolumeScattering1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rsPhysicalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "rsPhysicalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pasted__rsPhysicalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "rsPhysicalLightShape3.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "rsNoise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__rsNoise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__rsNoise2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "rsPhysicalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "rsPhysicalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__rsPhysicalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "rsPhysicalLight3.iog" ":defaultLightSet.dsm" -na;
// End of tunnel.ma
