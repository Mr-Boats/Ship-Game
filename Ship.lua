Ship = Class {}

local GRAVITY = 15
local FLIGHT = 10

function Ship:init(x, y, width, height)
  self.x = x
  self.y = y
  
  self.width = width
  self.height = height
  
  self.dy = 0 --ship's y position that constantly changes due to gravity asnd user input
end

function Ship:collides(obstacle)
  
end

function Ship:update(dt)
  self.dy = self.dy + GRAVITY * dt
  --[[
  if love.mouse.wasPressed(1) then
    self.dy = self.dy - FLIGHT * dt
  end
  ]]--
end

function Ship:render()
  -- Temp placeholder
  love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end