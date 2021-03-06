// Gmsh project created on Tue Mar 13 20:34:24 2018
Point(1) = {0, 0.5, 0.5, 1.0};
Point(2) = {0, -0.5, -0.5, 1.0};
Point(3) = {0, -0.5, 0.5, 1.0};
Point(4) = {0, 0.5, -0.5, 1.0};
Point(5) = {20, 0.5, 0.5, 1.0};
Point(6) = {20, -0.5, -0.5, 1.0};
Point(7) = {20, -0.5, 0.5, 1.0};
Point(8) = {20, 0.5, -0.5, 1.0};

Line(1) = {3, 7};
Line(2) = {7, 5};
Line(3) = {5, 1};
Line(4) = {1, 3};
Line(5) = {6, 2};
Line(6) = {2, 4};
Line(7) = {4, 8};
Line(8) = {8, 6};
Line(9) = {5, 8};
Line(10) = {7, 6};
Line(11) = {4, 1};
Line(12) = {2, 3};
Line Loop(13) = {7, -9, 3, -11};
Plane Surface(14) = {13};
Line Loop(15) = {10, 5, 12, 1};
Plane Surface(16) = {15};
Line Loop(17) = {7, 8, 5, 6};
Plane Surface(18) = {17};
Line Loop(19) = {3, 4, 1, 2};
Plane Surface(20) = {19};
Line Loop(21) = {9, 8, -10, 2};
Plane Surface(22) = {21};
Line Loop(23) = {11, 4, -12, 6};
Plane Surface(24) = {23};
Surface Loop(25) = {20, 14, 18, 22, 16, 24};
Volume(26) = {25};
Transfinite Line {2, 9, 8, 10, 4, 12, 6, 11} = 5 Using Progression 1;
Transfinite Line {3, 1, 5, 7} = 100 Using Progression 1;
Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
