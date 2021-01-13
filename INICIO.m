function varargout = INICIO(varargin)
% INICIO MATLAB code for INICIO.fig
%      INICIO, by itself, creates a new INICIO or raises the existing
%      singleton*.
%
%      H = INICIO returns the handle to a new INICIO or the handle to
%      the existing singleton*.
%
%      INICIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INICIO.M with the given input arguments.
%
%      INICIO('Property','Value',...) creates a new INICIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before INICIO_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to INICIO_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help INICIO

% Last Modified by GUIDE v2.5 11-Dec-2020 02:37:37

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @INICIO_OpeningFcn, ...
                   'gui_OutputFcn',  @INICIO_OutputFcn, ...
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


% --- Executes just before INICIO is made visible.
function INICIO_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to INICIO (see VARARGIN)

% Choose default command line output for INICIO
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes INICIO wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = INICIO_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in RB1.
function RB5_Callback(hObject, eventdata, handles)
% hObject    handle to RB5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hint: get(hObject,'Value') returns toggle state of RB5


% --- Executes on button press in RB2.
function RB2_Callback(hObject, eventdata, handles)
% hObject    handle to RB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RB2

% --- Executes on button press in BAceptar.
function BAceptar_Callback(hObject, eventdata, handles)
% hObject    handle to BAceptar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Salida=get(handles.Ciclo,'String');   %%%PENDIENTE DE QUE SE DEVUELVA EL VALOR DEL CICLO CON LOS RADIOBUTTONS
SalidaNum=str2double(Salida);
if SalidaNum == 1
    Ciclo01;
elseif SalidaNum == 4
    Ciclo02;
elseif SalidaNum == 2
    Ciclo03;
elseif SalidaNum == 3
    Ciclo04;
elseif SalidaNum == 5
    Ciclo05;
end

close(handles.output);


% --- Executes on button press in BCerrar.
function BCerrar_Callback(hObject, eventdata, handles)
% hObject    handle to BCerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.output);


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if hObject == handles.RB1
    set(handles.SeleccionCiclo,'String','Ciclo Brayton ideal simple');
    set(handles.Ciclo,'String',1);
elseif hObject == handles.RB2
    set(handles.SeleccionCiclo,'String','Una turbina de gas con recalentamiento e interenfriamiento');
    set(handles.Ciclo,'String',4);
elseif hObject == handles.RB3
    set(handles.SeleccionCiclo,'String','Un ciclo real de turbina de gas');
    set(handles.Ciclo,'String',2);
elseif hObject == handles.RB4
    set(handles.SeleccionCiclo,'String','Un ciclo real de turbina de gas con regeneración');
    set(handles.Ciclo,'String',3);
elseif hObject == handles.RB5
    set(handles.SeleccionCiclo,'String','Ciclo ideal para propulsión por reacción');
    set(handles.Ciclo,'String',5);
end
    
