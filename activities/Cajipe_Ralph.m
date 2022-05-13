%{
A menu that will select 5 options:
    [1] if statement
    [2] if-else statement
    [3] for statement 
    [4] while statement
    [5] Exit
%}

pick = menu('Pick','if Pizza','if matlab else','for hello me 5','while not matlab', 'exit');

switch (pick)
    case 1
        % MATLAB if statement on pizza choice
        pizza = menu('What kind of pizza do you want?','Pepperoni','Sausage','Mushroom','Veggie');
        if pizza == 1
            disp('You ordered a Pepperoni pizza.')
        elseif pizza == 2
            disp('You ordered a Sausage pizza.')
        elseif pizza == 3
            disp('You ordered a Mushroom pizza.')
        elseif pizza == 4
            disp('You ordered a Veggie pizza.')
        end
    case 2
        % MATLAB if-else statement on word matching
        word = input('Enter matlab: ','s');
        if strcmp(word,'matlab')
            disp('You entered the correct word.')
        else
            disp('You entered the wrong word.')
        end
    case 3
        % MATLAB for statement to say hello 5 times
        for i = 1:5
            disp('hello')
        end
    case 4
        % MATLAB while statement on word matching
        % Prompt user to enter a word
        disp("Let me in!");
        word = input('Enter matlab: ','s');

        % Loop until the user enters the correct word
        while ~strcmp(word,'matlab')
            disp("Let me in!");
            word = input('Enter matlab: ','s');
        end
        disp("You're in!")
    case 5
        % Exit the program
        
        % Display This was MATLAB on menu
        disp('This was MATLAB.');
        
        % Exit the GUI menu only, not the whole MATLAB software
        close;
end