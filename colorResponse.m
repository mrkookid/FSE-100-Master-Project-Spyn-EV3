function colorResponse(brick, color)

% Reads and reacts to specific colors

% Stop on Red
% Start point and end point on YELLOW
% Blue, is pickup


   if (color == 5) %stops on red

        brick.MoveMotor('AB', 0);
        pause(1);
        %brick.playTone(5, 100, 300);
        brick.MoveMotor('A', 40);
        brick.MoveMotor('B', 42);
        pause(1);
        

    end

    if (color == 2) %blue is pickup

        %brick.MoveMotor('AB', 0);
        brick.beep();
        pause(1/2);
        brick.beep();
        pause(1/2);
        remoteControl(brick);

        %brick.MoveMotor('AB', 20);
        %pause(2);

    end

    if (color == 3) %beeps 3x on green

        %brick.MoveMotor('AB', 0);
        %brick.beep();
        testJingle(brick, 2);
     
        remoteControl(brick);

        %brick.MoveMotor('AB', 20);
        %pause(2);
    end

    if (color == 4) % yellow, start/end point

        brick.MoveMotor('AB', 0);

        testJingle(brick, 1);

        remoteControl(brick);

    end


end
