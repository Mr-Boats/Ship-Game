-- Class Declarations
push = require 'push'
Class = require 'class'

require 'Ship'

-- Screen Dimensions
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 512
VIRTUAL_HEIGHT = 288

function love.load()
  
  -- to transfer into respective states
  player = Ship(250, 250, 50, 10)
  
  -- initialize input table for keyboard and mouse
  love.keyboard.keysPressed = {}
  love.mouse.buttonsPressed = {}
  
end

function love.keypressed(key)
  love.keyboard.keysPressed[key] = true
  
  if key == 'escape' then
    love.event.quit()
  end
end

--[[
function love.mousepressed(x, y, button)
    love.mouse.buttonsPressed[button] = true
end

function love.keyboard.wasPressed(key)
  return love.keyboard.keysPressed[key]
end

function love.mouse.wasPressed(button)
  return love.keyboard.buttonsPressed[button]
end
]]--

function love.update(dt)
  
  -- basic movement
  if love.mouse.isDown(1) then
    player.dy = -2
  else
    player.dy = 0
  end
  
  player:update(dt)
end

function love.draw()
  player:render()
end

