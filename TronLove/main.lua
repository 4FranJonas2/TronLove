local SceneGameplay = require ("SceneGameplay")
local SceneMenu = require ("SceneMenu")
local SceneCredits = require ("SceneCredits")

game = {
    state = {
        menu = true,
        running = false,
        credits = false,
        endGamePause = false,
        ended = false
    }
}

function love.load()

    --ANIM8
    anim8 = require ("libraries/anim8")
    love.graphics.setDefaultFilter("nearest","nearest")
    --INIT SETTINGS
    love.window.setTitle("Los cachos Peleadores")
    love.mouse.setVisible(false)
    --love.setMode(200, 200, nill)
    --INIT MOUSE
    SceneMenu.Init()
    SceneGameplay.Init()
    SceneCredits.Init()
end

function love.update(dt)

    if  game.state["menu"] then
        SceneMenu.Input()
        SceneMenu.Update(dt)
    end

    if  game.state["running"] then
        SceneGameplay.Input()
        SceneGameplay.Update(dt)
    end

    if game.state["credits"] then
        SceneCredits.Input()
        SceneCredits.Update(dt)
    end
end

function love.draw()
    love.graphics.setBackgroundColor(0,0,0)
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()
    
    if  game.state["menu"] then
        SceneMenu.Draw()
    end

    if  game.state["running"] then
        SceneGameplay.Draw()
    end

    if game.state["credits"] then
        SceneCredits.Draw()
    end
end
