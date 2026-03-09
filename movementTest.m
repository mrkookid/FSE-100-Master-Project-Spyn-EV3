%
% Movement Testing
%

brick.beep();

pause(2);

brick.MoveMotor('AB', 50);
pause(2);
brick.MoveMotor('AB', -50);
pause(2);

brick.MoveMotorAngleAbs('A', 50, 180, 'Brake');
brick.WaitForMotor('A');
brick.ResetMotorAngle('A');
brick.MoveMotorAngleAbs('B', 50, 180, 'Brake');
brick.WaitForMotor('B');
brick.ResetMotorAngle('B');