if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-56";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
draw((-1.25,0)--(3,0));
draw((0,-1.25)--(0,1.25));
draw(dir(360/7) -- (2.7,0));
draw(circle((0,0),1));
dot("$\zeta_n^k$", dir(360/7), dir(360/7));
dot("$1$", (1,0), NW);
dot("$q$", (2.7,0), S);
