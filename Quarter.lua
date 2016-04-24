Quarter = class(Coin)

function Quarter:init(x,y,rotation)
    -- you can accept and set parameters here
    self:log("init")
    self:setup(x,y,rotation)
    self.image = readImage("Project:quarter")
    self.size = 100
end



function Quarter:touched(touch)
    -- Codea does not automatically call this method
end
