settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(6cm);

pen blk = black;
real pi1 = pi;

// --- Axes ---
draw((-0.4,0)--(40.5,0), blk, Arrow(6bp));
draw((0,-0.4)--(0,12.5), blk, Arrow(6bp));
label("$x$", (40.5,0), E);
label("$y$", (0,12.5), N);
label("$O$", (0,0), SW);

// --- Tick marks and labels ---
for (int i = 1; i < 40; ++i) {
    draw((i,-0.08)--(i,0.08), blk);
    if (i % 5 == 0) {
        label(string(i), (i,0), S);
    }
}
draw((-0.08,5)--(0.08,5), blk);
label("$5$", (0,5), W);

// --- Original circle: center (5,5), radius 5 ---
draw(circle((5,5), 5), blk);

// Radii spokes (to hint at rotation)
draw((5,5)--(5,0), blk+dashed+linewidth(0.5bp));
draw((5,5)--(6.8,9.0), blk+dashed+linewidth(0.5bp));

// Center and label
dot((5,5), blk+linewidth(4bp));
label("$C_1(5,5)$", (5,5), SE);

// Tangency points
dot((5,0), blk+linewidth(4bp));
dot((0,5), blk+linewidth(4bp));

// Radius label
label("$r=5$", (3.8,2.3));

// --- New circle: center (5+10*pi, 5), radius 5 ---
real cx2 = 5 + 10*pi1;  // ~ 36.42
draw(circle((cx2,5), 5), blk);

// Radii spokes
draw((cx2,5)--(cx2,0), blk+dashed+linewidth(0.5bp));
draw((cx2,5)--(cx2+1.8,9.0), blk+dashed+linewidth(0.5bp));

// Center and label
dot((cx2,5), blk+linewidth(4bp));
label("$C_2(5 + 10\pi, 5)$", (cx2,5), SW);

// Tangency point on x-axis
dot((cx2,0), blk+linewidth(4bp));

// Radius label
label("$r=5$", (cx2-1.2,2.3));

// --- Dashed path of center ---
draw((5,5)--(cx2,5), blk+dashed+linewidth(0.7bp));
