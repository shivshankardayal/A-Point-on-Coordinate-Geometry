settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(8cm);

// Three circles (I: r=5, II: r=3, III: r=4) with common tangents
// Two vertically-stacked configurations — cetz -> Asymptote conversion
defaultpen(linewidth(0.5pt)+fontsize(9pt));

real sc = 0.52;

// helper mirroring cetz's s(x,y) — only x*sc or y*sc+v is ever used
pair S(real x, real y, real v){ return (x*sc, y*sc + v); }

// --- Approximate "darken" shades with explicit pens ---
pen gray20 = gray(0.65);
pen gray30 = gray(0.55);
pen gray40 = gray(0.45);

pen blue10 = rgb(0.00,0.00,0.75);
pen blue20 = rgb(0.00,0.00,0.65);
pen blue30 = rgb(0.00,0.00,0.55);

pen red10  = rgb(0.75,0.00,0.00);
pen red20  = rgb(0.65,0.00,0.00);
pen red30  = rgb(0.55,0.00,0.00);

pen olive20 = rgb(0.45,0.45,0.00);
pen olive40 = rgb(0.35,0.35,0.00);

pen eastern10 = rgb(0.00,0.45,0.85);
pen eastern30 = rgb(0.00,0.35,0.70);
pen eastern40 = rgb(0.00,0.30,0.60);

pen purple    = rgb(0.55,0.00,0.55);
pen purple10  = rgb(0.50,0.00,0.50);
pen purple20  = rgb(0.45,0.00,0.45);

// ================================================================
// GEOMETRY
// ================================================================
real R  = 5.0;
real r2 = 3.0;
real r3 = 4.0;

real sqrt55 = sqrt(55.0);   // Bx ~ 7.416
real sqrt65 = sqrt(65.0);   // Cx ~ 8.062
real u = sqrt65 - sqrt55;   // ~ 0.6465

// --- Position 1 tangent 2 ---
real S1x = 4.0*sqrt55 - 3.0*sqrt65;   // ~ 5.478
real m1  = 2.0*u / (u*u - 1.0);       // ~ -2.221

// --- Position 2 quantities ---
real S2x = 4.0*sqrt55 - 3.0*sqrt65;   // ~ 5.478
real S2y = 24.0;

real u2 = u*u;
real qa = u2 - 1.0;
real qb = 14.0*u;
real qc = 48.0;
real disc = qb*qb - 4.0*qa*qc;
real ma = (-qb + sqrt(disc)) / (2.0*qa);   // ~ -4.18
real mb = (-qb - sqrt(disc)) / (2.0*qa);   // ~ 19.73

real Tx = (4.0*sqrt55 + 3.0*sqrt65) / 7.0;   // ~ 7.693
real m_int = u / 7.0;                         // ~ 0.0924

// ================================================================
// DRAWING
// ================================================================
real x_min = -6.0;
real x_max = 11.5;
real gap   = 10.5*sc;

// ================= POSITION 1 (both circles above x-axis) =================
real v1 = gap/2.0;

// Axes
draw(S(x_min,0.0,v1)--S(x_max,0.0,v1), gray20, Arrow);
draw(S(0.0,-0.5,v1)--S(0.0,6.5,v1),    gray20, Arrow);
label(scale(0.75)*Label("$x$"), S(x_max+0.3,0.0,v1), E);
label(scale(0.75)*Label("$y$"), S(0.0,6.7,v1), N);

// Circle I
draw(circle(S(0.0,0.0,v1), R*sc), gray30);
// Circle II pos1
draw(circle(S(sqrt55,3.0,v1), r2*sc), blue10);
// Circle III pos1
draw(circle(S(sqrt65,4.0,v1), r3*sc), red10);

// Dotted radii to x-axis
draw(S(sqrt55,0.0,v1)--S(sqrt55,3.0,v1), blue+linewidth(0.55pt)+linetype("2 2"));
draw(S(sqrt65,0.0,v1)--S(sqrt65,4.0,v1), red +linewidth(0.55pt)+linetype("2 2"));
draw(S(0.0,0.0,v1)--S(0.0,R,v1),         gray+linewidth(0.55pt)+linetype("2 2"));

