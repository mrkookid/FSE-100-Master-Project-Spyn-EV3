function touchResponse  = touchResponseTest(brick)

% this function reads if the touch sensor has been pressed returns
% touchResponse = 1 if wall is touched

% touch sensor currently connected to port 2

% touchSensor# = brick.TouchPressed(SensorPort);


   touchSensorOne = brick.TouchPressed(3);
   touchSensorTwo = brick.TouchPressed(2);

   touchResponse = 0;

   if (touchSensorOne == 1) || (touchSensorTwo == 1)

      testJingle(brick, 4);
      touchResponse = 1;

   end

   %display(reading);

end