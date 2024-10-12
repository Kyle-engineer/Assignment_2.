% Author Name: Kyle Omiatek
% Email: Omiate75@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Date: 10/4/2024




% Create the file 'stock_data.txt' with 30 days of fictitious stock prices
stock_prices = [100, 102, 101, 103, 104, 102, 105, 107, 108, 110, 112, 111, 115, 118, 120, 122, 123, 121, 124, 126, 125, 127, 130, 129, 131, 133, 132, 135, 137, 140];
fileID = fopen('stock_data.txt', 'w');
fprintf(fileID, '%.2f\n', stock_prices);
fclose(fileID);


% Read stock data from 'stock_data.txt'
filename = 'stock_data.txt';
stock_prices = load(filename);  % Load stock prices into a vector

% Calculate statistics
avg_price = mean(stock_prices);                   % Average closing price
max_price = max(stock_prices);                    % Highest closing price
min_price = min(stock_prices);                    % Lowest closing price
price_increase_days = sum(diff(stock_prices) > 0);% Number of days stock price increased

% Print the statistics
fprintf('Average closing price: %.2f\n', avg_price);
fprintf('Highest closing price: %.2f\n', max_price);
fprintf('Lowest closing price: %.2f\n', min_price);
fprintf('Number of days the stock price increased: %d\n', price_increase_days);

% Create a line plot
figure;
plot(stock_prices, '-o', 'LineWidth', 2);    % Plot daily closing prices
hold on;
yline(avg_price, '--g', 'LineWidth', 1.5);  % Add average price line
yline(max_price, '--r', 'LineWidth', 1.5);  % Add highest price line
yline(min_price, '--b', 'LineWidth', 1.5);  % Add lowest price line

% Customize the plot
title('Stock Price Analysis Over 30 Days');
xlabel('Day');
ylabel('Closing Price ($)');
legend('Daily Prices', 'Average Price', 'Highest Price', 'Lowest Price', 'Location', 'Best');
grid on;

% Save the plot as an image file
saveas(gcf, 'stock_analysis.png');

% Write summary to 'stock_summary.txt'
summary_file = fopen('stock_summary.txt', 'w');
fprintf(summary_file, 'Stock Price Summary:\n');
fprintf(summary_file, '---------------------\n');
fprintf(summary_file, 'Average closing price: %.2f\n', avg_price);
fprintf(summary_file, 'Highest closing price: %.2f\n', max_price);
fprintf(summary_file, 'Lowest closing price: %.2f\n', min_price);
fprintf(summary_file, 'Number of days the stock price increased: %d\n', price_increase_days);
fclose(summary_file);

% Display a message indicating the analysis is complete
disp('Stock analysis complete. Results saved to ''stock_summary.txt'' and ''stock_analysis.png''.');



