require("Bike")

function CreatePlayer(name, score, speed, position, image)
    local player = {}

    player.name = name
    player.score = score
    player.bike = CreateBike(speed, position, image)

    return player
end