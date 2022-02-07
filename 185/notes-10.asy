if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-10";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw(circle((-1,0),1), dashed);
draw(circle((2,0), 1.7), dashed);
fill((-1.5,0) .. (-0.7,0.3) .. (-1, -0.7) .. cycle, lightgray);
fill((2,-1.3) .. (3.5,-0.5) .. (1, 0.7) .. cycle, lightgray);

pair u1 = (-1,0) + 0.3*dir(200);
pair u2 = (2,0) + 1*dir(30);
dot("$u_1$", u1, W);
dot("$u_2$", u2, E);
label("$U_1$", (-1,-1), S);
label("$U_2$", (2,-1.7), S);
draw(u1 -- u2, red);
