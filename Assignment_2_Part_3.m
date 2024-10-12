% Author Name: Kyle Omiatek
% Email: Omiate75@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Date: 10/4/2024

% Creating the file 'weather_data.txt'
fileID = fopen('weather_data.txt', 'w');
fprintf(fileID, 'Date,Temperature,Humidity,Precipitation\n');
fprintf(fileID, '2024-09-01,25.5,60,0\n');
fprintf(fileID, '2024-09-02,26.0,65,5\n');
fprintf(fileID, '2024-09-03,24.5,70,10\n');
fprintf(fileID, '2024-09-04,23.0,75,15\n');
fprintf(fileID, '2024-09-05,22.5,80,20\n');
fclose(fileID);

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

% Calculate statistics
avg_temperature = mean(temperature);     % Average temperature
avg_humidity = mean(humidity);           % Average humidity
total_precipitation = sum(precipitation);% Total precipitation

% Save the statistics to 'weather_summary.txt'
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, 'Weather Summary:\n');
fprintf(fileID, '----------------\n');
fprintf(fileID, 'Average Temperature: %.2f°C\n', avg_temperature);
fprintf(fileID, 'Average Humidity: %.2f%%\n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %.2f mm\n', total_precipitation);
fclose(fileID);

% Displaying a message indicating success
disp('Summary has been saved to weather_summary.txt');