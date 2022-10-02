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

% Last Modified by GUIDE v2.5 26-Sep-2022 21:38:07

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




function ingresaFun_Callback(hObject, eventdata, handles)
    
    z = str2sym(get(hObject,'String'));

setappdata(handles.ingresaFun,'Funcion',z);



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


% --- Executes on button press in btnCalcular.
function btnCalcular_Callback(hObject, eventdata, handles)

    syms x y
    
    %llamamos a nuestra funcion ingresada con la funcion getappdata y le
    %asiganamos el valor a z
    z = getappdata(handles.ingresaFun,'Funcion');
    %calculamos las derivadas parciales
    Dx = diff(z,x,1);
    Dxx = diff(z,x,2);
    Dy = diff(z,y,1);
    Dyy = diff(z,x,2);
    %mostramos las deviradas parciales    
    set(handles.VerFx,'String',string(Dx));
    set(handles.VerFxx,'String',string(Dxx));
    set(handles.VerFy,'String',string(Dy));
    set(handles.VerFyy,'String',string(Dyy));

setappdata(handles.btnCalcular,'Dy',Dy);
setappdata(handles.btnCalcular,'Dx',Dx);
    
    


% --- Executes during object creation, after setting all properties.
function VerFx_CreateFcn(hObject, eventdata, handles)
    


% --- Executes on button press in btnRegresar.
function btnRegresar_Callback(hObject, eventdata, handles)
    Portada()



function IngresaPunto_Callback(hObject, eventdata, handles)

   


% --- Executes during object creation, after setting all properties.
function IngresaPunto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IngresaPunto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnGraficar.
function btnGraficar_Callback(hObject, eventdata, handles)

   %f(x,y) = x.^2*y*cos(x+y.^2)+x*y+1  P(pi,0)
    Dy = getappdata(handles.btnCalcular,'Dy');
    Dx = getappdata(handles.btnCalcular,'Dx');
    Px = getappdata(handles.ingresaPx,'x');
    Py = getappdata(handles.IngresaPy,'y');
    
    %Grafica de superficie
    [x,y]=meshgrid(-2:0.2:2, -3:0.2:3);
    z = eval(getappdata(handles.ingresaFun,'Funcion')); 
    %cuando se grafica la funcion se crea una matriz para graficarla
    surf(x,y,z); 
    
    %Operaciones para encontrar el Plano Tangente 
    syms x y
    %volvemos a definir la funcion para poder hacer operaciones algebraicas
    %como lo es la sustitucion 
    z = getappdata(handles.ingresaFun,'Funcion'); 
    z0 = subs(z,[x,y],[Px,Py]);
    fx = subs(Dx,[x,y],[Px,Py]);
    fy = subs(Dy,[x,y],[Px,Py]);
    [x,y] =meshgrid(-2:0.2:2, -3:0.2:3);
    Plano = eval( z0+fx*(x - Px)+fy*(y - Py) );
    hold on
    surf(x,y,Plano);
    syms x y z

%     [x,y] =meshgrid(-1.5:0.1:1.5) ;
%     z=2-x.^2-y.^2;
%     surf(x,y,z)
%     hold on
%     [x,y] =meshgrid(-2:0.1:2) ;
%     z=0*ones(length(x));
%     mesh(x,y,z)

    
   
    

    


% --- Executes on button press in btnVerR2.
function btnVerR2_Callback(hObject, eventdata, handles)
% hObject    handle to btnVerR2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function ingresaPx_Callback(hObject, eventdata, handles)
    
    x = str2double(get(hObject,'String'));
    
setappdata(handles.ingresaPx,'x',x);



% --- Executes during object creation, after setting all properties.
function ingresaPx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ingresaPx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IngresaPy_Callback(hObject, eventdata, handles)
    y = str2double(get(hObject,'String'));
    
setappdata(handles.IngresaPy,'y',y);

% --- Executes during object creation, after setting all properties.
function IngresaPy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IngresaPy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ingresaPz_Callback(hObject, eventdata, handles)
% hObject    handle to ingresaPz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ingresaPz as text
%        str2double(get(hObject,'String')) returns contents of ingresaPz as a double


% --- Executes during object creation, after setting all properties.
function ingresaPz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ingresaPz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
