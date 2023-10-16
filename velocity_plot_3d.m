% Reading the data from the file
filename = 'WingDownResults.txt'; % Add the path if the file is not in the current directory
data = readmatrix(filename);

% Extracting coordinates and velocity components
x = data(:, 1);
y = data(:, 2);
z = data(:, 3);
u = data(:, 5); % Modify the indices based on the actual columns of the velocity components in your file
v = data(:, 6);
w = data(:, 7);

% Calculating velocity magnitude
velocityMagnitude = sqrt(u.^2 + v.^2 + w.^2);

% 3D scatter plot for velocity magnitude
figure;
scatter3(x, y, z, 20, velocityMagnitude, 'filled');
colorbar;
title('3D Scatter Plot of Velocity Magnitude');
xlabel('X Coordinate');
ylabel('Y Coordinate');
zlabel('Z Coordinate');
