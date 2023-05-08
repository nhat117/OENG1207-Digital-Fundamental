function result = convertimperial(conversion)
user_input = str2double(input('The input should be a positive number: ','s'));  % user_input value
if ~isnumeric(user_input) || user_input < 0
    disp('Invalid input');
    disp('Please enter a positive number');
    result = NaN;
    return;
end
clc;
disp('Converting....')
switch conversion
    case 'cel2fah'  % convert Celsius to Fahrenheit
        result = (user_input * (9/5)) + 32;
        fprintf('%.2f Celcius is equal to %.2f degrees Fahrenheit\n',user_input, result);
    case 'cm2inch'    % convert cm to inches
        result = user_input / 2.54;
        fprintf('%.2f Centimeter is equal to %.2f Inches\n',user_input, result);
    case 'm2feet' % convert meter to feet
        result = user_input / 0.3048;
        fprintf('%.2f Meters is equal to %.2f Feet\n',user_input, result);
    case 'km2miles'    % convert kilometer to miles
        result = user_input / 1.609344;
        fprintf('%.2f Kilometers is equal to %.2f Miles\n',user_input, result);
    case 'grams2oz' %convert gram to ounces
        result = user_input / 28.3495;
        fprintf('%.2f Gram is equal to %.2f Ounces\n',user_input, result);
    case 'kg2pounds'   % convert kilogram to pounds
        result = user_input / 0.4536;
        fprintf('%.2f Kilograms is equal to %.2f Pounds\n',user_input, result);
    case 'ton2tonne'    % convert ton to tonne
        result = user_input * 1.016;
        fprintf('%.2f Ton is equal to %.2f Tonnes\n',user_input, result);
    otherwise
        disp('Invalid conversion');
        disp('Please enter a valid conversion');
        result = NaN;
end
end