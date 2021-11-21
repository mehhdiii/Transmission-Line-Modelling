function [outputArg1,outputArg2] = printer(x)
%prints in phase magnitude format: 
%   Detailed explanation goes here
fprintf('%f < %f \n', abs(x), rad2deg(angle(x)))
end

