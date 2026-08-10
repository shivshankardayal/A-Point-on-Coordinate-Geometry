settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
import markers;

size(6cm);

real a = 3, b = 2;
real theta = radians(50);

pair C = (0,0);
pair P = (a*cos(theta), b*sin(theta));

// Normal at P: a x / cos(theta) - b y / sin(theta) = a^2 - b^2
// Meets major axis (y=0) at G, minor axis (x=0) at E
real k = a^2-b^2;
pair G = ( k*cos(theta)/a, 0 );
pair E = ( 0, -k*sin(theta)/b );

// direction of normal line (from E to G)
pair dir = unit(G-E);

// foot of perpendicular F from C onto line EG
pair F = E + dot(C-E, dir)*dir;

// axes
draw((-4.2,0)--(4.2,0), gray+0.5, Arrow);
draw((0,-3.2)--(0,3.2), gray+0.5, Arrow);
label("$x$", (4.2,0), E);
label("$y$", (0,3.2), N);

// ellipse
draw(ellipse(C, a, b), heavygreen);

// normal line, extended slightly beyond E and G
pair ext1 = E - 0.4*dir;
pair ext2 = G + 0.4*dir;
draw(ext1--P, red);

// segments CF (perpendicular) and CP
draw(C--F, blue+0.5);
draw(C--P, gray+0.5+dashed);

// right angle mark at F between CF and the normal line
pair u1 = unit(C-F), u2 = unit(dir);
real s = 0.18;
draw(F+u1*s -- F+u1*s+u2*s -- F+u2*s);

// points
dot("$C$", C, SW);
dot("$P$", P, NE);
dot("$G$", G, S);
dot("$E$", E, W);
dot("$F$", F, NW);

label("$b$", (0,b), NE);
label("$a$", (a,0), NE);
