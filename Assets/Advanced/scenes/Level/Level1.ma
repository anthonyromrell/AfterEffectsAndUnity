//Maya ASCII 2014 scene
//Name: Level1.ma
//Last modified: Thu, Nov 07, 2013 05:28:44 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.81999178637846748 28.916402717347584 -2.7871290519191811 ;
	setAttr ".r" -type "double3" -97.53835272963407 -5.3999999999952184 3.9934162746107247e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 27.64675938087397;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.47866344451904297 1.5085868835449212 0.82374763488769531 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3290099365330337 100.84544151180508 9.6284344191191291 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 157.04388277539354;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Level";
createNode mesh -n "LevelShape" -p "Level";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Level";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 266 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 1 0 1 1 0 1 0.5 0 0.5 1
		 0.25 0 0.25 1 0.75 0 0.75 1 0.91666669 0 1 0 1 1 0.91666669 1 0.41666666 0 0.5 0
		 0.5 1 0.41666666 1 0.16666667 0 0.25 0 0.25 1 0.16666667 1 0 0 0.083333336 0 0.083333336
		 1 0 1 0.33333334 0 0.33333334 1 0.66666669 0 0.75 0 0.75 1 0.66666669 1 0.58333331
		 0 0.58333331 1 0.83333331 0 0.83333331 1 0.91666669 0 1 0 1 1 0.91666669 1 0.41666666
		 0 0.5 0 0.5 1 0.41666666 1 0.16666667 0 0.25 0 0.25 1 0.16666667 1 0 0 0.083333336
		 0 0.083333336 1 0 1 0.33333334 0 0.33333334 1 0.66666669 0 0.75 0 0.75 1 0.66666669
		 1 0.58333331 0 0.58333331 1 0.83333331 0 0.83333331 1 0.75 0 1 0 1 1 0.75 1 0.25
		 0 0.5 0 0.5 1 0.25 1 0 0 0 1 0.75 0 1 0 1 1 0.75 1 0.25 0 0.5 0 0.5 1 0.25 1 0 0
		 0 1 0.91666669 0 1 0 1 1 0.91666669 1 0.41666666 0 0.5 0 0.5 1 0.41666666 1 0.16666667
		 0 0.25 0 0.25 1 0.16666667 1 0 0 0.083333336 0 0.083333336 1 0 1 0.33333334 0 0.33333334
		 1 0.66666669 0 0.75 0 0.75 1 0.66666669 1 0.58333331 0 0.58333331 1 0.83333331 0
		 0.83333331 1 0.91666669 0 1 0 1 1 0.91666669 1 0.41666666 0 0.5 0 0.5 1 0.41666666
		 1 0.16666667 0 0.25 0 0.25 1 0.16666667 1 0 0 0.083333336 0 0.083333336 1 0 1 0.33333334
		 0 0.33333334 1 0.66666669 0 0.75 0 0.75 1 0.66666669 1 0.58333331 0 0.58333331 1
		 0.83333331 0 0.83333331 1 0.75 0 1 0 1 1 0.75 1 0.25 0 0.5 0 0.5 1 0.25 1 0 0 0 1
		 0.75 0 1 0 1 1 0.75 1 0.25 0 0.5 0 0.5 1 0.25 1 0 0 0 1 0.91666669 0 1 0 1 1 0.91666669
		 1 0.41666666 0 0.5 0 0.5 1 0.41666666 1 0.16666667 0 0.25 0 0.25 1 0.16666667 1 0
		 0 0.083333336 0 0.083333336 1 0 1 0.33333334 0 0.33333334 1 0.66666669 0 0.75 0 0.75
		 1 0.66666669 1 0.58333331 0 0.58333331 1 0.83333331 0 0.83333331 1 0.91666669 0 1
		 0 1 1 0.91666669 1 0.41666666 0 0.5 0 0.5 1 0.41666666 1 0.16666667 0 0.25 0 0.25
		 1 0.16666667 1 0 0 0.083333336 0 0.083333336 1 0 1 0.33333334 0 0.33333334 1 0.66666669
		 0 0.75 0 0.75 1 0.66666669 1 0.58333331 0 0.58333331 1 0.83333331 0 0.83333331 1
		 0.75 0 1 0 1 1 0.75 1 0.25 0 0.5 0 0.5 1 0.25 1 0 0 0 1 0.75 1 0.83333331 1 0.91666669
		 1 0 1 1 1 0.25 1 0.5 1 0.75 1 1 1 1 1 1 0 1 0 0.75 0 0.5 0 0.25 0 1 0 0 0 0.91666669
		 0 0.83333331 0 0.75 0 0.66666669 0 0.58333331 0 0.5 0 0.41666666 0 0.33333334 0 0.25
		 0 0.16666667 0 0.083333336 0 1 0 0 0 0.75 0 0.5 0 0.25 0 0 0;
	setAttr ".uvst[0].uvsp[250:265]" 0 0 0 1 0 1 0.25 1 0.5 1 0.75 1 0 1 1 1 0.083333336
		 1 0.16666667 1 0.25 1 0.33333334 1 0.41666666 1 0.5 1 0.58333331 1 0.66666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 170 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0 -1.3134645 0 0;
	setAttr ".pt[166:169]" -1.3134645 0 0 -1.3134645 0 0 -1.3134645 0 0 -1.3134645 
		0 0;
	setAttr -s 170 ".vt";
	setAttr ".vt[0:165]"  -10.85601807 1.5092408e-15 -5.1728096 -10.9186554 -1.3907163e-15 6.67139816
		 -8.88367081 2.5459984e-17 1.1666851 -9.19799805 3.5992758e-19 -1.36861515 -12.93927574 5.0442591e-16 0.748034
		 -9.84906483 -2.0544334e-17 -0.102507 -12.88068199 -2.2769071e-16 -2.21755219 -9.6702528 -1.4778846e-17 -0.73534346
		 -12.89879417 -8.1925535e-16 3.71154022 -9.5012064 -6.9433541e-18 0.53122139 13.59783936 -1.3784157e-15 7.38761902
		 11.98693752 0 1.63960648 1.36667633 -1.3775644e-15 6.032623291 1.42798615 0 1.50783491
		 -4.78486252 -1.3775644e-15 6.12352371 -3.24111176 0 1.0010452271 -8.87560272 -1.3775644e-15 6.47135162
		 -6.5430584 0 1.18919468 -6.83172226 -1.3775644e-15 6.28032684 -4.79652405 0 1.13074517
		 -2.73590469 -1.3775644e-15 5.99967957 -1.6848278 0 1.26560795 -0.68394709 -1.3775644e-15 5.9466362
		 -0.12819469 0 1.45486355 7.49004364 -1.3775644e-15 6.68173218 6.095420837 0 1.68501377
		 3.41115952 -1.3775644e-15 6.21733093 2.9828968 0 1.59835243 5.4539566 -1.3775644e-15 6.41852188
		 4.53835297 0 1.67457867 9.516922 -1.3775644e-15 7.0027542114 7.65267181 0 1.68852806
		 11.54768372 -1.3775644e-15 7.30249023 9.41222477 0 1.68849659 14.84643555 1.3100288e-15 -4.30299377
		 12.37142849 0 -1.15882325 2.0059299469 1.3775644e-15 -5.50273895 1.47158051 0 -1.2154628
		 -4.44133377 1.3775644e-15 -5.74012375 -3.36497498 0 -1.63199461 -8.7334137 1.3775644e-15 -5.51959991
		 -6.94295073 0 -1.42138588 -6.59165192 1.3775644e-15 -5.70476151 -4.98005676 0 -1.70700455
		 -2.29277229 1.3775644e-15 -5.64931107 -1.75279617 0 -1.72985435 -0.14325488 1.3775644e-15 -5.58169174
		 -0.14118457 0 -1.35842657 8.44247437 1.3775644e-15 -5.086948395 6.31492615 0 -1.43531346
		 4.15452194 1.3775644e-15 -5.40757751 3.085020065 0 -0.97000849 6.30256653 1.3775644e-15 -5.30439377
		 4.69986343 0 -1.02767837 10.57617188 1.3775644e-15 -4.81889343 7.9260788 0 -1.14525235
		 12.70889282 1.3775644e-15 -4.53982544 10.11761475 0 -0.56081659 16.17378426 1.4023223e-16 1.5335474
		 13.52658939 0 0.21603036 15.82122993 -1.3413385e-15 4.45305634 13.058195114 0 0.9301815
		 16.52353096 1.3507502e-17 -1.38613319 13.24021721 0 -0.49017572 -12.89879417 1.34054661 3.71154022
		 -10.9186554 1.34054661 6.67139816 -8.88367081 1.34054661 1.1666851 -9.5012064 1.34054661 0.53122139
		 -12.88068199 1.34054661 -2.21755219 -12.93927574 1.34054661 0.748034 -9.84906483 1.34054661 -0.102507
		 -9.6702528 1.34054661 -0.73534346 -10.85601807 0.78033972 -5.1728096 -9.088733673 1.8789922 -1.36861515
		 11.54768372 1.34054661 7.30249023 13.59783936 1.34054661 7.38761902 11.98693752 1.34054661 1.63960648
		 9.41222477 1.34054661 1.68849659 -0.68394709 1.34054661 5.9466362 1.36667633 1.34054661 6.032623291
		 1.42798615 3.017173767 2.13517928 -0.12819469 3.017173767 2.080022573 -6.83172226 1.34054661 6.28032684
		 -4.78486252 1.34054661 6.12352371 -3.24111176 3.017173767 1.0010452271 -4.79652405 3.017173767 1.13361251
		 -8.87560272 1.34054661 6.47135162 -6.5430584 1.34054661 1.18919468 -2.73590469 1.34054661 5.99967957
		 -1.6848278 3.017173767 1.26792395 5.4539566 1.34054661 6.41852188 7.49004364 1.34054661 6.68173218
		 6.095420837 3.017173767 1.68853509 4.53835297 3.017173767 2.29973769 3.41115952 1.34054661 6.21733093
		 2.9828968 3.017173767 2.22351146 9.516922 1.34054661 7.0027542114 7.65267181 3.017173767 1.68852806
		 12.70889282 0.78033972 -4.53982544 14.84643555 0.78033972 -4.30299377 12.22612476 1.8789922 -1.14959228
		 10.02793026 1.8789922 -0.56081659 -0.14325488 0.78033972 -5.58169174 2.0059299469 0.78033972 -5.50273895
		 1.47158051 1.8789922 -2.00085258484 -0.14118457 1.8789922 -1.97198391 -6.59165192 0.78033972 -5.70476151
		 -4.44133377 0.78033972 -5.74012375 -3.36497498 1.8789922 -1.78084671 -4.98005676 1.8789922 -1.70700455
		 -8.7334137 0.78033972 -5.51959991 -6.88664532 1.8789922 -1.43037438 -2.29277229 0.78033972 -5.64931107
		 -1.75279617 1.8789922 -2.49226379 6.30256653 0.78033972 -5.30439377 8.44247437 0.78033972 -5.086948395
		 6.31492615 1.8789922 -1.68546867 4.69986343 1.8789922 -1.02767837 4.15452194 0.78033972 -5.40757751
		 3.085020065 1.8789922 -1.75539815 10.57617188 0.78033972 -4.81889343 7.9260788 1.8789922 -1.37862766
		 16.52353096 1.34054661 -1.38613319 13.24021721 1.34054661 -0.49017572 15.82122993 1.34054661 4.45305634
		 16.17378426 1.34054661 1.5335474 13.52658939 1.34054661 0.21603036 13.058195114 1.34054661 0.9301815
		 6.095420837 1.65217447 1.68694198 7.65267181 1.65217447 1.68852806 9.41222477 0.73407 1.68849659
		 11.98693752 0.73407 1.63960648 13.058195114 0.73407 0.9301815 13.52658939 0.73407 0.21603036
		 13.24021721 0.73407 -0.49017572 12.29186249 1.028917432 -1.15376854 14.84643555 0.42730629 -4.30299377
		 16.52353096 0.73407 -1.38613319 16.17378426 0.73407 1.5335474 15.82122993 0.73407 4.45305634
		 13.59783936 0.73407 7.38761902 11.54768372 0.73407 7.30249023 9.516922 0.73407 7.0027542114
		 7.49004364 0.73407 6.68173218 5.4539566 0.73407 6.41852188 3.41115952 0.73407 6.21733093
		 1.36667633 0.73407 6.032623291 -0.68394709 0.73407 5.9466362 -2.73590469 0.73407 5.99967957
		 -4.78486252 0.73407 6.12352371 -6.83172226 0.73407 6.28032684 -8.87560272 0.73407 6.47135162
		 -10.9186554 0.73407 6.67139816 -12.89879417 0.73407 3.71154022 -12.93927574 0.73407 0.748034
		 -12.88068199 0.73407 -2.21755219 -10.85601807 0.42730629 -5.1728096 -9.13816643 1.028917432 -1.36861515
		 -9.6702528 0.73407 -0.73534346 -9.84906483 0.73407 -0.102507 -9.5012064 0.73407 0.53122139
		 -8.88367081 0.73407 1.1666851 -6.5430584 0.73407 1.18919468 -4.79652405 1.65217447 1.13231528
		 -3.24111176 1.65217447 1.0010452271 -1.6848278 1.65217447 1.26687622;
	setAttr ".vt[166:169]" -0.12819469 1.65217447 1.45486355 1.42798615 1.65217447 1.50903153
		 2.9828968 1.65217447 1.59835243 4.53835297 1.65217447 1.67457867;
	setAttr -s 340 ".ed";
	setAttr ".ed[0:165]"  8 1 0 1 2 0 2 9 0 9 8 1 6 4 0 4 5 1 0 6 0 4 8 0 9 5 0
		 32 10 0 10 11 0 11 33 0 33 32 1 22 12 0 12 13 1 13 23 0 23 22 1 18 14 0 14 15 1 15 19 0
		 19 18 1 1 16 0 16 17 1 17 2 0 16 18 0 19 17 0 14 20 0 20 21 1 21 15 0 20 22 0 23 21 0
		 28 24 0 24 25 1 25 29 0 29 28 1 12 26 0 26 27 1 27 13 0 26 28 0 29 27 0 24 30 0 30 31 1
		 31 25 0 30 32 0 33 31 0 56 34 0 34 35 0 46 36 0 36 37 1 37 47 0 47 46 1 42 38 0 38 39 1
		 39 43 0 43 42 1 0 40 0 40 42 0 38 44 0 44 45 1 45 39 0 44 46 0 47 45 0 52 48 0 48 49 1
		 49 53 0 53 52 1 36 50 0 50 51 1 51 37 0 50 52 0 53 51 0 48 54 0 54 56 0 62 34 0 35 63 0
		 63 62 1 60 58 0 58 59 1 59 61 0 61 60 1 10 60 0 61 11 0 58 62 0 63 59 0 8 153 0 1 152 0
		 64 65 0 2 161 0 65 66 0 9 160 0 66 67 0 67 64 1 6 155 0 4 154 0 68 69 0 5 159 0 69 70 1
		 70 71 0 71 68 1 0 156 0 72 68 0 69 64 0 67 70 0 32 141 0 10 140 0 74 75 0 11 131 0
		 75 76 0 33 130 0 76 77 0 77 74 1 22 147 0 12 146 0 78 79 0 13 167 0 79 80 1 23 166 0
		 80 81 0 81 78 1 18 150 0 14 149 0 82 83 0 15 164 0 83 84 1 19 163 0 84 85 0 85 82 1
		 16 151 0 65 86 0 17 162 0 86 87 1 87 66 0 86 82 0 85 87 0 20 148 0 83 88 0 21 165 0
		 88 89 1 89 84 0 88 78 0 81 89 0 28 144 0 24 143 0 90 91 0 25 128 0 91 92 1 29 169 0
		 92 93 0 93 90 1 26 145 0 79 94 0 27 168 0 94 95 1 95 80 0 94 90 0 93 95 0 30 142 0
		 91 96 0 31 129 0 96 97 1 97 92 0 96 74 0 77 97 0 56 98 0 34 136 0 98 99 0;
	setAttr ".ed[166:331]" 46 102 0 36 103 0 102 103 0 37 104 0 103 104 1 47 105 0
		 104 105 0 105 102 1 42 106 0 38 107 0 106 107 0 39 108 0 107 108 1 43 109 0 108 109 0
		 109 106 1 40 110 0 72 110 0 110 106 0 44 112 0 107 112 0 45 113 0 112 113 1 113 108 0
		 112 102 0 105 113 0 52 114 0 48 115 0 114 115 0 49 116 0 115 116 1 53 117 0 116 117 0
		 117 114 1 50 118 0 103 118 0 51 119 0 118 119 1 119 104 0 118 114 0 117 119 0 54 120 0
		 115 120 0 120 98 0 62 137 0 122 99 0 60 139 0 58 138 0 124 125 0 59 133 0 125 126 1
		 61 132 0 126 127 0 127 124 1 75 124 0 127 76 0 125 122 0 128 92 0 129 97 0 128 129 1
		 130 77 0 129 130 1 131 76 0 130 131 1 132 127 0 131 132 1 133 126 0 132 133 1 136 99 0
		 137 122 0 136 137 1 138 125 0 137 138 1 139 124 0 138 139 1 140 75 0 139 140 1 141 74 0
		 140 141 1 142 96 0 141 142 1 143 91 0 142 143 1 144 90 0 143 144 1 145 94 0 144 145 1
		 146 79 0 145 146 1 147 78 0 146 147 1 148 88 0 147 148 1 149 83 0 148 149 1 150 82 0
		 149 150 1 151 86 0 150 151 1 152 65 0 151 152 1 153 64 0 152 153 1 154 69 0 153 154 1
		 155 68 0 154 155 1 156 72 0 155 156 1 159 70 0 160 67 0 159 160 1 161 66 0 160 161 1
		 162 87 0 161 162 1 163 85 0 162 163 1 164 84 0 163 164 1 165 89 0 164 165 1 166 81 0
		 165 166 1 167 80 0 166 167 1 168 95 0 167 168 1 169 93 0 168 169 1 169 128 1 98 101 1
		 116 121 0 120 121 1 99 100 0 100 123 0 122 123 1 123 126 0 35 57 0 54 55 1 56 57 1
		 35 135 0 100 101 0 55 121 0 49 55 0 57 101 0 101 121 0 55 57 0 63 134 0 134 135 1
		 133 134 1 123 134 0 100 135 0 57 135 0 71 73 0 72 73 0 73 111 0 110 111 1 6 7 1 0 3 0
		 3 7 0 40 41 1 5 7 0 7 158 0 158 159 1 3 157 0;
	setAttr ".ed[332:339]" 157 158 1 41 111 0 73 157 0 3 41 0 109 111 0 41 43 0
		 71 158 0 41 157 0;
	setAttr -s 170 -ch 680 ".fc[0:169]" -type "polyFaces" 
		f 4 86 88 90 91
		mu 0 4 144 145 146 147
		f 4 94 96 97 98
		mu 0 4 148 149 150 151
		f 4 101 -92 102 -97
		mu 0 4 149 144 147 150
		f 4 105 107 109 110
		mu 0 4 154 155 156 157
		f 4 113 115 117 118
		mu 0 4 158 159 160 161
		f 4 121 123 125 126
		mu 0 4 162 163 164 165
		f 4 128 130 131 -89
		mu 0 4 166 167 168 169
		f 4 132 -127 133 -131
		mu 0 4 167 162 165 168
		f 4 135 137 138 -124
		mu 0 4 163 170 171 164
		f 4 139 -119 140 -138
		mu 0 4 170 158 161 171
		f 4 143 145 147 148
		mu 0 4 172 173 174 175
		f 4 150 152 153 -116
		mu 0 4 159 176 177 160
		f 4 154 -149 155 -153
		mu 0 4 176 172 175 177
		f 4 157 159 160 -146
		mu 0 4 173 178 179 174
		f 4 161 -111 162 -160
		mu 0 4 178 154 157 179
		f 4 -174 -173 -171 -169
		mu 0 4 184 187 186 185
		f 4 -182 -181 -179 -177
		mu 0 4 188 191 190 189
		f 4 178 -190 -189 -187
		mu 0 4 189 190 197 196
		f 4 188 -192 173 -191
		mu 0 4 196 197 187 184
		f 4 -200 -199 -197 -195
		mu 0 4 198 201 200 199
		f 4 170 -205 -204 -202
		mu 0 4 185 186 203 202
		f 4 203 -207 199 -206
		mu 0 4 202 203 201 198
		f 4 214 216 218 219
		mu 0 4 210 211 212 213
		f 4 220 -220 221 -108
		mu 0 4 214 210 213 215
		f 4 -4 -3 -2 -1
		mu 0 4 72 75 74 73
		f 4 5 -9 3 -8
		mu 0 4 77 78 75 72
		f 4 -13 -12 -11 -10
		mu 0 4 82 85 84 83
		f 4 -17 -16 -15 -14
		mu 0 4 86 89 88 87
		f 4 -21 -20 -19 -18
		mu 0 4 90 93 92 91
		f 4 1 -24 -23 -22
		mu 0 4 94 97 96 95
		f 4 22 -26 20 -25
		mu 0 4 95 96 93 90
		f 4 18 -29 -28 -27
		mu 0 4 91 92 99 98
		f 4 27 -31 16 -30
		mu 0 4 98 99 89 86
		f 4 -35 -34 -33 -32
		mu 0 4 100 103 102 101
		f 4 14 -38 -37 -36
		mu 0 4 87 88 105 104
		f 4 36 -40 34 -39
		mu 0 4 104 105 103 100
		f 4 32 -43 -42 -41
		mu 0 4 101 102 107 106
		f 4 41 -45 12 -44
		mu 0 4 106 107 85 82
		f 4 47 48 49 50
		mu 0 4 112 113 114 115
		f 4 51 52 53 54
		mu 0 4 116 117 118 119
		f 4 57 58 59 -53
		mu 0 4 117 124 125 118
		f 4 60 -51 61 -59
		mu 0 4 124 112 115 125
		f 4 62 63 64 65
		mu 0 4 126 127 128 129
		f 4 66 67 68 -49
		mu 0 4 113 130 131 114
		f 4 69 -66 70 -68
		mu 0 4 130 126 129 131
		f 4 -76 -75 -47 -74
		mu 0 4 134 137 136 135
		f 4 -80 -79 -78 -77
		mu 0 4 138 141 140 139
		f 4 10 -82 79 -81
		mu 0 4 142 143 141 138
		f 4 77 -84 75 -83
		mu 0 4 139 140 137 134
		f 4 0 85 268 -85
		mu 0 4 8 1 244 246
		f 4 2 89 279 -88
		mu 0 4 2 9 255 257
		f 4 4 93 272 -93
		mu 0 4 6 4 247 248
		f 4 6 92 274 -100
		mu 0 4 0 6 248 250
		f 4 7 84 270 -94
		mu 0 4 4 8 246 247
		f 4 8 95 277 -90
		mu 0 4 9 5 254 255
		f 4 9 104 244 -104
		mu 0 4 10 11 231 233
		f 4 11 108 229 -107
		mu 0 4 12 13 218 220
		f 4 13 112 256 -112
		mu 0 4 14 15 238 239
		f 4 15 116 291 -115
		mu 0 4 16 17 262 263
		f 4 17 120 262 -120
		mu 0 4 18 19 241 242
		f 4 19 124 285 -123
		mu 0 4 20 21 259 260
		f 4 21 127 266 -86
		mu 0 4 22 23 243 245
		f 4 23 87 281 -130
		mu 0 4 24 25 256 258
		f 4 24 119 264 -128
		mu 0 4 23 18 242 243
		f 4 25 129 283 -125
		mu 0 4 21 24 258 259
		f 4 26 134 260 -121
		mu 0 4 19 26 240 241
		f 4 28 122 287 -137
		mu 0 4 27 20 260 261
		f 4 29 111 258 -135
		mu 0 4 26 14 239 240
		f 4 30 136 289 -117
		mu 0 4 17 27 261 262
		f 4 31 142 250 -142
		mu 0 4 28 29 235 236
		f 4 33 146 296 -145
		mu 0 4 30 31 265 216
		f 4 35 149 254 -113
		mu 0 4 15 32 237 238
		f 4 37 114 293 -152
		mu 0 4 33 16 263 264
		f 4 38 141 252 -150
		mu 0 4 32 28 236 237
		f 4 39 151 295 -147
		mu 0 4 31 33 264 265
		f 4 40 156 248 -143
		mu 0 4 29 34 234 235
		f 4 42 144 225 -159
		mu 0 4 35 30 216 217
		f 4 43 103 246 -157
		mu 0 4 34 10 233 234
		f 4 44 158 227 -109
		mu 0 4 13 35 217 218
		f 5 163 165 -235 -165 -46
		mu 0 5 36 180 181 227 37
		f 4 166 168 -168 -48
		mu 0 4 40 184 185 41
		f 4 169 172 -172 -50
		mu 0 4 42 186 187 43
		f 4 174 176 -176 -52
		mu 0 4 44 188 189 45
		f 4 177 180 -180 -54
		mu 0 4 46 190 191 47
		f 5 99 273 183 -183 -56
		mu 0 5 48 249 192 193 49
		f 4 182 184 -175 -57
		mu 0 4 49 193 188 44
		f 4 175 186 -186 -58
		mu 0 4 45 189 196 52
		f 4 187 189 -178 -60
		mu 0 4 53 197 190 46
		f 4 185 190 -167 -61
		mu 0 4 52 196 184 40
		f 4 171 191 -188 -62
		mu 0 4 43 187 197 53
		f 4 192 194 -194 -63
		mu 0 4 54 198 199 55
		f 4 195 198 -198 -65
		mu 0 4 56 200 201 57
		f 4 167 201 -201 -67
		mu 0 4 41 185 202 58
		f 4 202 204 -170 -69
		mu 0 4 59 203 186 42
		f 4 200 205 -193 -70
		mu 0 4 58 202 198 54
		f 4 197 206 -203 -71
		mu 0 4 57 201 203 59
		f 4 193 208 -208 -72
		mu 0 4 55 199 204 60
		f 4 207 209 -164 -73
		mu 0 4 60 204 180 36
		f 4 73 164 236 -211
		mu 0 4 62 63 226 228
		f 4 76 213 240 -213
		mu 0 4 66 67 229 230
		f 4 78 217 233 -216
		mu 0 4 68 69 221 222
		f 4 80 212 242 -105
		mu 0 4 70 66 230 232
		f 4 81 106 231 -218
		mu 0 4 69 71 219 221
		f 4 82 210 238 -214
		mu 0 4 67 62 228 229
		f 4 -226 223 -161 -225
		mu 0 4 217 216 174 179
		f 4 -228 224 -163 -227
		mu 0 4 218 217 179 157
		f 4 -230 226 -110 -229
		mu 0 4 220 218 157 156
		f 4 -232 228 -222 -231
		mu 0 4 221 219 215 213
		f 4 -234 230 -219 -233
		mu 0 4 222 221 213 212
		f 4 -237 234 -212 -236
		mu 0 4 228 226 207 206
		f 4 -239 235 -223 -238
		mu 0 4 229 228 206 211
		f 4 -241 237 -215 -240
		mu 0 4 230 229 211 210
		f 4 -243 239 -221 -242
		mu 0 4 232 230 210 214
		f 4 -245 241 -106 -244
		mu 0 4 233 231 155 154
		f 4 -247 243 -162 -246
		mu 0 4 234 233 154 178
		f 4 -249 245 -158 -248
		mu 0 4 235 234 178 173
		f 4 -251 247 -144 -250
		mu 0 4 236 235 173 172
		f 4 -253 249 -155 -252
		mu 0 4 237 236 172 176
		f 4 -255 251 -151 -254
		mu 0 4 238 237 176 159
		f 4 -257 253 -114 -256
		mu 0 4 239 238 159 158
		f 4 -259 255 -140 -258
		mu 0 4 240 239 158 170
		f 4 -261 257 -136 -260
		mu 0 4 241 240 170 163
		f 4 -263 259 -122 -262
		mu 0 4 242 241 163 162
		f 4 -265 261 -133 -264
		mu 0 4 243 242 162 167
		f 4 -267 263 -129 -266
		mu 0 4 245 243 167 166
		f 4 -269 265 -87 -268
		mu 0 4 246 244 145 144
		f 4 -271 267 -102 -270
		mu 0 4 247 246 144 149
		f 4 -273 269 -95 -272
		mu 0 4 248 247 149 148
		f 4 -275 271 -101 -274
		mu 0 4 250 248 148 152
		f 4 -278 275 -103 -277
		mu 0 4 255 254 150 147
		f 4 -280 276 -91 -279
		mu 0 4 257 255 147 146
		f 4 -282 278 -132 -281
		mu 0 4 258 256 169 168
		f 4 -284 280 -134 -283
		mu 0 4 259 258 168 165
		f 4 -286 282 -126 -285
		mu 0 4 260 259 165 164
		f 4 -288 284 -139 -287
		mu 0 4 261 260 164 171
		f 4 -290 286 -141 -289
		mu 0 4 262 261 171 161
		f 4 -292 288 -118 -291
		mu 0 4 263 262 161 160
		f 4 -294 290 -154 -293
		mu 0 4 264 263 160 177
		f 4 -296 292 -156 -295
		mu 0 4 265 264 177 175
		f 4 -297 294 -148 -224
		mu 0 4 216 265 175 174
		f 4 297 -309 -301 -166
		mu 0 4 180 183 182 181
		f 4 196 298 -300 -209
		mu 0 4 199 200 205 204
		f 4 299 -313 -298 -210
		mu 0 4 204 205 183 180
		f 4 -303 211 300 301
		mu 0 4 209 206 207 208
		f 4 -217 222 302 303
		mu 0 4 212 211 206 209
		f 4 45 46 304 -307
		mu 0 4 108 109 110 111
		f 4 71 305 -311 -64
		mu 0 4 127 132 133 128
		f 4 72 306 -314 -306
		mu 0 4 132 108 111 133
		f 3 -320 -305 307
		mu 0 3 224 39 38
		f 4 310 309 -299 -196
		mu 0 4 56 61 205 200
		f 4 313 311 312 -310
		mu 0 4 61 39 183 205
		f 4 74 314 315 -308
		mu 0 4 64 65 223 225
		f 4 -315 83 215 316
		mu 0 4 223 65 68 222
		f 4 317 -317 232 -304
		mu 0 4 209 223 222 212
		f 4 -316 -318 -302 318
		mu 0 4 225 223 209 208
		f 4 -312 319 -319 308
		mu 0 4 183 39 224 182
		f 4 -322 100 -99 320
		mu 0 4 153 152 148 151
		f 4 -184 321 322 -324
		mu 0 4 193 192 195 194
		f 4 -185 323 -337 181
		mu 0 4 188 193 194 191
		f 4 -5 324 -329 -6
		mu 0 4 77 76 79 78
		f 4 -7 325 326 -325
		mu 0 4 76 80 81 79
		f 4 -326 55 327 -336
		mu 0 4 123 120 121 122
		f 4 -328 56 -55 -338
		mu 0 4 122 121 116 119
		f 4 -96 328 329 330
		mu 0 4 254 5 7 253
		f 4 -330 -327 331 332
		mu 0 4 253 7 3 251
		f 3 339 -332 335
		mu 0 3 50 252 51
		f 4 179 336 -334 337
		mu 0 4 47 191 194 50
		f 4 338 -333 -335 -321
		mu 0 4 151 253 251 153
		f 4 -276 -331 -339 -98
		mu 0 4 150 254 253 151
		f 4 -340 333 -323 334
		mu 0 4 252 50 194 195;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PowerUp";
