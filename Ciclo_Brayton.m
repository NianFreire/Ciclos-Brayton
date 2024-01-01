function varargout = Ciclo_Brayton(varargin)
% CICLO_BRAYTON MATLAB code for Ciclo_Brayton.fig
%      Ciclo_Brayton, by itself, creates a new CICLO_BRAYTON or raises the existing
%      singleton*.
%
%      H = Ciclo_Brayton returns the handle to a new Ciclo_Brayton or the handle to
%      the existing singleton*.
%
%      Ciclo_Brayton('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CICLO_BRAYTON.M with the given input arguments.
%
%      Ciclo_Brayton('Property','Value',...) creates a new Ciclo_Brayton or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ciclo_Brayton_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ciclo_Brayton_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ciclo_Brayton

% Last Modified by GUIDE v2.5 21-Jun-2016 20:44:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ciclo_Brayton_OpeningFcn, ...
                   'gui_OutputFcn',  @Ciclo_Brayton_OutputFcn, ...
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


% --- Executes just before Ciclo_Brayton is made visible.
function Ciclo_Brayton_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ciclo_Brayton (see VARARGIN)

% Choose default command line output for Ciclo_Brayton
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ciclo_Brayton wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clc
movegui('center')
set(handles.radiobutton3, 'Value', 1);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);
axes(handles.axes1);
imageR=imread('Ciclos_Ref.png');
image(imageR);
axis off
axis image
yh=get(handles.pushbutton1, 'Value');
if yh==1
    cla 
end
axes(handles.axes2);
image1=imread('Logo_EEL.jpg');
image(image1);
axis off
axis image
axes(handles.axes3);
image2=imread('Logo_USP.jpg');
image(image2);
axis off
axis image


% --- Outputs from this function are returned to the command line.
function varargout = Ciclo_Brayton_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton1,'Visible','Off');
set(handles.togglebutton2,'Visible','On');
set(handles.togglebutton3,'Visible','On');
set(handles.uipanel3,'Visible','On');
set(handles.radiobutton1,'Visible','On');
set(handles.radiobutton2,'Visible','On');

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton1,'Visible','On');
set(handles.togglebutton2,'Visible','Off');
set(handles.togglebutton3,'Visible','Off');
set(handles.uipanel3,'Visible','Off');
set(handles.radiobutton1,'Visible','Off');
set(handles.radiobutton2,'Visible','Off');

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton3,'Visible','Off');
set(handles.togglebutton4,'Visible','On');
set(handles.togglebutton2,'Visible','Off');
set(handles.uipanel5,'Visible','On');
set(handles.togglebutton5,'Visible','On');
set(handles.radiobutton6,'Visible','On');
set(handles.radiobutton7,'Visible','On');

% Hint: get(hObject,'Value') returns toggle state of togglebutton3


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton3,'Visible','On');
set(handles.togglebutton4,'Visible','Off');
set(handles.togglebutton2,'Visible','On');
set(handles.uipanel5,'Visible','Off');
set(handles.togglebutton5,'Visible','Off');
set(handles.radiobutton6,'Visible','Off');
set(handles.radiobutton7,'Visible','Off');

% Hint: get(hObject,'Value') returns toggle state of togglebutton4


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton5,'Visible','Off');
set(handles.togglebutton6,'Visible','On');
set(handles.togglebutton4,'Visible','Off');
set(handles.pushbutton1,'Visible','On');
set(handles.uipanel6,'Visible','On');
set(handles.text2,'Visible','On');
set(handles.text3,'Visible','On');
set(handles.text4,'Visible','On');
set(handles.text5,'Visible','On');
set(handles.edit1,'Visible','On');
set(handles.edit2,'Visible','On');
set(handles.edit3,'Visible','On');
set(handles.edit4,'Visible','On');
index2=get(handles.radiobutton4, 'Value');
index3=get(handles.radiobutton5, 'Value');
Irr2=get(handles.radiobutton7, 'Value');
if index2==1
    set(handles.uipanel7,'Visible','On');
    set(handles.text9,'Visible','On');
    set(handles.edit7,'Visible','On');
end
if index3==1
    set(handles.uipanel7,'Visible','On');
    set(handles.text9,'Visible','On');
    set(handles.edit7,'Visible','On');
end
if Irr2==1
    set(handles.uipanel7,'Visible','On');
    set(handles.text10,'Visible','On');
    set(handles.edit8,'Visible','On');
    set(handles.text11,'Visible','On');
    set(handles.edit9,'Visible','On');
end

% Hint: get(hObject,'Value') returns toggle state of togglebutton5


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton5,'Visible','On');
set(handles.togglebutton6,'Visible','Off');
set(handles.togglebutton4,'Visible','On');
set(handles.pushbutton1,'Visible','Off');
set(handles.uipanel6,'Visible','Off');
set(handles.uipanel7,'Visible','Off');
set(handles.text9,'Visible','Off');
set(handles.text10,'Visible','Off');
set(handles.text11,'Visible','Off');
set(handles.edit7,'Visible','Off');
set(handles.edit8,'Visible','Off');
set(handles.edit9,'Visible','Off');
set(handles.text2,'Visible','Off');
set(handles.text3,'Visible','Off');
set(handles.text4,'Visible','Off');
set(handles.text5,'Visible','Off');
set(handles.edit1,'Visible','Off');
set(handles.edit2,'Visible','Off');
set(handles.edit3,'Visible','Off');
set(handles.edit4,'Visible','Off');


