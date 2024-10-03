local SceneGameplay = require ("sceneGameplay")

local game = {
    state = {
        menu = true,
        running = false,
        endGamePause = false,
        ended = false
    }
}
local mouse = {
    x = 30,
    y = 30
}

function love.load()

    --ANIM8
    anim8 = require ("libraries/anim8")
    love.graphics.setDefaultFilter("nearest","nearest")

    --INIT SETTINGS
    love.window.setTitle("Game name")
    mouseBall.spriteSheet = love.graphics.newImage("res/Mouse2.png")
    mouseBall.grid = anim8.newGrid(16, 16, mouseBall.spriteSheet:getWidth(), mouseBall.spriteSheet:getHeight())

    mouseBall.animation = {}
    mouseBall.animation.idle = anim8.newAnimation(mouseBall.grid('1-8', 1), 0.2)

    mainMenu = require 'mainMenu'
    love.mouse.setVisible(false)
    --INIT PLAYERS
end

function love.update(dt)
    
    mouse.x, mouse.y = love.mouse.getPosition()
    mouseBall.animation.idle:update(dt)

end

function love.draw()
    love.graphics.setBackgroundColor(0,0,0)
    mainMenu.drawMenu()
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()

    if  game.state["menu"]then
        --love.graphics.draw(mouseBall.spriteSheet, mouse.x, mouse.y, 10)
        mouseBall.animation.idle:draw(mouseBall.spriteSheet, mouse.x, mouse.y, nill, 10)
    end

    if  game.state["running"]then
           
        --player1.DrawKnight()    
    end
end
