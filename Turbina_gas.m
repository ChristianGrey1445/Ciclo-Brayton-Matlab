% -------------------------------------------------------------------
%   Esta sección se encarga del ciclo real de una turbina de gas 
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%   Procesos del ciclo Brayton ideal:
%       1.-Compresión isentropica (en un compresor)
%       2.-Adición de calor a presión constante
%       3.-Expansión isentropica (en una turbina)
%       4.-Rechazo de calor a presión constante
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
%       y=((y1-y0)/(x1-x0))*(x-x0)+y0:
%   5.-Eficiencia isentrópica del compresor=
%       EtaCompresor=w_s/w_a=(h_2s-h1)/(h_2a-h1)
%   6.-Eficiencia isentrópica de la turbina:
%       EtaTurbina=w_a/w_s=(h3-h_4a)/(h3-h_4s)
%       
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire a temperatura ambiente (25°C ó 300K):
%   a)Suponga una eficiencia del compresor de 80%
%   b)Suponga una eficiencia de la turbina de 85%

R=0.2870;   %Constante del gas [kJ/kg*K]
cp=1.005;   %Calor especifico a presión constante [kJ/kg*K]
cv=1.005;   %Calor especifico a volumen constante [kJ/kg*K]
k=1.400;    %Relación de calores especificos [Adimensional] Formula: k=cp/cv
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 1: Nos piden calcular:
%   a)La relación de trabajo de retroceso 
%   b)Eficiencia térmica
%   c)La temperatura de salida de la turbina del ciclo de la turbina de gas
%   analizado en el ejemplo 9-6 (Ciclo ideal simple) %%%%%%%%%%%%%%%

% -------------------------------------------------------------------
%Datos necesarios:
rp=8;    %Relación de compresión [Adimensional]
TC=300; %Temperatura a la entrada del compresor [K]
TT=1300;    %Temperatura en la entrada de la turbina [K]
EtaCompresor=0.8;   %Eficiencia del compresor.
EtaTurbina=0.85;    %Eficiencia de la turbina
% -------------------------------------------------------------------

%--------------
%   Proceso 1:
%--------------
disp("---------- Proceso 1-2 -------------------------------------")
disp("---------- Compresión isentropica --------------------------")
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
disp("---------- Adición de calor a presión constante ------------")
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
disp("---------- Expansión isentropica ---------------------------")
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
disp("---------- Rechazo de calor a presión constante ------------")
Pr4=(1/rp)*Pr3;
h4=Interpolacion("Pr","h",Pr4);  
T4=Interpolacion("Pr","T",Pr4); 

disp("T4 = "+T4)
disp("h4 = "+h4)
disp("Pr4 = "+Pr4)

%------------------------------------
%   Relación de trabajo de retroceso:
%------------------------------------
disp("---------- Relación de trabajo de retroceso ---------------")
wci=h2-h1;  %Trabajo de entrada al compresor
wto=h3-h4;  %Trabajo de salida de la turbina
rbw=wci/wto;

disp("Trabajo de retroceso = "+rbw)

%------------------------------------
%   Eficiencia térmica:
%------------------------------------
disp("---------- Eficiencia térmica -----------------------------")
wn=wto-wci; %Trabajo neto
qi=h3-h2;   %Calor de entrada
qo=h4-h1;   %Calor de salida %%%%% NOTA: Este valor no lo usamos aún.
Eta=wn/qi;

EtaB=1-(1/(8^((k-1)/k)));

disp("Eficiencia térmica ideal simple = "+Eta)
disp("Eficiencia térmica Brayton = "+EtaB)
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
%   Entalpías de salida del compresor:
%---------------------------------------------
disp("---------- Entalpía de salida del compresor ---------------")
h2a=h1+wcir;    %Entalpía a la salida del compresor.
T2a=Interpolacion("h","T",h2a);

disp("h2a = "+h2a)
disp("T2a = "+T2a)

%------------------------------------
%   temperatura de salida de la turbina:
%------------------------------------
disp("---------- temperatura de salida de la turbina ------------")
h4a=h3-wtor;    %Entalpía a la salida del compresor.
T4a=Interpolacion("h","T",h4a);

disp("h4a = "+h4a)
disp("T4a = "+T4a)

%------------------------------------
%   Eficiencia térmica real:
%------------------------------------
disp("---------- Eficiencia térmica real -----------------------")
wnr=wtor-wcir; %Trabajo neto real
qir=h3-h2a;   %Calor de entrada real
Etar=wnr/qir;   %Eficiencia térmica real

disp("Eficiencia térmica real = "+Etar)
disp("Trabajo neto real = "+wnr)
disp("Calor de entrada real = "+qir)




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









