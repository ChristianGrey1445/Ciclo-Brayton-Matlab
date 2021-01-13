function varargout = Ciclo01(varargin)
% CICLO01 MATLAB code for Ciclo01.fig
%      CICLO01, by itself, creates a new CICLO01 or raises the existing
%      singleton*.
%
%      H = CICLO01 returns the handle to a new CICLO01 or the handle to
%      the existing singleton*.
%
%      CICLO01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CICLO01.M with the given input arguments.
%
%      CICLO01('Property','Value',...) creates a new CICLO01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ciclo01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ciclo01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ciclo01

% Last Modified by GUIDE v2.5 29-Nov-2020 21:16:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ciclo01_OpeningFcn, ...
                   'gui_OutputFcn',  @Ciclo01_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Ciclo01 is made visible.
function Ciclo01_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ciclo01 (see VARARGIN)

a=imread('Simple.jpg');
image(a);
axis off

% Choose default command line output for Ciclo01
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ciclo01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ciclo01_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function RCo_Callback(hObject, eventdata, handles)
% hObject    handle to RCo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RCo as text
%        str2double(get(hObject,'String')) returns contents of RCo as a double


% --- Executes during object creation, after setting all properties.
function RCo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RCo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tic_Callback(hObject, eventdata, handles)
% hObject    handle to Tic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tic as text
%        str2double(get(hObject,'String')) returns contents of Tic as a double


% --- Executes during object creation, after setting all properties.
function Tic_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tit_Callback(hObject, eventdata, handles)
% hObject    handle to Tit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tit as text
%        str2double(get(hObject,'String')) returns contents of Tit as a double


% --- Executes during object creation, after setting all properties.
function Tit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Cerrar.
function Cerrar_Callback(hObject, eventdata, handles)
% hObject    handle to Cerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.output);


% --- Executes on button press in Regresar.
function Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
INICIO;
close(handles.output);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in Siguiente.
function Siguiente_Callback(hObject, eventdata, handles)
% hObject    handle to Siguiente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Datos necesarios:  
RP2=get(handles.RCo,'String');
rp=str2double(RP2); %Relación de compresión [Adimensional]

TC2=get(handles.Tic,'String');
TC=str2double(TC2); %Temperatura a la entrada del compresor [K]

TT2=get(handles.Tit,'String');
TT=str2double(TT2); %Temperatura en la entrada de la turbina [K]


%------------------------------------------------------------------------
%------------------------------------------------------------------------
% -------------------------------------------------------------------
%   Esta sección se encarga del ciclo Bryton Simple
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
%       y=((y1-y0)/(x1-x0))*(x-x0)+y0;
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire a temperatura ambiente (25°C ó 300K):

R=0.2870;   %Constante del gas [kJ/kg*K]
cp=1.005;   %Calor especifico a presión constante [kJ/kg*K]
cv=1.005;   %Calor especifico a volumen constante [kJ/kg*K]
k=1.400;    %Relación de calores especificos [Adimensional] Formula: k=cp/cv
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 1: Nos piden calcular:
%   a)La temperatura del gas a la salida del compresor y de la turbina
%   b)la relación de trabajo de retroceso 
%   c)Eficiencia térmica
% -------------------------------------------------------------------
disp(" ")
disp(" ")
disp(" ")
disp("------------------------------------------------------------")
disp("------------------------------------------------------------")
disp("------------------------------------------------------------")
disp(" ")
disp(" ")
disp(" ")

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
%   Entropía :
%------------------------------------

S1=0;
S2=0;
S3=S2+cp*log(T3/T2)-R*log(Pr3/Pr2);
S4=S3;
S5=0;

a=1500; b=1500; r=0.1;
x=[S1 S2 -S3 -S4 S5];
y=[T1 T2 T3 T4 T1];
C=[x;y];
plot(x,y,'b')
for i=1:4
    text(x(i),y(i),['(',num2str(x(i)),',', num2str(y(i)),')' ])
end
axis([x(1)-2 x(3)+2 y(1)-2 y(3)+2])
ylim([0 1500])
xlim([-0.01 0.1])


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
disp("Temperatura a la salida de la turbina = "+T4)
disp("Temperatura a la salida del compresor = "+T2)

%------------------------------------
%   Mostrar la imagen del ciclo:
%------------------------------------
%I = imread('Simple.jpg');
%image(I)

set(handles.Etis,'String',Eta);
set(handles.Etdb,'String',EtaB);
set(handles.Cde,'String',qi);
set(handles.Cds,'String',qo);
set(handles.Tdeac,'String',wci);
set(handles.Tdsdlt,'String',wto);
set(handles.Tn,'String',wn);
set(handles.Tdr,'String',rbw);
set(handles.Talsdc,'String',T2);
set(handles.Talsdlt,'String',T4);


disp(" ")
disp("------------------------------------------------------------")
disp("------------------------------------------------------------")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
