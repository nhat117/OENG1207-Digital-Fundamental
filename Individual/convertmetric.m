function result = convertmetric(conversion) % declare user_input and output of function user_input = input('');  % user_input value
%Check if the user_input is a number or not negative
user_input = str2double(input('The input should be a positive number: ','s')); 
if ~isnumeric(user_input) || user_input < 0
    disp('Invalid input');
    disp('Please enter a positive number');
    result = NaN;
    return;
end
clc;
disp('Converting....')
switch conversion  % conditonal statement to check every single case
    case 'fah2cel'  % convert Fahrenheit to Celsius
        result = (user_input - 32) * (5/9);
        fprintf('%.2f degrees Fahrenheit is %.2f degrees Celsius\n', user_input, result);
    case 'inch2cm'    % convert inches to cm
        result = user_input * 2.5;
        fprintf('%.2f Inches is %.2f Centimeters\n', user_input, result);
    case 'feet2m' % convert feet to meter
        result = user_input * 0.3048;
        fprintf('%.2f Feet is %.2f Meters\n', user_input, result);
    case 'miles2km'    % convert miles to kilometer
        result = user_input * 1.609344;
        fprintf('%.2f Miles is %.2f Kilometers\n', user_input, result);
    case 'oz2grams' % convert ounces to gram
        result = user_input * 28.3495;
        fprintf('%.2f Ounces is %.2f Grams\n', user_input, result);
    case 'pounds2kg'   % convert pounds to kilogram
        result = user_input * 0.4536;
        fprintf('%.2f Pounds is %.2f Kilograms\n', user_input, result);
    case 'tonne2ton'    % convert tonne to ton
        result = user_input / 1.016;
        fprintf('%.2f Tonnes is %.2f Tons\n', user_input, result);
    otherwise
        disp('Invalid conversion');
        disp('Please enter a valid conversion');
        result = NaN;
end
end
