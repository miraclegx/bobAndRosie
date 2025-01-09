game = {}

function game.load()
  initiatebob(world)
  initiateRosie(world)
end

function game.update()
  world:update(dt)
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
  world:draw()
  printt()
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