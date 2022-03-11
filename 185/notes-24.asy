if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-24";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
dot("$0$", (0,0), S);
draw((1,0) .. (0,1) .. (-1,0) .. (0,-1) .. (1.5,0) .. (0,1.5) .. (-1.5,0) .. (0,-1.5) .. cycle, arrow=EndArrow);