createNode mesh -n "PowerUpShape" -p "PowerUp";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Shield";
	setAttr ".rp" -type "double3" 3.9728361319188772 -3.8200264087962808e-15 0.19161427785853016 ;
	setAttr ".sp" -type "double3" 3.9728361319188785 -3.8200264087962808e-15 0.19161427785853016 ;
createNode mesh -n "ShieldShape" -p "Shield";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49819956719875336 0.49978646710141172 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.67312521 0.020850167
		 0.82607281 0.020850256 0.82607281 0.97872257 0.67312539 0.97872257 0.32327396 0.020850345
		 0.32327396 0.97872251 0.17032632 0.97872251 0.17032638 0.020850167 0.67312521 0.99782461
		 0.32327372 0.0017487556 0.67312491 0.0017483085 0.32327378 0.99782425 0.67327285
		 0.97872263 0.67327285 0.020850286 0.3234216 0.020850288 0.32342166 0.97872263;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.36245799 -4.2020288e-15 1.91200113 4.58321428 -4.2020288e-15 1.91200113
		 3.36245799 -3.4380237e-15 -1.52877271 4.58321428 -3.4380237e-15 -1.52877271 3.69813466 1.25670087 1.91200113
		 4.24753761 1.25670087 1.91200113 4.24753761 1.25670087 -1.52877271 3.69813466 1.25670087 -1.52877271;
	setAttr -s 12 ".ed[0:11]"  0 1 1 0 2 1 1 3 1 2 3 1 0 4 1 1 5 1 4 5 1
		 3 6 1 5 6 1 2 7 1 7 6 1 4 7 1;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 8 -11 -12
		mu 0 4 0 1 2 3
		f 4 1 3 -3 -1
		mu 0 4 4 5 6 7
		f 4 0 5 -7 -5
		mu 0 4 4 9 10 0
		f 4 2 7 -9 -6
		mu 0 4 12 13 14 15
		f 4 -4 9 10 -8
		mu 0 4 11 5 3 8
		f 4 -2 4 11 -10
		mu 0 4 5 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.965\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n"
		+ "                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.965\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 2.8284271247461894 -2.8284271247461894 2.2204460492503131e-16 0
		 2 1.9999999999999996 -2.8284271247461894 0 2 2 2.8284271247461894 0 0 0 0 1;