% Hint: get(hObject,'Value') returns toggle state of togglebutton6


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Visible','Off');
set(handles.pushbutton2,'Visible','On');
set(handles.togglebutton6,'Visible','Off');
set(handles.uipanel8,'Visible','On');
set(handles.text13,'Visible','On');
set(handles.text14,'Visible','On');
set(handles.text15,'Visible','On');
set(handles.text16,'Visible','On');
set(handles.edit10,'Visible','On');
set(handles.edit11,'Visible','On');
set(handles.edit12,'Visible','On');
set(handles.edit13,'Visible','On');
Ptab_ar=[1 2 3 4 5 6 8 10 20 30 40 50 100 150 200];
Ptab_co2=[1 2 3 4 5 7.5 10 20 30 40 50 60 70 80 90 100 120 150 170 200];
Ttab_ar=[-26.85 26.85 126.85 226.85 326.85 426.85 526.85 626.85 726.85 826.85 926.85 1026.85 1126.85 1226.85 1326.85 1426.85];
Ttab_co2=[0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200 250 300 350 400 450 500 550 600];
Ear=[199.7648	199.2024	198.742	198.2815	197.7872	197.293	196.305	195.3166	190.198	184.9868	179.75	174.51	148.7	133.12	117.54; 300.4648	300.0725	299.934	299.7954	299.5755	299.355	298.921	298.487	296.3166	294.1462	291.94	289.74	280.19	273.03	265.86; 401.4796	401.174	401.159	401.1449	401.0345	400.924	400.706	400.487	399.4018	398.3166	397.24	396.17	391.82	388.73	385.64; 503.8166	503.384	503.353	503.6867	503.6305	503.574	503.436	503.2972	505.7306	502.312	501.78	501.24	499.62	498.78	497.93; 607.9805	607.4586	607.692	607.9256	607.9018	607.878	607.820	607.761	607.6147	607.4684	607.27	607.08	607.15	607.74	608.32; 714.3249	713.8121	714.079	714.345	714.3511	714.357	714.368	714.3786	714.4323	714.486	714.56	714.64	715.81	717.40	718.99; 823.0693	822.5483	822.846	823.1443	823.1668	823.189	823.229	823.2693	823.523	823.7767	823.99	824.21	826.24	828.54	830.84; 933.9989	933.5635	933.909	934.2551	934.3051	934.355	934.384	934.4137	934.7063	935.2674	935.57	935.88	938.5	941.37	944.23; 1046.8775	1046.7196	1047.073	1047.4261	1047.5444	1047.663	1047.770	1047.8775	1047.8775	1048.8775	1049.20	1049.52	1052.62	1055.91	1059.19; 1162.146	1161.7403	1162.044	1162.3474	1162.4541	1162.561	1162.853	1163.146	1163.4145	1164.146	1164.55	1164.95	1168.4	1172.03	1175.66; 1278.683	1278.453	1278.943	1279.433	1279.558	1279.683	1279.683	1279.683	1280.683	1280.683	1281.33	1281.98	1285.74	1289.64	1293.54; 1369.8117	1370.6865	1371.103	1371.5195	1372.4842	1373.449	1374.790	1376.0085	1383.7383	1390.7625	1395.59	1400.41	1404.42	1408.55	1412.67; 1479.1337	1516.0912	1498.721	1481.3509	1482.5193	1483.688	1485.379	1486.9376	1496.521	1505.4894	1512.77	1520.06	1524.27	1528.59	1532.91; 1588.7381	1636.7058	1614.099	1591.493	1592.8747	1594.256	1596.316	1598.2336	1609.7667	1620.7886	1630.82	1640.85	1645.23	1649.69	1654.14; 1698.6069	1758.3218	1730.124	1701.9256	1703.5298	1705.134	1707.579	1709.8733	1723.4461	1736.6244	1749.61	1762.6	1767.13	1771.38	1775.62; 1880.732	1880.8356	1880.928	1881.0199	1881.112	1881.202	1881.381	1881.5608	1882.4931	1883.3904	1884.31	1885.22	1889.88	1894.58	1899.27];
Sar=[6.461	6.2614	6.185	6.1093	6.0298	5.950	5.8668	5.7833	5.5657	5.4301	5.338	5.245	4.947	4.788	4.629; 6.872	6.6702	6.597	6.5232	6.4448	6.366	6.2853	6.2041	5.9991	5.8762	5.796	5.715	5.486	5.362	5.238; 7.1607	6.961	6.887	6.8127	6.7347	6.657	6.5765	6.4963	6.2984	6.1738	6.097	6.021	5.808	5.696	5.584; 7.3872	7.1892	7.115	7.0399	6.9618	6.884	6.8024	6.7212	6.5227	6.404	6.330	6.256	6.048	5.941	5.834; 7.5776	7.3788	7.305	7.2304	7.1526	7.075	6.9948	6.9149	6.7149	6.5969	6.523	6.449	6.244	6.140	6.036; 7.7423	7.5428	7.469	7.395	7.3173	7.240	7.1599	7.0803	6.8803	6.7625	6.689	6.615	6.412	6.309	6.206; 7.888	7.6878	7.614	7.5409	7.4637	7.386	7.3086	7.2308	7.0262	6.9259	6.843	6.761	6.559	6.457	6.355; 8.0188	7.8187	7.746	7.6723	7.5959	7.519	7.4447	7.3699	7.1578	7.0861	6.990	6.893	6.692	6.591	6.489; 8.1381	7.9378	7.865	7.7916	7.7139	7.636	7.5562	7.4763	7.2771	7.1601	7.086	7.012	6.812	6.711	6.61; 8.2479	8.0473	7.974	7.9014	7.8238	7.746	7.6664	7.5867	7.3869	7.2699	7.196	7.122	6.922	6.822	6.721; 8.3498	8.1488	8.076	8.0033	7.9256	7.848	7.7679	7.688	7.4888	7.372	7.298	7.224	7.024	6.924	6.824; 8.4524	8.2434	8.177	8.1097	8.0332	7.957	7.8803	7.8011	7.6022	7.5061	7.413	7.319	7.119	7.019	6.919; 8.5418	8.3322	8.266	8.1999	8.1237	8.047	7.9715	7.8927	7.6948	7.6007	7.504	7.407	7.208	7.108	7.008; 8.6259	8.4154	8.350	8.2849	8.2089	8.133	8.0574	7.9789	7.782	7.6898	7.590	7.491	7.291	7.192	7.092; 8.7053	8.4938	8.430	8.3652	8.2894	8.214	8.1386	8.0605	7.8644	7.7741	7.672	7.569	7.37	7.271	7.171; 8.7638	8.568	8.480	8.3926	8.3049	8.265	8.1855	8.106	7.9068	7.875	7.760	7.644	7.444	7.345	7.245];
Eco2=[484.9	483.725	482.55	481.375	480.2	477.10	474	460	442.22	199.5	198.5	197.7	197.1	196.5	196	195.5	194.94	194.1	193.86	193.5; 493.2	492.125	491.05	489.975	488.9	486.10	483.3	470.84	455.98	436.55	224.6	222.8	221.3	220.04	218.97	218.06	216.57	214.98	214.23	213.44; 501.6	500.625	499.65	498.675	497.7	495.10	492.5	481.32	468.46	452.99	432.38	254.3	249.9	246.91	244.58	242.7	239.82	236.84	235.43	233.87; 510.1	509.2	508.30	507.400	506.5	504.10	501.7	491.57	480.2	467.15	451.44	430.71	392.71	284.04	276.32	271.62	265.57	260.1	257.65	255; 518.7	517.85	517.00	516.150	515.3	513.10	510.9	501.65	491.46	480.1	467.13	451.72	432.12	402.9	343.78	313.04	296.06	285.48	281.32	277.02; 527	526.325	525.65	524.975	524.3	522.25	520.2	511.63	502.39	492.31	481.15	468.57	453.99	436.37	413.81	384.07	336.41	314	306.9	300.13; 536.2	535.45	534.70	533.950	533.2	531.30	529.4	521.54	513.09	504.02	494.19	483.44	471.53	458.13	442.78	425.02	384.62	346.54	334.84	324.5; 545.15	544.438	543.73	543.013	542.3	540.53	538.75	531.41	523.64	515.39	506.59	497.16	486.98	475.93	463.86	450.65	421.19	381.2	364.75	350.07; 554.1	553.425	552.75	552.075	551.4	549.75	548.1	541.26	534.07	526.51	518.54	510.11	501.18	491.69	481.59	470.85	447.64	412.79	394.53	376.23; 563.2	562.56	561.92	561.287	560.65	559.10	557.55	551.11	544.42	537.45	530.16	522.55	514.57	506.21	497.46	488.31	468.98	439.36	421.85	401.91; 572.3	571.7	571.10	570.500	569.9	568.45	567	560.97	554.73	548.26	541.55	534.6	527.38	519.9	512.15	504.14	487.47	461.95	446.04	426.19; 581.7	581.13	580.56	579.990	579.42	578.03	576.64	570.85	565	558.97	552.76	546.36	539.77	532.99	526.02	518.88	504.18	481.79	467.51	448.67; 591.1	590.56	590.02	589.480	588.94	587.61	586.28	580.76	575.26	569.62	563.84	557.92	551.85	545.65	539.32	532.86	519.68	499.73	486.88	469.36; 600.5	599.99	599.48	598.970	598.46	597.19	595.92	590.69	585.51	580.22	574.82	569.31	563.7	557.98	552.17	546.28	534.32	516.33	504.68	488.49; 609.9	609.42	608.94	608.460	607.98	606.77	605.56	600.66	595.77	590.8	585.73	580.59	575.36	570.06	564.7	559.28	548.33	531.94	521.31	506.35; 619.3	618.85	618.40	617.950	617.5	616.35	615.2	610.68	606.05	601.35	596.59	591.77	586.88	581.95	576.97	571.95	561.86	546.8	537.03	523.19; 629.08	628.65	628.22	627.790	627.36	626.26	625.16	620.73	616.35	611.9	607.41	602.88	598.3	593.68	589.03	584.37	575	561.09	552.06	539.21; 638.86	638.45	638.04	637.630	637.22	636.17	635.12	630.84	626.67	622.46	618.22	613.94	609.63	605.29	600.94	596.58	587.86	574.92	566.54	554.57; 648.64	648.25	647.86	647.470	647.08	646.08	645.08	641.08	637.08	632.98	628.9	624.76	620.64	616.82	612.73	608.64	600.47	588.4	580.58	569.39; 658.42	658.05	657.68	657.310	656.94	655.99	655.04	651.24	647.44	643.54	639.7	635.78	631.92	627.98	624.1	620.14	612.9	601.59	594.27	583.77; 668.2	667.85	667.50	667.150	666.8	665.90	665	661.4	657.8	654.1	650.5	646.8	643.2	639.5	635.9	632.2	625.08	614.54	607.66	597.79; 719.7	719.413	719.13	718.838	718.55	717.80	717.05	714.05	711.05	708	705.05	702.05	699.1	696.1	693.15	690.15	684.43	675.85	670.47	662.4; 771.2	770.975	770.75	770.525	770.3	769.70	769.1	766.7	764.3	761.9	759.6	757.3	755	752.7	750.4	748.1	743.78	737.3	733.26	727.2; 825.65	825.45	825.25	825.050	824.85	824.35	823.85	821.8	819.8	817.75	815.8	813.9	811.95	810	808.1	806.2	802.58	797.15	793.81	788.8; 880.1	879.925	879.75	879.575	879.4	879.00	878.6	876.9	875.3	873.6	872	870.5	868.9	867.3	865.8	864.3	861.38	857	854.36	850.4; 936.95	936.8	936.65	936.500	936.35	936.00	935.65	934.25	932.85	931.45	930.05	928.75	927.4	926.1	924.8	923.55	921.09	917.4	915.18	911.85; 993.8	993.675	993.55	993.425	993.3	993.00	992.7	991.6	990.4	989.3	988.1	987	985.9	984.9	983.8	982.8	980.8	977.8	976	973.3; 1052.9	1052.713	1052.55	1052.388	1052.15	1052.00	1051.85	1050.8	1049.7	1048.65	1048.05	1047	1045.95	1044.95	1044.4	1043.4	1041.8	1039.4	1037.9	1035.65; 1112	1111.75	1111.50	1111.250	1111	1110.75	1110.5	1110	1109	1108	1107.5	1107	1106	1105	1104.5	1104	1102.8	1101	1099.8	1098];
Sco2=[2.6660	2.5870	2.508	2.429	2.3500	2.277	2.2030	2.0341	1.9072	0.996	0.9887	0.9819	0.9756	0.9696	0.9639	0.9586	0.94908	0.9348	0.92676	0.9147; 2.6960	2.6170	2.539	2.460	2.3810	2.309	2.2360	2.0731	1.9567	1.8477	1.082	1.072	1.063	1.0543	1.0467	1.0396	1.0267	1.0099	0.9999	0.9862; 2.7250	2.6465	2.568	2.490	2.4110	2.340	2.2680	2.1095	2.0001	1.9047	1.8051	1.181	1.162	1.1475	1.1355	1.1251	1.1074	1.0857	1.0734	1.0571; 2.7540	2.6760	2.598	2.519	2.4410	2.370	2.2990	2.1438	2.0395	1.9523	1.8691	1.7779	1.6367	1.2719	1.2419	1.222	1.1937	1.1637	1.148	1.128; 2.7810	2.7030	2.626	2.548	2.4700	2.400	2.3290	2.1766	2.0760	1.9943	1.92	1.8462	1.7649	1.6578	1.46	1.3563	1.2926	1.2461	1.2248	1.1994; 2.8090	2.7310	2.654	2.576	2.4980	2.428	2.3580	2.2079	2.1104	2.0327	1.9641	1.8992	1.8337	1.7632	1.681	1.5795	1.4194	1.3357	1.3052	1.2721; 2.8360	2.7580	2.681	2.603	2.5250	2.456	2.3860	2.2381	2.1430	2.0684	2.0039	1.9445	1.8872	1.8296	1.7693	1.7045	1.5663	1.4348	1.3903	1.3463; 2.8620	2.7840	2.707	2.629	2.5515	2.483	2.4135	2.2673	2.1742	2.102	2.0405	1.9851	1.9329	1.8822	1.8317	1.7804	1.6746	1.5374	1.4788	1.4219; 2.8880	2.8105	2.733	2.656	2.5780	2.510	2.4410	2.2956	2.2041	2.1339	2.0749	2.0223	1.9737	1.9275	1.8827	1.8384	1.7506	1.6281	1.5643	1.4971; 2.9130	2.8360	2.759	2.681	2.6035	2.535	2.4670	2.3231	2.2330	2.1645	2.1073	2.057	2.0111	1.9681	1.927	1.8872	1.8102	1.7024	1.6406	1.5688; 2.9380	2.8610	2.784	2.706	2.6290	2.561	2.4930	2.3499	2.2610	2.1939	2.1383	2.0898	2.0459	2.0053	1.9669	1.9302	1.8604	1.7638	1.7063	1.6348; 2.9616	2.8845	2.807	2.730	2.6530	2.585	2.5172	2.3760	2.2882	2.2222	2.1679	2.1209	2.0787	2.0399	2.0036	1.9692	1.9046	1.8162	1.7631	1.6942; 2.9852	2.9080	2.831	2.754	2.6770	2.609	2.5414	2.4015	2.3146	2.2496	2.1965	2.1507	2.1098	2.0725	2.0378	2.0052	1.9446	1.8625	1.813	1.7475; 3.0088	2.9320	2.855	2.778	2.7010	2.633	2.5656	2.4265	2.3404	2.2763	2.224	2.1793	2.1396	2.1035	2.0701	2.0389	1.9814	1.9042	1.8578	1.7956; 3.0324	2.9556	2.879	2.802	2.7250	2.657	2.5898	2.4509	2.3655	2.3022	2.2508	2.2069	2.1681	2.1331	2.1008	2.0708	2.0157	1.9424	1.8985	1.8394; 3.0560	2.9790	2.903	2.826	2.7490	2.682	2.6140	2.4749	2.3901	2.3274	2.2767	2.2336	2.1957	2.1615	2.1302	2.1011	2.048	1.978	1.9361	1.8796; 3.0778	3.0011	2.925	2.848	2.7710	2.704	2.6362	2.4984	2.4142	2.3521	2.302	2.2596	2.2223	2.1889	2.1584	2.1301	2.0788	2.0113	1.9712	1.9171; 3.0996	3.0230	2.947	2.870	2.7930	2.726	2.6584	2.5214	2.4377	2.3762	2.3267	2.2848	2.2482	2.2154	2.1855	2.158	2.1081	2.0429	2.0043	1.9521; 3.1214	3.0448	2.968	2.892	2.8150	2.748	2.6806	2.5428	2.4596	2.3978	2.3486	2.3074	2.2706	2.2411	2.2118	2.1849	2.1362	2.073	2.0356	1.9852; 3.1432	3.0667	2.990	2.914	2.8370	2.770	2.7028	2.5654	2.4828	2.4214	2.3728	2.3322	2.2958	2.2642	2.2356	2.209	2.1634	2.1018	2.0655	2.0166; 3.1650	3.0885	3.012	2.936	2.8590	2.792	2.7250	2.5880	2.5060	2.445	2.397	2.357	2.321	2.29	2.262	2.236	2.1932	2.1294	2.0941	2.0465; 3.2640	3.1875	3.111	3.035	2.9580	2.891	2.8245	2.6890	2.6080	2.5485	2.5015	2.4625	2.4285	2.3985	2.3715	2.347	2.307	2.247	2.2164	2.1705; 3.3630	3.2865	3.210	3.134	3.0570	2.991	2.9240	2.7900	2.7100	2.652	2.606	2.568	2.536	2.507	2.481	2.458	2.4208	2.365	2.337	2.295; 3.4500	3.3740	3.298	3.221	3.1445	3.078	3.0120	2.8785	2.7990	2.7415	2.6965	2.659	2.6275	2.599	2.574	2.5515	2.5155	2.4615	2.4345	2.394; 3.5370	3.4610	3.385	3.308	3.2320	3.166	3.1000	2.9670	2.8880	2.831	2.787	2.75	2.719	2.691	2.667	2.645	2.6102	2.558	2.532	2.493; 3.6160	3.5400	3.464	3.387	3.3110	3.245	3.1790	3.0465	2.9675	2.911	2.871	2.831	2.8	2.7725	2.7485	2.727	2.6928	2.6415	2.6161	2.578; 3.6950	3.6190	3.543	3.466	3.3900	3.324	3.2580	3.1260	3.0470	2.991	2.952	2.912	2.881	2.854	2.83	2.809	2.7754	2.725	2.7002	2.663; 3.7665	3.6900	3.614	3.538	3.4615	3.396	3.3300	3.1980	3.1195	3.0635	3.024	2.9845	2.954	2.9275	2.9035	2.8825	2.8493	2.7995	2.7751	2.7385; 3.8380	3.7620	3.686	3.609	3.5330	3.468	3.4020	3.2700	3.1920	3.136	3.093	3.057	3.027	3.001	2.977	2.956	2.9232	2.874	2.85	2.814];
%Psat_co2=[30 35 40 45 50 55 60 65 70 73.77];
%Tsat_co2=[-5.55 0.16 5.3 9.98 14.28 18.27 21.98 25.44 28.68 30.98];
Rp=str2double(get(handles.edit1, 'String'));
Ttu=str2double(get(handles.edit2, 'String'));
Tco=str2double(get(handles.edit3, 'String'));
P1=str2double(get(handles.edit4, 'String'));
Ef1i=str2double(get(handles.edit7, 'String'));
Ef1=Ef1i/100;
Ef2i=str2double(get(handles.edit8, 'String'));
Ef2=Ef2i/100;
Ef3i=str2double(get(handles.edit9, 'String'));
Ef3=Ef3i/100;
index1=get(handles.radiobutton3, 'Value');
index2=get(handles.radiobutton4, 'Value');
index3=get(handles.radiobutton5, 'Value');
Ar=get(handles.radiobutton1, 'Value');
CO2=get(handles.radiobutton2, 'Value');
Irr1=get(handles.radiobutton6, 'Value');
Irr2=get(handles.radiobutton7, 'Value');
if (Rp>=5 && Rp<=20)
    if (P1>=1 && P1<=10)
