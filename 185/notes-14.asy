if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-14";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);
draw((-1.5,0)--(0.5,0), arrow=EndArrow);
draw((0,-1.5)--(0,0.5), arrow=EndArrow);
label("$\textrm{Re}$", (0.5,0), E);
label("$\textrm{Im}$", (0,0.5), N);
draw(arc((0,0), 0.2, 0, 180+45), magenta);
draw((-1,-1)--(-1,0), blue);
draw((0,0)--(-1,0), red);
draw((0,0)--(-1,-1), magenta);
label("$\color{blue}{-1}$", (-1,-0.5), W);
label("$\color{red}{-1}$", (-0.5,0), N);
label("$\color{magenta}\sqrt2$", (-0.5,-0.5), SE);
dot("$z$", (-1,-1), SW);