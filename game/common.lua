function echo(s, x, y, c)
  x, y = math.floor(x), math.floor(y)
  love.graphics.setColor(25, 25, 25, 255)
  love.graphics.print(s, x + 1, y + 1)
  love.graphics.setColor(c, 250)
  love.graphics.print(s, x, y)
end