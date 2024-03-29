% OENG1207 Digital Fundamentals - Individual Project Milestone
% Student: Bui Minh Nhat-s3878174
% This assignment submission is my own, original work.
% Simple Unit Conversion Program

% Main program start here
%% Start
%Display program title and quick start guide
clc, clearvars, close all
disp('OENG1207 Digital Fundamentals - Individual Project Milestone - Dr Alexandru C. Fechete');
disp('Welcome to Simple Unit Conversion Program');
disp('Author: Bui Minh Nhat - s3878174');
disp('Welcome to Simple Unit Conversion Program');
disp('------------------------------');
disp('Quick start guide : ');
disp('1.To use the program, select the desire section and press run section button in the toolbar of matlab');
disp('2.To view the instruction, run the instruction section');
disp('3.If you would like to quit the program, select the matlab Command Window and press Ctrl + C');
disp('** The result are display with the accuracy of 2 decimal point');
disp('------------------------------');
disp('Please select and run the corresponding section to perform unit conversion: ');
%% Instruction
% The following section is to display the instruction for the user
clc, clearvars, close all
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

%% Temperature conversion
%% F->C
clc, clearvars, close all
disp('Temperature Conversion Section'); % Display program title
disp('Convert Fahrenheit to Celsius'); % Display conversion type
disp('------------------------------');
t_f = input('Enter a temperature in degrees Fahrenheit: '); % Prompt user to enter temperature in degrees Fahrenheit
t_c = (t_f - 32) * (5/9); % Convert temperature to degrees Celsius
fprintf('%1.2f Fahrenheit in degrees Celsius is %1.2f \n', t_f, t_c); % Display temperature in degrees Celsius
%% C->F
clc, clearvars, close all
disp('Temperature Conversion Section'); % Display program title
disp('Convert Celsius to Fahrenheit'); % Display conversion type
disp('------------------------------');
t_c = input('Enter a temperature in degrees Celsius: '); % Prompt user to enter temperature in degrees Celsius
t_f = (t_c * (9/5)) + 32; % Convert temperature to degrees Fahrenheit
fprintf('%1.2f Celsius in degrees Fahrenheit is %1.2f \n', t_c, t_f); % Display temperature in degrees Fahrenheit

%% Length & Distance conversion
%% cm -> inch
clc, clearvars, close all
disp('Length Conversion Section'); % Display program title
disp('Convert centimeters to inches'); % Display conversion type
disp('------------------------------');
l_cm = input('Enter a length in centimeters: '); % Prompt user to enter length in centimeters
l_inch = l_cm / 2.54; % Convert length to inches
fprintf('%1.2f centimeters in inches is %1.2f \n', l_cm, l_inch); % Display length in inches
%% inch -> cm
clc, clearvars, close all
disp('Length Conversion Section'); % Display program title
disp('Convert inches to centimeters'); % Display conversion type
disp('------------------------------');
l_inch = input('Enter a length in inches: '); % Prompt user to enter length in inches
l_cm = l_inch * 2.54; % Convert length to centimeters
fprintf('%1.2f inches in centimeters is %1.2f \n', l_inch, l_cm); % Display length in centimeters
%% m -> ft
clc, clearvars, close all
disp('Length Conversion Section'); % Display program title
disp('Convert meters to feet'); % Display conversion type
disp('------------------------------');
l_m = input('Enter a length in meters: '); % Prompt user to enter length in meters
l_ft = l_m / 0.3048; % Convert length to feet
fprintf('%0.2f meters in feet is %0.2f \n', l_m, l_ft); % Display length in feet
%% ft -> m
clc, clearvars, close all
disp('Length Conversion Section'); % Display program title
disp('Convert feet to meters'); % Display conversion type
disp('------------------------------');
l_ft = input('Enter a length in feet: '); % Prompt user to enter length in feet
l_m = l_ft * 0.3048; % Convert length to meters
fprintf('%1.2f feet in meters is %1.2f \n', l_ft, l_m); % Display length in meters
%% km -> miles
clc, clearvars, close all
disp('Length Conversion Section'); % Display program title
disp('Convert kilometers to miles'); % Display conversion type
disp('------------------------------');
d_km = input('Enter a distance in kilometers: '); % Prompt user to enter distance in kilometers
d_miles = d_km / 1.609344; % Convert distance to miles
fprintf('%1.2f kilometers in miles is %1.2f \n', d_km, d_miles); % Display distance in miles
%% miles -> km
clc, clearvars, close all
disp('Length Conversion Section'); % Display program title
disp('Convert miles to kilometers'); % Display conversion type
disp('------------------------------');
d_miles = input('Enter a distance in miles: '); % Prompt user to enter distance in miles
d_km = d_miles * 1.609344; % Convert distance to kilometers
fprintf('%1.2f miles in kilometers is %1.2f \n', d_miles, d_km); % Display distance in kilometers

