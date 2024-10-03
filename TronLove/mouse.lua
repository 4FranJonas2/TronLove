local mouseMenu = {}

local mouse = {
    x = 30,
    y = 30
}

function mouseMenu.Init()

    mouseBall = {}
    mouseBall.spriteSheet = love.graphics.newImage("res/Mouse2.png")
    mouseBall.grid = anim8.newGrid(16, 16, mouseBall.spriteSheet:getWidth(), mouseBall.spriteSheet:getHeight())

    mouseBall.animation = {}
    mouseBall.animation.idle = anim8.newAnimation(mouseBall.grid('1-8', 1), 0.2)
end

function mouseMenu.Update(dt)
    mouse.x, mouse.y = love.mouse.getPosition()
    mouseBall.animation.idle:update(dt)
end

function mouseMenu.Draw()
    mouseBall.animation.idle:draw(mouseBall.spriteSheet, mouse.x, mouse.y, nill)
end

return mouseMenu
