% -------------------------------------------------------------------
%   Esta secci�n se encarga del ciclo Bryton con interenfriamiento,
%   recalentamiento y regeneraci�n.
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%   Procesos del ciclo Brayton con interenfriamiento,
%   recalentamiento y regeneraci�n:
%       1.-Entrada de aire (compresi�n isentropica)
%       2.-Se enfr�a a presi�n constante
%       3.-Se comprime isentropicamente
%       4.-El gas entra al regenerador (Se calienta a presi�n constante)
%       5.-Proceso de adici�n de calor primario
%       6.-Entrada del gas en la primera etapa de la turbina (Expansi�n
%       isentropica)
%       7.-Entra el gas al recalentador (Se calienta a presi�n constante).
%       8.-Entrada del gas en la segunda etapa de la turbina (Expansi�n
%       isentropica)
%       9.El gas sale de la turbina y entra al regenerador donde se enfr�a
%       a presi�n constante.
%       10.-El gas continua enfriandose y el ciclo se completa cuando llega
%       al estado inicial.
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%   Formulas empleadas:
%   1.- Relaci�n de presi�n total:
%       rpt=(P2/P1)^2       %%%%%%%NOTA:PENDIENTE REVISAR ESTA F�RMULA.%%
%   2.-Relaci�n de trabajo de retroceso:
%       rbw=(w_compresor,in)/(w_turbina,out)
%   3.-Eficiencia t�rmica:
%       Eta=(w_neto)/(q_in)
%   4.-Interpolaci�n lineal:
%       y=((y1-y0)/(x1-x0))*(x-x0)+y0;
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire a temperatura ambiente (25�C � 300K):
%   a)No hay regeneradores
%   b)Hay un regenerador ideal con eficacia de 100%
%   b)Existen condiciones estacionarias de operaci�n
%   c)Son aplicables las suposiciones de aire est�ndar
%   d)Los cambios en las energ�as cin�tica y potencial son insignificantes.

R=0.2870;   %Constante del gas [kJ/kg*K]
cp=1.005;   %Calor especifico a presi�n constante [kJ/kg*K]
cv=1.005;   %Calor especifico a volumen constante [kJ/kg*K]
k=1.400;    %Relaci�n de calores especificos [Adimensional] Formula: k=cp/cv
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 2: Nos piden calcular:
%   a)La relaci�n de trabajo de retroceso y la eficiencia termodin�mica.

%Datos necesarios:
rct=sqrt(8);    %Relaci�n de compresi�n total [Adimensional]
TC=300; %Temperatura a la entrada en cada etapa del compresor [K]
TT=1300;    %Temperatura en la entrada de cada etapa de la turbina [K]
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
Pr2=rct*Pr1;
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
T3=T1;
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
T4=T2;
h4=Interpolacion("T","h",T4);  
Pr4=Interpolacion("T","Pr",T4); 

disp("T4 = "+T4)
disp("h4 = "+h4)
disp("Pr4 = "+Pr4)

%--------------
%   Proceso 5:
%--------------
disp("---------- Proceso 5-6 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
disp("Lo describimos al final")

%--------------
%   Proceso 6:
%--------------
disp("---------- Proceso 6-7 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
T6=TT;
h6=Interpolacion("T","h",T6);  
Pr6=Interpolacion("T","Pr",T6); 

disp("T6 = "+T6)
disp("h6 = "+h6)
disp("Pr6 = "+Pr6)

%--------------
%   Proceso 7:
%--------------
disp("---------- Proceso 7-8 -------------------------------------")
disp("---------- Expansi�n isentropica ---------------------------")
Pr7=(1/rct)*Pr6;
h7=Interpolacion("Pr","h",Pr7);  
T7=Interpolacion("Pr","T",Pr7); 

disp("T7 = "+T7)
disp("h7 = "+h7)
disp("Pr7 = "+Pr7)

%--------------
%   Proceso 8:
%--------------
disp("---------- Proceso 8-9 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
T8=T6;
h8=Interpolacion("T","h",T8);  
Pr8=Interpolacion("T","Pr",T8); 

disp("T8 = "+T8)
disp("h8 = "+h8)
disp("Pr8 = "+Pr8)

%--------------
%   Proceso 9:
%--------------
disp("---------- Proceso 9-10 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
T9=T7;
h9=Interpolacion("T","h",T9);  
Pr9=Interpolacion("T","Pr",T9); 

disp("T9 = "+T9)
disp("h9 = "+h9)
disp("Pr9 = "+Pr9)

%--------------
%   Proceso 10:
%--------------
disp("---------- Proceso 10-1 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
T10=T2;
h10=Interpolacion("T","h",T10);  
Pr10=Interpolacion("T","Pr",T10); 

disp("T10 = "+T10)
disp("h10 = "+h10)
disp("Pr10 = "+Pr10)
%--------------
%   Proceso 5:
%--------------
disp("---------- Proceso 5-6 -------------------------------------")
disp("---------- Rechazo de calor a presi�n constante ------------")
T5=T7;
h5=Interpolacion("T","h",T5);  
Pr5=Interpolacion("T","Pr",T5); 

disp("T5 = "+T5)
disp("h5 = "+h5)
disp("Pr5 = "+Pr5)

%------------------------------------
%   Relaci�n de trabajo de retroceso:
%------------------------------------
disp("---------- Relaci�n de trabajo de retroceso ---------------")
wci=2*(h2-h1);  %Trabajo de entrada al compresor
wto=2*(h6-h7);  %Trabajo de salida de la turbina
rbw=wci/wto;

disp("Trabajo de retroceso = "+rbw)

%------------------------------------
%   Eficiencia t�rmica:
%------------------------------------
disp("---------- Eficiencia t�rmica -----------------------------")
wn=wto-wci; %Trabajo neto
qpr=h6-h5;  %Calor primario   %%%NOTA: PONER ATENCI�N EN SI ES h4 � h5.
qre=h8-h7;  %Calor de recalentamiento
qi=qpr+qre;   %Calor de entrada
Eta=wn/qi;
EtaC=1-(TC/TT); %Eficiencia t�rmica de carnot
disp("Eficiencia t�rmica con dos etapas = "+Eta)
disp("Eficiencia t�rmica de Carnot = "+EtaC)
disp(" ")
disp("Calor de entrada = "+qi)
disp("Trabajo neto = "+wn)


%------------------------------------
%   Mostrar la imagen del ciclo:
%------------------------------------
%I = imread('DosEtapas.jpg');
%image(I)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%










