Penny = class(Coin)

function Penny:init(x,y,rotation)
    -- you can accept and set parameters here
    self:log("init")
    self:setup(x,y,rotation)
    self.image = readImage("Project:penny")
    self.size = 75
end

function Penny:adjustCoinPosition()
    
end


function Penny:touched(touch)
    -- Codea does not automatically call this method
end

function Penny:log(msg)
    print("Penny: "..msg)
end