%{
    Create a MATLAB script for the following problem:

    Write a MATLAB function that will plot cos(x) for x values ranging from –pi to pi 
    in steps of 0.1, using black stars (*). 
    It will do this three times across in one Figure Window, with varying line widths. 

    (Note: Even if individual points are plotted rather than a solid line, 
    the line width property will change the size of these points.) 
    If no arguments are passed to the function, the line widths will be 1, 2, and 3. 

    elseif, an argument is passed to the function, 
    it is a multiplier for these values 
    (e.g., if 3 is passed, the line widths will be 3, 6, and 9). 
    The line widths will be printed in the titles on the plots.
%}

function plotCosfunc(varargin)
    lw1 = 1;
    lw2 = 2;
    lw3 = 3;
    if nargin == 1
        lw1 = lw1 * varargin{1};
        lw2 = lw2 * varargin{1};
        lw3 = lw3 * varargin{1};
    end
    f = figure();
    f.Name = 'Plot of cos(x) from -pi to pi';
    a1 = subplot(1, 3, 1);
    a2 = subplot(1, 3, 2);
    a3 = subplot(1, 3, 3);
    vals = -pi:0.1:pi;
    plot(a1, vals, cos(vals), 'k*', 'LineWidth', lw1);
    plot(a2, vals, cos(vals), 'k*', 'LineWidth', lw2);
    plot(a3, vals, cos(vals), 'k*', 'LineWidth', lw3); 
    grid(a1,'on')
    grid(a2,'on')
    grid(a3,'on')
    a1.Title.String = sprintf('Line width: %d', lw1);
    a2.Title.String = sprintf('Line width: %d', lw2);
    a3.Title.String = sprintf('Line width: %d', lw3);
end