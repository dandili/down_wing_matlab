% Reading the data from the file
filename = 'WingDownResults.txt';
data = readmatrix(filename);

% Extracting coordinates and total pressure values
x = data(:, 1);
y = data(:, 2);
z = data(:, 3);
pressure = data(:, 4); % Modify the index based on the actual column of the total pressure

% Creating grid for interpolation and contour plot on XY plane
[xq, yq] = meshgrid(linspace(min(x), max(x), 100), linspace(min(y), max(y), 100));
pressureXY = griddata(x, y, pressure, xq, yq);
figure;
contourf(xq, yq, pressureXY, 20, 'LineColor', 'none');
colorbar;
title('Pressure Contour on XY Plane');
xlabel('X Coordinate');
ylabel('Y Coordinate');

% Creating grid for interpolation and contour plot on XZ plane
[xq, zq] = meshgrid(linspace(min(x), max(x), 100), linspace(min(z), max(z), 100));
pressureXZ = griddata(x, z, pressure, xq, zq);
figure;
contourf(xq, zq, pressureXZ, 20, 'LineColor', 'none');
colorbar;
title('Pressure Contour on XZ Plane');
xlabel('X Coordinate');
ylabel('Z Coordinate');

% Creating grid for interpolation and contour plot on YZ plane
[yq, zq] = meshgrid(linspace(min(y), max(y), 100), linspace(min(z), max(z), 100));
pressureYZ = griddata(y, z, pressure, yq, zq);
figure;
contourf(yq, zq, pressureYZ, 20, 'LineColor', 'none');
colorbar;
title('Pressure Contour on YZ Plane');
xlabel('Y Coordinate');
ylabel('Z Coordinate');
