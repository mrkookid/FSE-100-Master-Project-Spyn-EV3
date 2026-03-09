
function colorNum = colorSensorTest(brick)

%
% Color Sensor Testing
%

% Color Chart
%   0 : No Color
%   1 : Black
%   2 : Blue
%   3 : Green
%   4 : Yellow
%   5 : Red
%   6 : White
%   7 : Brown

%Your robot stops for one second when it sees red.
%Your robot stops and beeps two times when it sees blue.
%Your robot stops and beeps three times when it sees green

%brick.SetColorMode(4, 2); % Set Color Sensor connected to Port 4 to Color RGB Mode. 

colorNum = brick.ColorCode(4); % Get Color on port 1
colorName = colorSwitch(colorNum); %function colorSwitch takes num and give name
%disp(colorName); % Print color code of the object.
 

end