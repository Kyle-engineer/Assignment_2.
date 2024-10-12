% Author Name: Kyle Omiatek
% Email: Omiate75@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Date: 10/4/2024

%%

planet_distances = [0.39, 0.72, 1.0, 1.52, 5.2, 9.58, 19.22, 30.05]; % in AU Define the planet distances
planet_sizes = [0.38, 0.95, 1.0, 0.53, 11.2, 9.45, 4.0, 3.88]; % relative to Earth (Earth = 1)

planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'}; % Planet names 


figure; % Create a figure

% Subplot 1: Scatter plot of planet distances vs. planet sizes
subplot(1, 2, 1);  % First subplot (1 row, 2 columns, 1st plot)
scatter(planet_distances, planet_sizes, planet_sizes*100, 'filled');  % Scale marker sizes by planet size
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Planet Size (Earth = 1)');
grid on;
hold on;

% Annotate each point with the planet name
for i = 1:length(planet_distances)
    text(planet_distances(i) + 0.1, planet_sizes(i), planet_names{i}, 'FontSize', 8);
end

% Subplot 2: Bar chart of planet distances
subplot(1, 2, 2);  % Second subplot (1 row, 2 columns, 2nd plot)
bar(planet_distances);
title('Planet Distances from Sun');
xlabel('Planets');
ylabel('Distance (AU)');
set(gca, 'xticklabel', planet_names);  % Label the x-axis with planet names
grid on;

% Adjust figure layout
sgtitle('Solar System Visualization');

% Save the figure as 'solar_system_visualization.png'
saveas(gcf, 'solar_system_visualization.png');