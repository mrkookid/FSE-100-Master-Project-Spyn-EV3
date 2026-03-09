function wallCheck = ultrasonicSensor(brick)

% Motor B left wheel
% Motor A right wheel
% returns 1 - 255 ish, 255 if too far

% Ultrasonic Sensor Test
% Values maintainDistanceValue tries to maintain specified
%       distance between sensor and wall
% distanceAdjustValue subtracts it from current distance
% if negative, current distance is smaller than maintainDistance, so turn away
% if positive, current distance is greater than maintain distance, so turn closer

      staticValue = 1;

      maintainDistanceValue = 25;

      wallCheck = 0;

      distance = brick.UltrasonicDist(1);

      distanceAdjustValue = distance - maintainDistanceValue;
      
      display(distanceAdjustValue);

% wall is missing

      if (distance > 38)

          %testJingle(brick, 3);

          wallCheck = 1;

      end

% distance is negative, turn away

      if (distanceAdjustValue < 0)

      %if (staticValue == 0)

          brick.MoveMotor('A', 55);
          brick.MoveMotor('B', 42);
          pause(.4);
          %brick.MoveMotor('A', 40);
          %brick.MoveMotor('B', 42);
          %pause(.2);
          %brick.MoveMotor('A', 40);
          %brick.MoveMotor('B', 46);
          %pause(.2);
          brick.MoveMotor('A', 40);
          brick.MoveMotor('B', 42);
          pause(.1);

      end

% Turns towards

      if (distanceAdjustValue >= 0)
      %if (staticValue == 0)

          brick.MoveMotor('A', 40);
          brick.MoveMotor('B', 45);
          pause(.2);
          %brick.MoveMotor('A', 40);
          %brick.MoveMotor('B', 42);
          %pause(.2);
          %brick.MoveMotor('A', 47);
          %brick.MoveMotor('B', 42);    
          %pause(.2);
          brick.MoveMotor('A', 40);
          brick.MoveMotor('B', 42);
          pause(.1);

      end

end


