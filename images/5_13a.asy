settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(6cm);

pair O = (0,0);
real R = 2.5;

// A (top), B (bottom) — vertical diameter
pair A = (0,  R);
pair B = (0, -R);

// CD parallel to AB (vertical), |CD| = R, half-chord = R/2
// horizontal offset from O: h = R*sqrt(3)/2
real h = R*sqrt(3)/2;
pair C = (h,  R/2);
pair D = (h, -R/2);

// Tangent at B is horizontal: y = -R
// Line AC extended meets tangent at E
// Parametrizing A + t*(C-A): y = R - (R/2)*t = -R  =>  t = 4
// x_E = 4h
pair E = (4*h, -R);

// --- Draw ---
// Circle
draw(circle(O, R), gray);

// Dashed radii for reference
draw(O--A, gray+linewidth(0.5pt)+dashed);
draw(O--B, gray+linewidth(0.5pt)+dashed);
draw(O--C, gray+linewidth(0.5pt)+dashed);

// Perpendicular from O to midpoint of CD
pair M = (h, 0);
draw(O--M, gray+linewidth(0.5pt)+dashed);

// Right-angle mark at O–midpoint–CD junction
draw((h-0.12,-0.12)--(h,-0.12)--(h,0.12)--(h-0.12,0.12)--cycle,
     gray+linewidth(0.6pt));

// Diameter AB
draw(A--B, black+linewidth(0.5pt));

// Chord CD
draw(C--D, black+linewidth(0.5pt));

// Parallel tick marks on AB (two ticks near midpoint O)
draw((-0.15,0.12)--(0.15,0.12), black+linewidth(0.5pt));
draw((-0.15,0.22)--(0.15,0.22), black+linewidth(0.5pt));

// Parallel tick marks on CD (two ticks near midpoint)
draw((h-0.15,0.12)--(h+0.15,0.12), black+linewidth(0.5pt));
draw((h-0.15,0.22)--(h+0.15,0.22), black+linewidth(0.5pt));

// Tangent line at B (horizontal, extended)
draw((-0.6,-R)--(E.x+0.4,-R), gray+linewidth(0.5pt)+dashed);

// Right-angle mark at B (tangent ⊥ OB)
draw((0,-R)--(0.18,-R)--(0.18,-R+0.18)--(0,-R+0.18)--cycle,
     black+linewidth(0.5pt));

// Line AC produced to E (blue)
draw(A--E, blue);

// Segment BE on tangent
draw(B--E, black);

// Points
filldraw(circle(A, 0.07), black, nullpen); label("$A$", A, W);
filldraw(circle(B, 0.07), black, nullpen); label("$B$", B, W);
filldraw(circle(C, 0.07), black, nullpen); label("$C$", C, E);
filldraw(circle(D, 0.07), black, nullpen); label("$D$", D, E);
filldraw(circle(E, 0.07), black, nullpen); label("$E$", E, S);
filldraw(circle(O, 0.07), black, nullpen); label("$O$", O, W);
