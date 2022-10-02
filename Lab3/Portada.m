function varargout = Portada(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Portada_OpeningFcn, ...
                   'gui_OutputFcn',  @Portada_OutputFcn, ...
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


% --- Executes just before Portada is made visible.
function Portada_OpeningFcn(hObject, eventdata, handles, varargin)
    
    axes(handles.uni)
    logo_uni = imread('Logo_UNI.png'); %cargar la imagen
    axis off
    %tamanio = imref2d(size(logo_uni)); %conseguir su tamanio
    %tamanio.XWorldLimits = [0 3]; 
    %tamanio.YWorldLimits = [2 5];
    %figure
    imshow(logo_uni) %mostrar
  
handles.output = hObject;
guidata(hObject, handles);

% UIWAIT makes Portada wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Portada_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnSiguiente.
function btnSiguiente_Callback(hObject, eventdata, handles)
   Ejercicio1()
