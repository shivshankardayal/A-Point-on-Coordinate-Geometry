settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(6cm);

real r = 3.25;  // visual radius (representing 6.5m)

pair O = (0,0);

// --- Axes ---
draw((-4.2,0)--(4.2,0), black, Arrow);
draw((0,-4.0)--(0,4.0), black, Arrow);
label("$x$", (4.3,0), E);
label("$y$", (0,4.1), N);

// --- Circle ---
draw(circle(O, r), black);

// --- Key points ---
filldraw(circle(O, 0.06), black, nullpen);
label("$O$", (0.15,-0.22));

pair A = (-r, 0);
pair B = ( r, 0);

filldraw(circle(A, 0.08), blue, nullpen);
label("$A(-6.5,0)$", A, SW);

filldraw(circle(B, 0.08), blue, nullpen);
label("$B(6.5,0)$", B, SE);

// --- Chord AC = 5m, A = (-6.5, 0) ---
// C lies on circle: (x+6.5)^2 + y^2 = 25  AND  x^2+y^2 = 42.25
// x_C = (-6.5*13 + 25)/13 = -59.5/13 ~ -4.577
// y_C = sqrt(42.25 - x_C^2) = 60/13 ~ 4.615

real scale = r / 6.5;   // maps real metres to canvas units

real xc     = -59.5/13;
real yc_pos =  60.0/13;
real yc_neg = -60.0/13;

real cxs     = xc * scale;
real cys_pos = yc_pos * scale;
real cys_neg = yc_neg * scale;

pair C1 = (cxs, cys_pos);
pair C2 = (cxs, cys_neg);

// --- C1 (above x-axis) ---
filldraw(circle(C1, 0.08), rgb("D85A30"), nullpen);
label("$C_1$", C1, SE);

// --- C2 (below x-axis) ---
filldraw(circle(C2, 0.08), rgb("D85A30"), nullpen);
label("$C_2$", C2, NE);

// --- Chord AC1 and AC2 ---
draw(A--C1, rgb("D85A30")+linewidth(.5pt));
draw(A--C2, rgb("D85A30")+linewidth(.5pt));

// AC length label (upper chord)
real mx_ac = (-r + cxs)/2;
real my_ac = (0 + cys_pos)/2;
label("$5$", (mx_ac - 0.25, my_ac), W);

// --- Lines BC1 and BC2 ---
draw(B--C1, blue+linewidth(.5pt));
draw(B--C2, blue+linewidth(.5pt));

// BC label (upper)
real mx_bc1 = (r + cxs)/2;
real my_bc1 = (0 + cys_pos)/2;
label(Label("$BC_1$"), (mx_bc1 + 0.25, my_bc1 + 0.1), E, blue);

// BC label (lower)
real mx_bc2 = (r + cxs)/2;
real my_bc2 = (0 + cys_neg)/2;
label(Label("$BC_2$"), (mx_bc2 + 0.25, my_bc2 - 0.1), E, blue);

// --- Right-angle marks at C1 and C2 (angle in semicircle) ---
real dx = 0.2;
real[] cys = {cys_pos, cys_neg};
for(int i = 0; i < 2; ++i){
    real cy_pt = cys[i];
    real ax = -r, ay = 0.0;
    real bx =  r, by = 0.0;
    real cx_pt = cxs;

    // unit vectors C->A and C->B
    real len_ca = sqrt((ax-cx_pt)^2 + (ay-cy_pt)^2);
    real len_cb = sqrt((bx-cx_pt)^2 + (by-cy_pt)^2);
    pair ua = ((ax-cx_pt)/len_ca, (ay-cy_pt)/len_ca);
    pair ub = ((bx-cx_pt)/len_cb, (by-cy_pt)/len_cb);

    pair p1 = (cx_pt + dx*ua.x, cy_pt + dx*ua.y);
    pair p2 = (cx_pt + dx*ub.x, cy_pt + dx*ub.y);
    pair pm = (p1.x + dx*ub.x, p1.y + dx*ub.y);

    draw(p1--pm--p2, linewidth(0.5pt));
}

// --- Diameter label ---
label("$r = 6.5$", (0,-0.3), S);
