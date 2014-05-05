bullet = {}
bullet.width = 5
bullet.height = 20
bulletSpeed = 500

function bullet.spawn(x, y, dir)
	table.insert(bullet, {x = x, y = y, dir = dir})
end

function bullet.draw()
	for i, v in ipairs(bullet) do
		love.graphics.setColor(0,0,255)
		love.graphics.circle("fill", v.x, v.y, v.width, v.height)
	end
end

function bullet.move(dt)
	for i,v in ipairs(bullet) do
		
	end

function bullet.update(dt)
	if v.dir == "right" then
		v.x = v.x + bulletSpeed * dt
	end
end

function bullet.shoot(key)
	if key == "j" then
		bullet.spawn(heroThumb.x, heroThumb.y + heroThumb.y/ 2, 'j')
	end
end