button = {}

function button_spawn(x,y,test)
	table.insert(button, {x = x, y = y, text = text})
end

function button_draw()
	for i,v in ipairs(button) do
		love.graphics.setColor(0,0,0)
		love.graphics.setFont(medium)
		love.graphics.print(v.text,v.x,v.y)
	end
end