createNode lambert -n "PowerUpMatt";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "LevelMatt";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "ShieldMatt";
	setAttr ".ic" -type "float3" 0.50865054 0.96078432 0.96078432 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -385.50382191922324 -229.76190476190476 ;
	setAttr ".vh" -type "double2" 274.78953620493752 232.14285714285717 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 17 ".hyp";
	setAttr ".hyp[0].x" 1.7857142686843872;
	setAttr ".hyp[0].y" -0.5952380895614624;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1.7857142686843872;
	setAttr ".hyp[1].y" -79.166664123535156;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 1.7857142686843872;
	setAttr ".hyp[2].y" -157.73809814453125;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" -195.35714721679688;
	setAttr ".hyp[3].y" -161.90475463867188;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" -195.35714721679688;
	setAttr ".hyp[4].y" -19.047618865966797;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" -195.35714721679688;
	setAttr ".hyp[5].y" -90.476188659667969;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" -53.571430206298828;
	setAttr ".hyp[6].y" 77.976188659667969;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" -250.49607849121094;
	setAttr ".hyp[7].y" 52.380950927734375;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" -250.49607849121094;
	setAttr ".hyp[8].y" 123.80952453613281;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" -250.49607849121094;
	setAttr ".hyp[9].y" 195.23809814453125;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" -53.353218078613281;
	setAttr ".hyp[10].y" -0.81344902515411377;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 340.9324951171875;
	setAttr ".hyp[11].y" -162.3411865234375;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".anf" yes;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 0.096937474793704931 0 0 0 0 0.096937474793704931 0 0
		 0 0 0.096937474793704931 0 0 0 0 1;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:169]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.47866344451904297 1.5085868835449212 0.82374763488769531 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 29.462806701660156 29.462806701660156 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/anthony/Dropbox/Documents/Artisan Dream/iPhoneGamesShare/AOTGCS/ShrimpAlpha3/Assets//sourceimages/SeaFloor.psd";
