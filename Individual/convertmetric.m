% OENG1207 Digital Fundamentals - Individual Project
% Student: Bui Minh Nhat-s3878174
% This assignment submission is my own, original work.
% Convert metric user define function to perform suitable conversion with the destination is the metrics unit.
% The function take in 2 argumentn conversion and mode to select conversion mode, the function will output the result of the conversion.
% User defined function start here
function result = convertmetric(conversion, mode) % declare user_input and output of function user_input = input('');  % user_input value
%Check if the user_input is a number or not negative (for length and mass conversion)
user_input = str2double(input('The input should be a number (Positive number for length and mass): ','s'));  % user_input value, use str2double to accept double string input
if isnan(user_input) % Check if the input is not a number or a negative number when being used with length and mass conversion
    disp('Invalid input'); % Display error message
    disp('Please enter a number');
    input('Press any key to continue: ' ,'s'); % Pause the program
    result = NaN;% Return NaN if the input is invalid. Nan means not a number
    return; % Exit the function
elseif (user_input < 0 && ~strcmp(mode,'temperature'))
    disp('Please enter a positive number for length and weight conversion')
    input('Press any key to continue: ' ,'s'); % Pause the program
    result = NaN;% Return NaN if the input is invalid. Nan means not a number
    return; % Exit the function
end
clc;% Clear the command window
disp('Converting....')
switch conversion  % conditonal statement to check every single case
    case 'fah2cel'  % convert Fahrenheit to Celsius
        result = (user_input - 32) * (5/9);% Formular for conversion from Fahrenheit to Celsius
        fprintf('%.2f degrees Fahrenheit is %.2f degrees Celsius\n', user_input, result);  % Print out the result
    case 'inch2cm'    % convert inches to cm
        result = user_input * 2.5;
        fprintf('%.2f Inches is %.2f Centimeters\n', user_input, result); % Formular for conversion from inches to cm
    case 'feet2m' % convert feet to meter
        result = user_input * 0.3048; % Formular for conversion from feet to meter
        fprintf('%.2f Feet is %.2f Meters\n', user_input, result);  % Print out the result
    case 'miles2km'    % convert miles to kilometer
        result = user_input * 1.609344; % Formular for conversion from miles to kilometer
        fprintf('%.2f Miles is %.2f Kilometers\n', user_input, result); % Print out the result
    case 'oz2grams' % convert ounces to gram
        result = user_input * 28.3495; % Formular for conversion from ounces to gram
        fprintf('%.2f Ounces is %.2f Grams\n', user_input, result); % Print out the result
    case 'pounds2kg'   % convert pounds to kilogram
        result = user_input * 0.4536; %Formular for conversion from pounds to kilogram
        fprintf('%.2f Pounds is %.2f Kilograms\n', user_input, result); % Print out the result
    case 'ton2tonne'    % convert tonne to ton
        result = user_input * 1.016; % Formular for conversion from tonne to ton
        fprintf('%.2f Ton (imperial) is %.2f Tonne (Metric) \n', user_input, result); % Print out the result
    otherwise
        disp('Invalid conversion');% Print out error message
        disp('Please enter a valid conversion');
        input('Press any button to try again'); % Ask user to press any button to try again
        result = NaN; % Return NaN if the input is invalid. Nan means not a number
end % End of switch case
end % End of function
