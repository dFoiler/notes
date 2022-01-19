if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.9cm);
pair a = (3,3);
pair b = (1,2);
pair ib = (-2,1);
draw((0,0) -- a, EndArrow);
draw(a -- a+b, EndArrow);
draw(a -- a-b, EndArrow);
draw(a -- a+ib, EndArrow);
draw(a -- a-ib, EndArrow);
dot("$a$", a, ENE);
dot("$a+b$", a+b, b);
dot("$a-b$", a-b, -b);
dot("$a+ib$", a+ib, ib);
dot("$a-ib$", a-ib, -ib);