if index1==1
    P2=P1*Rp;
    if Irr1==1
        %Para economizar espaço, colocar if(Ar ou CO2==1) apenas para
        %calcular propriedades como entalpia e entropia
        if Ar==1
        if(Tco>=0 && Tco<=1400)
            if(Ttu>=0 && Ttu<=1400)
                if(Ttu>Tco)
            S1_ar=spline(Ptab_ar,Sar,P1);
            S1=spline(Ttab_ar,S1_ar,Tco);
            E1_ar=spline(Ptab_ar,Ear,P1);
            E1=spline(Ttab_ar,E1_ar,Tco);
            S2_ar=spline(Ptab_ar,Sar,P2);
            T2=spline(S2_ar,Ttab_ar,S1);
            E2_ar=spline(Ptab_ar,Ear,P2);
            E2=spline(Ttab_ar,E2_ar,T2);
            S2=spline(Ttab_ar,S2_ar,Ttu);
            E3=spline(Ttab_ar,E2_ar,Ttu);
            T4=spline(S1_ar,Ttab_ar,S2);
            E4=spline(Ttab_ar,E1_ar,T4);
            Wco=E2-E1;
            Wtu=E3-E4;
            Qc=E3-E2;
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
        end
        end
        if CO2==1
            if(Tco>=0 && Tco<=600)
            if(Ttu>=0 && Ttu<=600)
                if(Ttu>Tco)
            S1_co2=spline(Ptab_co2,Sco2,P1);
            S1=spline(Ttab_co2,S1_co2,Tco);
            E1_co2=spline(Ptab_co2,Eco2,P1);
            E1=spline(Ttab_co2,E1_co2,Tco);
            S2_co2=spline(Ptab_co2,Sco2,P2);
            T2=spline(S2_co2,Ttab_co2,S1);
            E2_co2=spline(Ptab_co2,Eco2,P2);
            E2=spline(Ttab_co2,E2_co2,T2);
            S2=spline(Ttab_co2,S2_co2,Ttu);
            E3=spline(Ttab_co2,E2_co2,Ttu);
            T4=spline(S1_co2,Ttab_co2,S2);
            E4=spline(Ttab_co2,E1_co2,T4);
            Wco=E2-E1;
            Wtu=E3-E4;
            Qc=E3-E2;
        	Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
            end   
        end
    end
    if Irr2==1 
        if(Ef2>0 && Ef2<=1)
        if(Ef3>0 && Ef3<=1)
        if Ar==1
        if(Tco>=0 && Tco<=1400)
            if(Ttu>=0 && Ttu<=1400)
                if(Ttu>Tco)
            S1_ar=spline(Ptab_ar,Sar,P1);
            S1=spline(Ttab_ar,S1_ar,Tco);
            E1_ar=spline(Ptab_ar,Ear,P1);
            E1=spline(Ttab_ar,E1_ar,Tco);
            S2_ar=spline(Ptab_ar,Sar,P2);
            T2=spline(S2_ar,Ttab_ar,S1);
            E2_ar=spline(Ptab_ar,Ear,P2);
            E2=spline(Ttab_ar,E2_ar,T2);
            S2=spline(Ttab_ar,S2_ar,Ttu);
            E3=spline(Ttab_ar,E2_ar,Ttu);
            T4=spline(S1_ar,Ttab_ar,S2);
            E4=spline(Ttab_ar,E1_ar,T4);
            Wcoi=E2-E1;
            Wco=Wcoi/Ef2;
            Wtui=E3-E4;
            Wtu=Wtui*Ef3;
            E2i=E1+Wco;
            Qc=E3-E2i;
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
        end
        end
        if CO2==1
            if(Tco>=0 && Tco<=600)
            if(Ttu>=0 && Ttu<=600)
                if(Ttu>Tco)
            S1_co2=spline(Ptab_co2,Sco2,P1);
            S1=spline(Ttab_co2,S1_co2,Tco);
            E1_co2=spline(Ptab_co2,Eco2,P1);
            E1=spline(Ttab_co2,E1_co2,Tco);
            S2_co2=spline(Ptab_co2,Sco2,P2);
            T2=spline(S2_co2,Ttab_co2,S1);
            E2_co2=spline(Ptab_co2,Eco2,P2);
            E2=spline(Ttab_co2,E2_co2,T2);
            S2=spline(Ttab_co2,S2_co2,Ttu);
            E3=spline(Ttab_co2,E2_co2,Ttu);
            T4=spline(S1_co2,Ttab_co2,S2);
            E4=spline(Ttab_co2,E1_co2,T4);
            Wcoi=E2-E1;
            Wco=Wcoi/Ef2;
            Wtui=E3-E4;
            Wtu=Wtui*Ef3;
            E2i=E1+Wco;
            Qc=E3-E2i;
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
            else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
            end   
        end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The value of the compressor efficiency is inappropriate.');
        end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The value of the turbine efficiency is inappropriate.');
        end
    end
    axes(handles.axes1);
    imageC=imread('Ciclo_Brayton_1.png');
    image(imageC);
    axis off
    axis image
