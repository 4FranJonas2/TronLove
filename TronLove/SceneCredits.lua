local sceneCredits = {}

local fontTitle = love.graphics.newFont("fonts/Lato-Black.ttf", 50)
local fontSemiTitle =  love.graphics.newFont("fonts/Lato-Bold.ttf", 35)
local fontRegular =  love.graphics.newFont("fonts/Lato-Regular.ttf", 25)

local title = love.graphics.newText(fontTitle, {{1,0,1} ,"CREDITS"})
local progTitle = love.graphics.newText(fontSemiTitle, {{0.5,0,1} ,"Programmers"})
local prog1 = love.graphics.newText(fontRegular, {{0,0,1} ,"Francisco Jonas"})
local prog2 = love.graphics.newText(fontRegular, {{0,0,1} ,"Guzmeroli Claudio"})
local infoBack = love.graphics.newText(fontRegular, {{0.5,0.5,0.5} ,"Press backspace to return"})

local widthFontTitle
local heightFontTitle
    
local widthSemiTitle
local heightSemiTitle

function sceneCredits.Init()
    widthFontTitle = title:getWidth()
    heightFontTitle = fontTitle:getHeight()

    widthSemiTitle = progTitle:getWidth()
    heightSemiTitle = fontSemiTitle:getHeight()
end

function sceneCredits.Input()

    if love.keyboard.isDown("backspace") then
        game.state.menu = true
        game.state.credits = false
    end

end

function sceneCredits.Update(dt)
end

function sceneCredits.Draw()
    halfScreenWidth = love.graphics.getWidth() / 2
    halfScreenHeight = love.graphics.getHeight() / 2

    love.graphics.draw(title, halfScreenWidth - (widthFontTitle / 2), 0)
    love.graphics.draw(infoBack, 0, halfScreenHeight * 2 - infoBack:getHeight())
    love.graphics.draw(progTitle, halfScreenWidth - (widthSemiTitle / 2), heightFontTitle)
    love.graphics.draw(prog1, halfScreenWidth - (prog1:getWidth() / 2), heightSemiTitle + heightFontTitle)
    love.graphics.draw(prog2, halfScreenWidth - (prog2:getWidth() / 2), heightSemiTitle + heightFontTitle + prog1:getHeight())
end

return sceneCredits