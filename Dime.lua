Dime = class(Coin)

function Dime:init(x,y,rotation)
    -- you can accept and set parameters here
    self:log("init")
    self:setup(x,y,rotation)
    self.image = readImage("Project:dime")
    self.size = 70
end



function Dime:touched(touch)
    -- Codea does not automatically call this method
end
