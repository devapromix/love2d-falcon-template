require("game.common")

Ini			= require("libs.ini")
State		= require("libs.state")
Class		= require("libs.class")
Resources 	= require("game.resources")

States = {
	game = require("states.game"),
}

screenWidth, screenHeight = love.graphics.getDimensions()

function love.load()
	-- Load resources
	Resources.load()

	-- Screenshot
	if not love.filesystem.exists("screenshot") then
		love.filesystem.createDirectory("screenshot")
	end

	-- Audio
	love.audio.setVolume(0.5)
	love.audio.play(Resources.Audio.mainMenu)

	-- Set default state
	State.switch(States.game)
end

function love.draw()
	love.graphics.setFont(Resources.Fonts.regular)
    State.current():draw()
	if debugMode then
		love.graphics.setColor(COLOR.darkbrown)
		love.graphics.setFont(Resources.Fonts.debug)
		love.graphics.print("DEBUG MODE", 8, 8)
		love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 8, 20)
	end
	love.graphics.setColor(COLOR.white)
end

function love.keypressed(key)
    State.current():keypressed(key)
	if key == "f1" then
		debugMode = not debugMode
	elseif key == "f2" then
		screenshot()
	end	
end