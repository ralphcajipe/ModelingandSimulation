%{
    Create a MATLAB script for the following probelm:

    For the following matrices A, B, and C:

    A = [1 4; 3 2] 
    B = [2 1 3; 1 5 6; 3 6 0]
    C = [3 2 5; 4 1 2]

    Perform each of the following:
    - display result of 3*A 
    - display  the result of A*C 
    - List all possible matrix multiplications that can be performed and dislpay the result of each one.
%}

disp('Matrix A')
A = [1 4; 3 2] 
disp(" ")

disp('Matrix B')
B = [2 1 3; 1 5 6; 3 6 0]
disp(" ")

disp('Matrix C')
C = [3 2 5; 4 1 2]
disp(" ")

%% Display the result of 3*A
A_times_3 = 3.*A

%% Display the result of A*C
A_times_C = A*C

% Check correct dimensions for matrix multiplication. 
% Check that the number of columns in the first matrix matches the number of rows in the second matrix.
% List all correct matrix multiplications that can be performed and dislpay the result of each one.

disp(" ")
disp("Other possible matrix multiplications:")

%% C*B
disp('C*B')
C_times_B = C*B


%% B*C
disp('B*C')
B_times_C = B*C