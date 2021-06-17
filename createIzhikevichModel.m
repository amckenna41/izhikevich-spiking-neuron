function new_model(modelname) 
% NEW_MODEL Create a new, empty Simulink model
%    NEW_MODEL('MODELNAME') creates a new model with
%    the name 'MODELNAME'. Without the 'MODELNAME'
%    argument, the new model is named 'my_untitled'.

if nargin == 0 
     modelname = 'my_untitled';
end 





% create and open the model
open_system(new_system(modelname));

% set default screen color
set_param(modelname,'ScreenColor','green');

% set default solver
set_param(modelname,'Solver','ode3');

% save the model
save_system(modelname);




add_block('simulink/Sources/Sine Wave','mymodel/Sine1');
set_param('mymodel/Sine1','position',[140,80,180,120]);


delete_line('mymodel/Subsystem1','In1/1','Out1/1');
add_block('simulink/Sources/In1','mymodel/Subsystem1/In2');



https://uk.mathworks.com/help/simulink/ug/approach-modeling-programmatically.html#butkll8