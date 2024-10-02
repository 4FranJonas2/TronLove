
function CreateBike(speed, position, image)
    local Bike = {}

    Bike.speed = 0
    Bike.position = position

    Bike.image = image

    return Bike
end

function MoveBike(Bike, dt)

    if love.keyboard.isDown("up") then
        Bike.position.y = Bike.position.y - Bike.speed * dt
     end

     if love.keyboard.isDown("down") then
        Bike.position.y = Bike.position.y + Bike.speed * dt
     end

     if love.keyboard.isDown("left") then
        Bike.position.x = Bike.position.x - Bike.speed * dt
     end

     if love.keyboard.isDown("right") then
        Bike.position.x = Bike.position.x + Bike.speed * dt
     end

     return Bike
end

function DrawBike(bike)
    love.graphics.draw(bike.image, bike.position.x, bike.position.y)
end