CONFIG = {

    graphics = {
        filter = {
            -- FilterModes: linear (blurry) / nearest (blocky)
            -- Default filter used when scaling down
            down = "nearest",

            -- Default filter used when scaling up
            up = "nearest",

            -- Amount of anisotropic filter performed
            anisotropy = 1,
        }
    },

    window = {
        icon = 'assets/images/icons/icon.png'
    },
}

Font = {
    default = nil,
	monospace       = love.graphics.newFont("assets/fonts/RobotoMono-Regular.ttf", 20),
    regular         = love.graphics.newFont("assets/fonts/Roboto-Regular.ttf", 20),
}
Font.default = Font.regular

State   = require 'libs.state'

States = {
    game = require 'states.game',
}

function love.load()
    love.window.setIcon(love.image.newImageData(CONFIG.window.icon))
    love.graphics.setDefaultFilter(CONFIG.graphics.filter.down,
                                   CONFIG.graphics.filter.up,
                                   CONFIG.graphics.filter.anisotropy)

    -- Draw is left out so we can override it ourselves
    local callbacks = {'update'}
    for k in pairs(love.handlers) do
        callbacks[#callbacks+1] = k
    end

	back = love.graphics.newImage("assets/images/back.png")
	
	music = love.audio.newSource("assets/musics/soliloquy.mp3", "stream")
	love.audio.setVolume(0.5)
	love.audio.play(music)

    State.registerEvents(callbacks)
    State.switch(States.game)
end

function love.draw()
    State.current():draw()
	
	love.graphics.setFont(Font.regular)
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.print("Hello World!", 400, 300)
	
	love.graphics.setFont(Font.monospace)
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.print("Hello World!", 400, 400)
end