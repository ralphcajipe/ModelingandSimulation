%{
    A MATLAB script for the following problem:

    Write a simple script that will calculate the volume of a hollow sphere
    
    Volume of a hollow sphere = (4/3)π(R3 - r3)

    where r_i is the inner radius and r_o is the outer radius.
    Assign a value to a variable for the inner radius, and also assign a value
    to another variable for the outer radius. Then, using these variables, assign
    the volume to a third variable. Include a comments in the script.

%}

% Inner radius
r_i = 2;

% Outer radius
r_o = 5;

% Volume of a Hollow Sphere Formula
volume = (4/3)*pi*(r_o^3 - r_i^3);

% Display the volume
disp("The volume of a hollow sphere with")
disp("an inner radius of " + r_i + " and")
disp("an outer radius of " + r_o + " is " + volume);
