settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));
// ─────────────────────────────────────────────────────────────────
// Concrete example: f=1, g=1 → P=(1,1) — converted from CeTZ to Asymptote
// ─────────────────────────────────────────────────────────────────
unitsize(1cm); // matches cetz.canvas(length: 1cm, ...)

// V   = (-2.25, 0)  [on locus circle]
// A   = reflection of V in y=9x   ≈ (2.195, -0.494)
// B   = reflection of V in y=-x   =  (0,  2.25)
// M1  = midpoint VA ≈ (-0.028, -0.247)
// M2  = midpoint VB =  (-1.125,  1.125)
// Circumcircle: center O=(0,0), R=2.25
// Locus circle: 4(x²+y²)+9x-y=0, center(-9/8, 1/8), r=√82/8

pair O  = (0, 0);
pair V  = (-2.25, 0);
pair A  = (2.195, -0.494);
pair B  = (0, 2.25);
pair P  = (1, 1);
pair M1 = (-0.028, -0.247);
pair M2 = (-1.125, 1.125);

// ── custom colors (approximating cetz's lighten/darken) ─────────
pen grayLight20  = 0.8*gray  + 0.2*white;
pen grayLight10  = 0.9*gray  + 0.1*white;
pen grayLight30  = 0.7*gray  + 0.3*white;
pen blueDark10   = 0.9*blue  + 0.1*black;
pen greenDark30  = 0.7*green + 0.3*black;
pen redDark10    = 0.9*red   + 0.1*black;
pen purpleP      = 0.5*blue  + 0.5*red;      // stand-in for "purple"
pen purpleDark20 = 0.8*purpleP + 0.2*black;
pen orangeDark20 = 0.8*orange + 0.2*black;

// ── Axes ──────────────────────────────────────────────────────────
pen axispen = grayLight20 + linewidth(0.3pt);
draw((-3.2, 0)--(3.2, 0), axispen, Arrow(4));
draw((0, -2.0)--(0, 3.5), axispen, Arrow(4));
label(scale(0.75)*"$x$", (3.4, 0), E);
label(scale(0.75)*"$y$", (0.1, 3.6), NE);
label(scale(0.65)*"$O$", (-0.12, -0.12), SW);

// tick marks
pen tickpen = linewidth(0.3pt) + gray;
real[] ticks = {-2, -1, 1, 2};
for (int i = 0; i < ticks.length; ++i) {
    real v = ticks[i];
    draw((v, -0.06)--(v, 0.06), tickpen);
    label(scale(0.55)*(string)v, (v, -0.15), S);
    draw((-0.06, v)--(0.06, v), tickpen);
    label(scale(0.55)*(string)v, (-0.15, v), W);
}

// ── Perpendicular bisector lines (extended, dashed) ───────────────
// y = 9x  (nearly vertical)
draw((-0.33, -3.0)--(0.37, 3.3), blueDark10 + linewidth(0.6pt) + linetype("4 2"));
label(scale(0.6)*"$y = 9x$", (0.42, 3.4), E, blueDark10);

// y = -x  (135°)
draw((-3.0, 3.0)--(2.5, -2.5), greenDark30 + linewidth(0.6pt) + linetype("4 2"));
label(scale(0.6)*"$y = -x$", (-3.2, 3.0), W, greenDark30);

// ── Circumcircle: center O, R=2.25 ───────────────────────────────
draw(circle(O, 2.25), grayLight10 + linewidth(0.5pt) + linetype("3 3"));

// ── Locus circle: center=(-9/8, 1/8), r=√82/8 ────────────────────
draw(circle((-1.125, 0.125), sqrt(82)/8), redDark10 + linewidth(0.9pt) + linetype("5 3"));

// ── Triangle sides ───────────────────────────────────────────────
pen trianglepen = purpleDark20 + linewidth(1.0pt);
draw(V--A, trianglepen);
draw(V--B, trianglepen);
draw(A--B, trianglepen);

// ── Right-angle marks at midpoints ───────────────────────────────
pen markpen = orangeDark20 + linewidth(0.5pt);
real sq = 0.12;

// M1 square (axis-aligned, as in the original)
draw((M1.x - sq/2, M1.y - sq/2)--(M1.x + sq/2, M1.y - sq/2)
    --(M1.x + sq/2, M1.y + sq/2)--(M1.x - sq/2, M1.y + sq/2)--cycle, markpen);

// M2 square (rotated 45°, since VB direction is 45°)
real diag = sq*sqrt(2)/2;
draw((M2.x, M2.y - diag)--(M2.x + diag, M2.y)
    --(M2.x, M2.y + diag)--(M2.x - diag, M2.y)--cycle, markpen);

// ── Perpendicular bisector segments through midpoints ────────────
// Through M1 along y=9x direction (1,9)/√82, length 0.5
real d1 = 0.5/sqrt(82);
draw((M1.x - d1, M1.y - 9*d1)--(M1.x + d1, M1.y + 9*d1),
    blueDark10 + linewidth(0.7pt));

// Through M2 along y=-x direction (1,-1)/√2, length 0.5
real d2 = 0.5/sqrt(2);
draw((M2.x - d2, M2.y + d2)--(M2.x + d2, M2.y - d2),
    greenDark30 + linewidth(0.7pt));

// ── Radii OV, OA, OB (thin dotted) ──────────────────────────────
pen radiuspen = grayLight30 + linewidth(0.3pt) + linetype("2 2");
draw(O--V, radiuspen);
draw(O--A, radiuspen);
draw(O--B, radiuspen);

// ── Dots and labels ──────────────────────────────────────────────
real dotr = 0.07;

filldraw(circle(V, dotr), purpleDark20, nullpen);
label("$\mathbf{V}$", V, W, purpleDark20);

filldraw(circle(A, dotr), purpleDark20, nullpen);
label("$\mathbf{A}$", A, SE, purpleDark20);

filldraw(circle(B, dotr), purpleDark20, nullpen);
label("$\mathbf{B}$", B, NE, purpleDark20);

filldraw(circle(P, dotr), redDark10, nullpen);
label(scale(0.6)*"$\mathbf{P}(f, g)$", P, SW, redDark10);

filldraw(circle(M1, dotr), orangeDark20, nullpen);
label(scale(0.6)*"$M_1$", M1, N, orangeDark20);

filldraw(circle(M2, dotr), orangeDark20, nullpen);
label(scale(0.6)*"$M_2$", M2, E, orangeDark20);

filldraw(circle(O, dotr), gray, nullpen);
