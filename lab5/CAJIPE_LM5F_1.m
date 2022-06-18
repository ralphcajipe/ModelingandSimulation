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

function plotCos(varargin)
    
    % Default line widths
    lw1 = 1;
    lw2 = 2;
    lw3 = 3;
    
    % If a random number is passed as an argument
    % Example: If 3 is passed, the line widths will be 3, 6, and 9 
    if nargin == 1
        % Multiply the default line widths with that number
        lw1 = lw1 * varargin{1};
        lw2 = lw2 * varargin{1};
        lw3 = lw3 * varargin{1};
    end
    
    % Create the figure window
    f = figure();
    
    % Set the title
    f.Name = 'Plot of cos(x) from -pi to pi';
    
    % Set the position of the figure window to be in the center of the screen
    f.Position = [100 100 600 400];
    
    % Set the axes
    a1 = subplot(1, 3, 1);
    a2 = subplot(1, 3, 2);
    a3 = subplot(1, 3, 3);
    
    % Set the title of the first plot
    a1.Title.String = sprintf('Line width: %d', lw1);
    
    % Set the title of the second plot
    a2.Title.String = sprintf('Line width: %d', lw2);
    
    % Set the title of the third plot
    a3.Title.String = sprintf('Line width: %d', lw3);
    
    % Set the x and y axes
    a1.XAxis.Label.String = 'x';
    a1.YAxis.Label.String = 'cos(x)';
    a2.XAxis.Label.String = 'x';
    a2.YAxis.Label.String = 'cos(x)';
    a3.XAxis.Label.String = 'x';
    a3.YAxis.Label.String = 'cos(x)';
    
    % Set the x and y limits
    a1.XLim = [-pi, pi];
    a1.YLim = [-1, 1];
    a2.XLim = [-pi, pi];
    a2.YLim = [-1, 1];
    a3.XLim = [-pi, pi];
    a3.YLim = [-1, 1];
    
    % Create an array of values from -pi to pi, in steps of 0.1
    vals = -pi:0.1:pi;
    
    % Plot the cos(x) values with line width lw1
    plot(a1, vals, cos(vals), 'k*', 'LineWidth', lw1);
    
    % Plot the cos(x) values with line width lw2
    plot(a2, vals, cos(vals), 'k*', 'LineWidth', lw2);
    
    % Plot the cos(x) values with line width lw3
    plot(a3, vals, cos(vals), 'k*', 'LineWidth', lw3);
    
    % Set the x and y ticks
    a1.XTick = -pi:pi/2:pi;
    a1.YTick = -1:1;
    a2.XTick = -pi:pi/2:pi;
    a2.YTick = -1:1;
    a3.XTick = -pi:pi/2:pi;
    a3.YTick = -1:1;
    
    % Set the x and y grid lines
    a1.XGrid = 'on';
    a1.YGrid = 'on';
    a2.XGrid = 'on';
    a2.YGrid = 'on';
    a3.XGrid = 'on';
    a3.YGrid = 'on';
    
    % Display the line widths in the titles
    a1.Title.String = sprintf('Line width: %d', lw1);
    a2.Title.String = sprintf('Line width: %d', lw2);
    a3.Title.String = sprintf('Line width: %d', lw3);

    % Set the figure to be visible
    f.Visible = 'on';
    
    % Display the plot
    drawnow
    
    % Save the plot as a png image in the current folder
    saveas(f, 'plotCos.png');
end