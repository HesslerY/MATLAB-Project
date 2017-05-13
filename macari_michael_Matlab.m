function varargout = macari_michael_Matlab(varargin)
% MACARI_MICHAEL_MATLAB MATLAB code for macari_michael_Matlab.fig
%      MACARI_MICHAEL_MATLAB, by itself, creates a new MACARI_MICHAEL_MATLAB or raises the existing
%      singleton*.
%
%      H = MACARI_MICHAEL_MATLAB returns the handle to a new MACARI_MICHAEL_MATLAB or the handle to
%      the existing singleton*.
%
%      MACARI_MICHAEL_MATLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MACARI_MICHAEL_MATLAB.M with the given input arguments.
%
%      MACARI_MICHAEL_MATLAB('Property','Value',...) creates a new MACARI_MICHAEL_MATLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before macari_michael_Matlab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to macari_michael_Matlab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help macari_michael_Matlab

% Last Modified by GUIDE v2.5 22-Nov-2015 20:54:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @macari_michael_Matlab_OpeningFcn, ...
                   'gui_OutputFcn',  @macari_michael_Matlab_OutputFcn, ...
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


% --- Executes just before macari_michael_Matlab is made visible.
function macari_michael_Matlab_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to macari_michael_Matlab (see VARARGIN)

% Choose default command line output for macari_michael_Matlab
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes macari_michael_Matlab wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = macari_michael_Matlab_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function SXin_Callback(hObject, eventdata, handles)
% hObject    handle to SXin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SXin as text
%        str2double(get(hObject,'String')) returns contents of SXin as a double


% --- Executes during object creation, after setting all properties.
function SXin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SXin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SYin_Callback(hObject, eventdata, handles)
% hObject    handle to SYin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SYin as text
%        str2double(get(hObject,'String')) returns contents of SYin as a double


% --- Executes during object creation, after setting all properties.
function SYin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SYin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SZin_Callback(hObject, eventdata, handles)
% hObject    handle to SZin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SZin as text
%        str2double(get(hObject,'String')) returns contents of SZin as a double


% --- Executes during object creation, after setting all properties.
function SZin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SZin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SphereCalc.
function SphereCalc_Callback(hObject, eventdata, handles)

a = str2double(get(handles.SXin, 'String'));
b = str2double(get(handles.SYin, 'String'));
c = str2double(get(handles.SZin, 'String'));
d = sqrt(a^2 + b^2 + c^2);

vS = (4/3)*pi*(d^3);
sA = 4*pi*(d^2);

set(handles.radius, 'String',d);
set(handles.sA, 'String',sA);
set(handles.volS, 'String',vS);

axes(handles.axes1);
[x,y,z] = sphere;
p = [a b c d];
surf(x*p(1,4)+ p(1,1),y*p(1,4)+p(1,2),z*p(1,4) + p(1,3));
%surf(x*p(1,1),y*p(1,2),z*p(1,3)); <-----Ellipse
xlim([-50 50])
zlim([-50 50])
ylim([-50 50])

% hObject    handle to SphereCalc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1



function EXin_Callback(hObject, eventdata, handles)
% hObject    handle to EXin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EXin as text
%        str2double(get(hObject,'String')) returns contents of EXin as a double


% --- Executes during object creation, after setting all properties.
function EXin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EXin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EYin_Callback(hObject, eventdata, handles)
% hObject    handle to EYin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EYin as text
%        str2double(get(hObject,'String')) returns contents of EYin as a double


% --- Executes during object creation, after setting all properties.
function EYin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EYin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EZin_Callback(hObject, eventdata, handles)
% hObject    handle to EZin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EZin as text
%        str2double(get(hObject,'String')) returns contents of EZin as a double


% --- Executes during object creation, after setting all properties.
function EZin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EZin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in EllipseCalc.
function EllipseCalc_Callback(hObject, eventdata, handles)
a = str2double(get(handles.EXin, 'String'));
b = str2double(get(handles.EYin, 'String'));
c = str2double(get(handles.EZin, 'String'));
A = abs(a);
B = abs(b);
C = abs(c);

vS = (4/3)*pi*A*B*C;
sA = 4*pi*((((A^1.6*B^1.6)+(A^1.6*C^1.6)+(B^1.6*C^1.6))/3)^(1/1.6));

set(handles.SAe, 'String',sA);
set(handles.VAe, 'String',vS);

axes(handles.axes2);
[x,y,z] = sphere;
p = [a b c];
surf(x*p(1,1),y*p(1,2),z*p(1,3));
xlim([-50 50])
zlim([-50 50])
ylim([-50 50])






function CXp_Callback(hObject, eventdata, handles)
% hObject    handle to CXp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CXp as text
%        str2double(get(hObject,'String')) returns contents of CXp as a double


% --- Executes during object creation, after setting all properties.
function CXp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CXp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CYp_Callback(hObject, eventdata, handles)
% hObject    handle to CYp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CYp as text
%        str2double(get(hObject,'String')) returns contents of CYp as a double


% --- Executes during object creation, after setting all properties.
function CYp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CYp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CZp_Callback(hObject, eventdata, handles)
% hObject    handle to CZp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CZp as text
%        str2double(get(hObject,'String')) returns contents of CZp as a double


% --- Executes during object creation, after setting all properties.
function CZp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CZp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CubeCalc.
function CubeCalc_Callback(hObject, eventdata, handles)

a = str2double(get(handles.CXp, 'String'));
b = str2double(get(handles.CYp, 'String'));
c = str2double(get(handles.CZp, 'String'));

h = abs(c);
if (abs(a)>abs(b))
    k = abs(a);
    l = abs(b);
    Q = (k-l)/(k+l);
vC = (pi*h*k*l)/4;
sC = (pi*k*l/2) + ((pi*h/2)*(k+l)*(1 + (Q^2)/4 + (Q^4)/64 + (Q^6)/256));
elseif (abs(b)>abs(a))
    k = abs(b);
    l = abs(a);
    Q = (k-l)/(k+l);
vC = (pi*h*k*l)/4;
sC = (pi*k*l/2) + ((pi*h/2)*(k+l)*(1 + (Q^2)/4 + (Q^4)/64 + (Q^6)/256));
elseif (abs(b)==abs(a))
    r = abs(a)/2;
  sC = (2*pi*r*abs(c)) + (2*pi*(r^2));
  vC = pi*(r^2)*h;
end

set(handles.CSc, 'String',sC);
set(handles.CVc, 'String',vC);

axes(handles.axes3);
[x,y,z] = cylinder;
p = [a b c];
surf(x*p(1,1),y*p(1,2),z*p(1,3));
xlim([-50 50])
zlim([-50 50])
ylim([-50 50])



function Xmax_Callback(hObject, eventdata, handles)
% hObject    handle to Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xmax as text
%        str2double(get(hObject,'String')) returns contents of Xmax as a double


% --- Executes during object creation, after setting all properties.
function Xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ymax_Callback(hObject, eventdata, handles)
% hObject    handle to Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ymax as text
%        str2double(get(hObject,'String')) returns contents of Ymax as a double


% --- Executes during object creation, after setting all properties.
function Ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zmax_Callback(hObject, eventdata, handles)
% hObject    handle to Zmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Zmax as text
%        str2double(get(hObject,'String')) returns contents of Zmax as a double


% --- Executes during object creation, after setting all properties.
function Zmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Zmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