%%Mass Conversion
%% grams -> ounces
clc, clearvars, close all
disp('Mass Conversion Section'); % Display program title
disp('Convert grams to ounces'); % Display conversion type
disp('------------------------------');
m_grams = input('Enter a mass in grams: '); % Prompt user to enter mass in grams
m_oz = m_grams / 28.3495; % Convert mass to ounces
fprintf('%1.2f grams in ounces is %1.2f \n', m_grams, m_oz); % Display mass in ounces
%% ounces -> grams
clc, clearvars, close all
disp('Mass Conversion Section'); % Display program title
disp('Convert ounces to grams'); % Display conversion type
disp('------------------------------');
m_oz = input('Enter a mass in ounces: '); % Prompt user to enter mass in ounces
m_grams = m_oz * 28.3495; % Convert mass to grams
fprintf('%1.2f ounces in grams is %1.2f \n', m_oz, m_grams); % Display mass in grams
%% kg -> pounds
clc, clearvars, close all
disp('Mass Conversion Section'); % Display program title
disp('Convert kilograms to pounds'); % Display conversion type
disp('------------------------------');
m_kg = input('Enter a mass in kilograms: '); % Prompt user to enter mass in kilograms
m_lb = m_kg / 0.4536; % Convert mass to pounds
fprintf('%1.2f kilograms in pounds is %1.2f \n', m_kg, m_lb); % Display mass in pounds
%% pounds -> kg
clc, clearvars, close all
disp('Mass Conversion Section'); % Display program title
disp('Convert pounds to kilograms'); % Display conversion type
disp('------------------------------');
m_lb = input('Enter a mass in pounds: '); % Prompt user to enter mass in pounds
m_kg = m_lb * 0.4536; % Convert mass to kilograms
fprintf('%1.2f pounds in kilograms is %1.2f \n', m_lb, m_kg); % Display mass in kilograms
%% tonne(met)->ton(imp)
clc, clearvars, close all
disp('Mass Conversion Section'); % Display program title
disp('Convert metric tonnes to imperial tons'); % Display conversion type
disp('------------------------------');
m_tonne = input('Enter a mass in metric tonnes: '); % Prompt user to enter mass in metric tonnes
m_ton = m_tonne / 1.016; % Convert mass to imperial tons
fprintf('%1.2f metric tonnes in imperial tons is %1.2f \n', m_tonne, m_ton); % Display mass in imperial tons
%% ton(imp)->tonne(met)
clc, clearvars, close all
disp('Mass Conversion Section'); % Display program title
disp('Convert imperial tons to metric tonnes'); % Display conversion type
disp('------------------------------');
m_ton = input('Enter a mass in imperial tons: '); % Prompt user to enter mass in imperial tons
m_tonne = m_ton * 1.016; % Convert mass to metric tonnes
fprintf('%1.2f imperial tons in metric tonnes is %1.2f \n', m_ton, m_tonne); % Display mass in metric tonnes