end
if index2==1
    P2=P1*Rp;
    if(Ef1>0 && Ef1<=1)
    if Irr1==1
        if Ar==1
        if(Tco>=0 && Tco<=1400)
            if(Ttu>=0 && Ttu<=1400)
                if(Ttu>Tco)
            S1_ar=spline(Ptab_ar,Sar,P1);
            S1=spline(Ttab_ar,S1_ar,Tco);
            E1_ar=spline(Ptab_ar,Ear,P1);
            E1=spline(Ttab_ar,E1_ar,Tco);
            S2_ar=spline(Ptab_ar,Sar,P2);
            T2=spline(S2_ar,Ttab_ar,S1);
            E2_ar=spline(Ptab_ar,Ear,P2);
            E2=spline(Ttab_ar,E2_ar,T2);
            S2=spline(Ttab_ar,S2_ar,Ttu);
            E3=spline(Ttab_ar,E2_ar,Ttu);
            T4=spline(S1_ar,Ttab_ar,S2);
            E4=spline(Ttab_ar,E1_ar,T4);
            E5=Ef1*(E4-E2)+E2;
            Wco=E2-E1;
            Wtu=E3-E4;
            Qc=E3-E5;
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
        end
        end
        if CO2==1
            if(Tco>=0 && Tco<=600)
            if(Ttu>=0 && Ttu<=600)
                if(Ttu>Tco)
            S1_co2=spline(Ptab_co2,Sco2,P1);
            S1=spline(Ttab_co2,S1_co2,Tco);
            E1_co2=spline(Ptab_co2,Eco2,P1);
            E1=spline(Ttab_co2,E1_co2,Tco);
            S2_co2=spline(Ptab_co2,Sco2,P2);
            T2=spline(S2_co2,Ttab_co2,S1);
            E2_co2=spline(Ptab_co2,Eco2,P2);
            E2=spline(Ttab_co2,E2_co2,T2);
            S2=spline(Ttab_co2,S2_co2,Ttu);
            E3=spline(Ttab_co2,E2_co2,Ttu);
            T4=spline(S1_co2,Ttab_co2,S2);
            E4=spline(Ttab_co2,E1_co2,T4);
            E5=Ef1*(E4-E2)+E2;
            Wco=E2-E1;
            Wtu=E3-E4;
            Qc=E3-E5;
        	Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
            end   
        end
    end
    if Irr2==1 
        if(Ef2>0 && Ef2<=1)
        if(Ef3>0 && Ef3<=1)
        if Ar==1
        if(Tco>=0 && Tco<=1400)
            if(Ttu>=0 && Ttu<=1400)
                if(Ttu>Tco)
            S1_ar=spline(Ptab_ar,Sar,P1);
            S1=spline(Ttab_ar,S1_ar,Tco);
            E1_ar=spline(Ptab_ar,Ear,P1);
            E1=spline(Ttab_ar,E1_ar,Tco);
            S2_ar=spline(Ptab_ar,Sar,P2);
            T2=spline(S2_ar,Ttab_ar,S1);
            E2_ar=spline(Ptab_ar,Ear,P2);
            E2=spline(Ttab_ar,E2_ar,T2);
            S2=spline(Ttab_ar,S2_ar,Ttu);
            E3=spline(Ttab_ar,E2_ar,Ttu);
            T4=spline(S1_ar,Ttab_ar,S2);
            E4=spline(Ttab_ar,E1_ar,T4);
            Wcoi=E2-E1;
            Wco=Wcoi/Ef2;
            Wtui=E3-E4;
            Wtu=Wtui*Ef3;
            E2i=E1+Wco;
            E4i=E3-Wtu;
            E5=Ef1*(E4i-E2i)+E2i;
            Qc=E3-E5;
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
        end
        end
        if CO2==1
            if(Tco>=0 && Tco<=600)
            if(Ttu>=0 && Ttu<=600)
                if(Ttu>Tco)
            S1_co2=spline(Ptab_co2,Sco2,P1);
            S1=spline(Ttab_co2,S1_co2,Tco);
            E1_co2=spline(Ptab_co2,Eco2,P1);
            E1=spline(Ttab_co2,E1_co2,Tco);
            S2_co2=spline(Ptab_co2,Sco2,P2);
            T2=spline(S2_co2,Ttab_co2,S1);
            E2_co2=spline(Ptab_co2,Eco2,P2);
            E2=spline(Ttab_co2,E2_co2,T2);
            S2=spline(Ttab_co2,S2_co2,Ttu);
            E3=spline(Ttab_co2,E2_co2,Ttu);
            T4=spline(S1_co2,Ttab_co2,S2);
            E4=spline(Ttab_co2,E1_co2,T4);
            Wcoi=E2-E1;
            Wco=Wcoi/Ef2;
            Wtui=E3-E4;
            Wtu=Wtui*Ef3;
            E2i=E1+Wco;
            E4i=E3-Wtu;
            E5=Ef1*(E4i-E2i)+E2i;
            Qc=E3-E5;
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
            else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
            end   
        end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The value of compressor efficiency is inappropriate.');
        end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The value of turbine efficiency is inappropriate.');
        end
    end
    else
        set(handles.uipanel9,'Visible','On');
        set(handles.edit14,'Visible','On');
        set(handles.edit14,'String','The effectiveness of the regenerator is inappropriate.');
    end
    axes(handles.axes1);
    imageC=imread('Ciclo_Brayton_2.png');
    image(imageC);
    axis off
    axis image
