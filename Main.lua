-- PokerChips

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
    sprite()
    

    --UNCOMMENT THIS LINE AND RUN *ONCE* TO DOWNLOAD THE IMAGES TO YOUR PROJECT
    --initImageLoader()
    
    makeCoins()

end

function makeCoins()
    
    padding = 100
    coins = {}
    
    coins[1] = Penny(padding,padding,0)
    coins[2] = Penny(WIDTH-padding,padding,90)
    coins[3] = Penny(WIDTH-padding,HEIGHT-padding,180)
    coins[4] = Penny(padding,HEIGHT-padding,-90)
    
    coins[5] = Nickel(padding*2,padding,0)
    coins[6] = Nickel(WIDTH-padding,padding*2,90)
    coins[7] = Nickel(WIDTH-padding*2,HEIGHT-padding,180)
    coins[8] = Nickel(padding,HEIGHT-padding*2,-90)
    
    coins[9] = Dime(padding*3,padding,0)
    coins[10] = Dime(WIDTH-padding,padding*3,90)
    coins[11] = Dime(WIDTH-padding*3,HEIGHT-padding,180)
    coins[12] = Dime(padding,HEIGHT-padding*3,-90)
    
    coins[13] = Quarter(padding*4,padding,0)
    coins[14] = Quarter(WIDTH-padding,padding*4,90)
    coins[15] = Quarter(WIDTH-padding*4,HEIGHT-padding,180)
    coins[16] = Quarter(padding,HEIGHT-padding*4,-90)
    
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

function log(msg)
    print("[Main] "..msg)
    
end


