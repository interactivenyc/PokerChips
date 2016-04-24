-- PokerChips

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
    sprite()
    
    margin = 100
    coins = {}
    
    coins[1] = Penny(margin,margin,0)
    coins[2] = Penny(WIDTH-margin,margin,90)
    coins[3] = Penny(WIDTH-margin,HEIGHT-margin,180)
    coins[4] = Penny(margin,HEIGHT-margin,-90)
    
    coins[5] = Nickel(margin,margin,0)
    coins[6] = Nickel(WIDTH-margin,margin,90)
    coins[7] = Nickel(WIDTH-margin,HEIGHT-margin,180)
    coins[8] = Nickel(margin,HEIGHT-margin,-90)
    
    parameter.watch("#coins")

end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(122, 122, 177, 86)

    -- This sets the line thickness
    strokeWidth(5)
    
    sprite("SpaceCute:Background",374,374)

    -- Do your drawing here
    
    for var=1,#coins,1 do
        coins[var]:draw()
    end
    
end


