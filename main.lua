require "menu"

function love.load()
	love.window.setTitle("Thumb Wars")

	-- heroThumb (protaganist)
	heroThumb = {} -- new table for heroThumb
	heroThumb.x = 300 -- x coordinates for heroThumb
	heroThumb.y = 530 -- y coordinates for heroThumb
	heroThumb.speed = 500 -- speed of heroThumb
	heroThumb.heat = 0
	heroThumb.heatp = 0.5
  
	-- heroThumb Protector
	protectorOne = {}
	protectorOne.x = 720  
	protectorOne.y = 300
	protectorOne.speed = 500

  -- setup the bullets
  bullets = {}
  bullets.x = heroThumb.x
  bullets.y = heroThumb.y
  bullets.speed = 200

  -- enemyOne
	enemyOne = {}
	enemyOne.direction = 10
	enemyOne.x = 400
	enemyOne.y = 0
	enemyOne.speed = 100
	-- enemyTwo
	enemyTwo = {}
	enemyTwo.direction = 10
	enemyTwo.x = 5
	enemyTwo.y = 300
	enemyTwo.speed = 150

	-- Menu Buttons
	button_spawn(5, 200, "Start")
	button_spawn(20, 200, "Quit")
end

function love.update(dt)
	-- heroThumb Movement
	if love.keyboard.isDown("a") then
		heroThumb.x = heroThumb.x - heroThumb.speed*dt
	end
	if love.keyboard.isDown("d") then
		heroThumb.x = heroThumb.x + heroThumb.speed*dt
	end

	-- Ensure heroThumb does not leave screen
	if heroThumb.x < 0 then
		heroThumb.x = 0
	end

	if heroThumb.x > 790 then
		heroThumb.x = 790
	end

	bullet.update

	-- protectorOne Movement
	if love.keyboard.isDown("w") then
		protectorOne.y = protectorOne.y - protectorOne.speed*dt
	elseif love.keyboard.isDown("s") then
		protectorOne.y = protectorOne.y + protectorOne.speed*dt
	end

	-- Ensure protectorOne does not leave screen
	if protectorOne.y < 0 then
		protectorOne.y = 0
	end

	if protectorOne.y > 790 then
		protectorOne.y = 790 
	end	

	-- enemyOne Movement 
	if enemyOne.x > 9 then
		enemyOne.direction = 20
	elseif enemyOne.x < 9 then
		enemyOne.direction = -20
	end

	-- enemyTwo Movement
	if enemyTwo.x > 9 then 
		enemyTwo.direction = 20
	elseif enemyTwo.x < 9 then
		enemyTwo.direction = -20
	end
end

function love.draw()
-- HEROES
 -- heroThumb
 love.graphics.setColor(255,255,0,255)
 love.graphics.rectangle("fill", heroThumb.x,heroThumb.y, 10, 30)

 -- heroThumb Fleet
 love.graphics.setColor(255,255,0,255)
 love.graphics.rectangle("fill", 300, 585, 200,10)

 -- protectorOne
 love.graphics.setColor(255,255,0,255)
 love.graphics.rectangle("fill", protectorOne.x, protectorOne.y, 30, 10)

 -- protectorOne Fleet
 love.graphics.setColor(255,255,0,255)
 love.graphics.rectangle("fill", 782, 220, 10, 200)

-- BAD GUYS
 -- enemyOne
 love.graphics.setColor(255,255,255,255)
 love.graphics.rectangle("fill", enemyOne.x, enemyOne.y, 20,100)

 -- enemyTwo
 love.graphics.setColor(255,255,255,255)
 love.graphics.rectangle("fill", enemyTwo.x, enemyTwo.y, 20, 100)
end

