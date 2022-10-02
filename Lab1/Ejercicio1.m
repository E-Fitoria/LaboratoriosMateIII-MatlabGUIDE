
function varargout = Ejercicio1(varargin)

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


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EcuX_Callback(hObject, eventdata, handles)
% hObject    handle to EcuX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EcuX as text
%        str2double(get(hObject,'String')) returns contents of EcuX as a double


% --- Executes during object creation, after setting all properties.
function EcuX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EcuX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EcuY_Callback(hObject, eventdata, handles)
% hObject    handle to EcuY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EcuY as text
%        str2double(get(hObject,'String')) returns contents of EcuY as a double


% --- Executes during object creation, after setting all properties.
function EcuY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EcuY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervalo_Callback(hObject, eventdata, handles)
% hObject    handle to intervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervalo as text
%        str2double(get(hObject,'String')) returns contents of intervalo as a double


% --- Executes during object creation, after setting all properties.
function intervalo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function puntoT_Callback(hObject, eventdata, handles)
% hObject    handle to puntoT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of puntoT as text
%        str2double(get(hObject,'String')) returns contents of puntoT as a double


% --- Executes during object creation, after setting all properties.
function puntoT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to puntoT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ingresar.
function ingresar_Callback(hObject, eventdata, handles) 

    %guardar el valor de los intervalos
    interva1 = str2double(get(handles.intervalo1,'String')); 
    interva2 = str2double(get(handles.intervalo2,'String'));
    %la variable t sirve para crear los intervalos
    t = interva1:0.5:interva2;

    %X y Y guardan las ecuaciones parameticas
    x = eval(get(handles.EcuX,'String')); %el usuario debe hacer uso correcto de las operaciones con la variable t
    y = eval(get(handles.EcuY,'String'));
    %graficamos la ecuacion parametrica
    comet(x,y);
    hold on;
    grid()

    %tomamos el valor de t ingresado por el usuario
    punto1 = eval(get(handles.puntoT,'String'));
    %la pendiente es igual a la derivada dy/dx
    %(dy/dx)= (dy/dt)/(dx/dt)
    syms 't'
    x = eval(get(handles.EcuX,'String')); 
    y = eval(get(handles.EcuY,'String'));
    dx = diff(x); %se busca la derivada de x con respecto a t, en la variable x esta guardada la ecu parametrica 
    dy = diff(y); %se busca la derivada de y con respecto a t, en la variable y esta guardada la ecu parametrica 
    ecu = dy/dx; %ecuacion resultante de la derivada de ambas funciones parametricas
    m = subs(ecu,punto1); %la pendiente es igual a la sustitucio del punto1 en la varible de la ecuacion ecu

    %Ecuacuacion de la recta tangente Y-y1= m(X - x1)
    %Encontrar los puntos
    puntox = subs(x,punto1); %en la funcion x sustituimos el t por el valor del punto ingresado
    puntoy = subs(y,punto1); %en la funcion y sustituimos t por el valor del punto 
    syms 'X'
    Fun = m*(X-(puntox))+puntoy;
    %graficamos la funcion
    plot(puntox,puntoy,'*');
    fplot(Fun)

function intervalo1_Callback(hObject, eventdata, handles) 
% hObject    handle to intervalo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervalo1 as text
%        str2double(get(hObject,'String')) returns contents of intervalo1 as a double


% --- Executes during object creation, after setting all properties.
function intervalo1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervalo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervalo2_Callback(hObject, eventdata, handles)
% hObject    handle to intervalo2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervalo2 as text
%        str2double(get(hObject,'String')) returns contents of intervalo2 as a double


% --- Executes during object creation, after setting all properties.
function intervalo2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervalo2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
