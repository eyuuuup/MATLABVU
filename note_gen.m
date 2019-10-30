function [s] = note_gen(f,fs,Td)
%this function generates a sound
%with the frequency f, sampling frequency fs, and duration Td

t = 0:1/fs:Td;      %generate a time vector with time moments
                    %time runs between 0 and Td sec
                    %time step is 1/fs
s = sin(2*pi*f*t);  %generate a vector s containing the sampled sinusoidal
sound(s, fs);       %play the sound through the speaker