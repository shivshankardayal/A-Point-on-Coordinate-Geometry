settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

draw((-1, -1) -- (1, 1), Arrows);
markangle("$45^\circ$", radius=10, (1, 0), origin, (1, 1));
draw((0, -1) -- (2, 1), Arrows);
markangle("$45^\circ$", radius=10, (2, 0), (1, 0), (2, 1));
draw((1, -1) -- (3, 1), Arrows);
markangle("$45^\circ$", radius=10, (3, 0), (2, 0), (3, 1));
draw((-1, 0) -- (4, 0), Arrows);
