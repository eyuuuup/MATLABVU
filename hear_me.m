function[result] = hear_me(Fs, time)
%this function records sound and stores it in a vector
%with the sampling frequency fs, and duration time

rec = audiorecorder(Fs,16,1);   %required object to record sound
format = 'speak now mortal, you have %d seconds';
string = sprintf(format,time);  
fprintf(string);
recordblocking(rec, time);      %acquire sound for the given duration
speech = getaudiodata(rec);     %stores the audio samples into an array
plot(speech);                   %plot the graph using the data in speech
result = speech;                %returns the speech
