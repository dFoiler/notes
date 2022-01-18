if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-57";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
pair p1=(1,0), p2=(3,0), p3=(4.1415926,0);
pair q1=(0,2), q2=(1.5,2.5), q3=(4.5,3.5);
pair r1=(1.235,1.176), r2=(2.023,1.023), r3=(3.329,0.769);
draw(p1--p3); draw(q1--q3);
draw(p1--q2, dotted); draw(p1--q3, dotted);
draw(p2--q1, dotted); draw(p2--q3, dotted);
draw(p3--q1, dotted); draw(p3--q2, dotted);
draw(r1--r3, red);
dot("$P_1$", p1, S);
dot("$P_2$", p2, S);
dot("$P_3$", p3, S);
dot("$Q_1$", q1, dir(180-63));
dot("$Q_2$", q2, dir(180-63));
dot("$Q_3$", q3, dir(180-63));
dot("$R_1$", r1, W);
dot("$R_2$", r2, N);
dot("$R_3$", r3, E);