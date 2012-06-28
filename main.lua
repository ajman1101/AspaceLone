function love.load()
	playerPic = love.graphics.newImage("player.jpg")
	local f = love.graphics.newFont(12)
	love.graphics.setFont(f)
	love.graphics.setColor(82,76,76,200)
	love.graphics.setBackgroundColor(205,191,191)
	player = {
		X = 100,
		Y = 100,
		speed = 150
	}
end

function love.update(dt)
	if love.keyboard.isDown("up") then
		player.Y = player.Y - (player.speed * dt)
	elseif love.keyboard.isDown("left") then
		player.X = player.X - (player.speed * dt)
	elseif love.keyboard.isDown("right") then
		player.X = player.X + (player.speed * dt)
	elseif love.keyboard.isDown("down") then
		player.Y = player.Y + (player.speed * dt)
	end
end
	
function love.draw()
	love.graphics.draw(playerPic, player.X, player.Y)
end