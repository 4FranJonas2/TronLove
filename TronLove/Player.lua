require("Knight")

function CreatePlayer(name, score, speed, position, spriteSheet)
    local player = {}

    player.name = name
    player.score = score
    player.isAlive = true
    player.knight = CreateKnight(speed, position, spriteSheet)

    return player
end