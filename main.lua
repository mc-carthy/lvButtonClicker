-- This runs as soon as the game loads
function love.load()
end

-- This is the game loop, default is 60fps
function love.update(dt)
end

-- This draws graphics to the screen, runs at 60fps default
function love.draw()
  love.graphics.rectangle("fill", 0, 0, 200, 100)
  love.graphics.rectangle("line", 0, 100, 200, 100)
end
