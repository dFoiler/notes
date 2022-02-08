if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-10";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.7cm);
draw((0,0) .. (1,0.3) .. (1.7,-0.5) .. (4,0.1) .. (6,0), arrow=EndArrow, p=red);
draw((6,0) .. (6,-1) .. (8,0) .. (10,-1) .. (9,1), arrow=EndArrow, p=blue);
dot("$t=0$", (0,0), W);
dot("$t=1$", (6,0), NE);
dot("$t=2$", (9,1), NW);
label("$\gamma_1$", (4,0.1), NNW, red);
label("$\gamma_2$", (11,0.1), E, blue);
