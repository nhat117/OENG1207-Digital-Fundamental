clc, clearvars, close all
% User prompt and instructions
display('Welcome to Color Changing Program')
display('This program will change the color you choose to black')
display('The color you can choose are : red, blue, green, magenta, cyan, white, orange, yellow, and black')
display('To quit the program press ctrl + c or type quit')
display('---------------------------------------------------------------------')
% input_image = ('Please enter image path: ', 's')
while (1)
    user_input = lower(input('Please enter a color in the above list to change it to black :', 's')); % Get input color and convert it to lower case
    % rgb = imread(input_image)
    rgb = imread("coloredChips.png");
    % Convert RGB image to chosen color space
    [rgb_copy, status] = image_handler(rgb, user_input);
    % Check if the image return correct result
    if status == -1
        display('The color you entered is not in the list')
    elseif status == -2
        display('Thank you for using the program')
        display('The program will exit now....')
        break
    else
        % Display the result
        figure(1), subplot(1, 2, 1), imshow(rgb), title('Original');
        figure(1), subplot(1, 2, 2), imshow(rgb_copy), title('Result');
        display('The result is saved in result.png')
        imwrite(rgb_copy, 'result.png');
    end

end
