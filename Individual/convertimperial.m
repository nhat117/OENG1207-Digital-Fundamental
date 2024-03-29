% OENG1207 Digital Fundamentals - Individual Project
% Student: Bui Minh Nhat-s3878174
% This assignment submission is my own, original work.
% convertimperial user define function user to perform suitable conversion
% The function take in 2 arguments, conversion and mode, the function will output the conversion result
% User defined function start mode
function result = convertimperial(conversion, mode)
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
clc; % Clear the command window
disp('Converting....')
switch conversion % Switch case to perform suitable conversion
    case 'cel2fah'  % convert Celsius to Fahrenheit
        result = (user_input * (9/5)) + 32; % Formula to convert Celsius to Fahrenheit
        fprintf('%.2f Celcius is equal to %.2f degrees Fahrenheit\n',user_input, result);
    case 'cm2inch'    % convert cm to inches
        result = user_input / 2.54; % Formula to convert cm to inches
        fprintf('%.2f Centimeter is equal to %.2f Inches\n',user_input, result);
    case 'm2feet' % convert meter to feet
        result = user_input / 0.3048; % Formula to convert meter to feet
        fprintf('%.2f Meters is equal to %.2f Feet\n',user_input, result);
    case 'km2miles'    % convert kilometer to miles
        result = user_input / 1.609344; % Formula to convert kilometer to miles
        fprintf('%.2f Kilometers is equal to %.2f Miles\n',user_input, result);
    case 'grams2oz' %convert gram to ounces
        result = user_input / 28.3495;% Formula to convert gram to ounces
        fprintf('%.2f Gram is equal to %.2f Ounces\n',user_input, result);
    case 'kg2pounds'   % convert kilogram to pounds
        result = user_input / 0.4536; % Formula to convert kilogram to pounds
        fprintf('%.2f Kilograms is equal to %.2f Pounds\n',user_input, result);
    case 'tonne2ton'    % convert ton to tonne
        result = user_input / 1.016; % Formula to convert ton to tonne
        fprintf('%.2f Tonne (Metric) is equal to %.2f Ton (Imperial) \n',user_input, result);
    otherwise
        disp('Invalid conversion'); % Print out error message
        disp('Please enter a valid conversion');
        input('Press any button to try again'); % Ask user to press any button to try again
        result = NaN; % Return NaN if the input is invalid. Nan means not a number
end % End of switch case
end % End of function