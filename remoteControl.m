function remoteControl(brick)

%
% Keyboard Remote Control
% This function allows manual control of the machine
% With various keyboard keys
%    Arrow keys for movement of motor A and B, main wheels
%    Space for brake
%    'o' to turn off the motors and exit
%    'w', 's', and 'e' to control motor C, lifter arm

brick.ResetMotorAngle('A');

global key;
InitKeyboard();

while 1

    pause(0.1);

    switch key

        case 'uparrow'

            brick.MoveMotor('A', 45);
            brick.MoveMotor('B', 40);

        case 'downarrow'

            brick.MoveMotor('A', -45);
            brick.MoveMotor('B', -40);

        case 'leftarrow'

            brick.MoveMotor('A', 20);
            brick.MoveMotor('B', -20);
            

        case 'rightarrow'

            brick.MoveMotor('B', 20);
            brick.MoveMotor('A', -20);

        case 'space'

            brick.MoveMotor('AB', 0);

        case 'o'

            brick.MoveMotor('AB', 0);
            CloseKeyboard();
            break;

        case 'w'

            brick.MoveMotor('C', 50);

        case 's'

            brick.MoveMotor('C', -50);

        case 'e'

            brick.MoveMotor('C', 0);

    end

    position = brick.GetMotorAngle('A'); % Get Current Position

    fprintf("Current Angle: \n");
    display(position);
    display(key);

end

end %function end

