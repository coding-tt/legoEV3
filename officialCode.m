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
    if distanceRight < 10
        brick.MoveMotor('B', -20);
        pause(1);
        brick.StopMotor('B');
    elseif distanceFront > 22 && distanceRight < 50 
        brick.MoveMotor('BC', 30);
        pause(1.2);
    elseif distanceFront < 22 && distanceRight < 15
        brick.MoveMotor('B', -30);
        pause(1.5);
    elseif distanceFront < 20
        brick.MoveMotor('BC', -20);
        pause(1);
        brick.StopMotor('C');
        brick.MoveMotor('B', -20);
        pause(32);
        brick.StopMotor('B');
    else 
        brick.MoveMotor('C', -20); % Brick turns right
        pause(0.8);
        brick.MoveMotor('BC',30);
        pause(4);
   
    end
    
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
