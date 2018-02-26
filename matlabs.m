% aa)
c=[ 0.3 , 0.5,0.6,0.7];
for i = 1: 4
    x =  -5 : 0.05 : 5 ; 
    y = normpdf( x,1,1); 
    % bb)
    x1 =  -5 : 0.05 : 5 ;
    y1= normpdf( x1,-1,1);
    figure;
    % plot for aa)
    plot(x,y)
    hold;
    % plot for bb)
    plot(x1,y1)
    % plot for cc)

    z= -5 : 0.05 : 5;
    x4=c(i)*y;
    plot(z,x4)

    z1= -5 : 0.05 : 5;
    x5=(1 - c(i))*y1;
    plot(z1,x5)

    x2= -5 : 0.05 : 5;
    y2=qfunc(x2+1)*0.6 + qfunc(1-x2)*0.4;
    figure;
    plot(x2,y2);
end

