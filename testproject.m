%
% Connection and Touch Testing
%

%brick = ConnectBrick('TEAM1');

brick.beep();

while 1

    touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.

    brick.beep();     % Beep if the sensor was touched.
    
    if touch

        break;            % End program

    end

end