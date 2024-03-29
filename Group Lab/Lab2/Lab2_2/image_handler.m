% OENG1207 Digital Fundamental
% Lab 2 Part 2
% Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)
% This assignment is our team own original work
% User define function start here
% Do not execute function as a stand alone file. This function must be used
% with lab2_2.m file
function rgb_res = image_handler(rgb, dest)
    %IMAGE_HANDLER Function take in the rgb image and color input, and replace that  with black
    % The function take in the destination of color array, itterate through
    % the corresponding position and change to black
    row_size = size(rgb, 1); % Get the row size of the image
    col_size = size(rgb, 2); % Get the column size of the image
        % Change the color to black
        disp('Please wait...') % Prompt user that program is in progress
        for i = 1:row_size % Iterate through row 
            for j = 1:col_size %Iterate through the column
                if dest(i, j) % If it is appear in the destination vector array
                    rgb(i, j, :) = [0 0 0]; % Change the color into black (rgb of black is 0, 0 ,0)
                end % End of if clause
            end % End of column for loop
        end % End of row for loop
    rgb_res = rgb(:,:,:); % return the transformed color
end % End of user define function