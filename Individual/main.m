clc, clearvars, close all
% Show the program title and instruction
disp('--------------------------------------------');
disp('Welcome to the unit converter!');
disp('--------------------------------------------');
disp('Description: This program can convert the unit of length, weight, and temperature.');
disp('Instruction: Please enter the unit you want to convert from and to.');
disp('--------------------------------------------');
status  = 1; % Normal program status 
% Main Program Loop
while(status ~= -4)
    disp('Please enter the direction for conversion');
    % Show the options for conversion direction
    disp('1. From Metric to Imperial');
    disp('2. From Imperial to Metrics');
    disp('3. Exit');
    disp('4. Help')
    disp('--------------------------------------------');
    % Get the user input
    direction = str2double(input('Please enter your option: ', 's'));
    % Check the user input
    switch direction
        case 4
            clc;
            disp('Instruction Section');
            disp('1. To run the program, use the run section button in the toolbar of matlab');
            disp('2. Select the appropriate section to perform unit conversion');
            disp('3. If you would like to quit the program, select Command Window and press Ctrl + C');
            disp('** The result are display with the accuracy of 2 decimal point');
            disp('------------------------------');
            disp('The following are the available unit conversion sections:');
            disp('1.Temperature conversion');
            disp('To convert temperature from F-> C run the F-> C section');
            disp('To convert temperature from C-> F run the C-> F section');
            disp('------------------------------');
            disp('2.Length and distance conversion');
            disp('To convert length from cm-> inch run the cm-> inch section');
            disp('To convert length from inch-> cm run the inch-> cm section');
            disp('To convert length from m-> ft run the m-> ft section');
            disp('To convert length from ft-> m run the ft-> m section');
            disp('To convert length from km-> miles run the km-> miles section');
            disp('To convert length from miles-> km run the miles-> km section');
            disp('------------------------------');
            disp('3.Mass conversion');
            disp('To convert mass from grams-> ounces run the grams-> ounces section');
            disp('To convert mass from ounces-> grams run the ounces-> grams section');
            disp('To convert mass from kg-> pounds run the kg-> pounds section');
            disp('To convert mass from pounds-> kg run the pounds-> kg section');
            disp('To convert mass from ton(met)-> ton(imp) run the ton(met)-> ton(imp) section');
            disp('To convert mass from ton(imp)-> ton(met) run the ton(imp)-> ton(met) section');
            while(1)
                disp('Type anything to go back to the main menu');
                help = input('', 's');
                if strcmp(help, 'quit')
                    clc;
                    break;
                else
                    disp('--------------------------------------------');
                    clc;
                    break;
                end
            end
            continue;
        case 3
            % Exit the program
            status = -4;
            break;
        case 1
            disp('--------------------------------------------');
            disp('You have selected Metric to Imperial');
            disp('--------------------------------------------');
            dest = 'imperial';
            clc;
        case 2
            disp('--------------------------------------------');
            disp('You have selected Imperial to Metric');
            disp('--------------------------------------------');
            dest = 'metric';
            clc;
        otherwise
            disp('--------------------------------------------');
            disp('Invalid option, please try again');
            disp('--------------------------------------------');
            clc;
            continue;
    end
    
    disp('Please enter your options');
    % Show the options for lengthm weight, and temperature
    disp('1. Length');
    disp('2. Weight');
    disp('3. Temperature');
    disp('4. Exit');
    disp('--------------------------------------------');
    % Get the user input
    option = str2double(input('Please enter your option: ', 's'));
    % Check the user input
    switch option
        case 4
            % Exit the program
            status = -4;
            break;
        case 1
            disp('--------------------------------------------');
            disp('You have selected length');
            disp('--------------------------------------------');
            mode = 'length';
            clc;
        case 2
            disp('--------------------------------------------');
            disp('You have selected weight');
            disp('--------------------------------------------');
            mode = 'weight';
            clc;
        case 3
            disp('--------------------------------------------');
            disp('You have selected temperature');
            disp('--------------------------------------------');
            mode = 'temperature';
            clc;
        otherwise
            disp('--------------------------------------------');
            disp('Invalid option, please try again');
            disp('--------------------------------------------');
            clc;
            continue;
    end
    
    while(status ~= -4)
        clc
        status = menuhandler(dest, mode);
        disp(status)
        if status == 1 
            break;
        end
        clc
        disp('--------------------------------------------');
        disp('Please enter your options');
    end
end
clc
disp('--------------------------------------------');
disp('Thank you for using the unit converter!');