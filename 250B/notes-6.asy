if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
import graph;
real y(real t)
{
return t;
}
real x(real t)
{
return cbrt(t*t);
}
draw(graph(x,y,-2,2));