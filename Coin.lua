Coin = class()

function Coin:init(x,y,rotation)
    -- you can accept and set parameters here
    self:log("init")
end

function Coin:setup(x,y,rotation)
    self:log("setup")
    self.x = x
    self.y = y
    self.rotation = rotation

end

function Coin:draw()
    -- Codea does not automatically call this method
    self:log("draw")
    pushMatrix()
    translate(self.x,self.y)
    rotate(self.rotation)
    sprite(self.image,0,0,self.size)
    popMatrix()

end

function Coin:touched(touch)
    -- Codea does not automatically call this method
end

function Coin:log(msg)
    print("Coin: "..msg)
end
