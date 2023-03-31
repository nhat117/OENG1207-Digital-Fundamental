clc, clearvars, close all
% Lab 2 part 2
% Main program start here
while (1)
    % User prompt and instructions
    disp('Welcome to Color Changing Program')
    disp('This program will change the color you choose to black')
    disp('The color you can choose are : red, blue, green, magenta, cyan, white, orange, yellow, and black')
    disp('To quit the program press ctrl + c or type quit')
    disp('---------------------------------------------------------------------')
    user_input = lower(input('Please enter a color in the above list to change it to black :', 's')); % Get input color and convert it to lower case
    % input_image = input('Please enter the image name with extension :', 's'); % Get input image name
    % rgb = imread(input_image)
    rgb = imread("coloredChips.png"); % TODO: Remove this and change to input
    clc % Clear the command screen
    % Convert image to chosen color space
    [rgb_res, status_code] = image_handler(rgb, user_input);

    % Check if the image return correct result
    switch status_code
        case -1 % If the enter options is not in the list
            disp('The color you entered is not in the list')
            disp('Please enter the valid color that is in the list')
            disp('---------------------------------------------------------------------')
        case -2
            disp('Thank you for using the program')
            disp('The program will exit now....')
            break
        otherwise
            % Display the result
            figure(1), subplot(1, 2, 1), imshow(rgb), title('Original'); % Display the original image
            figure(1), subplot(1, 2, 2), imshow(rgb_res), title('Result'); % Display the transformed image
            disp('The result is saved in result.png')
            disp('---------------------------------------------------------------------')
            imwrite(rgb_res, 'result.png');
    end

end
