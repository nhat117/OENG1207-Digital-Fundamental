% OENG1207 Digital Fundamental
% Lab 2 Part 2
% Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)
% This assignment is our team own original work
% This is the main file of the program
% Main program start here
clc, clearvars, close all % Clear all variables, close all matlab figure windows and clear command windows

while (1) % A non-stop while loops to drive the program
    % Program title
    disp('Welcome to Color Changing Program')
    disp('Description : This program will change the color you choose to black')
    disp('Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)')
    % Instruction for user
    disp('------------------------Instruction----------------------------------')% command window section divider
    disp('The available color you can choose are : red, blue, green, magenta, cyan, white, orange, yellow, and black')
    disp('1.Please type the full color name in the list')
    disp('2.The successfully transform image will appear with the original image in a pop-up windows for comparison')
    disp('3.The successfully transform image will be exported as result.png')
    disp('4.To quit the program press ctrl + c or type quit')
    disp('** The color name are case insensitive')
    disp('** The program will raise error if the color name is not in the list or contains invalid charaters.')
    disp('---------------------------------------------------------------------') % command window section divider
    user_input = lower(input('Please enter a color in the above list to change it to black :', 's')); % Get input color and convert it to lower case
    rgb = imread("coloredChips.png"); % Read the image from the tools box
    clc % Clear the command windows
    % Convert image to chosen color space
    status = 0; % Program status
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

    % Check if the user input is in the support color, enter a quit command
    % or invalid input.
    switch user_input
        case 'red'
            mask = red; % Assign mask to red
        case 'blue'
            mask = blue; % Assign mask to blue
        case 'green'
            mask = green; % Assign mask to green
        case 'magenta'
            mask = magenta; % Assign mask to magenta
        case 'cyan'
            mask = cyan; % Assign mask to cyan
        case 'white'
            mask = white; % Assign mask to white
        case 'orange'
            mask = orange; % Assign mask to orange
        case 'yellow'
            mask = yellow; % Assign mask to yellow
        case 'black'
            mask = black; % Assign mask to black
        case 'quit'
            status = -2; % The program encounter quit command
        otherwise % invalid respose handling
            status = -1; % The program encounter error
    end

    % Check if there is no error in the user input
    disp('---------------------------Status---------------------------------') % Status section divider
    switch status
        case -1 % If the enter options is not in the list
            disp('The color you entered is not in the list')
            disp('Please check the input to make sure the color name is in the list')
            disp('---------------------------------------------------------------------') %Section devider
        case -2
            % If the user enter quit in the input prompt
            disp('Thank you for using the program')
            disp('The program will exit now....')
            disp('------------------------------------------------------------------') %Section devider
            break % Quit the program main loops
        otherwise
            % Display the result
            fprintf('Changing the %s color in the picture to black \n', user_input) % Display the color name
            rgb_res = image_handler(rgb, mask); % Called user define function to transform the image
            figure(1), subplot(1, 2, 1), imshow(rgb), title('Original'); % Display the original image, subplot to display the image side by side
            figure(1), subplot(1, 2, 2), imshow(rgb_res), title('Result'); % Display the transformed image, subplot to display the image side by side
            disp('The result is saved as result.png')
            disp('---------------------------------------------------------------------') %Section devider
            imwrite(rgb_res, 'result.png'); % Save the converted in mage as a png format image
    end % End of switch case
end % End of the program loops
