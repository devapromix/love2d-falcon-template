local Resources = {
    Fonts = {},
    Audio = {},
    Image = {},
    UITex = {},
}

function Resources.load()
	-- Fonts
	Resources.Fonts.default = love.graphics.newFont("assets/fonts/Font.ttf", 12)

	-- Musics
	Resources.Audio.mainMenu = love.audio.newSource("assets/musics/stellardrone.mp3", "stream")	
	
	-- Images
	Resources.Image.back = love.graphics.newImage("assets/images/wallpaper.png")

	-- Icons
	Resources.Image.icon = 'assets/images/icons/icon.png'

	--
	love.window.setIcon(love.image.newImageData(Resources.Image.icon))
	love.graphics.setDefaultFilter("nearest", "nearest", 1)
end

return Resources