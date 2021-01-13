function [y] = Interpolacion(ColX,ColY,ValorX)
% -------------------------------------------------------------------
%  %En esta funci�n se retornan los datos de la interpolaci�n.
% -------------------------------------------------------------------
%Primeramente definimos que columnas ser�n X y que columnas ser�n Y, ade�s del valor x:
%__________________________________________________________________
ColumnaX=ColX;
ColumnaY=ColY;
x=ValorX;
%__________________________________________________________________
%Con las siguientes funciones obtenemos el numero de columna respectivo.

switch ColumnaX
    case "T"
        ColumnaX=1;
    case "h"
        ColumnaX=2;
    case "Pr"
        ColumnaX=3;
    case "u"
        ColumnaX=4;
    case "Vr"
        ColumnaX=5;
    case "s"
        ColumnaX=6;
end    

switch ColumnaY
    case "T"
        ColumnaY=1;
    case "h"
        ColumnaY=2;
    case "Pr"
        ColumnaY=3;
    case "u"
        ColumnaY=4;
    case "Vr"
        ColumnaY=5;
    case "s"
        ColumnaY=6;
end  

%Aqu� le pasamos a la tabla mi valor de x y los n�meros de columna
%correspondientes; nos devolver� el valor de x0,x1,y0,y1:

datos=A17(x,ColumnaX,ColumnaY);
x0=datos(1);
x1=datos(2);
y0=datos(3);
y1=datos(4);

%Aqu� aplicamos la ecuaci�n para la interpolaci�n:

y=((y1-y0)/(x1-x0))*(x-x0)+y0;

end

