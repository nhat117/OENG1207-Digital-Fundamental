function [rgb_res, status_res] = image_handler(rgb, color_input)
    %IMAGE_HANDLER Function take in the rgb image and color input, and replace that  with black
    %   Detailed explanation goes here
    row_size = size(rgb, 1); % Get the row size of the image
    col_size = size(rgb, 2); % Get the column size of the image
    status = 0;
    % Define pixel range for red blue green magenta cyan, white, orange, yellow, and black
    red = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 80 & rgb(:, :, 3) <= 100; % Red
    yellow = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 100 & rgb(:, :, 3) <= 50; 
    blue = rgb(:, :, 1) <= 25 & rgb(:, :, 2) > 40 & rgb(:, :, 2) <= 120 & rgb(:, :, 3) > 130;
    green = rgb(:, :, 1) < 80 & rgb(:, :, 2) <= 200 & rgb(:, :, 2) > 120 & rgb(:, :, 3) <= 140 & rgb(:, :, 3) > 55;
    white = rgb(:, :, 1) >= 57 & rgb(:, :, 2) >= 55 & rgb(:, :, 3) >= 55;
    black = rgb(:, :, 1) >= 5 & rgb(:, :, 1) <= 80 & rgb(:, :, 2) >= 5 & rgb(:, :, 2) <= 80 & rgb(:, :, 3) >= 5 & rgb(:, :, 3) <= 80;
    cyan = rgb(:, :, 1) >= 20 & rgb(:, :, 1) < 80 & rgb(:, :, 2) >= 100 & rgb(:, :, 2) <= 245 & rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245;
    magenta = rgb(:, :, 1) >= 100 & rgb(:, :, 1) <= 245 & rgb(:, :, 2) >= 20 & rgb(:, :, 2) < 110 & rgb(:, :, 3) >= 100 & rgb(:, :, 3) <= 245;
    % orange = rgb(:, :, 1) >= 200 & rgb(:, :, 2) >= 80 & rgb(:, :, 2) <= 200 & rgb(:, :, 3) <= 50;

    switch color_input
        case 'red'
            dest = red;
        case 'blue'
            dest = blue;
        case 'green'
            dest = green;
        case 'magenta'
            dest = magenta;
        case 'cyan'
            dest = cyan;
        case 'white'
            dest = white;
%         case 'orange'
%             dest = orange;
        case 'yellow'
            dest = yellow;
        case 'black'
            dest = black;
        case 'quit'
            status = -2; % The program encounter quit command
        otherwise % invalid respose handling
            status = -1; % The program encounter error
    end

    if status == 0 % Check if the program encounter any error
        % Change the color to black
        fprintf('Changing the %s color in the picture to black \n', color_input)
        disp('Please wait...')
        for i = 1:row_size
            for j = 1:col_size
                if dest(i, j)
                    rgb(i, j, :) = [0 0 0];
                end
            end
        end
    end
    status_res = status;
    rgb_res = rgb(:,:,:);
end
