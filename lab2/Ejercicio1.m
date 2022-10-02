function varargout = Ejercicio1(varargin)
% EJERCICIO1 MATLAB code for Ejercicio1.fig
%      EJERCICIO1, by itself, creates a new EJERCICIO1 or raises the existing
%      singleton*.
%
%      H = EJERCICIO1 returns the handle to a new EJERCICIO1 or the handle to
%      the existing singleton*.
%
%      EJERCICIO1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJERCICIO1.M with the given input arguments.
%
%      EJERCICIO1('Property','Value',...) creates a new EJERCICIO1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ejercicio1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ejercicio1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ejercicio1

% Last Modified by GUIDE v2.5 19-Sep-2022 23:31:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ejercicio1_OpeningFcn, ...
                   'gui_OutputFcn',  @Ejercicio1_OutputFcn, ...
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


% --- Executes just before Ejercicio1 is made visible.
function Ejercicio1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ejercicio1 (see VARARGIN)

% Choose default command line output for Ejercicio1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ejercicio1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ejercicio1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobuttonX.
function radiobuttonX_Callback(hObject, eventdata, handles)



% --- Executes on button press in radiobuttonY.
function radiobuttonY_Callback(hObject, eventdata, handles)



% --- Executes on button press in radiobuttonXY.
function radiobuttonXY_Callback(hObject, eventdata, handles)




function ingresaFun_Callback(hObject, eventdata, handles)
    

% --- Executes during object creation, after setting all properties.
function ingresaFun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ingresaFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervaX1_Callback(hObject, eventdata, handles)
% hObject    handle to intervaX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervaX1 as text
%        str2double(get(hObject,'String')) returns contents of intervaX1 as a double


% --- Executes during object creation, after setting all properties.
function intervaX1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervaX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervaY1_Callback(hObject, eventdata, handles)
% hObject    handle to intervaY1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervaY1 as text
%        str2double(get(hObject,'String')) returns contents of intervaY1 as a double


% --- Executes during object creation, after setting all properties.
function intervaY1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervaY1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervaX2_Callback(hObject, eventdata, handles)
% hObject    handle to intervaX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervaX2 as text
%        str2double(get(hObject,'String')) returns contents of intervaX2 as a double


% --- Executes during object creation, after setting all properties.
function intervaX2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervaX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervaY2_Callback(hObject, eventdata, handles)
% hObject    handle to intervaY2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervaY2 as text
%        str2double(get(hObject,'String')) returns contents of intervaY2 as a double


% --- Executes during object creation, after setting all properties.
function intervaY2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervaY2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnRegresar.
function btnRegresar_Callback(hObject, eventdata, handles)
    Portada()
    

% --- Executes on button press in btnGraficar.
function btnGraficar_Callback(hObject, eventdata, handles)

  try  
   %ejemplos z = x.^2+y.^2 ; z=x.^2  ;   
    syms x;
    syms y; 
    
    %tomamos los valores de los botones circulares, si es uno significa que
    %esta marcado
    RadioBtnXY = get(handles.radiobuttonXY,'Value');
    RadioBtnX = get(handles.radiobuttonX,'Value');
    RadioBtnY = get(handles.radiobuttonY,'Value');
    RadioBtnFigure = get(handles.radiobuttonFigure,'Value');
    RadioBtnInterfaz = get(handles.radiobuttonInterfaz,'Value');
    
    %intervalos
    x1 = eval(get(handles.intervaX1,'String'));
    x2 = eval(get(handles.intervaX2,'String'));
    y1 = eval(get(handles.intervaY1,'String'));
    y2 = eval(get(handles.intervaY2,'String'));
    
    %usamos meshgrid para el vector 
    
    [x,y] = meshgrid(x1:0.1:x2 , y1:0.1:y2);
    
    %inline sirve para crear una funcion apartir de un string
    funcion = inline(get(handles.ingresaFun,'String'));
    
    %aca validamos
        if (RadioBtnFigure == 1)
            
            if(RadioBtnXY == 1)
                z = funcion(x,y);
            end
            
            if (RadioBtnX == 1)
                z = funcion(x);
            end
            
            if (RadioBtnY == 1)
                z = funcion(y);
            end
            
            Pantalla1()
            mesh(z)
        end 
        
        if (RadioBtnInterfaz == 1)
            
               if(RadioBtnXY == 1)
                    z = funcion(x,y);
               end
            
               if (RadioBtnX == 1)
                    z = funcion(x);
               end
            
                if (RadioBtnY == 1)
                    z = funcion(y);
                end
            
            
               Pantalla1()
               subplot(2,2,1); 
               mesh(z);
               
               %curvas de nivel 3d
               subplot(2,2,2);
               contour3(z);
               
               %curvas de nivel 2d
               subplot(2,2,3);
               contour(z);
               
               %superficie y mapa de contorno
               subplot(2,2,4)
               meshc(z)
        end
catch 
      set(handles.MensajeError,'String','Ingrese valores correctos para la funcion');         
end
    
% --- Executes on button press in radiobuttonFigure.
function radiobuttonFigure_Callback(hObject, eventdata, ~)
% hObject    handle to radiobuttonFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonFigure


% --- Executes on button press in radiobuttonInterfaz.
function radiobuttonInterfaz_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonInterfaz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonInterfaz



function MensajeError_Callback(hObject, eventdata, handles)
% hObject    handle to MensajeError (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MensajeError as text
%        str2double(get(hObject,'String')) returns contents of MensajeError as a double


% --- Executes during object creation, after setting all properties.
function MensajeError_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MensajeError (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
