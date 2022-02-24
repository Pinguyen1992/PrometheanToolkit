function interfacePanel = Agilent_N6705A_voltageSource_createInterface(interfacePanel)

    global settings;

    % A special mode used to define a custom panel height: ---------------
    if(isnumeric(interfacePanel) && interfacePanel == -1)
       
        % *** STEP 1 ***
        % Specify the number of panel rows needed (max allowed = 17):
        % ----------------
        rowsRequested = 4; % EDITABLE VALUE
        % ----------------
        interfacePanel = rowsRequested;
        return;
    else
        initializeGraphics;
        delete(interfacePanel.Children);
    end

    % Create the interface data structure if it doesn't already exist:
    if(interfacePanel.UserData.interfaceIndex <= 0) 
        
        % *** STEP 2 ***
        % DEFINE THE INTERFACE 'TYPE' NAME---------------------
        % (must exactly match the name used in the interface definition 
        % declaration file (e.g. custom__interfaceDefinitionsInclude.m)
        interface.type = 'Agilent N6705A Voltage Source';
        % -----------------------------------------------------
        
        % *** STEP 3 ***
        % PLACE INTERFACE-SPECIFIC FIELDS HERE:----------------
        interface.channel = 1; %options: 1, 2, 3, 4
        interface.voltage = 0;
        interface.current_limit = 1e-3;
        
        % -----------------------------------------------------
        
        % DO NOT EDIT THIS ------------------------------------
        interface.name = interfacePanel.UserData.name;
        interface.id = DataHash(now); 
        settings.lab.interfaces{end+1} = interface;
        interfacePanel.UserData.interfaceIndex = length(settings.lab.interfaces);
        % -----------------------------------------------------
        
    % Otherwise, load the pre-existing interface data:
    else 
        interface =  settings.lab.interfaces{interfacePanel.UserData.interfaceIndex};
    end
    
    % legacy support:
    if(~isfield(interface,'is_core_supply')), interface.is_core_supply = 0; end
    settings.lab.interfaces{interfacePanel.UserData.interfaceIndex} = interface;
    
    
    % Draw visuals: ------------------------------------------------------
    
    % you will probably want to setup your row/col grid with these 
    % intitial values:
    row0 = 1.4;
    row = row0;
    
    % draw the standard Up/Down/Delete/Apply/OnOff buttons
    drawInterfaceBasicControls(interfacePanel); 
    
    % draw the standard access method controls (e.g. GPIB, LAN, ...)
    drawInterfaceAccessMethod(interfacePanel);
        
    % you can customize the text styles and placement options for elements:
    textBoxOptions.HorizontalAlignment = 'right';
    editBoxOptions.HorizontalAlignment = 'left';
    
    
    % *** STEP 4 ***
    % add custom visual elements relevant to the specific equipment:
    col = [1 1.5];
    placeText(interfacePanel,row,col,'CH:',textBoxOptions);
    col = [1.5 1.8];
    menu_channel = placeDropdown(interfacePanel,row,col,{'1','2','3','4'});
    menu_channel.Value = interface.channel;
    
    col = [1 1.5];
    placeText(interfacePanel,row+1,col,'Voltage (mV):',textBoxOptions);
    col = [1.5 1.8];
    textbox_voltage = placeEdit(interfacePanel,row+1,col,sprintf('%0.12g',1e3*interface.voltage),editBoxOptions);
    
    col = [1 1.5];
    placeText(interfacePanel,row+2,col,'Idc Limit (mA):',textBoxOptions);
    col = [1.5 1.8];
    textbox_currentLimit = placeEdit(interfacePanel,row+2,col,sprintf('%0.12g',interface.current_limit*1e3),editBoxOptions);

    col = [1.9 2.8];
    checkbox_isCore = placeCheckbox(interfacePanel,row+1,col,'Is Core Vdd',interface.is_core_supply);

    % *** STEP 5 ***
    % Finally, attach all user-defined element handles above to 
    % interfacePanel.UserData so that the companion applyChanges function 
    % can access them later:
    interfacePanel.UserData.textbox_voltage = textbox_voltage;
    interfacePanel.UserData.textbox_current_limit = textbox_currentLimit;
    interfacePanel.UserData.checkbox_isCore = checkbox_isCore;
    interfacePanel.UserData.menu_channel = menu_channel;

end