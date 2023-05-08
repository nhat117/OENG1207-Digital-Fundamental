% OENG1207 Digital Fundamentals - Individual Project
% Student: Bui Minh Nhat-s3878174
% This assignment submission is my own, original work.
% Unit Conversion Program
% Main program start here
clc, clearvars, close all
status  = 1; % Normal program status
% Main Program Loop
while(status ~= -4)
    %Display program title and quick start guide
    disp('-------------------Welcome---------------------');
    disp('Welcome to the unit converter!');
    disp('OENG1207 Digital Fundamentals - Individual Project - Dr Alexandru C. Fechete');
    disp('Author: Bui Minh Nhat - s3878174');
    disp('--------------------------------------------');
    disp('Description: This program can convert the unit of length, weight, and temperature.');
    disp('---------------Instruction------------------');
    disp ('Please enter the unit you want to convert from and to, then enter the value you want to convert.');
    disp('To quit the program while executing, press ctrl+c or stop button or follow on screen instruction')
    disp('--------------------------------------------');
    disp('Please Select the target unit for conversion');
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
        case 4 % Help section
            clc; % Clear the screen
            disp('-----------Instruction-----------');
            disp('1. To run the program, use the run button or run section button in the toolbar of matlab on the main.m file');
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
            while(1) % Loop until user type anything
                disp('Type anything to go back to the main menu'); % Ask user to type anything to go back to the main menu
                help = input('', 's');
                break; % Break the loop
            end
            continue; % Continue the program
        case 3 % If user to exit program
            % Exit the program
            status = -4; % Set status to -4 to exit the program
            break;
        case 1 % If user want to convert from metric to imperial
            disp('--------------------------------------------');
            disp('You have selected Metric to Imperial');
            disp('--------------------------------------------');
            dest = 'imperial'; % Set the destination to imperial
            clc; % Clear the screen
        case 2
            disp('--------------------------------------------');
            disp('You have selected Imperial to Metric');
            disp('--------------------------------------------');
            dest = 'metric'; % Set the destination to metric
            clc; % Clear the screen
        otherwise % If user select invalid option
            disp('--------------------------------------------');
            disp('Invalid option, please try again');
            disp('--------------------------------------------');
            clc; % Clear the screen
            continue; % Skip the rest of the loop and continue the program
    end
    
    disp('Please enter your options');
    % Show the options for lengthm weight, and temperature
    disp('1. Length');
    disp('2. Weight');
    disp('3. Temperature');
    disp('4. Exit');
    disp('--------------------------------------------');
    % Get the user input for the mode
    option = str2double(input('Please enter your option: ', 's'));
    % Check the user input
    switch option
        case 4 % If user want to exit the program
            % Exit the program
            status = -4; % Set status to -4 to exit the program
            break; % Break the loop
        case 1
            disp('--------------------------------------------');
            disp('You have selected length');
            disp('--------------------------------------------');
            mode = 'length'; % Set the mode to length
            clc; % Clear the screen
        case 2
            disp('--------------------------------------------');
            disp('You have selected weight');
            disp('--------------------------------------------');
            mode = 'weight'; % Set the mode to weight
            clc;
        case 3
            disp('--------------------------------------------');
            disp('You have selected temperature');
            disp('--------------------------------------------');
            mode = 'temperature'; %Set the mode to temperature
            clc; % Clear the screen
        otherwise
            disp('--------------------------------------------');
            disp('Invalid option, please try again');
            disp('--------------------------------------------');
            clc; %Clear the screen and continue the program
            continue; % Skip the rest of the loop and continue the program
    end %End of the switch statement
    
    while(status ~= -4) % Loop until user want to exit the program
        clc % Clear the screen
        status = menuhandler(dest, mode); %Call menu handler function to handle the menu
        if status == 1 % If user want to go back to the main menu
            break; % Break the loop
        end
        clc
        disp('--------------------------------------------');
        disp('Please enter your options'); % Prompt if user have errors in the input
    end % End of while loops
end % End of the main program loops
clc % Clear the screen
disp('--------------------------------------------');
disp('Thank you for using the unit converter!'); % Thank you message