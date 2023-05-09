% OENG1207 Digital Fundamentals - Individual Project
% Student: Bui Minh Nhat-s3878174
% This assignment submission is my own, original work.
% Menu handler user to display the menu and redirect user to suitable conversion function
% The function take in 2 arguments, conversion destination and mode, the function will output it's status to the main program
% User defined function start here
function status = menuhandler(dest, mode)
status = 1; % Set the initial program status
final_res = 0; % Final result
switch mode % Switch case to handle the mode
    case 'length' % Length subsection
        if strcmp(dest,'imperial') % If user choose to convert to imperial
            lengthvector = {'cm2inch','m2feet','km2miles'}; % Create a vector to store the conversion function name
            % Prompt options for user to choose
            disp('1. Convert from centimeters to inches');
            disp('2. Convert from meters to feet');
            disp('3. Convert from kilometers to miles');
            disp('-----------------------------------')
            choice = str2double(input('Enter your choice: ','s')); % Ask for user input, use str2double to ensure that the input isnot a empty cells
            clc; % Clear the command window
            switch choice % Switch case to handle the user choice
                case 1
                    result = char(lengthvector(choice)); % Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the length in centimeters: ');
                    final_res = convertimperial(result, mode); % Call the convertimperial function
                case 2
                    result = char(lengthvector(choice)); % Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the length in meters: ');
                    final_res = convertimperial(result, mode); % Call the convertimperial function
                case 3
                    result = char(lengthvector(choice)); % Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the length in kilometers: ');
                    final_res = convertimperial(result, mode); % Call the convertimperial function
                otherwise
                    disp('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        elseif strcmp(dest,'metric')
            lengthvector = {'inch2cm','feet2m','miles2km'};% Create a vector to store the conversion function name
            % Prompt options for user to choose
            disp('1. Convert from inches to centimeters');
            disp('2. Convert from feet to meters');
            disp('3. Convert from miles to kilometers');
            disp('-----------------------------------')
            choice = str2double(input('Enter your choice: ','s'));% Ask for user input, use str2double to ensure that the input isnot a empty cells
            clc; % Clear the command window
            switch choice
                case 1
                    result = char(lengthvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the length in inches: ');
                    final_res = convertmetric(result, mode);% Call convertmetrics functions
                case 2
                    result = char(lengthvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the length in feet: ')
                    final_res = convertmetric(result, mode);% Call convertmetrics functions
                case 3
                    result = char(lengthvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the length in miles: ');
                    final_res = convertmetric(result, mode);% Call convertmetrics functions
                otherwise
                    disp('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return; %Exit the function
            end
        else
            disp('Unknow choice')
            status = -1; %error('Unknown choice');
            return;
        end
    case 'weight' % Weight subsection
        if strcmp(dest,'imperial')
            weightvector = {'kg2pounds','grams2oz','tonne2ton'}; % Create a vector to store the conversion function name
            % Prompt options for user to choose
            disp('1. Convert from kilograms to pounds');
            disp('2. Convert from grams to ounces');
            disp('3. Convert from tonne (metric) to ton (imperial)');
            disp('-----------------------------------')
            choice = str2double(input('Enter your choice: ','s'));% Ask for user input, use str2double to ensure that the input isnot a empty cells
            clc;
            switch choice
                case 1
                    result = char(weightvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the weight in kilograms: ');
                    final_res = convertimperial(result, mode);% Call the convertimperial function
                case 2
                    result = char(weightvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the weight in grams:')
                    final_res = convertimperial(result, mode);% Call the convertimperial function
                case 3
                    result = char(weightvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the weight in tonne (metric): ');
                    final_res = convertimperial(result, mode);% Call the convertimperial function
                otherwise
                    disp('Unknow choice')
                    status = -1; %error('Unknown choice');
                    return; % Exit the function
            end
        elseif strcmp(dest,'metric')
            weightvector = {'pounds2kg','oz2grams','ton2tonne'}; % Create a vector to store the conversion function n            % Prompt options for user to choose
            disp('1. Convert from pounds to kilograms');
            disp('2. Convert from ounces to grams');
            disp('3. Convert from ton (imperial) to tonne (metric)');
            disp('-----------------------------------');
            choice = str2double(input('Enter your choice: ','s'));
            clc;
            switch choice
                case 1
                    result = char(weightvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the weight in pounds: ');
                    final_res = convertmetric(result, mode);
                case 2
                    result = char(weightvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the weight in ounces: ');
                    final_res = convertmetric(result, mode);
                case 3
                    result = char(weightvector(choice));% Select the corresponding user choice, char function needs to access the chars store in the cells
                    disp('Enter the weight in ton (imperial): ');
                    final_res = convertmetric(result, mode);
                otherwise
                    disp('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return; % Exit the program
            end
        else
            disp('Unknow choice please try again')
            status = -1; %error('Unknown choice');
            return; % Exit the program
        end
    case 'temperature' % Temperature subsection
        if strcmp(dest,'imperial')
            disp('Convert from Celsius to Fahrenheit');
            final_res = convertimperial('cel2fah', mode);
        elseif strcmp(dest,'metric')
            disp('Convert from Fahrenheit to Celsius');
            final_res = convertmetric('fah2cel', mode);
        else
            disp('Unknow choice')
            status = -1; %error('Unknown choice');
            return; % Exit the program
        end
    otherwise
        disp('Unknow mode')
        status = -2; %error('Unknown mode');
        return; % Exit the program
end
% Check if the conversion is success
if isnan(final_res)
    status = -3; %error('Invalid input');
    return; % Exit the program
end
% Display the result
disp('Pressed any key to continue or q to quit');
choice = lower(input('Enter your choice: ','s'));
if choice == 'q' % User select quit
    status = -4; %Quit the program
    return; % Exit the program
else
    clc
end