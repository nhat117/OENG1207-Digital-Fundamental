function status = menuhandler(dest, mode)
status = 1;
switch mode
    case 'length' % Length subsection
        if strcmp(dest,'imperial')
            lengthvector = {'cm2in','m2ft','km2m'};
            disp('1. Convert from centimeters to inches');
            disp('2. Convert from meters to feet');
            disp('3. Convert from kilometers to miles');
            choice = input('Enter your choice: ');
            disp('-----------------------------------')
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
                    display('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        elseif strcmp(dest,'metric')
            lengthvector = {'in2cm','ft2m','mi2km'};
            disp('1. Convert from inches to centimeters');
            disp('2. Convert from feet to meters');
            disp('3. Convert from miles to kilometers');
            choice = input('Enter your choice: ');
            disp('-----------------------------------')
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
                    display('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        else
            display('Unknow choice')
            status = -1; %error('Unknown choice');
        end
    case 'weight' % Weight subsection
        if strcmp(dest,'imperial')
            weightvector = {'kg2lb','g2oz'};
            disp('1. Convert from kilograms to pounds');
            disp('2. Convert from grams to ounces');
            choice = input('Enter your choice: ');
            disp('-----------------------------------')
            switch choice
                case 1
                    result = char(weightvector(1));
                    disp('Enter the weight in kilograms: ');
                    final_res = convertimperial(result);
                case 2
                    result = char(weightvector(2));
                    disp('Enter the weight in grams:')
                    final_res = convertimperial(result);
                otherwise
                    display('Unknow choice')
                    status = -1; %error('Unknown choice');
                    return;
            end
        elseif strcmp(dest,'metrics')
            weightvector = {'lb2kg','oz2g'};
            disp('1. Convert from pounds to kilograms');
            disp('2. Convert from ounces to grams');
            choice = input('Enter your choice: ');
            disp('-----------------------------------')
            switch choice
                case 1
                    result = char(weightvector(1));
                    disp('Enter the weight in pounds: ');
                    final_res = convertmetric(result);
                case 2
                    result = char(weightvector(2));
                    disp('Enter the weight in ounces: ');''
                    final_res = convertmetric(result);
                otherwise
                    display('Unknow choice please try again')
                    status = -1; %error('Unknown choice');
                    return;
            end
        else
            display('Unknow choice please try again')
            status = -1; %error('Unknown choice');
        end
    case 'temperature' % Temperature subsection
        if strcmp(dest,'imperial')
            disp('Convert from Celsius to Fahrenheit');
            final_res = convertimperial('c2f');
        elseif strcmp(dest,'metrics')
            disp('Convert from Fahrenheit to Celsius');
            final_res = convertmetric('f2c');
        else
            display('Unknow choice')
            status = -1; %error('Unknown choice');
        end
    otherwise
        display('Unknow mode')
        status = -2; %error('Unknown mode');
        return;
end
if isnan(final_res) % Check if the conversion is success
    status = -3; %error('Invalid input');
    return;
end
while(1)
    disp('Pressed any key to continue or q to quit');
    choice = input('Enter your choice: ','s');
    if choice == 'q'
        status = -4; %Quit the program
        return;
    else
        clc
        break;
    end
end
end