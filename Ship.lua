Ship = Class {}

local GRAVITY = 200
local FLIGHT = 50

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

  self.y = self.y + self.dy
end

function Ship:render()
  -- Temp placeholder
  love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end