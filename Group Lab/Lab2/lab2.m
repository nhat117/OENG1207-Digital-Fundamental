clc, clearvars, close all
% Read the image
display('Welcome to color changing program')
% input_image = ('Please enter image path: ', 's')
color_change = lower(input('Please enter a color to change it to black :', 's')); % Get input color and convert it to lower case
% rgb = imread(input_image)
rgb = imread("coloredChips.png");
status = 0; %Normal status

% Check row and cols size
row_size = size(rgb, 1);
col_size = size(rgb, 2);

% Define pixel range for red blue green magenta cyan, white, orange, yellow, and black
red = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 50 & rgb(:, :, 3) <= 100;
yellow = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 100 & rgb(:, :, 3) <= 50;
blue = rgb(:, :, 1) <= 25 & rgb(:, :, 2) > 40 & rgb(:, :, 2) <= 120 & rgb(:, :, 3) > 130;
green = rgb(:, :, 1) < 80 & rgb(:, :, 2) <= 200 & rgb(:, :, 2) > 120 & rgb(:, :, 3) <= 140 & rgb(:, :, 3) > 55;
white = rgb(:, :, 1) >= 57 & rgb(:, :, 2) >= 55 & rgb(:, :, 3) >= 55;
black = rgb(:, :, 1) >= 5 & rgb(:, :, 1) <= 80 & rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 80 & rgb(:, :, 3) >= 5 & rgb(:, :, 3) <= 80;
cyan = rgb(:, :, 1) >= 20 & rgb(:, :, 1) < 80 & rgb(:, :, 2) >= 100 & rgb(:, :, 2) <= 245 & rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245;
magenta = rgb(:, :, 1) >= 100 & rgb(:, :, 1) <= 245 & rgb(:, :, 2) >= 20 & rgb(:, :, 2) < 110 & rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245;
orange = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 80 & rgb(:, :, 2) <= 200 & rgb(:, :, 3) <= 50;

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
    figure(1)
    subplot(1, 2, 1)
    imshow(rgb)
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
    figure(1)
    subplot(1, 2, 2)
    imshow(rgb)
end