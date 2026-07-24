settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(5cm);


// --- Approximate cetz "darken/lighten" shades ---
pen gray70   = gray(0.70);   // gray.lighten(70%) — light fill
pen blue20   = rgb(0.00,0.00,0.65);   // blue.darken(20%)
pen red10    = rgb(0.75,0.00,0.00);   // red.darken(10%)

// --- settings ---
pair O = (0,0);
real r = 2.0;
pair P = (4.5, 0);

// chord-of-contact x-coordinate (in circle-centred frame): a^2/|OP| = 4/4.5
real cx = r*r / 4.5;              // ~ 0.8889
real cy = sqrt(r*r - cx*cx);      // ~ 1.7951

pair A = (cx,  cy);
pair B = (cx, -cy);

// --- shaded triangle PAB ---
filldraw(P--A--B--cycle, gray70, nullpen);

// --- circle ---
draw(circle(O, r), black);

// --- axes ---
draw((-2.6,0)--(5.0,0), gray+linewidth(0.5pt));
draw((0,-2.6)--(0,2.6), gray+linewidth(0.5pt));
label(Label("$x$", fontsize(10pt)), (5.15,0));
label(Label("$y$", fontsize(10pt)), (0.15,2.75));

// --- origin label ---
filldraw(circle(O, 0.06), black, nullpen);
label(Label("$O$", fontsize(10pt)), (-0.25,-0.22));

// --- radii OA, OB (dashed) ---
draw(O--A, gray+linewidth(0.6pt)+dashed);
draw(O--B, gray+linewidth(0.6pt)+dashed);

// --- OP line (dashed) ---
draw(O--P, gray+linewidth(0.6pt)+dashed);

// --- tangents PA, PB ---
draw(P--A, blue20+linewidth(.5pt));
draw(P--B, blue20+linewidth(.5pt));

// --- chord of contact AB ---
draw(A--B, red10+linewidth(.5pt)+dashed);

// --- right-angle marks at A and B ---
real ux =  cx/r;
real uy =  cy/r;
real vx = -cy/r;
real vy =  cx/r;
real s  = 0.12;

// right angle at A
pair ra1 = (A.x + s*vx,        A.y + s*vy);
pair ra2 = (A.x + s*vx - s*ux, A.y + s*vy - s*uy);
pair ra3 = (A.x        - s*ux, A.y        - s*uy);
draw(ra1--ra2--ra3, black+linewidth(0.6pt));

// right angle at B
real wx =  cy/r;
real wy =  cx/r;
real bx =  cx/r;
real by = -cy/r;
pair rb1 = (B.x + s*wx,        B.y + s*wy);
pair rb2 = (B.x + s*wx - s*bx, B.y + s*wy - s*by);
pair rb3 = (B.x        - s*bx, B.y        - s*by);
draw(rb1--rb2--rb3, black+linewidth(0.6pt));

// --- key points ---
filldraw(circle(P, 0.07), blue20, nullpen);
filldraw(circle(A, 0.07), red10,  nullpen);
filldraw(circle(B, 0.07), red10,  nullpen);

// --- labels ---
label(Label("$P(h,k)$", fontsize(10pt)), (P.x+0.15, P.y+0.22));
label(Label("$\mathbf{A}$", fontsize(10pt)), (A.x+0.18, A.y+0.18));
label(Label("$\mathbf{B}$", fontsize(10pt)), (B.x+0.18, B.y-0.18));

// radius "a" along OA
label(Label("$a$", fontsize(9pt)), (cx*0.45-0.22, cy*0.45+0.12));

// circle equation
label(Label("$x^2+y^2=a^2$", fontsize(9pt)), (-1.9, 2.35));
