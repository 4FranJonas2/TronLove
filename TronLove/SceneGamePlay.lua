local sceneGameplay = {}

require ("Vector2D")
require ("Player")

local imgP1 = love.graphics.newImage("res/Player1Test.png")
local imgP2 = love.graphics.newImage("res/Player1Test.png")



local p1Pos = CreateVector2D(0,0)
local p2Pos = CreateVector2D(0,0)

local player1 = CreatePlayer("Cacho", 0, 50, p1Pos, imgP1)
local player2 = CreatePlayer("Pato", 0, 50, p2Pos, imgP2)

function sceneGameplay.Init()

    sceneGameplay.tiles = {}
    sceneGameplay.scores = "0 | 0"
end

function sceneGameplay.Input()



end

function sceneGameplay.Update(dt)


    -- Player 1 Controlls
    if love.keyboard.isDown('s') then
        player1.knight.position = MoveKnight(player1.knight,0,1, dt)
    end
    if love.keyboard.isDown('w') then
        player1.knight.position = MoveKnight(player1.knight,0,-1, dt)
    end
    if love.keyboard.isDown('a') then
        player1.knight.position = MoveKnight(player1.knight,-1,0, dt)
    end
    if love.keyboard.isDown('d') then
        player1.knight.position = MoveKnight(player1.knight,1,0, dt)
    end

    -- Player 2 Controlls
    if love.keyboard.isDown("down") then
        player2.knight.position = MoveKnight(player2.knight,0,1, dt)
    end
    if love.keyboard.isDown("up") then
        player2.knight.position = MoveKnight(player2.knight,0,-1, dt)
    end
    if love.keyboard.isDown("right") then
        player2.knight.position = MoveKnight(player2.knight,1,0, dt)
    end
    if love.keyboard.isDown("left") then
        player2.knight.position = MoveKnight(player2.knight,-1,0, dt)
    end

end

function sceneGameplay.Draw()
    love.graphics.draw(player1.knight.image, player1.knight.position.x, player1.knight.position.y)
    love.graphics.draw(player2.knight.image, player2.knight.position.x, player2.knight.position.y)
end

return sceneGameplay