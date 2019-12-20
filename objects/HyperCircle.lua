local Circle = require 'objects/Circle'
local HyperCircle = Circle:extend()

function HyperCircle:new(x, y, radius, line_width, outer_radius)
    HyperCircle.super.new(self, x, y, radius)
    self.line_width = line_width or 0
    self.outer_radius = outer_radius or 0
end

function HyperCircle:update(dt)
    HyperCircle.super.update(dt)
end

function HyperCircle:draw()
    -- Outer circle
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", self.x, self.y, self.outer_radius, 100) -- Draw white circle with 100 segments.

    -- Middle band
    love.graphics.setColor(0, 0, 0)
    love.graphics.circle("fill", self.x, self.y, self.outer_radius - self.line_width, 100) -- Draw black circle with 100 segments.

    -- Inner circle
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", self.x, self.y, self.radius, 100) -- Draw white circle with 100 segments.
end

return HyperCircle
