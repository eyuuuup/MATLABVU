function[] = subplot_this(speech, range1a, range1b,range2a, range2b,range3a, range3b)
%this function takes a waveform and divides it into subplots
%with samples array speech and range1a t/m range3b for points to be
%divided.

subplot(3,1,1);                             %divides the current figure into 1 rectangular pane
y1 = speech(range1a:range1b);               %creates first divided array
plot(y1)                                    %plots array to subplot
format = 'Subplot 1, range %d to %d';       
string = sprintf(format,range1a,range1b);  
title(string);             

subplot(3,1,2);                             %divides the current figure into 2 rectangular panes
y2 = speech(range2a:range2b);               %creates second divided array
plot(y2);                                   %plots array to second subplot
format = 'Subplot 2, range %d to %d';
string = sprintf(format,range2a,range2b);  
title(string);  

subplot(3,1,3);                             %divides the current figure into 3 rectangular panes
y3 = speech(range3a:range3b);               %creates third divided array
plot(y3);                                   %plots array to third subplot
format = 'Subplot 3, range %d to %d';
string = sprintf(format,range3a,range3b);  
title(string); 