createNode place2dTexture -n "place2dTexture1";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 170 ".uvtk[0:169]" -type "float2" -2.21045732 -0.43450952 -1.91251755
		 -0.87986207 -1.60632515 -0.051599979 -1.69924235 0.044014394 -2.2077322 0.45760632
		 -2.21654844 0.011392176 -1.75158262 0.13936818 -1.72467744 0.23458725 1.46786165
		 -0.97481877 1.77633655 -0.98762751 1.53395391 -0.1227577 1.14655161 -0.13011396 -0.37256056
		 -0.7708115 -0.064015239 -0.7837494 -0.054790318 -0.1973235 -0.28893974 -0.18902448
		 -1.29758036 -0.82101971 -0.98960155 -0.79742664 -0.75732237 -0.026676983 -0.99135637
		 -0.046623677 -1.60511136 -0.8497622 -1.25414705 -0.054986924 -0.68130672 -0.77879238
		 -0.52315736 -0.066832751 0.55097365 -0.84181327 0.85733199 -0.8814168 0.64749122
		 -0.13011977 0.41320837 -0.22208375 0.24360609 -0.81154114 0.17916805 -0.21061444
		 1.16230464 -0.92971921 0.88180208 -0.13011873 -0.29120582 0.96378887 -0.2908943 0.42065716
		 -0.048231006 0.42500114 0.032169342 0.95190954 -1.26145864 0.98230684 -1.018971324
		 0.38078749 -0.77595925 0.39189792 -0.93791276 0.98762751 -0.53338426 0.49894094 -0.61463118
		 0.9739635 0.67865908 0.92206538 0.43750989 0.2785731 0.68051887 0.37754691 1.00063884258
		 0.88934803 0.19453371 0.38806868 0.3554554 0.9375912 2.11087728 -0.54608119 2.16392374
		 -0.1067996 1.76561606 0.091439486 1.69513917 -0.016014636 -2.21045732 -0.43450952
		 -1.69924235 0.044014394 -1.60632515 -0.051599979 -1.91251755 -0.87986207 -2.21654844
		 0.011392176 -1.75158262 0.13936818 1.46786165 -0.97481877 1.14655161 -0.13011396
		 1.53395391 -0.1227577 1.77633655 -0.98762751 -0.37256056 -0.7708115 -0.28893974 -0.094960392
		 -0.054790318 -0.10293072 -0.064015239 -0.7837494 -1.29758036 -0.82101971 -0.99135637
		 -0.046192169 -0.75732237 -0.026676983 -0.98960155 -0.79742664 -1.25414705 -0.054986924
		 -1.60511136 -0.8497622 -0.52315736 -0.066484243 -0.68130672 -0.77879238 0.55097365
		 -0.84181327 0.41320837 -0.12801963 0.64749122 -0.12958974 0.85733199 -0.8814168 0.17916805
		 -0.11655033 0.24360609 -0.81154114 0.88180208 -0.13011873 1.16230464 -0.92971921
		 -0.29120582 0.96378887 0.032169342 0.95190954 -0.048231006 0.30682808 -0.2908943
		 0.32833874 -1.26145864 0.98230684 -0.93791276 0.98762751 -0.77595925 0.36950099 -1.018971324
		 0.38078749 -0.61463118 0.9739635 -0.53338426 0.38422567 0.67865908 0.92206538 1.00063884258
		 0.88934803 0.68051887 0.33990741 0.43750989 0.2785731 0.3554554 0.9375912 0.19453371
		 0.26989567 2.21654844 0.33250785 1.7225275 0.19769818 1.59180558 0.29830551 1.96420574
		 0.77139068 2.11087728 -0.54608119 1.69513917 -0.016014636 1.76561606 0.091439486
		 2.16392374 -0.1067996 -1.91251755 -0.87986207 -2.21045732 -0.43450952 -1.69924235
		 0.044014394 -1.60632515 -0.051599979 -2.2077322 0.45760632 -2.21654844 0.011392176
		 -2.2077322 0.45760632 -1.90309286 0.90226698 -1.90309286 0.90226698 -1.75158262 0.13936818
		 1.77633655 -0.98762751 1.46786165 -0.97481877 1.14655161 -0.13011396 1.53395391 -0.1227577
		 -0.064015239 -0.7837494 -0.37256056 -0.7708115 -0.28893974 -0.094960392 -0.054790318
		 -0.10311091 -0.98960155 -0.79742664 -1.29758036 -0.82101971 -0.99135637 -0.046428412
		 -0.75732237 -0.026676983 -1.60511136 -0.8497622 -1.25414705 -0.054986924 -0.68130672
		 -0.77879238 -0.52315736 -0.066675007 0.85733199 -0.8814168 0.55097365 -0.84181327
		 0.41320837 -0.12801963 0.64749122 -0.12987983 0.24360609 -0.81154114 0.17916805 -0.11655033
		 1.16230464 -0.92971921 0.88180208 -0.13011873 1.64258218 0.80702567 1.64258218 0.80702567
		 1.96420574 0.77139068 1.96420574 0.77139068 -1.90309286 0.90226698 -1.58371687 0.95444608
		 -1.58371687 0.95444608 1.32168388 0.849015 1.32168388 0.849015 2.21654844 0.33250785
		 2.16392374 -0.1067996 2.11087728 -0.54608119 1.69513917 -0.016014636 1.76561606 0.091439486
		 2.21654844 0.33250785 1.2391932 0.20832723 1.56994247 0.29691672 0.92294002 0.33137852
		 1.7225275 0.19769818 1.25268722 0.20832723 0.92294002 0.29626405 1.57983387 0.29754508
		 1.7225275 0.19769818 -1.63717973 0.32987189 -1.30584455 0.33916438 -1.72467744 0.23458725
		 -1.65362036 0.32987189 -1.31431639 0.33781207 -1.72467744 0.23458725 -1.6446178 0.32987189;
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/anthony/Dropbox/Documents/Artisan Dream/iPhoneGamesShare/AOTGCS/ShrimpAlpha3/Assets//sourceimages/EnergyShields.psd";
createNode place2dTexture -n "place2dTexture2";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyTweakUV1.out" "LevelShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "LevelShape.uvst[0].uvtw";
connectAttr "transformGeometry3.og" "PowerUpShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "transformGeometry1.ig";
connectAttr "PowerUpMatt.oc" "lambert2SG.ss";
connectAttr "PowerUpShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "PowerUpMatt.msg" "materialInfo1.m";
connectAttr "file1.oc" "LevelMatt.c";
connectAttr "LevelMatt.oc" "lambert3SG.ss";
connectAttr "LevelShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "LevelMatt.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
connectAttr "file2.oc" "ShieldMatt.c";
connectAttr "file2.ot" "ShieldMatt.it";
connectAttr "ShieldMatt.oc" "lambert4SG.ss";
connectAttr "ShieldShape.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "ShieldMatt.msg" "materialInfo3.m";
connectAttr "file2.msg" "materialInfo3.t" -na;
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "PowerUpMatt.msg" "hyperLayout1.hyp[0].dn";
connectAttr "lambert2SG.msg" "hyperLayout1.hyp[1].dn";
connectAttr "LevelMatt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "lambert3SG.msg" "hyperLayout1.hyp[3].dn";
connectAttr "ShieldMatt.msg" "hyperLayout1.hyp[4].dn";
connectAttr "lambert4SG.msg" "hyperLayout1.hyp[5].dn";
connectAttr "transformGeometry3.msg" "hyperLayout1.hyp[6].dn";
connectAttr "file1.msg" "hyperLayout1.hyp[7].dn";
connectAttr "place2dTexture1.msg" "hyperLayout1.hyp[8].dn";
connectAttr "polyTweakUV1.msg" "hyperLayout1.hyp[9].dn";
connectAttr "file2.msg" "hyperLayout1.hyp[10].dn";
connectAttr "place2dTexture2.msg" "hyperLayout1.hyp[11].dn";
connectAttr "transformGeometry1.og" "transformGeometry3.ig";
connectAttr "polySurfaceShape1.o" "polySoftEdge1.ip";
connectAttr "LevelShape.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polyPlanarProj1.ip";
connectAttr "LevelShape.wm" "polyPlanarProj1.mp";
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
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
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
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "PowerUpMatt.msg" ":defaultShaderList1.s" -na;
connectAttr "LevelMatt.msg" ":defaultShaderList1.s" -na;
connectAttr "ShieldMatt.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Level1.ma
