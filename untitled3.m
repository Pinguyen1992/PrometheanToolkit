global settings
duration_course_channel =5; %2at 13800 MSPS
settings.ctrl.HSADC6A.S000.CH0.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S000.CH1.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S000.CH2.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S000.CH3.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S090.CH0.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S090.CH1.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S090.CH2.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S090.CH3.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S180.CH0.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S180.CH1.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S180.CH2.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S180.CH3.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S270.CH0.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S270.CH1.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S270.CH2.STG1.buff_duration_coarse{1} = duration_course_channel;
settings.ctrl.HSADC6A.S270.CH3.STG1.buff_duration_coarse{1} = duration_course_channel;
duration_fine_channel = 0  ; %40 at 13800 MSPS
settings.ctrl.HSADC6A.S000.CH0.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S000.CH1.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S000.CH2.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S000.CH3.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S090.CH0.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S090.CH1.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S090.CH2.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S090.CH3.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S180.CH0.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S180.CH1.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S180.CH2.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S180.CH3.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S270.CH0.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S270.CH1.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S270.CH2.STG1.buff_duration_fine{1} = duration_fine_channel;
settings.ctrl.HSADC6A.S270.CH3.STG1.buff_duration_fine{1} = duration_fine_channel;
%%
duration_course_TOP =0;%2 at 13800 MSPS
settings.ctrl.HSADC6A.S000.TOP.LVL1_buff_duration_coarse{1} = duration_course_TOP;
settings.ctrl.HSADC6A.S090.TOP.LVL1_buff_duration_coarse{1} = duration_course_TOP;
settings.ctrl.HSADC6A.S180.TOP.LVL1_buff_duration_coarse{1} = duration_course_TOP;
settings.ctrl.HSADC6A.S270.TOP.LVL1_buff_duration_coarse{1} = duration_course_TOP;
duration_fine_TOP = 60;% 30 at 13800 MSPS
settings.ctrl.HSADC6A.S000.TOP.LVL1_buff_duration_fine{1} = duration_fine_TOP;
settings.ctrl.HSADC6A.S090.TOP.LVL1_buff_duration_fine{1} = duration_fine_TOP;
settings.ctrl.HSADC6A.S180.TOP.LVL1_buff_duration_fine{1} = duration_fine_TOP;
settings.ctrl.HSADC6A.S270.TOP.LVL1_buff_duration_fine{1} = duration_fine_TOP;

% compileAndProgramChip;