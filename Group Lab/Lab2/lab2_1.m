clc, clearvars, close all
% User prompt and instructions
display('Welcome to Color Changing Program')
display('This program will change the color you choose to black')
display('The color you can choose are : red, blue, green, magenta, cyan, white, orange, yellow, and black')
display('To quit the program press ctrl + c')
display('---------------------------------------------------------------------')
% input_image = ('Please enter image path: ', 's')
color_change = lower(input('Please enter a color in the above list to change it to black :', 's')); % Get input color and convert it to lower case
% rgb = imread(input_image)
rgb = imread("coloredChips.png");
status = 0; %Normal status

% Check row and cols size
row_size = size(rgb, 1);
col_size = size(rgb, 2);

% Define pixel range for red blue green magenta cyan, white, orange, yellow, and black
red = rgb(:, :, 1) <= 260 & rgb(:, :, 1) >= 200 & ...
    rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 60 & ...
    rgb(:, :, 3) <= 90 & rgb(:, :, 3) >= 15; % Red

yellow = rgb(:, :, 1) <= 255 & rgb(:, :, 1) <= 260 & ...
    rgb(:, :, 2) >= 225 & rgb(:, :, 2) <= 255 & ...
    rgb(:, :, 3) <= 60; % Yellow

blue = rgb(:, :, 1) <= 25 & rgb(:, :, 2) >= 40 & ...
    rgb(:, :, 2) <= 120 & rgb(:, :, 3) > 130; % Blue

green = rgb(:, :, 1) < 80 & rgb(:, :, 2) <= 200 & ...
    rgb(:, :, 2) > 120 & rgb(:, :, 3) <= 140 & ...
    rgb(:, :, 3) > 55; % Green

white = rgb(:, :, 1) >= 57 & rgb(:, :, 2) >= 55 & ...
    rgb(:, :, 3) >= 55; % White

black = rgb(:, :, 1) >= 5 & rgb(:, :, 1) <= 60 & ...
    rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 130 & ...
    rgb(:, :, 3) >= 5 & rgb(:, :, 3) <= 70; % Black

cyan = rgb(:, :, 1) >= 10 & rgb(:, :, 1) <= 60 & ...
    rgb(:, :, 2) >= 150 & rgb(:, :, 2) <= 255 & ...
    rgb(:, :, 3) >= 150 & rgb(:, :, 3) <= 255; % Cyan

magenta = rgb(:, :, 1) >= 100 & rgb(:, :, 1) <= 245 & ...
    rgb(:, :, 2) >= 20 & rgb(:, :, 2) < 110 & ...
    rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245; % Magenta

orange = rgb(:, :, 1) <= 260 & rgb(:, :, 1) >= 170 & ...
    rgb(:, :, 2) <= 150 & rgb(:, :, 2) >= 40 & ...
    rgb(:, :, 3) <= 70 & rgb(:, :, 3) >= 0; % Orange

switch color_change
    case 'red'
        dest = red;
    case 'blue'
        dest = blue;
    case 'green'
        dest = green;
    case 'magenta'
        dest = magenta;
    case 'cyan'
        dest = cyan;
    case 'white'
        dest = white;
    case 'orange'
        dest = orange;
    case 'yellow'
        dest = yellow;
    case 'black'
        dest = black;
    otherwise % invalid respose handling
        disp('Invalid color, the program will exit now')
        status = -1; % The program encounter error
        return
end

if status == 0 % Check if the program encounter any error
    % Display the original image
    figure(1), subplot(1, 2, 1), title('Original'), imshow(rgb)
    % Change the color to black
    fprintf('Changing the %s color in the picture to black \n', color_change)
    disp('Please wait...')

    for i = 1:row_size

        for j = 1:col_size

            if dest(i, j)
                rgb(i, j, :) = [0 0 0];
            end

        end

    end

    % Display the transform image
    figure(1), subplot(1, 2, 2), title('Transform Image'), imshow(rgb)
end
