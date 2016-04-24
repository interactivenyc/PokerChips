-- PokerChips
displayMode(FULLSCREEN)

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
    sprite()

    --UNCOMMENT THIS LINE AND RUN *ONCE* TO DOWNLOAD THE IMAGES TO YOUR PROJECT
    --initImageLoader()
    
    makeCoins()

end

function makeCoinBGs()
    coinBGs = {}
    bgWidth = 500
    bgHeight = 200
    
    rect(WIDTH/2-bgWidth/2,0,bgWidth,bgHeight)
    rect(WIDTH-bgHeight,HEIGHT/2-bgWidth/2,bgHeight,bgWidth)
    
    rect(WIDTH/2-bgWidth/2,HEIGHT-bgHeight,bgWidth,bgHeight)
    
    rect(0,HEIGHT/2-bgWidth/2,bgHeight,bgWidth)
end

function makeCoins()
    margin = 75
    padding = 100
    coins = {}
    
    coins[1] = Penny(WIDTH/2-padding*2+margin,padding,0)
    coins[2] = Penny(WIDTH-padding,HEIGHT/2-padding*2+margin,90)
    coins[3] = Penny(WIDTH/2+padding+margin,HEIGHT-padding,180)
    coins[4] = Penny(padding,HEIGHT/2+padding+margin,-90)
    
    coins[5] = Nickel(WIDTH/2-padding+margin,padding,0)
    coins[6] = Nickel(WIDTH-padding,HEIGHT/2-padding+margin,90)
    coins[7] = Nickel(WIDTH/2+margin,HEIGHT-padding,180)
    coins[8] = Nickel(padding,HEIGHT/2+margin,-90)
    
    coins[9] = Dime(WIDTH/2+margin,padding,0)
    coins[10] = Dime(WIDTH-padding,HEIGHT/2+margin,90)
    coins[11] = Dime(WIDTH/2-padding+margin,HEIGHT-padding,180)
    coins[12] = Dime(padding,HEIGHT/2-padding+margin,-90)
    
    coins[13] = Quarter(WIDTH/2+padding+margin,padding,0)
    coins[14] = Quarter(WIDTH-padding,HEIGHT/2+padding+margin,90)
    coins[15] = Quarter(WIDTH/2-padding*2+margin,HEIGHT-padding,180)
    coins[16] = Quarter(padding,HEIGHT/2-padding*2+margin,-90)
    
    parameter.watch("#coins")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(122, 122, 177, 86)

    -- This sets the line thickness
    strokeWidth(5)
    
    sprite("SpaceCute:Background",WIDTH/2,HEIGHT/2,1024)

    -- Do your drawing here
    
    makeCoinBGs()
    
    for var=1,#coins,1 do
        coins[var]:draw()
    end
    
end

function log(msg)
    print("[Main] "..msg)
    
end


