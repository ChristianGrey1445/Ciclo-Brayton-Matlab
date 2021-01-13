% -------------------------------------------------------------------
%   Esta secci�n se encarga del ciclo Bryton Simple
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%   Procesos del ciclo Brayton ideal:
%       1.-Compresi�n isentropica (en un compresor)
%       2.-Adici�n de calor a presi�n constante
%       3.-Expansi�n isentropica (en una turbina)
%       4.-Rechazo de calor a presi�n constante
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%   Formulas empleadas:
%   1.- Relaci�n de compresi�n:
%       rp=P2/P1
%   2.-Relaci�n de trabajo de retroceso:
%       rbw=(w_compresor,in)/(w_turbina,out)
%   3.-Eficiencia t�rmica:
%       Eta=(w_neto)/(q_in)
%   4.-Interpolaci�n lineal:
%       y=((y1-y0)/(x1-x0))*(x-x0)+y0;
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire a temperatura ambiente (25�C � 300K):

R=0.2870;   %Constante del gas [kJ/kg*K]
cp=1.005;   %Calor especifico a presi�n constante [kJ/kg*K]
cv=1.005;   %Calor especifico a volumen constante [kJ/kg*K]
k=1.400;    %Relaci�n de calores especificos [Adimensional] Formula: k=cp/cv
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 1: Nos piden calcular:
%   a)La temperatura del gas a la salida del compresor y de la turbina
%   b)la relaci�n de trabajo de retroceso 
%   c)Eficiencia t�rmica

%Datos necesarios:
%Temperatura a la salida de la turbina = 770.2574
%Temperatura a la salida del compresor = 539.8356
TST= 770.2574;  %Temperatura en la salida de la turbina [K]
TSC=539.8356;   %Temperatura a la salida del compresor [K]
rp=8;    %Relaci�n de compresi�n [Adimensional]
 
% -------------------------------------------------------------------


%--------------
%   Proceso 2:
%--------------
disp("---------- Proceso 2-3 -------------------------------------")
disp("---------- Adici�n de calor a presi�n constante ------------")
T2=TSC; 
Pr2=Interpolacion("T","Pr",T2);
h2=Interpolacion("T","h",T2);  

disp("T2 = "+T2)
disp("h2 = "+h2)
disp("Pr2 = "+Pr2)

%--------------
%   Proceso 1:
%--------------
disp("---------- Proceso 1-2 -------------------------------------")
disp("---------- Compresi�n isentropica --------------------------")
Pr1=Pr2/rp;
T1=Interpolacion("Pr","T",Pr1);
h1=Interpolacion("Pr","h",Pr1);  

disp("T1 = "+T1)
disp("h1 = "+h1)
disp("Pr1 = "+Pr1)


%--------------
%   Proceso 4:
%--------------
disp("---------- Proceso 4-1 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
T4=TST; 
Pr4=Interpolacion("T","Pr",T4);
h4=Interpolacion("T","h",T4);  

disp("T4 = "+T4)
disp("h4 = "+h4)
disp("Pr4 = "+Pr4)


%--------------
%   Proceso 3:
%--------------
disp("---------- Proceso 3-4 -------------------------------------")
disp("---------- Expansi�n isentropica ---------------------------")
Pr3=rp*Pr4; 
T3=Interpolacion("Pr","T",Pr3);
h3=Interpolacion("T","h",T3);  


disp("T3 = "+T3)
disp("h3 = "+h3)
disp("Pr3 = "+Pr3)

%------------------------------------
%   Relaci�n de trabajo de retroceso:
%------------------------------------
disp("---------- Relaci�n de trabajo de retroceso ---------------")
wci=h2-h1;  %Trabajo de entrada al compresor
wto=h3-h4;  %Trabajo de salida de la turbina
rbw=wci/wto;

disp("Trabajo de retroceso = "+rbw)

%------------------------------------
%   Eficiencia t�rmica:
%------------------------------------
disp("---------- Eficiencia t�rmica -----------------------------")
wn=wto-wci; %Trabajo neto
qi=h3-h2;   %Calor de entrada
qo=h4-h1;   %Calor de salida %%%%% NOTA: Este valor no lo usamos a�n.
Eta=wn/qi;

EtaB=1-(1/(8^((k-1)/k)));

disp("Eficiencia t�rmica ideal simple = "+Eta)
disp("Eficiencia t�rmica Brayton = "+EtaB)
disp(" ")
disp("Calor de entrada = "+qi)
disp("Calor de salida = "+qo)
disp("Trabajo de entrada al compresor = "+wci)
disp("Trabajo de salida de la turbina = "+wto)
disp("Trabajo neto = "+wn)
disp("Temperatura a la entrada de la turbina = "+T3)
disp("Temperatura a la entrada del compresor = "+T1)

%------------------------------------
%   Mostrar la imagen del ciclo:
%------------------------------------
%I = imread('Simple.jpg');
%image(I)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



