settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(5cm);

// -- Everything in black --
pen blk = black;

// --- Axes ---
draw((-0.3,0)--(9,0), blk, Arrow(6bp));
draw((0,-0.3)--(0,8), blk, Arrow(6bp));
label("$x$", (9,0), E);
label("$y$", (0,8), N);
label("$O$", (0,0), SW);

// --- Tick marks and labels (x-axis) ---
for (int i = 1; i < 9; ++i) {
    draw((i,-0.08)--(i,0.08), blk);
    label(string(i), (i,0), S);
}

// --- Tick marks and labels (y-axis) ---
for (int j = 1; j < 8; ++j) {
    draw((-0.08,j)--(0.08,j), blk);
    label(string(j), (0,j), W);
}

// --- Circle 1: center (2,2), radius 2 ---
draw(circle((2,2), 2), blk);
dot((2,2), blk+linewidth(4bp));
label("$C_1(2,2)$", (2,2), NE);

// Tangency points on axes
dot((2,0), blk+linewidth(4bp));
dot((0,2), blk+linewidth(4bp));

// Radius label for Circle 1
label("$r_1 = 2$", (0.9,2.3));

// --- Circle 2: center (6,5), radius 3 ---
draw(circle((6,5), 3), blk);
dot((6,5), blk+linewidth(4bp));
label("$C_2(6,5)$", (6,5), SW);

// Radius label for Circle 2
label("$r_2 = 3$", (4.8,3.5));

// --- Line joining centers ---
draw((2,2)--(6,5), blk+dashed+linewidth(0.6bp));

// Distance label
label("$d = 5$", (4,3.5), SE, fontsize(9pt));
