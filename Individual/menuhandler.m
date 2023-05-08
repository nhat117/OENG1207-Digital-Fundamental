function status = menuhandler(dest, mode)
% This function to display the menu and redirect user to suitable conversion function
status = 1;
final_res = 0; % Final result
switch mode
    case 'length' % Length subsection
        if strcmp(dest,'imperial')
            lengthvector = {'cm2inch','m2feet','km2miles'};
            disp('1. Convert from centimeters to inches');
            disp('2. Convert from meters to feet');
            disp('3. Convert from kilometers to miles');
            disp('-----------------------------------')
            choice = input('Enter your choice: ');
            clc
            switch choice
                case 1
                    result = char(lengthvector(1));
                    disp('Enter the length in centimeters: ');
                    final_res = convertimperial(result);
                case 2
                    result = char(lengthvector(2));
                    disp('Enter the length in meters: ');
                    final_res = convertimperial(result);
                case 3
                    result = char(lengthvector(3));
                    disp('Enter the length in kilometers: ');
                    final_res = convertimperial(result);
                otherwise
                    disp('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        elseif strcmp(dest,'metric')
            lengthvector = {'inch2cm','feet2m','miles2km'};
            disp('1. Convert from inches to centimeters');
            disp('2. Convert from feet to meters');
            disp('3. Convert from miles to kilometers');
            disp('-----------------------------------')
            choice = str2double(input('Enter your choice: ','s'));
            clc;
            switch choice
                case 1
                    result = char(lengthvector(1));
                    disp('Enter the length in inches: ');
                    final_res = convertmetric(result);
                case 2
                    result = char(lengthvector(2));
                    disp('Enter the length in feet: ')
                    final_res = convertmetric(result);
                case 3
                    result = char(lengthvector(3));
                    disp('Enter the length in miles: ');
                    final_res = convertmetric(result);
                otherwise
                    disp('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        else
            disp('Unknow choice')
            status = -1; %error('Unknown choice');
            return;
        end
    case 'weight' % Weight subsection
        if strcmp(dest,'imperial')
            weightvector = {'kg2pounds','grams2oz','ton2tonne'};
            disp('1. Convert from kilograms to pounds');
            disp('2. Convert from grams to ounces');
            disp('3. Convert from tons to tonnes');
            disp('-----------------------------------')
            choice = str2double(input('Enter your choice: ','s'));
            clc;
            switch choice
                case 1
                    result = char(weightvector(1));
                    disp('Enter the weight in kilograms: ');
                    final_res = convertimperial(result);
                case 2
                    result = char(weightvector(2));
                    disp('Enter the weight in grams:')
                    final_res = convertimperial(result);
                case 3
                    result = char(weightvector(3));
                    disp('Enter the weight in tons: ');
                    final_res = convertimperial(result);
                otherwise
                    disp('Unknow choice')
                    status = -1; %error('Unknown choice');
                    return;
            end
        elseif strcmp(dest,'metric')
            weightvector = {'pounds2kg','oz2grams','tonne2ton'};
            disp('1. Convert from pounds to kilograms');
            disp('2. Convert from ounces to grams');
            disp('3. Convert from tonnes to tons');
            disp('-----------------------------------');
            choice = str2double(input('Enter your choice: ','s'));
            clc;
            switch choice
                case 1
                    result = char(weightvector(1));
                    disp('Enter the weight in pounds: ');
                    final_res = convertmetric(result);
                case 2
                    result = char(weightvector(2));
                    disp('Enter the weight in ounces: ');
                    final_res = convertmetric(result);
                case 3
                    result = char(weightvector(3));
                    disp('Enter the weight in tonnes: ');
                    final_res = convertmetric(result);
                otherwise
                    disp('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        else
            disp('Unknow choice please try again')
            status = -1; %error('Unknown choice');
            return;
        end
    case 'temperature' % Temperature subsection
        if strcmp(dest,'imperial')
            disp('Convert from Celsius to Fahrenheit');
            final_res = convertimperial('cel2fah');
        elseif strcmp(dest,'metric')
            disp('Convert from Fahrenheit to Celsius');
            final_res = convertmetric('fah2cel');
        else
            disp('Unknow choice')
            status = -1; %error('Unknown choice');
            return;
        end
    otherwise
        disp('Unknow mode')
        status = -2; %error('Unknown mode');
        return;
end
% Check if the conversion is success
if isnan(final_res) 
    status = -3; %error('Invalid input');
    return;
end
% Display the result
while(1)
    disp('Pressed any key to continue or q to quit');
    choice = lower(input('Enter your choice: ','s'));
    if choice == 'q' % User select quit
        status = -4; %Quit the program
        return;
    else
        clc
        break;
    end
end
end