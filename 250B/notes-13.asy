if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.5cm);
import graph;
real y(real t)
{
return t;
}
real x(real t)
{
return 1/t;
}
draw(graph(x, y,-4,-1/4));
draw(graph(x, y, 4,1/4));
draw((-4,0)--(4,0), dotted); label("$t$", (4,0), E);
draw((0,-4)--(0,4), dotted); label("$x$", (0,4), N);