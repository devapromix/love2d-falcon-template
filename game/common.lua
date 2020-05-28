debugMode = false

COLOR = {
	white 		= { 255, 255, 255 },
	yellow 		= { 237, 201, 81  },
	red 		= { 204, 51,  63  },
	orange 		= { 235, 104, 65  },
	offwhite 	= { 231, 231, 231 },
	violet		= { 108, 113, 196 },
	blue		= { 38,  139, 210 },
	magenta		= { 211, 54,  130 },
	lightblue   = { 105, 188, 188 },
	darkblue	= { 0,   160, 176 },
	darkbrown   = { 71,  44,  31  },
	lightbrown  = { 106, 75,  60  },
	green       = { 105, 188, 109 },
}

function echo(s, x, y, c)
	x, y = math.floor(x), math.floor(y)
	love.graphics.setColor(25, 25, 25, 255)
	love.graphics.print(s, x + 1, y + 1)
	love.graphics.setColor(c, 250)
	love.graphics.print(s, x, y)
end

function screenshot()
	local s = love.graphics.newScreenshot()
	local n = os.date("%x")
	s:encode("png", "screenshot/"..os.time()..".png")
end

function dist(x1,y1,x2,y2)
	return math.sqrt( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))
end