end
if index3==1
    P2=P1*Rp^0.5;
    if(Ef1>0 && Ef1<=1)
    if Irr1==1
        if Ar==1
        if(Tco>=0 && Tco<=1400)
            if(Ttu>=0 && Ttu<=1400)
                if(Ttu>Tco)
            S1_ar=spline(Ptab_ar,Sar,P1);
            S1=spline(Ttab_ar,S1_ar,Tco);
            E1_ar=spline(Ptab_ar,Ear,P1);
            E1=spline(Ttab_ar,E1_ar,Tco);
            S2_ar=spline(Ptab_ar,Sar,P2);
            T2=spline(S2_ar,Ttab_ar,S1);
            E2_ar=spline(Ptab_ar,Ear,P2);
            E2=spline(Ttab_ar,E2_ar,T2);
            %E3=E1;
            E4=E2;
            P3=P1*Rp;
            S6_ar=spline(Ptab_ar,Sar,P3);
            S6=spline(Ttab_ar,S6_ar,Ttu);
            E6_ar=spline(Ptab_ar,Ear,P3);
            E6=spline(Ttab_ar,E6_ar,Ttu);
            E8=E6;
            P4=P3*(Rp^(-0.5));
            S7_ar=spline(Ptab_ar,Sar,P4);
            T7=spline(S7_ar,Ttab_ar,S6);
            E7_ar=spline(Ptab_ar,Ear,P4);
            E7=spline(Ttab_ar,E7_ar,T7);
            E9=E7;
            Wco=2*(E2-E1);
            Wtu=2*(E6-E7);
            E5=Ef1*(E9-E4)+E4;
            Qc=(E6-E5)+(E8-E7);
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
        end
        end
        if CO2==1
            if(Tco>=0 && Tco<=600)
            if(Ttu>=0 && Ttu<=600)
                if(Ttu>Tco)
            S1_co2=spline(Ptab_co2,Sco2,P1);
            S1=spline(Ttab_co2,S1_co2,Tco);
            E1_co2=spline(Ptab_co2,Eco2,P1);
            E1=spline(Ttab_co2,E1_co2,Tco);
            S2_co2=spline(Ptab_co2,Sco2,P2);
            T2=spline(S2_co2,Ttab_co2,S1);
            E2_co2=spline(Ptab_co2,Eco2,P2);
            E2=spline(Ttab_co2,E2_co2,T2);
            %E3=E1;
            E4=E2;
            P3=P1*Rp;
            S6_co2=spline(Ptab_co2,Sco2,P3);
            S6=spline(Ttab_co2,S6_co2,Ttu);
            E6_co2=spline(Ptab_co2,Eco2,P3);
            E6=spline(Ttab_co2,E6_co2,Ttu);
            E8=E6;
            P4=P3*(Rp^(-0.5));
            S7_co2=spline(Ptab_co2,Sco2,P4);
            T7=spline(S7_co2,Ttab_co2,S6);
            E7_co2=spline(Ptab_co2,Eco2,P4);
            E7=spline(Ttab_co2,E7_co2,T7);
            E9=E7;
            Wco=2*(E2-E1);
            Wtu=2*(E6-E7);
            E5=Ef1*(E9-E4)+E4;
            Qc=(E6-E5)+(E8-E7);
            Ef=((Wtu-Wco)/Qc)*100;  
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
            end   
        end
    end
    if Irr2==1 
        if(Ef2>0 && Ef2<=1)
        if(Ef3>0 && Ef3<=1)
        if Ar==1
        if(Tco>=0 && Tco<=1400)
            if(Ttu>=0 && Ttu<=1400)
                if(Ttu>Tco)
            S1_ar=spline(Ptab_ar,Sar,P1);
            S1=spline(Ttab_ar,S1_ar,Tco);
            E1_ar=spline(Ptab_ar,Ear,P1);
            E1=spline(Ttab_ar,E1_ar,Tco);
            S2_ar=spline(Ptab_ar,Sar,P2);
            T2=spline(S2_ar,Ttab_ar,S1);
            E2_ar=spline(Ptab_ar,Ear,P2);
            E2=spline(Ttab_ar,E2_ar,T2);
            E3=E1;
            %E4=E2;
            P3=P1*Rp;
            S6_ar=spline(Ptab_ar,Sar,P3);
            S6=spline(Ttab_ar,S6_ar,Ttu);
            E6_ar=spline(Ptab_ar,Ear,P3);
            E6=spline(Ttab_ar,E6_ar,Ttu);
            E8=E6;
            P4=P3*(Rp^(-0.5));
            S7_ar=spline(Ptab_ar,Sar,P4);
            T7=spline(S7_ar,Ttab_ar,S6);
            E7_ar=spline(Ptab_ar,Ear,P4);
            E7=spline(Ttab_ar,E7_ar,T7);
            %E9=E7;
            Wcoi=2*(E2-E1);
            Wco=Wcoi/Ef2;
            Wtui=2*(E6-E7);
            Wtu=Wtui*Ef3;
            E4i=E3+Wco/2;
            E9i=E8-Wtu/2;
            E7i=E9i;
            E5=Ef1*(E9i-E4i)+E4i;
            Qc=(E6-E5)+(E8-E7i);
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
        end
        end
        if CO2==1
            if(Tco>=0 && Tco<=600)
            if(Ttu>=0 && Ttu<=600)
                if(Ttu>Tco)
            S1_co2=spline(Ptab_co2,Sco2,P1);
            S1=spline(Ttab_co2,S1_co2,Tco);
            E1_co2=spline(Ptab_co2,Eco2,P1);
            E1=spline(Ttab_co2,E1_co2,Tco);
            S2_co2=spline(Ptab_co2,Sco2,P2);
            T2=spline(S2_co2,Ttab_co2,S1);
            E2_co2=spline(Ptab_co2,Eco2,P2);
            E2=spline(Ttab_co2,E2_co2,T2);
            E3=E1;
            %E4=E2;
            P3=P1*Rp;
            S6_co2=spline(Ptab_co2,Sco2,P3);
            S6=spline(Ttab_co2,S6_co2,Ttu);
            E6_co2=spline(Ptab_co2,Eco2,P3);
            E6=spline(Ttab_co2,E6_co2,Ttu);
            E8=E6;
            P4=P3*(Rp^(-0.5));
            S7_co2=spline(Ptab_co2,Sco2,P4);
            T7=spline(S7_co2,Ttab_co2,S6);
            E7_co2=spline(Ptab_co2,Eco2,P4);
            E7=spline(Ttab_co2,E7_co2,T7);
            %E9=E7;
            Wcoi=2*(E2-E1);
            Wco=Wcoi/Ef2;
            Wtui=2*(E6-E7);
            Wtu=Wtui*Ef3;
            E4i=E3+Wco/2;
            E9i=E8-Wtu/2;
            E7i=E9i;
            E5=Ef1*(E9i-E4i)+E4i;
            Qc=(E6-E5)+(E8-E7i);
            Ef=((Wtu-Wco)/Qc)*100;
            set(handles.edit10, 'String', Qc);
            set(handles.edit11, 'String', Wtu);
            set(handles.edit12, 'String', Wco);
            set(handles.edit13, 'String', Ef);
                else
                    set(handles.uipanel9,'Visible','On');
                    set(handles.edit14,'Visible','On');
                    set(handles.edit14,'String','The temperature of the compressor is higher than that of the turbine.');
                end
            else
                set(handles.uipanel9,'Visible','On');
                set(handles.edit14,'Visible','On');
                set(handles.edit14,'String','The temperature of the turbine is inappropriate.');
            end
            else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The temperature of the compressor is inappropriate.');
            end   
        end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The value of compressor efficiency is inappropriate.');
        end
        else
            set(handles.uipanel9,'Visible','On');
            set(handles.edit14,'Visible','On');
            set(handles.edit14,'String','The value of the turbine efficiency is inappropriate.');
        end
    end
    else
        set(handles.uipanel9,'Visible','On');
        set(handles.edit14,'Visible','On');
        set(handles.edit14,'String','The effectiveness of the regenerator is inappropriate.');
    end
    axes(handles.axes1);
    imageC=imread('Ciclo_Brayton_3.png');
    image(imageC);
    axis off
    axis image
