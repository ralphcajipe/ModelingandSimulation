%{
    The electricity generated by wind turbines annually in
    kilowatt-hours per year is given in the turbine_data.dat file. 
    The amount of electricity is determined by, among other factors,
    the diameter of the turbines blade (in feet) and
    the wind velocity in mph. The file stores on each line
    the blade diameter, wind velocity, and the approximate
    electricity generated for the year. For example:

    5 5 406
    5 10 3250
    5 15 10970
    5 20 26000
    10 5 1625
    10 10 13000
    10 15 43875
    10 20 104005

    Access the file turbine_data.dat in this format and determine
    how to display this data graphically to show the relationship 
    between the blade diameter, wind velocity and the electricity generated.
%}

my_data = load('turbine_data.dat');

% Second column of data contains speed of the wind turbine
speed = my_data(:,2);

% First 4 data points are for 5 feet blade diameter
speed_5 = speed(1:4);

% From the 5th data point to the end of vector contains data for 10 feet blade diameter
speed_10 = speed(5:end);

% Third column of data contains generated electricity of the wind turbine
kwh = my_data(:,3);

% First 4 data points are for 5 feet blade diameter 
kwh_5 = kwh(1:4);

% From the 5th data point to the end of vector contains data for 10 feet blade diameter
kwh_10 = kwh(5:end);

% Plot the speed_5 on x-axis and corresponding kwh_5 on y-axis
plot(speed_5,kwh_5,'LineWidth',2)

% Plot another curve in the same graph so we wait
hold on

% Plot the speed_10 on x-axis and corresponding kwh_10 on y-axis
plot(speed_10,kwh_10,'LineWidth',2)

% legend provides visual aid to distinguish between the two curves
legend('5 feet blade','10 feet blade')

title('Generated Electricty vs Wind speed')

xlabel('Wind speed (mph)')

ylabel('Generated Electricity (kWh)')

% Save the figure as a .png file
saveas(gcf,'turbine_data.png')

%{ 
    Observation:
    The generated electricity is higher for 10 feet blade diameter 
    as the wind speed increases. This is because the wind speed is
    increasing and the electricity generated is also increasing. 
%} 