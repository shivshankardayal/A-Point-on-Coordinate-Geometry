settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(6cm);

pen gray20 = gray(0.65);   // gray.darken(20%)
pen gray30 = gray(0.55);   // gray.darken(30%)
pen gray40 = gray(0.45);   // gray.darken(40%)
pen blue10 = rgb(0.0, 0.0, 0.75);   // blue.darken(10%)
pen red10  = rgb(0.75, 0.0, 0.0);   // red.darken(10%)
pen red20  = rgb(0.65, 0.0, 0.0);   // red.darken(20%)

// --- Parameters ---
pair C = (0,0);
real r = 2.0;

real theta = 30*pi/180;

real Px = r*cos(theta);
real Py = r*sin(theta);

// Tangent at P: Px*x + Py*y = r^2
// Intersection with y = +r (top tangent)
real Ax = r*(r - Py)/Px;
real Ay = r;

// Intersection with y = -r (bottom tangent)
real Bx = r*(r + Py)/Px;
real By = -r;

pair A = (Ax, Ay);
pair B = (Bx, By);

pair T_top    = (0,  r);
pair T_bottom = (0, -r);
pair P        = (Px, Py);

// --- Extend tangent lines for drawing ---
real top_x1 = -r - 1.0;
real top_x2 = Ax + 0.8;

real bot_x1 = -r - 1.0;
real bot_x2 = Bx + 0.8;

real third_x1 = Ax - 0.2;
real third_y1 = Ay + 0.2;
real third_x2 = Bx + 0.2;
real third_y2 = By - 0.2;

// -------------------------------------------------------
// DRAWING
// -------------------------------------------------------

// Circle
draw(circle(C, r), gray20+linewidth(0.5pt));

// --- Two parallel tangents (gray dashed) ---
draw((top_x1, r)--(top_x2, r), gray30+linewidth(0.5pt)+dashed);
draw((bot_x1,-r)--(bot_x2,-r), gray30+linewidth(0.5pt)+dashed);

// --- Third tangent line (solid, blue) ---
draw((Ax,Ay)--(Bx,By), blue10+linewidth(.5pt));

// --- Radii to the three touch points (dashed gray) ---
draw(C--T_top,    gray+linewidth(0.7pt)+dashed);
draw(C--T_bottom, gray+linewidth(0.7pt)+dashed);
draw(C--P,        gray+linewidth(0.7pt)+dashed);

// --- Lines CA and CB (angle to prove = 90 deg) ---
draw(C--A, red10+linewidth(.5pt));
draw(C--B, red10+linewidth(.5pt));

// --- Right-angle mark at C for angle ACB ---
real CA_len = sqrt(Ax*Ax + Ay*Ay);
real ca_ux = Ax/CA_len;
real ca_uy = Ay/CA_len;

real CB_len = sqrt(Bx*Bx + By*By);
real cb_ux = Bx/CB_len;
real cb_uy = By/CB_len;

real sq = 0.22;
pair sq1 = (sq*ca_ux,            sq*ca_uy);
pair sq2 = (sq*ca_ux + sq*cb_ux, sq*ca_uy + sq*cb_uy);
pair sq3 = (sq*cb_ux,            sq*cb_uy);

draw(sq1--sq2, black+linewidth(0.5pt));
draw(sq2--sq3, black+linewidth(0.5pt));

// --- Right-angle marks at A and B (tangent perp radius) ---
draw((-0.14, r-0.14)--(0.0, r-0.14)--(0.0, r)--(-0.14, r), gray20+linewidth(0.5pt));
draw((-0.14,-r)--(0.0,-r)--(0.0,-r+0.14)--(-0.14,-r+0.14), gray20+linewidth(0.5pt));

// --- At P: right angle between CP and third tangent ---
real cp_ux = Px/r;
real cp_uy = Py/r;
real tp_ux = -cp_uy;
real tp_uy =  cp_ux;
real ss = 0.16;
pair rp1 = (Px + ss*cp_ux,             Py + ss*cp_uy);
pair rp2 = (Px + ss*cp_ux + ss*tp_ux,  Py + ss*cp_uy + ss*tp_uy);
pair rp3 = (Px + ss*tp_ux,             Py + ss*tp_uy);

markrightangle((Ax, Ay), (Px, Py), C);
//draw(rp1--rp2, gray20+linewidth(0.5pt));
//draw(rp2--rp3, gray20+linewidth(0.5pt));

// --- Touch-point dots ---
filldraw(circle(T_top,    0.055), gray40, nullpen);
filldraw(circle(T_bottom, 0.055), gray40, nullpen);
filldraw(circle(P,        0.055), gray40, nullpen);

// --- Main points A, B, C ---
filldraw(circle(A, 0.08), black, nullpen);
filldraw(circle(B, 0.08), black, nullpen);
filldraw(circle(C, 0.08), black, nullpen);

// --- Labels ---
label("$\mathbf{A}$", A, N);
label("$\mathbf{B}$", B, S);
label("$\mathbf{C}$", C, E);

// Touch point labels (small, gray)
label(Label("$T_1$", fontsize(8pt)), T_top,    E, gray40);
label(Label("$T_2$", fontsize(8pt)), T_bottom, E, gray40);
label(Label("$P$",   fontsize(8pt)), P,        E, gray40);

// --- Angle label at C, along bisector of CA, CB ---
real bis_x = ca_ux + cb_ux;
real bis_y = ca_uy + cb_uy;
real bis_len = sqrt(bis_x*bis_x + bis_y*bis_y);
real label_dist = 0.72;

label(Label("$\angle ACB = 90^\circ$", fontsize(8.5pt)),
      (label_dist*bis_x/bis_len, label_dist*bis_y/bis_len), E, red20);
