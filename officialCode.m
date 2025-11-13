% Port 1: Color sensor              Colors
% Port 2:                           0   No Color
% Port 3: Front distance            1   Black
% Port 4: Right distance            2   Blue
% Port A:                           3   Green
% Port B: Left Motor                4   Yellow
% Port C: Right Motor               5   Red
% Port D: Claw
% brick.SetColorMode(1, 2);

while 1

    pause(0.5)
    distanceRight = brick.UltrasonicDist(3);
    display("Right distance: " + distanceRight);
    distanceFront = brick.UltrasonicDist(4);
    display("Front distance: " + distanceFront);
    color_rgb = brick.ColorCode(1);
    display("color: " +color_rgb);

    % NEED TO FIX: Color sensor
    % color_rgb = brick.ColorCode(2);
    % disp(color_rgb);

    % TEST: Grabber code
    % brick.MoveMotor('D', 50);
    % pause(1);
    % brick.MoveMotor('BC', 30);
    % pause(1);
    % brick.MoveMotor('BC', 0);
    % brick.MoveMotor('D',-100);
    % pause(2);
    % brick.MoveMotor('D', 0);

   % NEED TO FIX: Code to navigate maze. Keeps moving forward, following right wall and turns right if right wall is not detected
    % while distanceFront > 20 && distanceRight < 50 
    %     brick.MoveMotor('B', 35);
    %     brick.MoveMotor('C', 30);
    %     distanceRight = brick.UltrasonicDist(3);
    %     distanceFront = brick.UltrasonicDist(4);
    % end
    % pause(1);
    brick.StopMotor('BC'); % All wheels stop
    % brick.MoveMotorAngleRel('C', 25, -330, 'Coast'); % Brick turns right
    % brick.MoveMotor('BC',30);
    % pause(3);
    brick.StopMotor('BC');
    
    % Red
    if color_rgb == 5
        
    end

    % Blue
    if color_rgb == 2
        
    end
    
    % Green
    if color_rgb == 3
        
    end

end
