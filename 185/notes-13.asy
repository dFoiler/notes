if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
draw((0,2.5)--(0,-1), arrow=BeginArrow, p=linewidth(0.5));
draw((2.5,0)--(-1,0), arrow=BeginArrow, p=linewidth(0.5));
label("$\Delta x$", (2.5,0), N);
label("$\Delta y$", (0,2.5), E);
draw((1,0)--(0,0), arrow=EndArrow, p=red+linewidth(0.7));
label("$\Delta y=0$", (1,0), S, red);
draw((0,1)--(0,0), arrow=EndArrow, p=magenta+linewidth(0.7));
label("$\Delta x=0$", (0,1), W, magenta);
