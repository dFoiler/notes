if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-15";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((0,0)--(1.5,0), arrow=EndArrow);
draw((0,-1.5)--(0,1.5), arrow=EndArrow);
label("$\textrm{Re}$", (1.5,0), E);
label("$\textrm{Im}$", (0,1.5), N);
draw((0,0)--(-1.5,0), red);
