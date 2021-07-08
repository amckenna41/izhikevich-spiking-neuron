clc 
clear 
close all

%% Initialising Parameters
parameters =[0.02      0.2     -65     6       14 ;... % Tonic/Regular Spiking
             0.02      0.2     -50     2       15 ;...   % Tonic Bursting
             0.02      0.25    -65     6       0.5 ;...   % phasic spiking
             0.02      0.25    -55     0.05     0.6 ;...   % phasic bursting
             0.02      0.2     -55     4        10 ;...    % mixed mode
             0.01      0.2     -65     8        30 ;...    % spike frequency adaptation
             0.02      -0.1    -55     6        0  ;...    % Class 1
             0.2       0.26    -65     0        0  ;...    % Class 2
             0.02      0.2     -65     6        7  ;...    % spike latency
             0.05      0.26    -60     0        0  ;...    % subthreshold oscillations
             0.1       0.26    -60     -1       0  ;...    % resonator
             0.02      -0.1    -55     6        0  ;...    % integrator
             0.03      0.25    -60     4        0;...      % rebound spike
             0.03      0.25    -52     0        0;...      % rebound burst
             0.03      0.25    -60     4        0  ;...    % threshold variability
               1         1.5     -60     0      -65  ;...    % bistability
               1       0.2     -60     -21      0  ;...    % DAP
             0.02      1       -55     4        0  ;...    % accomodation
            -0.02      -1      -60     8        80 ;...    % inhibition-induced spiking
            -0.026     -1      -45     0        80];       % inhibition-induced bursting
        
T = 9; %select which neuron behaviour to realise in params matrix
param = parameters(T,:); 

%set all parameters for neuron model
a = param(1);
b = param(2);
c = param(3);
d = param(4);
I = param(5);

STOP = 500; %set stopping/simulation time(s)
