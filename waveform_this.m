function[] = waveform_this(speech, Fs, rangea, rangeb)
%this function takes a waveform and gives a time scale
%with the sampling frequency fs, and samples array speech

speech = speech(rangea:rangeb);     %selects the region of interest to display
t = [0:length(speech)-1]/Fs;        %convert the x-scale into a time scale
plot(t, speech);                    %plot the data in speech versus the corresponding values in t
xlabel('seconds');                  %label x-as with seconds
grid on;                            %use a grid in the graph

