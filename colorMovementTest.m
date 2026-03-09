
% Color Movement Test

% Color Chart
%   0 : No Color
%   1 : Black
%   2 : Blue
%   3 : Green
%   4 : Yellow
%   5 : Red
%   6 : White
%   7 : Brown

brick.SetColorMode(4, 2);

color = brick.ColorCode(4); 
display(color);

brick.MoveMotor('AB', 30);

while (1)

    color = brick.ColorCode(4); 

    if color == 4 % black

      brick.MoveMotor('AB', 0);  %currently stops if it sees black
      break;

    end

end
