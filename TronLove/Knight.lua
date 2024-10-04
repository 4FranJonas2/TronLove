function CreateKnight(speed, position, spriteSheet)
    local knight = {}

    anim8 = require ("libraries/anim8")

    knight.speed = speed
    knight.position = position

    knight.spriteSheet = spriteSheet
    
    knight.grid = anim8.newGrid(16, 17, knight.spriteSheet:getWidth(),knight.spriteSheet:getHeight())
    
    knight.animations = {}

    knight.animations.down = anim8.newAnimation(knight.grid('1-8', 1), 0.2)
    knight.animations.left = anim8.newAnimation(knight.grid('1-8', 4), 0.2)
    knight.animations.right = anim8.newAnimation(knight.grid('1-8', 2), 0.2)
    knight.animations.up = anim8.newAnimation(knight.grid('1-8', 3), 0.2)

    knight.anim = knight.animations.up
    
    return knight
end

function MoveKnight(knight, x, y, dt, animation)

    knight.anim = animation

    knight.position.y = knight.position.y + knight.speed * dt * y
    knight.position.x = knight.position.x + knight.speed * dt * x

   return knight.position
end

function DrawKnight(knight)
    knight.anim:draw(knight.spriteSheet, knight.position.x, knight.position.y, nill, 2)
end