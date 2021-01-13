% -------------------------------------------------------------------
%   Esta secci�n se encarga del ciclo real de una turbina de gas 
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
%       y=((y1-y0)/(x1-x0))*(x-x0)+y0:
%   5.-Eficiencia isentr�pica del compresor=
%       EtaCompresor=w_s/w_a=(h_2s-h1)/(h_2a-h1)
%   6.-Eficiencia isentr�pica de la turbina:
%       EtaTurbina=w_a/w_s=(h3-h_4a)/(h3-h_4s)
%       
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire a temperatura ambiente (25�C � 300K):
%   a)Suponga una eficiencia del compresor de 80%
%   b)Suponga una eficiencia de la turbina de 85%

R=0.2870;   %Constante del gas [kJ/kg*K]
cp=1.005;   %Calor especifico a presi�n constante [kJ/kg*K]
cv=1.005;   %Calor especifico a volumen constante [kJ/kg*K]
k=1.400;    %Relaci�n de calores especificos [Adimensional] Formula: k=cp/cv
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 1: Nos piden calcular:
%   a)La relaci�n de trabajo de retroceso 
%   b)Eficiencia t�rmica
%   c)La temperatura de salida de la turbina del ciclo de la turbina de gas
%   analizado en el ejemplo 9-6 (Ciclo ideal simple) %%%%%%%%%%%%%%%

% -------------------------------------------------------------------
%Datos necesarios:
rp=8;    %Relaci�n de compresi�n [Adimensional]
TC=300; %Temperatura a la entrada del compresor [K]
TT=1300;    %Temperatura en la entrada de la turbina [K]
EtaCompresor=0.8;   %Eficiencia del compresor.
EtaTurbina=0.85;    %Eficiencia de la turbina
% -------------------------------------------------------------------

%--------------
%   Proceso 1:
%--------------
disp("---------- Proceso 1-2 -------------------------------------")
disp("---------- Compresi�n isentropica --------------------------")
T1=TC;
h1=Interpolacion("T","h",T1);  
Pr1=Interpolacion("T","Pr",T1); 

disp("T1 = "+T1)
disp("h1 = "+h1)
disp("Pr1 = "+Pr1)

%--------------
%   Proceso 2:
%--------------
disp("---------- Proceso 2-3 -------------------------------------")
disp("---------- Adici�n de calor a presi�n constante ------------")
Pr2=rp*Pr1;
h2=Interpolacion("Pr","h",Pr2);  
T2=Interpolacion("Pr","T",Pr2); 

disp("T2 = "+T2)
disp("h2 = "+h2)
disp("Pr2 = "+Pr2)

%--------------
%   Proceso 3:
%--------------
disp("---------- Proceso 3-4 -------------------------------------")
disp("---------- Expansi�n isentropica ---------------------------")
T3=TT;
h3=Interpolacion("T","h",T3);  
Pr3=Interpolacion("T","Pr",T3); 

disp("T3 = "+T3)
disp("h3 = "+h3)
disp("Pr3 = "+Pr3)

%--------------
%   Proceso 4:
%--------------
disp("---------- Proceso 4-1 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
Pr4=(1/rp)*Pr3;
h4=Interpolacion("Pr","h",Pr4);  
T4=Interpolacion("Pr","T",Pr4); 

disp("T4 = "+T4)
disp("h4 = "+h4)
disp("Pr4 = "+Pr4)

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

%------------------------------------
%   Mostrar la imagen del ciclo:
%------------------------------------
%I = imread('Simple.jpg');
%image(I)


%---------------------------------------------
%   Treabajo real del compresor y la turbina:
%---------------------------------------------
disp("---------- Treabajo real del compresor y la turbina -------")
wcir=wci/EtaCompresor;  %Trabajo real de entrada al compresor
wtor=wto*EtaTurbina;    %Trabajo real de salida de la turbina
rbwr=wcir/wtor;

disp("Trabajo de entrada al compresor = "+wci)
disp("Trabajo de salida de la turbina = "+wto)
disp("Trabajo real de retroceso = "+rbwr)

%---------------------------------------------
%   Entalp�as de salida del compresor:
%---------------------------------------------
disp("---------- Entalp�a de salida del compresor ---------------")
h2a=h1+wcir;    %Entalp�a a la salida del compresor.
T2a=Interpolacion("h","T",h2a);

disp("h2a = "+h2a)
disp("T2a = "+T2a)

%------------------------------------
%   temperatura de salida de la turbina:
%------------------------------------
disp("---------- temperatura de salida de la turbina ------------")
h4a=h3-wtor;    %Entalp�a a la salida del compresor.
T4a=Interpolacion("h","T",h4a);

disp("h4a = "+h4a)
disp("T4a = "+T4a)

%------------------------------------
%   Eficiencia t�rmica real:
%------------------------------------
disp("---------- Eficiencia t�rmica real -----------------------")
wnr=wtor-wcir; %Trabajo neto real
qir=h3-h2a;   %Calor de entrada real
Etar=wnr/qir;   %Eficiencia t�rmica real

disp("Eficiencia t�rmica real = "+Etar)
disp("Trabajo neto real = "+wnr)
disp("Calor de entrada real = "+qir)




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









