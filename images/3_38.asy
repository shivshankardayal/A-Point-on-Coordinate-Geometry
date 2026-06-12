settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
size(4cm);

import geometry;

// Scaling factor to fit into small box
real s = 0.05;

// Define points (scaled)
pair A = (36,0);
pair B = (56,15);
pair C = (0,15);

// Centroid
pair G = ( (0+20-36)/3 , (0+15+15)/3 ); // (-16/3, 10)
G = (G.x, G.y);

// Incenter (from earlier result)
pair I = (-1, 8);

// Apply scaling
A *= s;
B *= s;
C *= s;
G *= s;
I *= s;

// Draw bounding box (4 cm × 4 cm)
//draw((0,0)--(4,0)--(4,4)--(0,4)--cycle);

// Triangle
draw(A--B--C--cycle);

// Vertices
label("$A$", A, SW);
label("$B$", B, NE);
label("$C$", C, NW);

// Centroid and incenter
dot("$G$", G, red);
dot("$I$", I, blue);

// Medians (light)
draw(A--G, dashed+gray);
draw(B--G, dashed+gray);
draw(C--G, dashed+gray);

// Angle bisector hints (optional)
draw(A--I, dotted+blue);
draw(B--I, dotted+blue);
draw(C--I, dotted+blue);
