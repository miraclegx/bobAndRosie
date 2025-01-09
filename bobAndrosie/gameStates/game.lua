game = {}

function game.load()
  playArea = love.graphics.newCanvas(love.graphics.getWidth()/2,love.graphics.getHeight()/2)
  backgroundImg = love.graphics.newImage('assets/brickPattern2.png')
  initiatebob(world)
  initiateRosie(world)
end

function game.update()
  world:update(dt)
  mouseX,mouseY = love.mouse.getPosition()
  -- now some movement
  if love.keyboard.isDown('w') then
    if bob.active == 1 then
      bob.vy = bob.vy - bob.speed
    end
    if rosie.active == 1 then
      rosie.vy = rosie.vy - rosie.speed
    end
  elseif love.keyboard.isDown('s') then
    if bob.active == 1 then
      bob.vy = bob.vy + bob.speed
    end
    if rosie.active == 1 then
      rosie.vy = rosie.vy + rosie.speed
    end
  end
  
  bob.body:setLinearVelocity(bob.vx, bob.vy)
  rosie.body:setLinearVelocity(rosie.vx, rosie.vy)
end

function game.draw()
  love.graphics.setCanvas(playArea)
  love.graphics.clear()
  love.graphics.draw(backgroundImg,-30,0,0,.5,.5)
  love.graphics.draw(rosie.img,rosie.x,rosie.y,0,.8,.8)
  love.graphics.draw(bob.img,bob.x,bob.y,0,.8,.8)
  --world:draw()
  love.graphics.setCanvas()
  
  love.graphics.draw(playArea,love.graphics.getWidth()/4,love.graphics.getHeight()/4)
  love.graphics.print('mouse x: '..mouseX)
  love.graphics.print('mouse y: '..mouseY,0,20)
end

function game.keypressed(key)
  if key == 'space' then
    if bob.active == 1 then bob.active = 0 elseif bob.active == 0 then bob.active = 1 end
    if rosie.active == 1 then rosie.active = 0 elseif rosie.active == 0 then rosie.active = 1 end
  elseif key == 'x' then
    
  elseif key == 'up' then
    
  end
end

function spawnEnemy()
  enemy = {x = 0,y = 0,img = enemy_img,speed = 50,angle = 0}
  table.insert(enemies,enemy)
end

return game