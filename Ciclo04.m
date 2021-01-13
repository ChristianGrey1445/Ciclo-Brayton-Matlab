function varargout = Ciclo04(varargin)
% CICLO04 MATLAB code for Ciclo04.fig
%      CICLO04, by itself, creates a new CICLO04 or raises the existing
%      singleton*.
%
%      H = CICLO04 returns the handle to a new CICLO04 or the handle to
%      the existing singleton*.
%
%      CICLO04('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CICLO04.M with the given input arguments.
%
%      CICLO04('Property','Value',...) creates a new CICLO04 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ciclo04_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ciclo04_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ciclo04

% Last Modified by GUIDE v2.5 11-Dec-2020 01:12:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ciclo04_OpeningFcn, ...
                   'gui_OutputFcn',  @Ciclo04_OutputFcn, ...
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


% --- Executes just before Ciclo04 is made visible.
function Ciclo04_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ciclo04 (see VARARGIN)

a=imread('Regenerador.jpg');
image(a);
axis off

% Choose default command line output for Ciclo04
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ciclo04 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ciclo04_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

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



function EficienciaCom_Callback(hObject, eventdata, handles)
% hObject    handle to EficienciaCom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EficienciaCom as text
%        str2double(get(hObject,'String')) returns contents of EficienciaCom as a double


% --- Executes during object creation, after setting all properties.
function EficienciaCom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EficienciaCom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EficienciaTurb_Callback(hObject, eventdata, handles)
% hObject    handle to EficienciaTurb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EficienciaTurb as text
%        str2double(get(hObject,'String')) returns contents of EficienciaTurb as a double


% --- Executes during object creation, after setting all properties.
function EficienciaTurb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EficienciaTurb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EficienciaReg_Callback(hObject, eventdata, handles)
% hObject    handle to EficienciaReg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EficienciaReg as text
%        str2double(get(hObject,'String')) returns contents of EficienciaReg as a double


% --- Executes during object creation, after setting all properties.
function EficienciaReg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EficienciaReg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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

EtaCompresor2=get(handles.EficienciaCom,'String');
EtaCompresor=str2double(EtaCompresor2); %Eficiencia del compresor.

EtaTurbina2=get(handles.EficienciaTurb,'String');
EtaTurbina=str2double(EtaTurbina2); %Eficiencia de la turbina

EtaRegenerador2=get(handles.EficienciaReg,'String');
EtaRegenerador=str2double(EtaRegenerador2); %Eficiencia del regenerador

% -------------------------------------------------------------------
%   Esta sección se encarga del ciclo real de una turbina de gas con regeneración 
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
%   7.-Eficacia:
%       E=(h_5-h_2a)/(h_4a-h_2a)
%       
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%Suposiciones del aire a temperatura ambiente (25°C ó 300K):
%   a)Suponga una eficiencia del compresor de 80%
%   b)Suponga una eficiencia de la turbina de 85%
%   c)Suponga una eficiencia del regenerador de 80%

R=0.2870;   %Constante del gas [kJ/kg*K]
cp=1.005;   %Calor especifico a presión constante [kJ/kg*K]
cv=1.005;   %Calor especifico a volumen constante [kJ/kg*K]
k=1.400;    %Relación de calores especificos [Adimensional] Formula: k=cp/cv
% -------------------------------------------------------------------
% -------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Caso 1: Nos piden calcular:
%   a)La eficiencia térmica de la turbina de gas descrita en el ejemplo 9-7
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

%------------------------------------
%   Eficiencia térmica de la turbina:
%------------------------------------
disp("---------- Eficiencia térmica de la turbina --------------")
h5=EtaRegenerador*(h4a-h2a)+h2a;
qirf=h3-h5;
Etarf=wnr/qirf;

disp("h5 = "+h5)
disp("Calor de entrada = "+qirf)
disp("Eficiencia térmica de la turbina = "+Etarf)



%---------- Ideal -------------------
set(handles.Etis,'String',Eta);
set(handles.Etdb,'String',EtaB);
set(handles.Cde,'String',qi);
set(handles.Tdeac,'String',wci);
set(handles.Tdsdlt,'String',wto);
set(handles.Tn,'String',wn);
set(handles.Tdr,'String',rbw);
set(handles.Talsdc,'String',T2);
set(handles.Talsdlt,'String',T4);

%---------- Real --------------------
set(handles.Etar,'String',Etarf);
set(handles.Etdbr,'String',EtaB);
set(handles.Cder,'String',qirf);
set(handles.Tdeacr,'String',wcir);
set(handles.Tdsdltr,'String',wtor);
set(handles.Tnr,'String',wnr);
set(handles.Tdrr,'String',rbwr);
set(handles.Talsdcr,'String',T2a);
set(handles.Talsdltr,'String',T4a);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
