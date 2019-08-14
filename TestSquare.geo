// Gmsh project created on Sat Aug 10 08:38:07 2019
m = 10; //Discretization of line
n = 1; //Scale the unit square

Point(1) = {0,0,0,0.1};
Point(2) = {1,0,0,0.1};
Point(3) = {1,1,0,0.1};
Point(4) = {0,1,0,0.1};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};

Transfinite Line{1:4} = m;

Line Loop(1) = {1,2,3,4};

Plane Surface(2) = {1};
Transfinite Surface{2}= {1,2,3,4};
Recombine Surface{2};

Physical Line(0) = {1};
Physical Line(1) = {2,4};
Physical Line(2) = {3};
