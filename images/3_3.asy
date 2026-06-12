settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

draw((-0.2, -0.2) -- (1.2, 1.2), Arrows);
markangle("$45^\circ$", radius=10, (1, 0), origin, (1, 1));
draw((-1, 0) -- (1, 0), Arrows);
label("$A$", (1, 1), E);
dot((1, 1));
