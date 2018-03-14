// Gmsh project created on Tue Mar 13 18:06:51 2018
Point(1) = {0, 0, 0, 1.0};
Point(2) = {0, 0, 1, 1.0};
Point(3) = {0, 1, 0, 1.0};
Point(4) = {0, 1, 1, 1.0};
Point(5) = {1, 0, 0, 1.0};
Point(6) = {1, 0, 1, 1.0};
Point(7) = {1, 1, 0, 1.0};
Point(8) = {1, 1, 1, 1.0};
Line(1) = {4, 8};
Line(2) = {8, 6};
Line(3) = {4, 2};
Line(4) = {7, 8};
Line(5) = {7, 3};
Line(6) = {3, 1};
Line(7) = {4, 3};
Line(8) = {2, 1};
Line(9) = {5, 6};
Line(10) = {5, 7};
Point(9) = {0.5, 0, 0, 1.0};
Point(10) = {0.5, 0, 1, 1.0};
Circle(11) = {2, 10, 6};
Delete {
  Line{11};
}
Circle(11) = {6, 10, 2};
Circle(12) = {1, 9, 5};
Circle(13) = {5, 9, 1};
Delete {
  Line{12};
}
Line Loop(14) = {10, 5, 6, -13};
Plane Surface(15) = {14};
Line Loop(16) = {6, -8, -3, 7};
Plane Surface(17) = {16};
Line Loop(18) = {3, -11, -2, -1};
Plane Surface(19) = {18};
Line Loop(20) = {2, -9, 10, 4};
Plane Surface(21) = {20};
Line Loop(22) = {1, -4, 5, -7};
Plane Surface(23) = {22};
Line Loop(24) = {9, 11, 8, -13};
Ruled Surface(25) = {24};
Surface Loop(26) = {15, 21, 19, 17, 25, 23};
Volume(27) = {26};

Point(11) = {20, 0, 0, 1.0};
Point(12) = {20, 0, 1, 1.0};
Point(13) = {20, 1, 0, 1.0};
Point(14) = {20, 1, 1, 1.0};
Line(28) = {6, 12};
Line(29) = {14, 8};
Line(30) = {14, 12};
Line(31) = {14, 13};
Line(32) = {11, 13};
Line(33) = {12, 11};
Line(34) = {13, 7};
Line(35) = {11, 5};
Line Loop(36) = {2, 28, -30, 29};
Plane Surface(37) = {36};
Line Loop(38) = {30, 33, 32, -31};
Plane Surface(39) = {38};
Line Loop(40) = {28, 33, 35, 9};
Plane Surface(41) = {40};
Line Loop(42) = {29, -4, -34, -31};
Plane Surface(43) = {42};
Line Loop(44) = {32, 34, -10, -35};
Plane Surface(45) = {44};
Surface Loop(46) = {41, 37, 39, 45, 43, 21};
Volume(47) = {46};

Point(15) = {-5, 0, 0, 1.0};
Point(16) = {-5, 0, 1, 1.0};
Point(17) = {-5, 1, 0, 1.0};
Point(18) = {-5, 1, 1, 1.0};
Line(48) = {16, 2};
Line(49) = {4, 18};
Line(50) = {16, 18};
Line(51) = {3, 17};
Line(52) = {18, 17};
Line(53) = {17, 15};
Line(54) = {16, 15};
Line(55) = {15, 1};
Line Loop(56) = {49, -50, 48, -3};
Plane Surface(57) = {56};
Line Loop(58) = {49, 52, -51, -7};
Plane Surface(59) = {58};
Line Loop(60) = {53, -54, 50, 52};
Plane Surface(61) = {60};
Line Loop(62) = {48, 8, -55, -54};
Plane Surface(63) = {62};
Line Loop(64) = {53, 55, -6, 51};
Plane Surface(65) = {64};
Surface Loop(66) = {57, 59, 61, 65, 63, 17};
Volume(67) = {66};

Transfinite Line {1,2,3,4,5,6,7,8,9,10,11,50,52,53,54,30,31,32,33} = 11 Using Progression 1;
Transfinite Line {49,48,51,55} = 51 Using Progression 1; 
Transfinite Line {28,29,34,35} = 191 Using Progression 1; 

Transfinite Line {52, 50, 54, 53, 3, 7, 6, 8, 2, 4, 10, 9, 31, 30, 33, 32} = 6 Using Progression 1;
Transfinite Line {48, 51, 49, 55} = 26 Using Progression 1;
Transfinite Line {34, 28, 35, 29} = 96 Using Progression 1;
Transfinite Line {11, 13, 1, 5} = 6 Using Progression 1;

Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
