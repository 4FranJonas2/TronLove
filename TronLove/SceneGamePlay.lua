local sceneGameplay = {}

require ("Vector2D")
require ("Player")

local imgP1 = love.graphics.newImage("res/BlueRun.png")
local imgP2 = love.graphics.newImage("res/GreenRun.png")

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
        player1.knight.position = MoveKnight(player1.knight,0,1, dt, player1.knight.animations.down)
    end
    if love.keyboard.isDown('w') then
        player1.knight.position = MoveKnight(player1.knight,0,-1, dt, player1.knight.animations.up)
    end
    if love.keyboard.isDown('a') then
        player1.knight.position = MoveKnight(player1.knight,-1,0, dt, player1.knight.animations.left)
    end
    if love.keyboard.isDown('d') then
        player1.knight.position = MoveKnight(player1.knight,1,0, dt, player1.knight.animations.right)
    end

    -- Player 2 Controlls
    if love.keyboard.isDown("down") then
        player2.knight.position = MoveKnight(player2.knight,0,1, dt, player2.knight.animations.down)
    end
    if love.keyboard.isDown("up") then
        player2.knight.position = MoveKnight(player2.knight,0,-1, dt, player2.knight.animations.up)
    end
    if love.keyboard.isDown("right") then
        player2.knight.position = MoveKnight(player2.knight,1,0, dt, player2.knight.animations.right)
    end
    if love.keyboard.isDown("left") then
        player2.knight.position = MoveKnight(player2.knight,-1,0, dt, player2.knight.animations.left)
    end

end

function sceneGameplay.Draw()
    DrawKnight(player1.knight)
    DrawKnight(player2.knight)
end

return sceneGameplay