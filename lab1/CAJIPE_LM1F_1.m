%{
    A MATLAB script for the following problem:
    - Create a vector of five random integers, each in the inclusive range from -10 to 10.

    Perform each of the following:
    - subtract 3 from each element
    - count how many are positive
    - get the absolute value of each element
    - find the maximum value

    Programmed by:
    - Ralph Cajipe, May 2022
%}

%% Problem 1
% Create a vector of five random integers, each in the inclusive range from -10 to 10.
x = randi([-10,10],1,5);
disp("Original vector: ");
% Display x with newline after
disp(x)
disp(" ")

%% Problem 2
% Create a new vector that is the result of subtracting 3 from each element
% of the original vector
y = x - 3;
disp("Original vector subtracted by 3: ");
disp(y)
disp(" ")

%% Problem 3
% Count how many elements of the new vector are positive
disp("Number of elements in the new vector that are positive: ");
count = 0;
for i = 1:length(y)
    if y(i) > 0
        count = count + 1;
    end
end
disp(count)
disp(" ")

%% Problem 4
% Create a new vector that is the result of taking the absolute value of
% each element of the original vector
disp("Absolute value of each element of the original vector: ");
z = abs(x);
disp(z)
disp(" ")

%% Problem 5
% Find the maximum value of the new vector
disp("Maximum value of the new vector: ");
max = 0;
for i = 1:length(z)
    if z(i) > max
        max = z(i);
    end
end
disp(max)