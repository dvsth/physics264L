function [fr] = Sample_Doppler(f,v)
% f = emitted frequency
% v = velocity between emitter and source; + when receding
%
% fr = received frequency in frame of receiver

c = 2.988*10^8; %m/s
beta = v/c;

fr = f * sqrt(1-beta)/sqrt(1+beta);

end