require("Knight")

function CreatePlayer(name, score, speed, position, image)
    local player = {}

    player.name = name
    player.score = score
    player.isAlive = true
    player.knight = CreateKnight(speed, position, image)

    return player
end