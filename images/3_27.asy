settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

point O = origin;
draw((-4, 0) -- (4, 0), Arrows);
draw(O -- (0, 4), Arrow);
point A = (-2, 0);
point C = (2, 0);
point B = (0, 2);
draw(A -- B -- C);

point D = C + (2, 2);
point E1 = B + (2, 2);
draw(B -- E1 -- D -- C);
draw(O -- (D + E1)/2, dashed);

label("$O$", O, S);
label("$X$", (4, 0), E);
label("$Y$", (0, 4), N);
label("$A$", A, S);
label("$C$", C, S);
label("$B$", B, W);
label("$L$", (1, 1), N);
label("$D$", D, E);
label("$E$", E1, N);
label("$M$", (D + E1)/2, NE);
markangle("$45^\circ$", radius=5, B, C, O);
markangle("$45^\circ$", radius=5, O, A, B);
