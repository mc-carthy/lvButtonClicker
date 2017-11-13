-- This runs as soon as the game loads
function love.load()
end

-- This is the game loop, default is 60fps
function love.update(dt)
end

-- This draws graphics to the screen, runs at 60fps default
function love.draw()
  -- x, y, width, height are all in pixels
  -- left and down are positive
  -- pivot is upper right corner
  love.graphics.setColor(191, 0, 0)
  love.graphics.rectangle("fill", 0, 0, 200, 100)
  love.graphics.setColor(191, 0, 191)
  love.graphics.rectangle("line", 0, 100, 200, 100)
  love.graphics.setColor(0, 191, 191)
  love.graphics.circle("fill", 400, 400, 200)
end
