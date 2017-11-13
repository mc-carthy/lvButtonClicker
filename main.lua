-- This runs as soon as the game loads
function love.load()
  number = 0
end

-- This is the game loop, default is 60fps
function love.update(dt)
  number = number + 1
end

-- This draws graphics to the screen, runs at 60fps default
function love.draw()
  love.graphics.print(number)
end