// Right-angle marks at x-axis
draw(S(sqrt55,0.0,v1)--(S(sqrt55,0.0,v1).x+0.10, S(sqrt55,0.0,v1).y)
     --(S(sqrt55,0.0,v1).x+0.10, S(sqrt55,0.0,v1).y+0.10)
     --(S(sqrt55,0.0,v1).x, S(sqrt55,0.0,v1).y+0.10), blue10+linewidth(0.55pt));
draw(S(sqrt65,0.0,v1)--(S(sqrt65,0.0,v1).x+0.10, S(sqrt65,0.0,v1).y)
     --(S(sqrt65,0.0,v1).x+0.10, S(sqrt65,0.0,v1).y+0.10)
     --(S(sqrt65,0.0,v1).x, S(sqrt65,0.0,v1).y+0.10), red10+linewidth(0.55pt));

// Common tangent 1: y = 0
draw(S(x_min,0.0,v1)--S(x_max,0.0,v1), olive20+linewidth(0.5pt)+dashed);

// Common tangent 2 pos1: y = m1*(x - S1x)
real t2p1_y(real x){ return m1*(x - S1x); }
draw(S(2,0.0,v1) -- (S(2,0.0,v1).x, S(0.0,t2p1_y(2),v1).y) -- cycle, invisible); // placeholder no-op removed below
draw((S(2.0,0.0,v1).x, S(0.0,t2p1_y(2.0),v1).y) -- (S(5.5,0.0,v1).x, S(0.0,t2p1_y(5.5),v1).y),
     eastern10+linewidth(0.5pt)+dashed);

// Centre of similitude S1
filldraw(circle(S(S1x,0.0,v1), 0.07), olive40, nullpen);

// Dotted construction lines A-B, A-C
draw(S(0.0,0.0,v1)--S(sqrt55,3.0,v1), gray+linewidth(0.5pt)+linetype("2 2"));
draw(S(0.0,0.0,v1)--S(sqrt65,4.0,v1), gray+linewidth(0.5pt)+linetype("2 2"));

// Labels pos1
label(scale(0.85)*Label("$\mathbf{A}$"), S(0.0,0.0,v1), SW);
label(scale(0.85)*Label("$\mathbf{B}$"), S(sqrt55,3.0,v1), NW, blue20);
label(scale(0.85)*Label("$\mathbf{C}$"), S(sqrt65,4.0,v1), NE, red20);
label(scale(0.75)*Label("$\mathbf{S}$"), S(S1x,0.0,v1), S);

// Circle labels
label(scale(0.75)*Label("I ($r$=5)"), S(-3.8,3.2,v1), W, gray40);
label(scale(0.75)*Label("II ($r$=3)"), S(sqrt55+r2+0.1,3.0,v1), E, blue30);
label(scale(0.75)*Label("III ($r$=4)"), S(sqrt65+r3+0.1,4.0,v1), E, red30);

// Tangent labels
label(scale(0.7)*Label("$t_1:y=0$"), S(x_max+0.1,0.18,v1), E, olive40);
label(scale(0.7)*Label("$t_2$"), (S(9.0,0.0,v1).x, S(0.0,t2p1_y(9.0)-0.3,v1).y), S, eastern40);

// ================= POSITION 2 (II above, III below — externally tangent) =================
real v2 = -gap/2.0;

// Axes
draw(S(x_min,0.0,v2)--S(x_max,0.0,v2), gray20+linewidth(0.5pt), Arrow);
draw(S(0.0,-5.5,v2)--S(0.0,6.5,v2),    gray20+linewidth(0.5pt), Arrow);
label(scale(0.75)*Label("$x$"), S(x_max+0.3,0.0,v2), E);
label(scale(0.75)*Label("$y$"), S(0.0,6.7,v2), N);

