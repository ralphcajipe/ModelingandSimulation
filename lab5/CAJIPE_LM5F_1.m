%{
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

function CAJIPE_LM5F_1()

    function plotCosfunc(varargin)

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

        % Set the title of the figure
        f.Name = 'Plot of cos(x) from -pi to pi';
        
        % Set the axes 
        a1 = subplot(1, 3, 1);
        a2 = subplot(1, 3, 2);
        a3 = subplot(1, 3, 3);

        % Create an array of values from -pi to pi, in steps of 0.1
        vals = -pi:0.1:pi;

        % Plot the cos(x) values with line widths lw1, lw2, and lw3
        plot(a1, vals, cos(vals), 'k*', 'LineWidth', lw1);
        plot(a2, vals, cos(vals), 'k*', 'LineWidth', lw2);
        plot(a3, vals, cos(vals), 'k*', 'LineWidth', lw3); 

        % Set grid to on
        grid(a1,'on')
        grid(a2,'on')
        grid(a3,'on')

        % Set the title of the first, second, and third plot
        a1.Title.String = sprintf('Line width: %d', lw1);
        a2.Title.String = sprintf('Line width: %d', lw2);
        a3.Title.String = sprintf('Line width: %d', lw3);
        
    end

    % Call the plotCosfunc() function
    % Example: The output of the line widths will be 3, 6, and 9 if 3 is passed.
    plotCosfunc(3);

    % Save the figure as image
    saveas(gcf, 'plot_cos_result.png');
end
