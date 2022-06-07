%{
    A file "floatnums.dat" has been created for use in an
    experiment. However, it contains float (real) numbers
    and what is desired is integers. Also, the file is not
    exactly in the correct format; the values are stored
    columnwise rather than rowwise. For example, if
    the file contains the following:

    90.5792    27.8498    97.0593
    12.6987    54.6882    95.7167
    91.3376    95.7507    48.5376
    63.2359    96.4889    80.0280
     9.7540    15.7613    14.1886

    What is really desired is a 3x5 matrix with the following values:

    91    13   91    63    10
    28    55   96    96    16
    97    96   49    80    14

    Write a MATLAB script that would read from the file
    floatnum.dat into a matrix, round the numbers,
    and write the matrix in the desired format to
    a new file called intnums.dat.
%}

% Open the file
fid = fopen('floatnums.dat');

% Read the file
A = fscanf(fid, '%f');

% Close the file
fclose(fid);

% Reshape the vector into a matrix
A = reshape(A, 3, 5)';

% Round the numbers
A = round(A);

% Open the file
fid = fopen('intnums.dat', 'w');

% Write the matrix to the file
fprintf(fid, '%d\t%d\t%d\t%d\t%d\n', A);

% Close the file
fclose(fid);