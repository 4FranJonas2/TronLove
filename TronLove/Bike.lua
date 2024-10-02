
function CreateBike(speed, position, image)
    local Bike = {}

    Bike.speed = 0
    Bike.position = position

    Bike.image = image

    return Bike
end

function MoveBike(Bike, x, y, dt)

   Bike.position.y = Bike.position.y + Bike.speed * dt * y
   Bike.position.x = Bike.position.x + Bike.speed * dt * x
   return Bike
   
end

function DrawBike(bike)
    love.graphics.draw(bike.image, bike.position.x, bike.position.y)
end