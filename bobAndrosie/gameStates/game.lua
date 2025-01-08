game = {}

function game.load()
  initiatebob(world)
end

function game.update()
  world:update(dt)
end

function game.draw()
  --world:draw()
  printt()
end

function game.keypressed(key)
  if key == '' then
    
  elseif key == 'x' then
    
  elseif key == 'up' then
    
  end
end

function spawnEnemy()
  enemy = {x = 0,y = 0,img = enemy_img,speed = 50,angle = 0}
  table.insert(enemies,enemy)
end

return game