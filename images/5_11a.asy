settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(6cm);

real r = 3;

pair O = (0,0);
pair A = (-r, 0);
pair B = ( r, 0);

// --- Axes ---
draw((-3.8,0)--(3.8,0), black, Arrow);
draw((0,-0.3)--(0,3.5), black, Arrow);
label("$x$", (3.9,0), E);
label("$y$", (0,3.6), N);

// --- Semicircle ---
// cetz's arc((r,0), start:0, stop:180, radius:r) starts *at* (r,0)
// and sweeps to center-relative angle 180, i.e. center = O, radius r
draw(arc(O, r, 0, 180), black+linewidth(0.5pt));

// --- Diameter ---
draw(A--B, black+linewidth(0.8pt));

// --- Points A, B, O ---
filldraw(circle(A, 0.07), blue, nullpen);
filldraw(circle(B, 0.07), blue, nullpen);
filldraw(circle(O, 0.06), black, nullpen);

label("$A$", A, SW);
label("$(-r,0)$", A + (0, -0.2), S);
label("$B$", B, SE);
label("$(r,0)$", B + (0, -0.2), S);
label("$O$", O, S);

// --- Point P at 125 degrees on the circle ---
real px = r*cos(125*pi/180);
real py = r*sin(125*pi/180);
pair P = (px, py);

filldraw(circle(P, 0.08), rgb("D85A30"), nullpen);
label("$P(a,b)$", P, NW);

// --- Lines PA and PB ---
draw(P--A, rgb("D85A30"));
draw(P--B, blue);

// --- Vector labels ---
label(Label("$\overrightarrow{PA}$"), ((px + (-r))/2 - 0.25, (py + 0)/2 + 0.1), rgb("D85A30"));
label(Label("$\overrightarrow{PB}$"), ((px + r)/2 + 0.2,     (py + 0)/2 + 0.1), blue);

// --- Radius OP (dashed) ---
draw(O--P, gray+linewidth(0.6pt)+dashed);
label("$r$", (px/2 - 0.2, py/2 + 0.15));

// --- Right-angle mark at P ---
real dx = 0.22;
real ux_pa = (-r - px)/r;
real uy_pa = ( 0  - py)/r;
real ux_pb = ( r  - px)/r;
real uy_pb = ( 0  - py)/r;

real sx = px + dx*ux_pa;
real sy = py + dx*uy_pa;
real ex = px + dx*ux_pb;
real ey = py + dx*uy_pb;
real mx = sx + dx*ux_pb;
real my = sy + dx*uy_pb;

draw((sx,sy)--(mx,my)--(ex,ey), linewidth(0.8pt));
