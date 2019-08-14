// Gmsh project created on Sat Aug 10 08:46:20 2019
m = 10; // Discretization along lines
c = 1; // Scalar on the radius

// Unit Circle: x^2 + y^2 = 1
// Scaled by c
Point(1) = {0,0,0,0.1};
Point(2) = {1*c,0,0,0.1};
Point(3) = {0,1*c,0,0.1};
Point(4) = {-1*c,0,0,0.1};
Point(5) = {0,-1*c,0,0.1};

Line(1) = {4,1};
Line(2) = {1,2};
Circle(3) = {2,1,3};
Circle(4) = {3,1,4};
Circle(5) = {4,1,5};
Circle(6) = {5,1,2};

Transfinite Line{1:6} = m;

Line Loop(1) = {1,2,3,4};
Line Loop(2) = {1,2,-6,-5};

Plane Surface(1) = {1};
Plane Surface(2) = {2};

Transfinite Surface{1} = {1,2,3,4};
Transfinite Surface{2} = {1,2,-5,-4}; // Must be points, NOT lines

Recombine Surface{1,2};