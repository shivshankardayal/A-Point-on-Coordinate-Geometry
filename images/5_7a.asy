settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(10cm);

real sq3 = sqrt(3);

// Centers
pair C1 = (3,0);
pair C2 = (-1,0);

// Triangle vertices
pair T1 = (-3,0);
pair T2 = (0,sq3);
pair T3 = (0,-sq3);

// Tangency points
pair Q1a = (1.5, 1.5*sq3);
pair Q1b = (1.5,-1.5*sq3);

pair Q2a = (-1.5, sq3/2);
pair Q2b = (-1.5,-sq3/2);

pair Q0 = (0,0);

//------------------------------------------------------------
// Pens
//------------------------------------------------------------

pen blueCircle = rgb("185FA5")+1bp;
pen purpleCircle = rgb("534AB7")+1bp;
pen greenPen = rgb("0F6E56")+1.4bp;
pen orangePen = rgb("D85A30");
pen brownPen = rgb("993C1D");

pen blueFill = opacity(0.08)+rgb("185FA5");
pen purpleFill = opacity(0.08)+rgb("534AB7");
pen triangleFill = opacity(0.10)+rgb("1D9E75");

//------------------------------------------------------------
// Axes
//------------------------------------------------------------
draw((-3.8,0)--(7,0), gray+dashed);
draw((0,-2.8)--(0,2.8), gray+dashed);

label("$x$", (7.2,0), E);
label("$y$", (0.15,2.9), N);
for(int i=-3; i<=6; ++i){
	if(i==0) continue;
    draw((i,-0.08)--(i,0.08), gray+0.4bp);
    label(string(i), (i,-0.28), S, fontsize(7));
}

//------------------------------------------------------------
// Triangle
//------------------------------------------------------------

fill(T1--T2--T3--cycle,triangleFill);

//------------------------------------------------------------
// Tangent lines
//------------------------------------------------------------

// x = 0
draw((0,-sq3-0.55)--(0,sq3+0.55),
     rgb("534AB7")+1.4bp);

// y=(x+3)/sqrt(3)
real lx1=-3.5;
real lx2=2.5;

draw(
    (lx1,(lx1+3)/sq3)--
    (lx2,(lx2+3)/sq3),
    greenPen);

// y=-(x+3)/sqrt(3)
draw(
    (lx1,-(lx1+3)/sq3)--
    (lx2,-(lx2+3)/sq3),
    greenPen);

//------------------------------------------------------------
// Circles
//------------------------------------------------------------

filldraw(circle(C2,1),
         purpleFill,
         purpleCircle);

filldraw(circle(C1,3),
         blueFill,
         blueCircle);

//------------------------------------------------------------
// Dashed radii
//------------------------------------------------------------

draw(C1--Q1a,blueCircle+dashed+0.6bp);
draw(C1--Q1b,blueCircle+dashed+0.6bp);
draw(C1--Q0 ,blueCircle+dashed+0.6bp);

draw(C2--Q2a,purpleCircle+dashed+0.6bp);
draw(C2--Q2b,purpleCircle+dashed+0.6bp);
draw(C2--Q0 ,purpleCircle+dashed+0.6bp);

//------------------------------------------------------------
// Tangency points
//------------------------------------------------------------

filldraw(circle(Q0,0.06),rgb("D85A30"),white);
filldraw(circle(Q1a,0.055),rgb("D85A30"),white);
filldraw(circle(Q1b,0.055),rgb("D85A30"),white);
filldraw(circle(Q2a,0.055),rgb("D85A30"),white);
filldraw(circle(Q2b,0.055),rgb("D85A30"),white);

//------------------------------------------------------------
// Right angle marker
//------------------------------------------------------------

real d=0.18;

draw((0,0)--(d,0)--(d,d)--(0,d),
     orangePen+0.7bp);

//------------------------------------------------------------
// Triangle vertices
//------------------------------------------------------------

filldraw(circle(T1,0.07),rgb("993C1D"),white);
filldraw(circle(T2,0.07),rgb("993C1D"),white);
filldraw(circle(T3,0.07),rgb("993C1D"),white);

//------------------------------------------------------------
// Centers
//------------------------------------------------------------

dot(C1,rgb("185FA5"));
dot(C2,rgb("534AB7"));

//------------------------------------------------------------
// Labels
//------------------------------------------------------------

// Circle labels
label("$C_1(3,0),\\ r=3$",
      (4.8,1.8),
      rgb("185FA5"));

label("$x^2+y^2-6x=0$",
      (4.8,1.4),
      rgb("185FA5"));

label("$C_2(-1,0),\\ r=1$",
      (-2.8,1.35),
      rgb("534AB7"));

label("$x^2+y^2+2x=0$",
      (-2.5,0.95),
      rgb("534AB7"));

// Tangent labels
label("$x=0$",
      (0.35,2.1),
      rgb("534AB7"));

label("$y=(x+3)/\\\sqrt{3}$",
      (-2.6,2.35),
      rgb("0F6E56"));

label("$y=-(x+3)/\\\sqrt{3}$",
      (-2.6,-2.35),
      rgb("0F6E56"));

// Vertex labels
label("$T_1(-3,0)$",
      (-3,-0.38),
      brownPen);

label("$T_2(0,\\\sqrt{3})$",
      (0.6,sq3),
      brownPen);

label("$T_3(0,-\\\sqrt{3})$",
      (0.6,-sq3),
      brownPen);
