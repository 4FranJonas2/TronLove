local sceneGameplay = {}

function sceneGameplay.Init()

    sceneGameplay.tiles = {}
    sceneGameplay.scores = "0 | 0"

    local imgP1 = love.graphics.newImage("res/MouseBall.png")
    local imgP2 = love.graphics.newImage("res/MouseBall.png")

    local player1 = CreatePlayer("Cacho", 0, 5, CreateVector2D(0,0), "imgP1")
    local player2 = CreatePlayer("Pato", 0, 5, CreateVector2D(0,0), "imgP2")
end

function sceneGameplay.Input()



end

function sceneGameplay.Update(dt)

    -- Player 1 Controlls
    if love.keyboard.isDown('s') then
        player1.knight = MoveKnight(players1.knight,0,1, dt)
    end
    if love.keyboard.isDown('w') then
        player1.knight = MoveKnight(players1.knight,0,-1, dt)
    end
    if love.keyboard.isDown('a') then
        player1.knight = MoveKnight(players1.knight,0,1, dt)
    end
    if love.keyboard.isDown('d') then
        player1.knight = MoveKnight(players1.knight,0,-1, dt)
    end

    -- Player 2 Controlls
    if love.keyboard.isDown("down") then
        player2.knight = MoveKnight(player2.knight,0,1, dt)
    end
    if love.keyboard.isDown("up") then
        player2.knight = MoveKnight(player2.knight,0,-1, dt)
    end
    if love.keyboard.isDown("right") then
        player2.knight = MoveKnight(player2.knight,0,1, dt)
    end
    if love.keyboard.isDown("left") then
        player2.knight = MoveKnight(player2.knight,0,-1, dt)
    end

end

function sceneGameplay.Draw()
    love.graphics.draw(player1.image, player1.position.x, player1.position.y)
    love.graphics.draw(player2.image, player2.position.x, player2.position.y)
end

return sceneGameplay