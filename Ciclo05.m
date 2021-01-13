function varargout = Ciclo05(varargin)
% CICLO05 MATLAB code for Ciclo05.fig
%      CICLO05, by itself, creates a new CICLO05 or raises the existing
%      singleton*.
%
%      H = CICLO05 returns the handle to a new CICLO05 or the handle to
%      the existing singleton*.
%
%      CICLO05('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CICLO05.M with the given input arguments.
%
%      CICLO05('Property','Value',...) creates a new CICLO05 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ciclo05_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ciclo05_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ciclo05

% Last Modified by GUIDE v2.5 11-Dec-2020 02:12:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ciclo05_OpeningFcn, ...
                   'gui_OutputFcn',  @Ciclo05_OutputFcn, ...
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


% --- Executes just before Ciclo05 is made visible.
function Ciclo05_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ciclo05 (see VARARGIN)

a=imread('Turbojet.jpg');
image(a);
axis off

% Choose default command line output for Ciclo05
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ciclo05 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ciclo05_OutputFcn(hObject, eventdata, handles) 
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


function RelPre_Callback(hObject, eventdata, handles)
% hObject    handle to RelPre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RelPre as text
%        str2double(get(hObject,'String')) returns contents of RelPre as a double


% --- Executes during object creation, after setting all properties.
function RelPre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RelPre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tda_Callback(hObject, eventdata, handles)
% hObject    handle to Tda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tda as text
%        str2double(get(hObject,'String')) returns contents of Tda as a double


% --- Executes during object creation, after setting all properties.
function Tda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tdealt_Callback(hObject, eventdata, handles)
% hObject    handle to Tdealt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tdealt as text
%        str2double(get(hObject,'String')) returns contents of Tdealt as a double


% --- Executes during object creation, after setting all properties.
function Tdealt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tdealt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fm_Callback(hObject, eventdata, handles)
% hObject    handle to Fm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fm as text
%        str2double(get(hObject,'String')) returns contents of Fm as a double


% --- Executes during object creation, after setting all properties.
function Fm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vda_Callback(hObject, eventdata, handles)
% hObject    handle to Vda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vda as text
%        str2double(get(hObject,'String')) returns contents of Vda as a double


% --- Executes during object creation, after setting all properties.
function Vda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pda_Callback(hObject, eventdata, handles)
% hObject    handle to Pda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pda as text
%        str2double(get(hObject,'String')) returns contents of Pda as a double


% --- Executes during object creation, after setting all properties.
function Pda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pda (see GCBO)
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
rpTEM=get(handles.RelPre,'String');
rp=str2double(rpTEM);   %Relación de presión [Adimensional]

VavionTEM=get(handles.Vda,'String');
Vavion=str2double(VavionTEM);  %Velocidad del avión [pies/s]

PresionAireTEM=get(handles.Pda,'String');
PresionAire=str2double(PresionAireTEM);  %Densidad del aire a la altura de vuelo [psia]

TAireTEM=get(handles.Tda,'String');
TAire=str2double(TAireTEM);  %Temperatura del aire a la altura de vuelo [°F]

TTTEM=get(handles.Tdealt,'String');
TT=str2double(TTTEM);  %Temperatura en la entrada de la turbina [°F]

mTEM=get(handles.Fm,'String');
m=str2double(mTEM);   %Tasa de entrada del aire al compresor [lbm/s]

TC=300; %NOTA: Este no lo ocupamos.

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

% -------------------------------------------------------------------
%   Conversión de unidades:%%%%%Pendiente hacer una función para esto.
TAire=TAire+459.67;  %Temperatura del aire a la altura de vuelo [R]
Vavion2=(1/25037)*Vavion^2;    %%Velocidad cuadrada del avión [Btu/lbm]
TT=TT+459.67;    %Temperatura en la entrada de la turbina [R]
cpP=0.240*(25037);   %Calor especifico a presión constante [ft^2/s^2*R]
cvP=0.171*(25037);   %Calor especifico a volumen constante [ft^2/s^2*R]
mT=m*(1/25037);   %Tasa de entrada del aire al compresor [Btu*s/pie^2]
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


set(handles.Velsdlt,'String',VTo);
set(handles.Cde,'String',Qin);
set(handles.Cds,'String',Qout);
set(handles.Pdp,'String',Wp);
set(handles.Edec,'String',EC);
set(handles.Pcds,'String',EtaQout);
set(handles.Ppdp,'String',EtaP);
set(handles.Pedec,'String',EtaEC);




%------------------------------------
%   Mostrar la imagen del ciclo:
%------------------------------------
%I = imread('Simple.jpg');
%image(I)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
