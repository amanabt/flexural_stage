// Gmsh project created on Wed Mar 14 23:29:55 2018
Point(1) = {0, 0, 0, 1.0};
Point(2) = {10, 0, 0, 1.0};
Point(3) = {-10, 0, 0, 1.0};
Circle(1) = {3, 1, 2};
Circle(2) = {2, 1, 3};
Point(4) = {0, 0, 0.5, 1.0};
Point(5) = {10, 0, 0.5, 1.0};
Point(6) = {-10, 0, 0.5, 1.0};
Circle(3) = {6, 4, 5};
Circle(4) = {5, 4, 6};

Line Loop(5) = {4, 3};
Plane Surface(6) = {5};
Line Loop(7) = {2, 1};
Plane Surface(8) = {7};
Line(9) = {5, 2};
Line(10) = {6, 3};
Line Loop(11) = {9, -1, -10, 3};
Ruled Surface(12) = {11};
Line Loop(13) = {10, -2, -9, 4};
Ruled Surface(14) = {13};
Surface Loop(15) = {12, 14, 8, 6};
Volume(16) = {15};
