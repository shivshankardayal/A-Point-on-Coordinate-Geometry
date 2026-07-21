settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(6cm);

unitsize(2cm);

// Vertices
pair A = (1.5, 0.5);
pair B = (0, 0);
pair C = (-2.0/9, -4.0/9);
pair D = (42.0/17, -19.0/17);

// -- Axes --------------------------------------------------
draw((-1.5,0)--(3.2,0), Arrow(4));
draw((0,-1.8)--(0,1.2), Arrow(4));
label("$x$", (3.2,0), E);
label("$y$", (0,1.2), N);
label("$O$", (0,0), SW);

// Tick marks on x-axis
int[] xt = {-1, 1, 2, 3};
for (int k = 0; k < xt.length; ++k) {
    int i = xt[k];
    draw((i,-0.05)--(i,0.05));
    label(string(i), (i,-0.05), S, fontsize(6pt));
}
// Tick marks on y-axis
int[] yt = {-1, 1};
for (int k = 0; k < yt.length; ++k) {
    int j = yt[k];
    draw((-0.05,j)--(0.05,j));
    label(string(j), (-0.05,j), W, fontsize(6pt));
}

// -- Four Lines --------------------------------------------
// L1: 5x + 3y = 9
draw((1,4.0/3)--(3.0,-2.0), linewidth(1pt));
label("$L_1$", (3.0,-2.0), SE, fontsize(8pt));

// L2: x = 3y
draw((-0.9,-0.3)--(2.1,0.7), linewidth(1pt));
label("$L_2$", (2.1,0.7), NE, fontsize(8pt));

// L3: y = 2x
draw((-0.55,-1.1)--(0.55,1.1), linewidth(1pt));
label("$L_3$", (0.55,1.1), N, fontsize(8pt));

// L4: x + 4y + 2 = 0
draw((-1.1,-0.225)--(3.0,-1.25), linewidth(1pt));
label("$L_4$", (3.0,-1.25), S, fontsize(8pt));

// -- Circle: 9x^2+9y^2-20x+15y=0 -----------------------------
// centre = (10/9, -5/6), radius = 25/18
pair centre = (10.0/9, -5.0/6);
real rad = 25.0/18;
draw(circle(centre, rad), dashed+linewidth(1.2pt));

// -- Quadrilateral ABCD ------------------------------------
draw(A--B--C--D--cycle, dotted+linewidth(0.8pt));

// -- Vertices ----------------------------------------------
filldraw(circle(A, 0.035), black);
label("$A(3/2,\ 1/2)$", A, NE, fontsize(7pt));

filldraw(circle(B, 0.035), black);
label("$B(0,\ 0)$", B, SW, fontsize(7pt));

filldraw(circle(C, 0.035), black);
label("$C(-2/9,\ -4/9)$", C, SW, fontsize(7pt));

filldraw(circle(D, 0.035), black);
label("$D(42/17,\ -19/17)$", D, SE, fontsize(7pt));

// -- Circle centre -----------------------------------------
filldraw(circle(centre, 0.025), black);
label("centre", centre, S, fontsize(7pt));
