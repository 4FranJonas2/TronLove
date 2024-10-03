local SceneGameplay = require ("SceneGameplay")
local mouseMenu = require ("mouse")

local game = {
    state = {
        menu = false,
        running = true,
        endGamePause = false,
        ended = false
    }
}

function love.load()

    --ANIM8
    anim8 = require ("libraries/anim8")
    love.graphics.setDefaultFilter("nearest","nearest")
    --INIT SETTINGS
    love.window.setTitle("Game name")
    love.mouse.setVisible(false)
    --love.setMode(200, 200, nill)
    --INIT MOUSE
    mouseMenu.Init()
    SceneGameplay.Init()
end

function love.update(dt)

    if  game.state["menu"]then
        mouseMenu.Update(dt)
    end

    if  game.state["running"]then
        SceneGameplay.Update(dt)
    end
end

function love.draw()
    love.graphics.setBackgroundColor(0,0,0)
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()
    
    if  game.state["menu"]then
        mouseMenu.Draw()
        
    end

    if  game.state["running"]then

        SceneGameplay.Draw()
    end
end
