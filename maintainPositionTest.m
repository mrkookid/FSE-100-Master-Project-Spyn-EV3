 %maintain position test     

      %wallCheck = 0;
while (1)
      distance = brick.UltrasonicDist(1);

      display(distance);

      if (distance >= 10)
         
         %brick.beep();
         brick.MoveMotor('AB', 10);
         
         %brick.playTone(5, 150, 800);
         
      end

      if (distance <= 10)
         
         %brick.beep();
         brick.MoveMotor('AB', -10);
         %brick.playTone(5, 350, 800);

      end

      %brick.MoveMotor('AB', 0);
end

brick.MoveMotor('AB', 0);