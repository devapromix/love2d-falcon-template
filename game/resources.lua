local Resources = {
    Fonts = {},
    Audio = {},
    Image = {},
    UITex = {},
}

function Resources.load()
	-- Fonts
	Resources.Fonts.debug = love.graphics.newFont("assets/fonts/RobotoMono-Regular.ttf", 12)
	Resources.Fonts.monospace = love.graphics.newFont("assets/fonts/RobotoMono-Regular.ttf", 20)
	Resources.Fonts.regular = love.graphics.newFont("assets/fonts/Roboto-Regular.ttf", 30)

	-- Musics
	Resources.Audio.mainMenu = love.audio.newSource("assets/musics/soliloquy.mp3", "stream")	
	
	-- Images
	Resources.Image.back = love.graphics.newImage("assets/images/back.png")

	-- Icons
	Resources.Image.icon = 'assets/images/icons/icon.png'

	--
	love.window.setIcon(love.image.newImageData(Resources.Image.icon))
	love.graphics.setDefaultFilter("nearest", "nearest", 1)
end

return Resources