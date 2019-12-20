Object = require 'libraries/classic/classic'

Circle = require 'objects/HyperCircle'

function love.load()
    circle = Circle(400, 300, 50, 10, 120)
end

function love.update(dt)
    circle:update(dt)
end

function love.draw()
    circle:draw()
end
