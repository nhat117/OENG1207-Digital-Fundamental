% OENG1207 Digital Fundamental
% Lab 2 Part 2
% Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)
% This assignment is our team own original work
% Main program start here
clc, clearvars, close all % Clear all variables, close all matlab figure windows and clear command windows
while (1) % A non-stop while loops to drive the program
    % Program title
    disp('Welcome to Color Changing Program')
    disp('Description : This program will change the color you choose to black')
    disp('Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)')
    % Instruction for user
    disp('------------------------Instruction----------------------------------')
    disp('The available color you can choose are : red, blue, green, magenta, cyan, white, orange, yellow, and black')
    disp('1.Please type the full color name in the list')
    disp('2.The successfully transform image will appear with the original image in a pop-up windows for comparison')
    disp('3.The successfully transform image will be exported as result.png')
    disp('4.To quit the program press ctrl + c or type quit')
    disp('** The color name are case insensitive')
    disp('** The program will raise error if the color name is not in the list or contains invalid charaters.')
    disp('---------------------------------------------------------------------')
    user_input = lower(input('Please enter a color in the above list to change it to black :', 's')); % Get input color and convert it to lower case
    rgb = imread("coloredChips.png");  % Read the image from the tools box
    clc % Clear the command windows 
    % Convert image to chosen color space
    status = 0; % Program status
    % Define pixel range for red blue green magenta cyan, white, orange, yellow, and black
    red = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 80 & rgb(:, :, 3) <= 100; % Red
    yellow = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 100 & rgb(:, :, 3) <= 50; 
    blue = rgb(:, :, 1) <= 25 & rgb(:, :, 2) > 40 & rgb(:, :, 2) <= 120 & rgb(:, :, 3) > 130;
    green = rgb(:, :, 1) < 80 & rgb(:, :, 2) <= 200 & rgb(:, :, 2) > 120 & rgb(:, :, 3) <= 140 & rgb(:, :, 3) > 55;
    white = rgb(:, :, 1) >= 57 & rgb(:, :, 2) >= 55 & rgb(:, :, 3) >= 55;
    black = rgb(:, :, 1) >= 5 & rgb(:, :, 1) <= 80 & rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 80 & rgb(:, :, 3) >= 5 & rgb(:, :, 3) <= 80;
    cyan = rgb(:, :, 1) >= 20 & rgb(:, :, 1) < 80 & rgb(:, :, 2) >= 100 & rgb(:, :, 2) <= 245 & rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245;
    magenta = rgb(:, :, 1) >= 100 & rgb(:, :, 1) <= 245 & rgb(:, :, 2) >= 20 & rgb(:, :, 2) < 110 & rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245;
    % orange = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 80 & rgb(:, :, 2) <= 200 & rgb(:, :, 3) <= 50;
    % Check if the user input is in the support color, enter a quit command
    % or invalid input. 
    switch user_input
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
%         case 'orange'
%             dest = orange;
        case 'yellow'
            dest = yellow;
        case 'black'
            dest = black;
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
            fprintf('Changing the %s color in the picture to black \n', user_input)
            rgb_res = image_handler(rgb, dest); % Called user define function to transform the image
            figure(1), subplot(1, 2, 1), imshow(rgb), title('Original'); % Display the original image, subplot to display the image side by side
            figure(1), subplot(1, 2, 2), imshow(rgb_res), title('Result'); % Display the transformed image, subplot to display the image side by side
            disp('The result is saved as result.png')
            disp('---------------------------------------------------------------------') %Section devider
            imwrite(rgb_res, 'result.png'); % Save the converted in mage as a png format image
    end % End of switch case
end % End of the program loops