end
    else
        set(handles.uipanel9,'Visible','On');
        set(handles.edit14,'Visible','On');
        set(handles.edit14,'String','The initial pressure is inappropriate.');
    end
else
        set(handles.uipanel9,'Visible','On');
        set(handles.edit14,'Visible','On');
        set(handles.edit14,'String','The value of the pressure ratio is inappropriate.');
end 
        
    


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton1,'Visible','On');
set(handles.togglebutton2,'Visible','Off');
set(handles.togglebutton3,'Visible','Off');
set(handles.togglebutton4,'Visible','Off');
set(handles.togglebutton5,'Visible','Off');
set(handles.togglebutton6,'Visible','Off');
set(handles.pushbutton1,'Visible','Off');
set(handles.pushbutton2,'Visible','Off');
set(handles.uipanel3,'Visible','Off');
set(handles.uipanel5,'Visible','Off');
set(handles.uipanel6,'Visible','Off');
set(handles.uipanel7,'Visible','Off');
set(handles.uipanel8,'Visible','Off');
set(handles.uipanel9,'Visible','Off');
set(handles.radiobutton1,'Visible','Off');
set(handles.radiobutton2,'Visible','Off');
set(handles.radiobutton6,'Visible','Off');
set(handles.radiobutton7,'Visible','Off');
set(handles.text2,'Visible','Off');
set(handles.text3,'Visible','Off');
set(handles.text4,'Visible','Off');
set(handles.text5,'Visible','Off');
set(handles.text9,'Visible','Off');
set(handles.text10,'Visible','Off');
set(handles.text11,'Visible','Off');
set(handles.text13,'Visible','Off');
set(handles.text14,'Visible','Off');
set(handles.text15,'Visible','Off');
set(handles.text16,'Visible','Off');
set(handles.edit1,'Visible','Off');
set(handles.edit1,'String', 0);
set(handles.edit2,'Visible','Off');
set(handles.edit2,'String', 0);
set(handles.edit3,'Visible','Off');
set(handles.edit3,'String', 0);
set(handles.edit4,'Visible','Off');
set(handles.edit4,'String', 0);
set(handles.edit7,'Visible','Off');
set(handles.edit7,'String', 0);
set(handles.edit8,'Visible','Off');
set(handles.edit8,'String', 0);
set(handles.edit9,'Visible','Off');
set(handles.edit9,'String', 0);
set(handles.edit10,'Visible','Off');
set(handles.edit10,'String', 0);
set(handles.edit11,'Visible','Off');
set(handles.edit12,'String', 0);
set(handles.edit12,'Visible','Off');
set(handles.edit12,'String', 0);
set(handles.edit13,'Visible','Off');
set(handles.edit13,'String', 0);
set(handles.edit14,'Visible','Off');
set(handles.edit14,'String', '-');




function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
