
clc;
close all;
clear;

function new_model(modelname)
% NEW_MODEL Create a new, empty Simulink model
%    NEW_MODEL('MODELNAME') creates a new model with
%    the name 'MODELNAME'. Without the 'MODELNAME'
%    argument, the new model is named 'my_untitled'.

if nargin == 0
     modelname = 'new_model';
elseif (isfile(modelname))
    fprintf('Model already exists...');
    break
end

% create and open the model
open_system(new_system(modelname));

// % set default screen color
// set_param(modelname,'ScreenColor','green');

% set default solver
set_param(modelname,'Solver','ode3');

% set default stoptime
set_param(modelname,'StopTime','12');

% save the model
save_system(modelname);


end

model_name = "";
new_model(model_name);

load_system(model_name);

add_block('simulink/Sources/Sine Wave', strcat(model_name, '/Sine1'));
set_param('mymodel/Sine1','position',[140,80,180,120]);


add_block('simulink/Sources/In1','mymodel/Subsystem1/In2');



https://uk.mathworks.com/help/simulink/ug/approach-modeling-programmatically.html#butkll8
