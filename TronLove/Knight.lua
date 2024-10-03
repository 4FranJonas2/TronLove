function CreateKnight(speed, position, image)
    local knight = {}

    knight.speed = 0
    knight.position = position

    knight.image = love.graphics.newImage("res/Player1Test.png")

    return knight
end

function MoveKnight(knight, x, y, dt)
    knight.position.y = knight.position.y + knight.speed * dt * y
    knight.position.x = knight.position.x + knight.speed * dt * x
   return knight
end

function DrawKnight(knight)
    love.graphics.draw(knight.image, knight.position.x, knight.position.y)
end