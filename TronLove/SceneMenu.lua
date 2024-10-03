local sceneMenu = {}

mouse = require ("mouse")

local fontTitle = love.graphics.newFont("fonts/Lato-Black.ttf", 50)
local fontSemiTitle =  love.graphics.newFont("fonts/Lato-Bold.ttf", 35)
local fontRegular =  love.graphics.newFont("fonts/Lato-Regular.ttf", 25)

local gameTitle = love.graphics.newText(fontTitle, {{1,1,1} ,"Los Cachos Peleadores"})
local startText = love.graphics.newText(fontRegular, {{0.5,0.5,0.5} ,"Press \"Enter\" to play"})
local creditsText = love.graphics.newText(fontRegular, {{0.5,0.5,0.5} ,"Press \"C\" to credits"})

local sizeTitle = 
{
    width = gameTitle:getWidth(),
    height = fontRegular:getHeight()
}

local sizeStart = 
{
    width = startText:getWidth(),
    height = fontRegular:getHeight()
}

local sizeCredits = 
{
    width = creditsText:getWidth(),
    height = fontRegular:getHeight()
}

function sceneMenu.Init()
    mouse.Init()
end

function sceneMenu.Input()

    if love.keyboard.isDown("return") then
        game.state.running = true
        game.state.menu = false
    end

    if love.keyboard.isDown("c") then
        game.state.credits = true
        game.state.menu = false
    end

end

function sceneMenu.Update(dt)
    mouse.Update(dt)
end

function sceneMenu.Draw()
    halfScreenWidth = love.graphics.getWidth() / 2
    halfScreenHeight = love.graphics.getHeight() / 2

    mouse.Draw()

    love.graphics.draw(gameTitle, halfScreenWidth - (sizeTitle.width / 2), sizeTitle.height)
    love.graphics.draw(startText, halfScreenWidth - (sizeStart.width / 2), sizeStart.height + sizeTitle.height*5)
    love.graphics.draw(creditsText, halfScreenWidth - (sizeCredits.width / 2), sizeCredits.height + sizeStart.height + sizeTitle.height*5)
end

return sceneMenu