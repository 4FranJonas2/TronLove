function love.load()




player = {
    posX = 0,
    posY = 0,
    speed = 12.5,
}
end

function love.update()

end

function love.draw()
    love.graphics.print("Cacho is everywhere", 400, 300)
    love.graphics.setBackgroundColor(0,0,0)
    drawStats(player)

end

function drawStats(player)
    love.graphics.print("Player 1", 10, 20)
    love.graphics.print("Pos X:", 10, 30... player.posX)
    love.graphics.print("Pos Y:", 10, 40... player.posY)
end