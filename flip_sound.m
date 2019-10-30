function[] = flip_sound()
%this function reverses sound and plays it back

rec = audiorecorder(8000,16,1)  %required object to record sound
recordblocking (rec, 5);        %acquire sound for the given duration
sample = getaudiodata (rec);    %stores the audio samples into an array

flipped = flipud(sample);       %reverses the sound
sound(flipped);                 %plays the sound
