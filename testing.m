global key
InitKeyboard()
while 1
    pause(0.1);
    switch key
        % FORWARD
        case 'uparrow', 'w'
            brick.MoveMotor('BC',30);
            pause(1);
            brick.StopMotor('BC');
    
        % BACKWARD
        case 'downarrow', 's'
            brick.MoveMotor('BC',-30);
            % pause(1);
            % brick.StopMotor('BC');
    
        % TURN LEFT
        case 'leftarrow', 'a'
            brick.MoveMotor('B', -20);
            brick.MoveMotor('C',  20);
            % pause(1);
            % brick.StopMotor('BC');
    
        % TURN RIGHT
        case 'rightarrow', 'd'
            brick.MoveMotor('C', -20);
            brick.MoveMotor('B', 20);
            % pause(1);
            % brick.StopMotor('BC');
    
        % PICK UP
        case 'space'
            brick.MoveMotor('D', 50);
            pause(1);
            brick.MoveMotor('D',-100);
            pause(2);
            brick.StopMotor('D');
        % QUIT
        case 'q'
            break;
        otherwise
            brick.StopMotor('BC');
    
    end
end
CloseKeyboard();
