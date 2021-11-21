function [VS,IS] = long_TL(R, XL, SC, L, PR, VR, PFR)
% Calculates the Sending End voltage and current of a three phase TL given
% Receiving end voltage, current and line parameters
%   R: Resistance per phase per km of Line
%   XL: Reactance per phase per km of Line
%   SC: Suseptance per phase per km of Line
%   L: Length of line 
%   PR: Received Power in Watts
%   PFR: power factor received
% return values: 
%   VS: Sent Voltage per phase
%   IS: Sent current per phase

%per Phase quantities: 
VR = VR/sqrt(3); 
PR = PR/3; 
IR =PR/(VR*PFR);

[A, B, C, D] = longABCD(R, XL, SC, L); 

%Sending parameters: 
VS = VR*A + IR*B;
IS = VR*C + IR*D;
end

