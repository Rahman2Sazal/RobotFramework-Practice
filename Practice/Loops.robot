


*** Test Cases ***
ForLoop1
        FOR   ${i}  IN   Range        1       10
        Log To Console      ${i}
        END
        
ForLoop2
        FOR    ${i}     IN      NUMBERSLIST     1   2   3   4   5   6   7   8   9   10  
        Log To Console      ${i}
        END
        
ForLoopWithList
        @{items}        Create List     10   20   30   40   50   60   70   8.0   999   100  
        FOR     ${i}    IN  NUMBERSLIST     @{items}
        Log To Console      ${i}
        END

ForLoopWithText
        FOR     ${i}    IN      MYNAME     MD  MAHFUZUR    RAHMAN
        Log To Console  ${i}
        END   
For Loop With Name List
        @{Item}     Create List     MAHFUZUR    RAHMAN
        FOR     ${i}    IN     NAMELIST     @{Item}
        Log TO CONSOLE      ${i}
        END
    