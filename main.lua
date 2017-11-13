-- This runs as soon as the game loads
function love.load()
  button = {}
  button.x = 200
  button.y = 200
  button.radius = 50

  score = 0
  timer = 0

  myFont = love.graphics.newFont(40)
end

-- This is the game loop, default is 60fps
function love.update(dt)
end

-- This draws graphics to the screen, runs at 60fps default
function love.draw()
  love.graphics.setColor(0, 191, 191)
  love.graphics.circle("fill", button.x, button.y, button.radius)

  love.graphics.setFont(myFont)
  love.graphics.setColor(255, 255, 255)
  love.graphics.print(score)
end

function love.mousepressed(x, y, btn, isTouch)
  -- 1 = left button, 2 = right button, 3 = middle button
  if (btn == 1) then
    -- if (distanceBetweenPoints(x, y, button.x, button.y) < button.radius) then
    if (distanceBetweenPoints(love.mouse.getX(), love.mouse.getY(), button.x, button.y) < button.radius) then
      score = score + 1
      moveButton()
    end
  end
end

function distanceBetweenPoints(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end

function moveButton()
  button.x = love.math.random(0, love.graphics.getWidth())
  button.y = love.math.random(0, love.graphics.getHeight())
end
