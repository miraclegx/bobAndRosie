-- started jan 7th 2025

  Game = require('gameStates/game')
  bobOrRosie = require('bobOrRosie')
  
  dt = love.timer.getDelta()
  
  currentScene = game
  world = love.physics.newWorld(0,0)
  
	function love.load()
    currentScene.load()
	end

	function love.update(dt)
    dt = love.timer.getDelta()
    currentScene.update()
	end

	function love.draw()
    currentScene.draw()
	end

	function love.keypressed(key)
    currentScene.keypressed(key)
	end	
