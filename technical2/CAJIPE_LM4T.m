%{
    Given problem:
    The sales (in billions) for two separate divisions of
    the ABC Corportation for each of the four quarters of
    2013 are stored in a file called "salesfigs.dat":

    1.2 1.4 1.8 1.3
    2.2 2.5 1.7 2.9

    Write a MATLAB script that will:
    1. load the data from the file into a matrix
    2. separate this matrix into 2 vectors
    3. create the plot of the data (which uses black circles
    and stars as the plot symbols)
%}

% Load the data from the file into a matrix
load salesfigs.dat

% Separate this matrix into 2 vectors
sales_a = salesfigs(1,:);
sales_b = salesfigs(2,:);

% Create the plot Division A which uses black circles as the plot symbols
plot(sales_a,'ko')

% Retains the current plot and certain axes properties so that 
% subsequent graphing commands add to the existing graph.
hold on

% Create the plot Division B which uses stars as the plot symbols
plot(sales_b,'k*')

% Set the labels for the x and y axes
xlabel('Quarter')
ylabel('Sales(billions)')

% Set the title of the graph
title('ABC Corporation Sales: 2013')

% Set the legend for the graph
legend('Division A', 'Division B')

% Save the figure as PNG
print -dpng salesfigs.png