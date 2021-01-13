% -------------------------------------------------------------------
%   Esta sección se encarga del ciclo ideal para propulsión por reacción
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%   Formulas empleadas:
%   1.- Relación de compresión:
%       rp=P2/P1
%   2.-Relación de trabajo de retroceso:
%       rbw=(w_compresor,in)/(w_turbina,out)
%   3.-Eficiencia térmica:
%       Eta=(w_neto)/(q_in)
%   4.-Interpolación lineal:
%       y=((y1-y0)/(x1-x0))*(x-x0)+y0;
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire estándar frio (80°C):

R=0.06855;   %Constante del gas [Btu/lbm*R]
cp=0.240;   %Calor especifico a presión constante [Btu/lbm*R]
cv=0.171;   %Calor especifico a volumen constante [Btu/lbm*R]
k=1.400;    %Relación de calores especificos [Adimensional] Formula: k=cp/cv

%   La salida de de trabajo de la turbina es igual a la entrada de trabajo
%   del compresor.
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 1: Nos piden calcular:
%   a)La temperatura y presión de los gases en la salida de la turbina
%   b)La velocidad de los gases en la salida de la tobera
%   c)La eficiecia de propulsión del ciclo

%Datos necesarios:
rp=10;    %Relación de presión [Adimensional]
Vavion=850; %Velocidad del avión [pies/s]
PresionAire=5; %Densidad del aire a la altura de vuelo [psia]
TAire=-40;  %Temperatura del aire a la altura de vuelo [°F]
TT=2000;    %Temperatura en la entrada de la turbina [°F]
m=100;   %Tasa de entrada del aire al compresor [lbm/s]

TC=300; %NOTA: Este no lo ocupamos.
% -------------------------------------------------------------------
%   Conversión de unidades:%%%%%Pendiente hacer una función para esto.
TAire=TAire+459.67;  %Temperatura del aire a la altura de vuelo [R]
Vavion2=(1/25037)*Vavion^2;    %%Velocidad cuadrada del avión [Btu/lbm]
TT=TT+459.67;    %Temperatura en la entrada de la turbina [R]
cpP=0.240*(25037);   %Calor especifico a presión constante [ft^2/s^2*R]
cvP=0.171*(25037);   %Calor especifico a volumen constante [ft^2/s^2*R]
mT=100*(1/25037);   %Tasa de entrada del aire al compresor [Btu*s/pie^2]
% -----------------------------------------------------------------
%--------------
%   Proceso 1:
%--------------
disp("---------- Proceso 1-2 -------------------------------------")
disp("---- Compresión isentropica de un gas ideal en un difusor---")
T1=TAire;  
Pr1=PresionAire;

disp("T1 = "+T1)
disp("Pr1 = "+Pr1)

%--------------
%   Proceso 2:
%--------------
disp("---------- Proceso 2-3 -------------------------------------")
disp("-- Compresión isentrópica de un gas ideal en un compresor --")
T2=T1+(Vavion2)/(2*cp);
Pr2=Pr1*(T2/T1)^(k/(k-1));

disp("T2 = "+T2)
disp("Pr2 = "+Pr2)

%--------------
%   Proceso 3:
%--------------
disp("---------- Proceso 3-4 -------------------------------------")
%disp("---------- Expansión isentropica ---------------------------")
Pr3=rp*Pr2;
T3=T2*((Pr3/Pr2)^((k-1)/k));

disp("T3 = "+T3)
disp("Pr3 = "+Pr3)

%--------------
%   Proceso 4:
%--------------
disp("---------- Proceso 4-5 -------------------------------------")
disp("---- Expansión isentrópica de un gas ideal en una turbina---")
Pr4=Pr3;
T4=TT;

disp("T4 = "+T4)
disp("Pr4 = "+Pr4)

%--------------
%   Proceso 5:
%--------------
disp("---------- Proceso 5-6 -------------------------------------")
disp("---- Expansión isentrópica de un gas ideal en una tobera ---")
T5=T4-T3+T2;
Pr5=Pr4*((T5/T4)^(k/(k-1)));

disp("T5 = "+T5)
disp("Pr5 = "+Pr5)

%--------------
%   Proceso 6:
%--------------
disp("---------- Proceso 6-1 -------------------------------------")
Pr6=PresionAire;
T6=T5*(Pr6/Pr5)^((k-1)/k);

disp("T6 = "+T6)
disp("Pr6 = "+Pr6)

%------------------------------------------------------
%   Velocidad de los gases en la salida de la tobera:
%------------------------------------------------------
disp("---- Velocidad de los gases en la salida de la tobera------")
VTo=sqrt(2*cpP*(T5-T6));

disp("Velocidad = "+VTo)

%------------------------------------
%   Eficiencia de propulsión:
%------------------------------------
disp("------- Eficiencia de propulsión --------------------------")
Wp=mT*(VTo-Vavion)*Vavion;   %Potencia de propulsión desarrollada 
Qin=m*cp*(T4-T3);  %Razón de transferencia de calor
Qout=m*cp*(T6-T1);
EC=mT*((VTo-Vavion)^2)/2;
EtaP=Wp/Qin;
EtaEC=EC/Qin;
EtaQout=Qout/Qin;

disp("Wp = "+Wp)
disp("EC = "+EC)
disp("Qin = "+Qin)
disp("Qout = "+Qout)
disp("EtaP = "+EtaP)
disp("EtaEC = "+EtaEC)
disp("EtaQout = "+EtaQout)

%------------------------------------
%   Mostrar la imagen del ciclo:
%------------------------------------
%I = imread('Simple.jpg');
%image(I)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









