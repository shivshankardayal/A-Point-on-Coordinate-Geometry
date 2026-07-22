settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(4cm);

real sq5  = sqrt(5);
real sq11 = sqrt(11);

// Setup
pair O = (0,0);
pair P = (1, 0.5);

// --- Circle ---
draw(circle(O, 2), blue);

// --- Axes ---
draw((-2.6,0)--(2.6,0), gray, Arrow(TeXHead));
draw((0,-2.6)--(0,2.6), gray, Arrow(TeXHead));
label("$x$", (2.7,0));
label("$y$", (0,2.8));

// Tick marks
for(int i = -2; i <= 2; ++i){
    if(i != 0){
        draw((i,-0.08)--(i,0.08), gray);
        draw((-0.08,i)--(0.08,i), gray);
        label(scale(0.7)*Label((string) i), (i,-0.25));
        label(scale(0.7)*Label((string) i), (-0.25,i));
    }
}

// --- Key points ---
// OP direction: (1, 0.5); perpendicular unit direction: (-1/sqrt5, 2/sqrt5)
real px_unit = -1.0/sq5;
real py_unit =  2.0/sq5;
real half    = sq11/2.0;

pair A = (1.0 + px_unit*half, 0.5 + py_unit*half);
pair B = (1.0 - px_unit*half, 0.5 - py_unit*half);

// --- OP dashed line (extended to circle edge) ---
pair op_end = (2.0*2.0/sq5, 2.0*1.0/sq5);
draw(O--op_end, gray+dashed);

// --- Radius OA dashed ---
draw(O--A, gray+dashed+linewidth(0.6pt));

// --- Minimum chord AB ---
draw(A--B, orange+linewidth(1.5pt));

// --- Right angle mark at P ---
real s = 0.12;
real ou_x = 2.0/sq5;   // OP unit x
real ou_y = 1.0/sq5;   // OP unit y

pair sq1 = P;
pair sq2 = (P.x + ou_x*s,               P.y + ou_y*s);
pair sq3 = (P.x + ou_x*s + px_unit*s,   P.y + ou_y*s + py_unit*s);
pair sq4 = (P.x + px_unit*s,            P.y + py_unit*s);

draw(sq1--sq2--sq3--sq4--cycle, linewidth(0.6pt));

// --- Points ---
filldraw(circle(O, 0.06), blue,   nullpen);
filldraw(circle(P, 0.07), orange, nullpen);
filldraw(circle(A, 0.06), black,  nullpen);
filldraw(circle(B, 0.06), black,  nullpen);

// --- Labels ---
label("$O$", O + (-0.18,-0.18));
label(Label("$P(1,\frac12)$", fontsize(10pt)), P + (0.15,0.15), orange);
label("$A$", A + (-0.22, 0.15));
label("$B$", B + ( 0.15,-0.15));

// d = |OP| label
label(Label("$d = \sqrt5/2$", fontsize(9pt)+fontcommand("\itshape")), (0.35, 0.45));

// half-chord label (midpoint of PA)
real mx = (P.x + A.x)/2;
real my = (P.y + A.y)/2;
label(Label("$\ell = \sqrt{11}/2$", fontsize(9pt)+fontcommand("\itshape")), (mx-0.35, my), orange);

// radius OA label
real rx = (O.x + A.x)/2;
real ry = (O.y + A.y)/2;
label(Label("$r = 2$", fontsize(9pt)+fontcommand("\itshape")), (rx-0.3, ry+0.05));
