local Circle = Object:extend()

function Circle:new(x, y, radius)
    self.x = x or 0
    self.y = y or 0
    self.radius = radius or 0
    self.creation_time = love.timer.getTime()
end

function Circle:update(dt)

end

function Circle:draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", self.x, self.y, self.radius, 100) -- Draw white circle with 100 segments.
end

return Circle
