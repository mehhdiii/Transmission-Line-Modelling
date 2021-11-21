function [A, B, C, D] = longABCD(R, XL, SC, L)
% calculates ABCD parameters according to the long line (rigorous method)

%total Impedances: 
R = R*L; 
XL = XL*L; 

Y = 1j*SC*L; 
Z = R+1j*XL; 

%calculating line parameters: 
A1 = sqrt(Z*Y); 
B1 = Z*Y; 
C1 = Z^2*Y^2; 
D1 = sqrt(Z/Y);
E1 = sqrt(Y/Z); 
cosh_approx = 1+B1/2 + C1/24; 
sinh_approx = A1 + (A1^3)/6; 

A = cosh_approx; 
B = D1*sinh_approx; 
C = E1*sinh_approx; 
D = cosh_approx; 

end

