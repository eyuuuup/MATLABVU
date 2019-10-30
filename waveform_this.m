function[] = waveform_this(speech, Fs, rangea, rangeb)
%this function takes a waveform and gives a time scale
%with the sampling frequency fs, and samples array speech

speech = speech(rangea:rangeb);   %selects the region of interest to display
t = [0:length(speech)-1]/Fs;    %convert the x-scale into a time scale
plot(t, speech);    
xlabel('seconds');
grid on;

