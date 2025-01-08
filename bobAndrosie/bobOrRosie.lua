bOr = {}

active = nil

function initiatebob(w)
  bob = {x = 100,y = 100,speed = 50}
  bob.body = love.physics.newBody(w,100,100,'dynamic')
  bob.shape = love.physics.newRectangleShape(60,60)
  bob.fixture = love.physics.newFixture(bob.body,bob.shape)
end

function printt()
  love.graphics.print('what the heck')
end

return bOr