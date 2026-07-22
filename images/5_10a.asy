settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(6cm);

// --- Setup ---
real cx = 0;
real cy = 2;
real r  = 2;

real sq7 = sqrt(7);
real x1 = (-1 - sq7)/2;   // ~ -1.823
real y1 = 1 - x1;          // ~  2.823
real x2 = (-1 + sq7)/2;   // ~  0.823
real y2 = 1 - x2;          // ~  0.177

// Foot of perpendicular from C(0,2) to x+y=1
real fx = -0.5;
real fy = 1.5;

pair A = (x1, y1);
pair B = (x2, y2);
pair C = (cx, cy);
pair F = (fx, fy);

// --- Axes ---
draw((-3.2,0)--(3.2,0), black+linewidth(0.5pt), Arrow);
draw((0,-0.5)--(0,5.0), black+linewidth(0.5pt), Arrow);

label(scale(0.9)*Label("$x$"), (3.35,0));
label(scale(0.9)*Label("$y$"), (0.15,5.1));

// Tick marks and labels on x-axis
for(int xi = -2; xi <= 2; ++xi){
    if(xi != 0){
        draw((xi,-0.08)--(xi,0.08), gray+linewidth(0.5pt));
        label(scale(0.75)*Label((string) xi), (xi,-0.28));
    }
}

// Tick marks and labels on y-axis
for(int yi = 1; yi <= 4; ++yi){
    draw((-0.08,yi)--(0.08,yi), gray+linewidth(0.5pt));
    label(scale(0.75)*Label((string) yi), (-0.28,yi));
}

// Origin
label(scale(0.75)*Label("$O$"), (0.18,-0.25));

// --- Circle ---
draw(circle(C, r), black+linewidth(0.5pt));

// --- Centre point ---
filldraw(circle(C, 0.06), black, nullpen);
label(scale(0.8)*Label("$C(0,2)$"), (0.35, 2.1));

// --- Chord AB ---
draw(A--B, blue+linewidth(.5pt));

// Chord endpoints
filldraw(circle(A, 0.07), blue, nullpen);
filldraw(circle(B, 0.07), blue, nullpen);
label(Label("$A$", fontsize(9pt)), A + (-0.22, 0.1), blue);
label(Label("$B$", fontsize(9pt)), B + ( 0.22,-0.1), blue);

// Chord label
label(Label("$x+y=1$", fontsize(8pt)), (-0.4, 1.2), blue);

// --- Perpendicular from C to chord ---
draw(C--F, gray(130/255)+linewidth(0.5pt)+dashed);

// Right-angle mark at foot
real d    = 0.12;
real sq2  = sqrt(2);
real along_x =  d/sq2;   // along chord: (1,-1)/sqrt(2)
real along_y = -d/sq2;
real perp_x  =  d/sq2;   // along perp:  (1,1)/sqrt(2)
real perp_y  =  d/sq2;

draw( (fx+along_x, fy+along_y) -- (fx+along_x+perp_x, fy+along_y+perp_y) -- (fx+perp_x, fy+perp_y),
      gray(150/255)+linewidth(0.6pt) );

// Distance label
label(Label("$d = 1/\sqrt{2}$", fontsize(7.5pt)), (-0.05, 1.72));

// --- Central angle lines C->A and C->B ---
draw(C--A, gray(160/255)+linewidth(0.5pt)+dashed);
draw(C--B, gray(160/255)+linewidth(0.5pt)+dashed);
