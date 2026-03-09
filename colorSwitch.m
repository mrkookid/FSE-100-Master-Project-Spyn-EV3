function colorName = colorSwitch(colorNum)

% A function that takes the number from the color sensor and prints the actual color name it represents

    switch colorNum

    case 0
        colorName = 'None';
        
    case 1
        colorName = 'Black';

    case 2
        colorName = 'Blue';

    case 3
        colorName = 'Green';

    case 4
        colorName = 'Yellow';

    case 5
        colorName = 'Red';

    case 6
        colorName = 'White';

    case 7
        colorName = 'Brown';

    end


end