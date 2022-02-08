if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
dot("$z$", (-5,0), W);
dot("$w$", (0,0), S);
dot("$p$", dir(40), dir(40));
draw((-5,0) .. (-4,-0.3) .. (-1,0.1) .. (0,0));
draw(circle((0,0), 1.7), dashed);
draw((0,0) -- dir(40));
