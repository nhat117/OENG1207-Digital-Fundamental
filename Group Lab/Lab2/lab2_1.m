clc, clearvars, close all % Clear all of the instruction and variable in the workspace
% User prompt and instructions
display('Welcome to Color Changing Program')
display('This program will change the color you choose to black')
display('The color you can choose are : red, blue, green, magenta, cyan, white, orange, yellow, and black')
display('To quit the program press ctrl + c')
display('---------------------------------------------------------------------') % Section divider
color_change = lower(input('Please enter a color in the above list to change it to black :', 's')); % Get input color and convert it to lower case
rgb = imread("coloredChips.png");  % Retrive the sample image from the Image processing toolbox
status = 0; %Normal status

% Check row and cols size
row_size = size(rgb, 1);
col_size = size(rgb, 2);

% Define pixel range for red blue green magenta cyan, white, orange, yellow, and black
% Range of red  200 <= R <= 260| 5 <= G <= 60| 15 <= B <= 90
red = rgb(:, :, 1) <= 260 & rgb(:, :, 1) >= 200 & ...
    rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 60 & ...
    rgb(:, :, 3) <= 90 & rgb(:, :, 3) >= 15; % Red
% Range of yellow R <= 260| 225 <= G <= 255| B <= 60
yellow = rgb(:, :, 1) <= 255 & rgb(:, :, 1) <= 260 & ...
    rgb(:, :, 2) >= 225 & rgb(:, :, 2) <= 255 & ...
    rgb(:, :, 3) <= 60; 
% Range of blue R <= 25| 40 <= G <= 120 | B > 130
blue = rgb(:, :, 1) <= 25 & rgb(:, :, 2) >= 40 & ...
    rgb(:, :, 2) <= 120 & rgb(:, :, 3) > 130; % Blue
% Range of green  R < 80| 120 < G <= 200| 55 < B <= 140
green = rgb(:, :, 1) < 80 & rgb(:, :, 2) <= 200 & ...
    rgb(:, :, 2) > 120 & rgb(:, :, 3) <= 140 & ...
    rgb(:, :, 3) > 55; 
% Range of white R >= 57| 55 <= G| 55 <= B
white = rgb(:, :, 1) >= 57 & rgb(:, :, 2) >= 55 & ...
        rgb(:, :, 3) >= 55; % White
% Range of black 5 <= R <= 60| 5 <= G <= 130| 5 <= B <= 70
black = rgb(:, :, 1) >= 5 & rgb(:, :, 1) <= 60 & ...
    rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 130 & ...
    rgb(:, :, 3) >= 5 & rgb(:, :, 3) <= 70; % Black
% Range of cyan 10 <= R <= 60| 150 <= G <= 255| 150 <= B <= 255
cyan = rgb(:, :, 1) >= 10 & rgb(:, :, 1) <= 60 & ...
    rgb(:, :, 2) >= 150 & rgb(:, :, 2) <= 255 & ...
    rgb(:, :, 3) >= 150 & rgb(:, :, 3) <= 255; % Cyan
% Range of magenta 100 <= R <= 245| 20 <= G < 110| 100 <= B <= 245
magenta = rgb(:, :, 1) >= 100 & rgb(:, :, 1) <= 245 & ...
    rgb(:, :, 2) >= 20 & rgb(:, :, 2) < 110 & ...
    rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245; % Magenta
% Range of orange 170 <= R <= 260| 40 <= G <= 150| 0 <= B <= 70
orange = rgb(:, :, 1) <= 260 & rgb(:, :, 1) >= 170 & ...
    rgb(:, :, 2) <= 150 & rgb(:, :, 2) >= 40 & ...
    rgb(:, :, 3) <= 70 & rgb(:, :, 3) >= 0; 

% Check the input color
switch color_change
    case 'red'
        mask = red; % Assign the red pixel to mask
    case 'blue'
        mask = blue; % Assign the blue pixel to mask
    case 'green'
        mask = green; % Assign the green pixel to mask
    case 'magenta'
        mask = magenta;% Assign the magenta pixel to mask
    case 'cyan'
        mask = cyan;% Assign the cyan pixel to mask
    case 'white'
        mask = white;% Assign the white pixel to mask
    case 'orange'
        mask = orange;% Assign the orange pixel to mask
    case 'yellow'
        mask = yellow;% Assign the yellow pixel to mask
    case 'black'
        mask = black;% Assign the black pixel to mask
    otherwise % invalid respose handling
        disp('Invalid color, the program will exit now')
        status = -1; % The program encounter error
        return
end % End switch

if status == 0 % Check if the program encounter any error
    % Display the original image
    figure(1), subplot(1, 2, 1), title('Original'), imshow(rgb)
    % Change the color to black
    fprintf('Changing the %s color in the picture to black \n', color_change)
    disp('Please wait...')
    for i = 1:row_size % Iterate through the row of the image
        for j = 1:col_size % Iterate through of the row of image
            if mask(i, j) % If the pixel is in the position of the mask
                rgb(i, j, :) = [0 0 0]; % Change the pixel to black
            end % End if
        end % End for
    end % End for

    % Display the transform image
    figure(1), subplot(1, 2, 2), title('Transform Image'), imshow(rgb)
end
