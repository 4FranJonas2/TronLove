require ("Vector2D")

function CreateTile(lifeTime, position, image)

    local Tile = {}

    Tile.pressed = false
    Tile.isAlive = false
    Tile.lifeTime = lifeTime
    Tile.position = position

    Tile.image = image

    return Tile
end

function PressTile(Tile, dt)

    if Tile.pressed == false then
        return
    end

    Tile.lifeTime -= dt

    if Tile.lifeTime <= 0 then
        Tile.isAlive = false
    end
end

function DrawTile(Tile)

    if Tile.isAlive then
    love.graphics.draw(Tile.image, Tile.position.x, Tile.position.y)
    end

end