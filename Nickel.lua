Nickel = class(Coin)

function Nickel:init(x,y,rotation)
    -- you can accept and set parameters here
    self:log("init")
    self:setup(x,y,rotation)
    self.image = readImage("Project:nickel")
    self.size = 90

end


function Nickel:touched(touch)
    -- Codea does not automatically call this method

    
end

function Nickel:log(msg)
    print("Nickel: "..msg)
end
