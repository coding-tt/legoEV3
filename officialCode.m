% Port 1: Color sensor              Colors
% Port 2:                           0   No Color
% Port 3: Front distance            1   Black
% Port 4: Right distance            2   Blue
% Port A:                           3   Green
% Port B: Left Motor                4   Yellow
% Port C: Right Motor               5   Red
% Port D: Claw
% brick.SetColorMode(2, 2);

while 1
    brick.ResetMotorAngle('A');
    brick.ResetMotorAngle('B');
    brick.ResetMotorAngle('C');
    brick.ResetMotorAngle('D');
    brick.ResetMotorAngle('1');
    brick.ResetMotorAngle('2');
    brick.ResetMotorAngle('3');
    brick.ResetMotorAngle('4');
    
    distanceRight = brick.UltrasonicDist(3);
    display("Right distance: " + distanceRight);
    distanceFront = brick.UltrasonicDist(4);
    display("Front distance: " + distanceFront);

    %
    % color_rgb = brick.ColorCode(2);
    % disp(color_rgb);


 % testing grabber
    % brick.MoveMotor('D', 50);
    % pause(1);
    % brick.MoveMotor('BC', 30);
    % pause(1);
    % brick.MoveMotor('BC', 0);
    % brick.MoveMotor('D',-100);
    % pause(2);
    % brick.MoveMotor('D', 0);
    
    while distanceFront > 20 && distanceRight < 50 
        brick.MoveMotor('BC', 50);
        distanceRight = brick.UltrasonicDist(3);
        distanceFront = brick.UltrasonicDist(4);
    end
    pause(1);
    brick.MoveMotor('BC', 0);
    % brick.MoveMotorAngleRel('C', 25, -330, 'Coast');
    %% 
    %% 

    % if distanceRight > 25
    %     brick.MoveMotorAngleRel('C', 25, -330, 'Coast');
    %     pause(3);
    %     brick.StopMotor('C', 'Coast');
    %     brick.MoveMotor('BC', 50);
    %     pause(3);
    % end
    % brick.MoveMotor('BC', 0);
    
end