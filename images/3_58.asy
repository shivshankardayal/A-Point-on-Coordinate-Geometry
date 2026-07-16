settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

pair O = (0,0);
pair V = (2,3);
pair A = (-53/41, 138/41);
pair B = (-3,-2);
pair M1 = (29/82, 261/82);   // midpoint of VA
pair M2 = (-0.5, 0.5);       // midpoint of VB

pen purple = rgb(83/255,74/255,183/255);   // #534AB7
pen green  = rgb(15/255,110/255,86/255);   // #0F6E56
pen navy   = rgb(38/255,33/255,92/255);    // #26215C

// --- grid ---
pen gridpen = gray(0.5)+linewidth(0.3pt);
for (int i=-4; i<=4; ++i) {
    draw((i,-3)--(i,5), gridpen);
    draw((-4,i)--(5,i), gridpen);
}

// --- axes ---
pen axispen = black+linewidth(0.8pt);
draw((-4,0)--(4.5,0), axispen, Arrow);
draw((0,-3)--(0,4.5), axispen, Arrow);

// axis labels
label("$x$", (4.6,0), E);
label("$y$", (0,4.7), N);

// tick labels on x-axis
for (int i=-3; i<=3; ++i) {
    if (i != 0) label(string(i), (i,-0.25), S, fontsize(7pt));
}
// tick labels on y-axis
for (int i=-2; i<=4; ++i) {
    if (i != 0) label(string(i), (-0.25,i), W, fontsize(7pt));
}
label("0", (-0.2,-0.2), SW, fontsize(7pt));

// --- triangle ---
draw(V--A--B--cycle, black+linewidth(0.5pt));

// --- perpendicular bisector y = 9x ---
draw((-0.1,-0.9)--(0.46,4.14), purple+linewidth(1.2pt)+dashed, Arrow);
label("$y = 9x$", (0.5,4.3), E, purple+fontsize(8pt));

// --- perpendicular bisector y = -x ---
draw((-3,3)--(2.5,-2.5), green+linewidth(1.2pt)+dashed, Arrow);
label("$y = -x$", (2.6,-2.6), SW, green+fontsize(8pt));

// --- right-angle mark at M1 ---
real s = 0.12;
pair uva  = (-0.9938, 0.1104);
pair uperp = (0.1104, 0.9938);
real m1x = 29/82, m1y = 261/82;
pair p1 = (m1x, m1y);
pair p2 = p1 + s*uva;
pair p3 = p1 + s*uva + s*uperp;
pair p4 = p1 + s*uperp;
draw(p1--p2--p3--p4--cycle, purple+linewidth(0.7pt));

// --- right-angle mark at M2 ---
pair uvb    = (-0.7071, -0.7071);
pair uperp2 = ( 0.7071, -0.7071);
real m2x = -0.5, m2y = 0.5;
pair q1 = (m2x, m2y);
pair q2 = q1 + s*uvb;
pair q3 = q1 + s*uvb + s*uperp2;
pair q4 = q1 + s*uperp2;
draw(q1--q2--q3--q4--cycle, green+linewidth(0.7pt));

// --- midpoint dots ---
filldraw(circle(M1, 0.06), purple, purple);
filldraw(circle(M2, 0.06), green, green);

// midpoint labels
label("$M_1$", (29/82 + 0.12, 261/82 + 0.08), E, purple+fontsize(7.5pt));
label("$M_2$", (-0.5 + 0.12, 0.5 + 0.05), E, green+fontsize(7.5pt));

// --- vertex dots ---
filldraw(circle(V, 0.03), navy, navy);
filldraw(circle(A, 0.03), navy, navy);
filldraw(circle(B, 0.03), navy, navy);

// --- vertex labels ---
label("$A$", (2.12, 3.1), E, navy+fontsize(8pt));
label("$C$", (-53/41 - 0.1, 138/41 + 0.1), W, navy+fontsize(8pt));
label("$B$", (-3 - 0.1, -2 - 0.1), SW, navy+fontsize(8pt));
