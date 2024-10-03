
local game = {
    state = {
        menu = true,
        running = false,
        endGamePause = false,
        ended = false
    },
}

local mouse = {
    x = 30,
    y = 30
}

function love.load()
    love.window.setTitle("Game name")
    mouseBall = love.graphics.newImage("res/MouseBall.png")
   mainMenu = require 'mainMenu'

end

function love.update()
    mouse.x, mouse.y = love.mouse.getPosition()
end

function love.draw()
    love.graphics.setBackgroundColor(0,0,0)
    mainMenu.drawMenu()
    
    if  game.state["menu"]then
        love.graphics.draw(mouseBall, mouse.x, mouse.y, 10)
    end

    if  game.state["running"]then
            
    end
end
