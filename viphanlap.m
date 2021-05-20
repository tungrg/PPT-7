function[]= viphanlap(fxy,a,b,y0)
    syms x;
    syms y;
    x0 = a;
    k = 1;
    yo= y0;
    while 1
        yn = yo + int(subs(fxy,y,yo),x,x0,x)
        rEyn = double(abs(int(yn-yo,x,a,b)/int(yo,x,a,b)));
        if(rEyn <0.1)
            break
        end
        yo = yn;
        k = k+1
    end
end
% syms x, y
% fxy = x + y
% viphanlap(fxy,0,0.4,1)
% syms x, y
% fxy = 2*x^2 + y
% viphanlap(fxy,0,0.5,1)
