%% Write a program in matlab to change the color of the image
clc, clearvars, close all
% Read the image
display('Welcome to color changing program')
color_change = input('Please enter a color to change it to black :','s')
rgb = imread("coloredChips.png");
figure(1)
subplot(1,2,1)
imshow(rgb)
% Check row and cols size
row_size = size(rgb,1);
col_size = size(rgb,2);
% dest = [0,0,0]
% Define pixel range for red blue green magenta cyan, white
red = [rgb(:,:,1) >= 200 & rgb(:,:,2) >= 5 & rgb(:,:,2) <= 50 & rgb(:,:,3) <= 100]; 
yellow = [rgb(:,:,1) >= 200 & rgb(:,:,2) >= 100 & rgb(:,:,3) <= 50];
blue  = [rgb(:,:,1) <= 25 & rgb(:,:,2) > 40 & rgb(:,:,2) <= 120 & rgb(:,:,3) > 130];
green  = [rgb(:,:,1) < 80 & rgb(:,:,2) <= 200 & rgb(:,:,2) > 120 & rgb(:,:,3) <= 140 & rgb(:,:,3) > 55];
white = [rgb(:,:,1) >= 57 & rgb(:,:,2) >= 55 & rgb(:,:,3) >= 55];
black = [rgb(:,:,1) >= 5 & rgb(:,:,1) <= 80 & rgb(:,:,2) >= 5 & rgb(:,:,2) <= 80  & rgb(:,:,3) >= 5 & rgb(:,:,3) <= 80];
cyan = [rgb(:,:,1) >= 20 & rgb(:,:,1) < 80  & rgb(:,:,2) >= 100 & rgb(:,:,2) <= 245 & rgb(:,:,3) >= 100 & rgb(:,:,3) <= 245];
magenta = [rgb(:,:,1) >= 100 & rgb(:,:,1) <= 245 & rgb(:,:,2) >= 20 & rgb(:,:,2) < 110 & rgb(:,:,3) >= 100 & rgb(:,:,3) <= 245];

switch color_change
    case 'red'
        dest = red;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'blue'
        dest = blue;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'green'
        dest = green;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'magenta'
        dest = magenta;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'cyan'
        dest = cyan;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'white'
        dest = white;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'orange'
        dest = orange;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'yellow'
        dest = yellow;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    case 'black'
        dest = black;
        rgb(repmat(dest,[1,1,3]))=0; % Replace the corresponding mask to 0
    otherwise % invalid resposnse
        disp('Invalid response, the program will exit now')
end

% Change the color to black
disp('Changing the color to black')
disp('Please wait...')  
display(dest)
rgb(repmat(dest,[1,1,3]))=0;

% Display the blue
figure(1)
subplot(1,2,2)
imshow(rgb)