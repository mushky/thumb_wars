bulletSpeed = 50
bullet = {}

function bullet.spawn(x, y, dir)
	table.insert(bullet, {width = 10, height = 10, x = x, y = y, dir = dir})
end

function bullet.draw()
	for i, v in ipairs(bullet) do
		love.graphics.setColor(0,0,0)
		love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)
	end
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