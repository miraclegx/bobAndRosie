bOr = {}


function initiatebob(w)
  bob = {x = 100,y = 100,speed = 2,active = 1,vx = 0,vy = 0}
  bob.body = world:newRectangleCollider(bob.x,bob.y,50,50)
end

function initiateRosie(w)
  rosie = {x = 500,y = 100,speed = 5,active = 0,vx = 0,vy = 0}
  rosie.body = world:newRectangleCollider(rosie.x,rosie.y,50,50)
  --rosie:setFixedRotation(true)
end

function printt()
  love.graphics.print('what the heck')
end

return bOr