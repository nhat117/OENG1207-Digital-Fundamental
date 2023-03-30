
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
orange = [rgb(:,:,1) > 200 & rgb(:,:,2) > 100 & rgb(:,:,3) < 50];
blue = [rgb(:,:,1) < 50 & rgb(:,:,2) < 50 & rgb(:,:,3) > 200];
green = [rgb(:,:,1) < 50 & rgb(:,:,2) > 200 & rgb(:,:,3) < 50];
magenta = [rgb(:,:,1) > 200 & rgb(:,:,2) < 50 & rgb(:,:,3) > 200]; 
cyan = [rgb(:,:,1) < 50 & rgb(:,:,2) > 200 & rgb(:,:,3) > 200];
white = [rgb(:,:,1) > 200 & rgb(:,:,2) > 200 & rgb(:,:,3) > 200];
yellow = [rgb(:,:,1) > 200 & rgb(:,:,2) > 200 & rgb(:,:,3) < 50];
black = [rgb(:,:,1) < 50 & rgb(:,:,2) < 50 & rgb(:,:,3) < 50];
% Check the color
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
    otherwise % invalid resposnse
        disp('Invalid response, the program will exit now')
end
% Change the color to black
disp('Changing the color to black')
disp('Please wait...')  
rgb(dest) = 0;
% rgb(dest + row_size*col_size) = 0;

% rgb(repmat(dest,[1,1,3]))=0;
% Display the image
figure(1)
subplot(1,2,2)
imshow(rgb)