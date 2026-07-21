settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

pair A = (0,0);
pair B = (3,0);
pair D = (1,2);
pair C = (4,2);

draw(A--B--C--D--A);
draw(A--C);
draw(B--D);

label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, NE);
label("$D$", D, NW);

label("$y = m_1x$", (1.5, 0), S);

// invisible helper line, matching the CeTZ l1 line used only for positioning
pair l1start = (-0.1, 0);
pair l1end   = (0.7, 1.7);
pair lpos = l1start + 0.9*(l1end - l1start); // 90% along the line
real ang = degrees(l1end - l1start);         // line's angle for rotated label

label(rotate(ang)*Label("$y = m_2x$"), lpos, W);
