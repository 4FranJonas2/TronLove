local SceneGameplay = require ("sceneGameplay")
local mainMenu = require ("mainMenu")

local game = {
    state = {
        menu = true,
        running = false,
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

end

function love.update(dt)

    

end

function love.draw()
    love.graphics.setBackgroundColor(0,0,0)
    mainMenu.drawMenu()
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()

    if  game.state["menu"]then
        
    end

    if  game.state["running"]then
           
       
    end
end
