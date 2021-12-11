if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-48";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
unitsize(4cm);
real f(real x)
{
return x*x*x - x + 0.1;
}
draw((-0.6,0)--(2,0)); draw((0,-0.6)--(0,2));
draw(graph(f,-0.6,1.5), blue);

real a0 = 1.3;
real a1 = a0 - (a0*a0*a0 - a0) / (3*a0*a0 - 1);

pair v = (a0, f(a0)) - (a1, 0);
draw((a1, 0) -- (a1, 0) + 1.8*v, red);

draw((a0,0) -- (a0,f(a0)), dashed);
draw((a1,0) -- (a1,f(a1)), dashed);

dot("$x_0$", (a0,0), S); dot("$x_1$", (a1, 0), S);

dot("$(x_0,f(x_0))$", (a0, f(a0)), WNW);
dot("$(x_{1},f(x_{1}))$", (a1, f(a1)), WNW);

label("\color{red}$y-f(x_0)=f'(x_0)(x-x_0)$", (a1,0) + 1.5*v, W);