// Circle I
draw(circle(S(0.0,0.0,v2), R*sc), gray30+linewidth(.5pt));
// Circle II pos2
draw(circle(S(sqrt55,3.0,v2), r2*sc), blue10+linewidth(.5pt));
// Circle III pos2
draw(circle(S(sqrt65,-4.0,v2), r3*sc), red10+linewidth(.5pt));

// Dotted radii to x-axis
draw(S(sqrt55,0.0,v2)--S(sqrt55,3.0,v2),  blue+linewidth(0.55pt)+linetype("2 2"));
draw(S(sqrt65,0.0,v2)--S(sqrt65,-4.0,v2), red +linewidth(0.55pt)+linetype("2 2"));
draw(S(0.0,0.0,v2)--S(0.0,R,v2),          gray+linewidth(0.55pt)+linetype("2 2"));

// Right-angle marks at x-axis touch
draw(S(sqrt55,0.0,v2)--(S(sqrt55,0.0,v2).x+0.10, S(sqrt55,0.0,v2).y)
     --(S(sqrt55,0.0,v2).x+0.10, S(sqrt55,0.0,v2).y+0.10)
     --(S(sqrt55,0.0,v2).x, S(sqrt55,0.0,v2).y+0.10), blue10+linewidth(0.55pt));
draw(S(sqrt65,0.0,v2)--(S(sqrt65,0.0,v2).x+0.10, S(sqrt65,0.0,v2).y)
     --(S(sqrt65,0.0,v2).x+0.10, S(sqrt65,0.0,v2).y-0.10)
     --(S(sqrt65,0.0,v2).x, S(sqrt65,0.0,v2).y-0.10), red10+linewidth(0.55pt));

// Point of tangency T between II and III
real Ty = 0.0;
filldraw(circle(S(Tx,Ty,v2), 0.07), purple, nullpen);
label(scale(0.75)*Label("$\mathbf{T}$"), S(Tx,Ty,v2), S, purple20);

// Construction line B to C2
draw(S(sqrt55,3.0,v2)--S(sqrt65,-4.0,v2), gray+linewidth(0.5pt)+linetype("2 2"));

// Common tangent 1: y = 0
draw(S(x_min,0.0,v2)--S(x_max,0.0,v2), olive20+linewidth(1.5pt)+dashed);

// Internal tangent at T
real t_int_y(real x){ return m_int*(x - Tx); }
real x_int_l = Tx - 2.5;
real x_int_r = Tx + 2.5;
draw((S(x_int_l,0.0,v2).x, S(0.0,t_int_y(x_int_l),v2).y)
     --(S(x_int_r,0.0,v2).x, S(0.0,t_int_y(x_int_r),v2).y),
     purple10+linewidth(.5pt)+dashed);

// External tangent a
real tea_x1 = (6.5  - S2y)/ma + S2x;
real tea_x2 = (-5.0 - S2y)/ma + S2x;
draw((S(tea_x1,0.0,v2).x, S(0.0,6.5,v2).y)--(S(tea_x2,0.0,v2).x, S(0.0,-5.0,v2).y),
     eastern10+linewidth(.5pt)+dashed);

// External tangent b
real teb_x1 = (6.5  - S2y)/mb + S2x;
real teb_x2 = (-5.0 - S2y)/mb + S2x;
draw((S(teb_x1,0.0,v2).x, S(0.0,6.5,v2).y)--(S(teb_x2,0.0,v2).x, S(0.0,-5.0,v2).y),
     eastern10+linewidth(.5pt)+dashed);

// External centre of similitude S2 — mark its foot on the x-axis
filldraw(circle(S(S2x,0.0,v2), 0.065), eastern30, nullpen);
label(scale(0.75)*Label("$\mathbf{S}$"), S(S2x,0.0,v2), S, eastern30);

// A, B, C labels pos2
label(scale(0.85)*Label("$\mathbf{A}$"), S(0.0,0.0,v2), SW);
label(scale(0.85)*Label("$\mathbf{B}$"), S(sqrt55,3.0,v2), NW, blue20);
label(scale(0.85)*Label("$\mathbf{C}$"), S(sqrt65,-4.0,v2), SE, red20);
