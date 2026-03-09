global key;

InitKeyboard();

while(1)

    pause(.1);

    brick.MoveMotor('AB', 10);
    
    distance = brick.UltrasonicDist(1);

    if (distance <= 10)

        brick.MoveMotor('B', 15);
        pause(.5);

    end

    if (distance > 10)

       brick.MoveMotor('A', 15);
       pause(.5);

    end

    display(distance);

    if (key == 'q')

       brick.MoveMotor('AB', 0);

       break;

    end

end
