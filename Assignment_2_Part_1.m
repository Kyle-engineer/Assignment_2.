% Author Name: Kyle Omiatek
% Email: Omiate75@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Date: 10/4/2024

population = [5000, 5200, 5350, 5600, 5800]; % creating a row vector

growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);

growth_rate = [0, growth_rate];  % Adding 0 for the first year
pop_data = [population; growth_rate];  % 2x5 matrix combining population and growth rate

fprintf('Year\tPopulation\tGrowth Rate (%%)\n');  % Table header
for i = 1:length(population)
    if isnan(growth_rate(i))
        fprintf('%d\t%d\t\tN/A\n', i, population(i));  % First year with N/A for growth rate
    else
        fprintf('%d\t%d\t\t%.2f\n', i, population(i), growth_rate(i));  % Other years with calculated growth rate
    end
end