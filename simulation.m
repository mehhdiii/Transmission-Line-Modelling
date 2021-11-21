%% BOOK Example # 10.15
R = 0.16; 
XL = 0.25; 
SC = 1.5e-6; 
L = 200; 
PR = 20e6; 
VR = 110e3; 
PFR = 0.8; 

[VS,IS] = long_TL(R, XL, SC, L, PR, VR, PFR);
printer(VS);
printer(IS);


%% Question 20: 
R = 0.15; 
XL = 0.6; 
SC = 1e-5; 
L = 150; 
PR = 40000e3; 
VR = 110e3; 
PFR = 0.8; 
[A, B, C, D] = longABCD(R, XL, SC, L)

