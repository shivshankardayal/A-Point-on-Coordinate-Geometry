settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

unitsize(16cm); // 1 unit = 16cm, matching cetz.canvas(length: 16cm, ...)

// ── coordinate helpers ──────────────────────────────────────────
pair O = (0, 0);
pair A = (1/9, 2/9);     // y = 2x   ∩  5x + 2y = 1
pair B = (1/6, 1/12);    // y = x/2  ∩  5x + 2y = 1
pair C = (5/18, 11/36);  // fourth vertex

// ── custom colors (approximating cetz's lighten/darken) ─────────
pen lightblue   = 0.7*blue   + 0.3*white;
pen darkblue    = 0.7*blue   + 0.3*black;
pen darkorange  = 0.8*orange + 0.2*black;
pen darkgreen1  = 0.8*green  + 0.2*black; // darken(20%)
pen darkgreen2  = 0.7*green  + 0.3*black; // darken(30%)

// ── axes ──────────────────────────────────────────────────────────
pen axispen = gray + linewidth(0.4pt);
draw((-0.05, 0)--(0.42, 0), axispen, Arrow(6));
draw((0, -0.05)--(0, 0.40), axispen, Arrow(6));
label("$x$", (0.44, 0), E);
label("$y$", (0, 0.43), N);

// tick marks
pen tickpen = linewidth(0.3pt);
real[] ticks = {0.1, 0.2, 0.3};
for (int i = 0; i < ticks.length; ++i) {
    real v = ticks[i];
    draw((v, -0.006)--(v, 0.006), tickpen);
    label(scale(0.6)*(string)v, (v, -0.018), S);
    draw((-0.006, v)--(0.006, v), tickpen);
    label(scale(0.6)*(string)v, (-0.018, v), W);
}

// ── extended side lines (dashed, light blue) ─────────────────────
draw((0, 0)--(0.18, 0.36), lightblue + linewidth(0.6pt) + linetype("4 2")); // y = 2x
draw((0, 0)--(0.38, 0.19), lightblue + linewidth(0.6pt) + linetype("4 2")); // y = x/2

// ── extended diagonals (dashed) ───────────────────────────────────
// given diagonal 5x + 2y = 1
draw((0.10, 0.25)--(0.22, -0.05), darkorange + linewidth(0.6pt) + linetype("4 2"));
// found diagonal 11x - 10y = 0  (y = 1.1x)
draw((0, 0)--(0.32, 0.352), darkgreen1 + linewidth(0.6pt) + linetype("4 2"));

// ── parallelogram sides (solid, dark blue) ────────────────────────
draw(O--A, darkblue + linewidth(1.2pt)); // OA — side on y = 2x
draw(O--B, darkblue + linewidth(1.2pt)); // OB — side on y = x/2
draw(A--C, darkblue + linewidth(1.2pt)); // AC — parallel to OB
draw(B--C, darkblue + linewidth(1.2pt)); // BC — parallel to OA

// ── given diagonal A→B (orange, arrowed) ──────────────────────────
draw(A--B, darkorange + linewidth(1pt), Arrow(6));

// ── found diagonal O→C (green, arrowed) ───────────────────────────
draw(O--C, darkgreen2 + linewidth(1pt), Arrow(6));

// ── midpoint M ─────────────────────────────────────────────────────
pair M = (A + B) / 2;
filldraw(circle(M, 0.006), orange, nullpen);
label(scale(0.6)*"$M$", M + (0.014, 0), E);

// ── vertex dots and labels ──────────────────────────────────────────
filldraw(circle(O, 0.008), darkblue, nullpen);
label(scale(0.6)*"$\mathbf{O}(0,0)$", O, NE);

filldraw(circle(A, 0.008), darkblue, nullpen);
label(scale(0.6)*"$\mathbf{A}(1/9,2/9)$", A, SE);

filldraw(circle(B, 0.008), darkblue, nullpen);
label(scale(0.6)*"$\mathbf{B}(1/6,1/12)$", B, NW);

filldraw(circle(C, 0.008), darkblue, nullpen);
label(scale(0.6)*"$\mathbf{C}(5/18,11/36)$", C, SW);
