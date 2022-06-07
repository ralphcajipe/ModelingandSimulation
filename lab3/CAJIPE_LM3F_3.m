%{
    A MATLAB script for the following problem:

    Write a script that will prompt the user for a temperature
    in degrees Celsius, and then an 'F' for Fahrenheit or a 'K'
    for Kelvin. The script will print the corresponding temperature
    in the scale specified by the user. For example, the output might
    look like this:

    Enter the temp in degrees C: 29.3
    Do you want it in K or F? F
    The temp in degrees F is 84.7

    The format of the output should be exactly as specified above.
    The conversions are:

    F = (9/5) * C + 32
    K = C + 273.15
%}

clear
clc

temp = input('Enter the temp in degrees C: ');
scale = input('Do you want it in K or F? ','s');

if scale == 'F'
    f_temp = (9/5)*temp + 32;
    fprintf('The temp in degrees F is %.1f\n',f_temp)
elseif scale == 'K'
    k_temp = temp + 273.15;
    fprintf('The temp in degrees K is %.1f\n',k_temp)
else
    fprintf('Sorry, I do not understand your choice!\n')
end
