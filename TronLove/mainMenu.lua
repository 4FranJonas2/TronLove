local mainMenu = {}

function createPlayButton( buttonPos, imagePos)
    local playButton = {}

    playButton.buttonPos.x = buttonPos.x
    playButton.buttonPos.y = buttonPos.y
    playButton.imagePos.x = imagePos.x
    playButton.imagePos.y = imagePos.y

    return playButton
end
function createCreditButton(name, buttonPos, imagePos)
    local creditButton = {}

    creditButton.name = name
    creditButton.buttonPos.x = buttonPos.x
    creditButton.buttonPos.y = buttonPos.y
    creditButton.imagePos.x = imagePos.x
    creditButton.imagePos.y = imagePos.y

    return creditButton
end

---===================================================================

function mainMenu.initButtons()
 --set var play and credits
    
    playPos.x = 400
    playPos.y = 200
    assetPlayPos.x = 400
    assetPlayPos.y = 200

    creditPos.x = 400
    creditPos.y = 300
    assetCreditPos.x = 400
    assetCreditPos.y = 300

    mainMenu.playButton = createPlayButton( playPos, assetPlayPos)
    mainMenu.creditButton = createCreditButton("CREDITS", creditPos, assetCreditPos)

end

function mainMenu.inputMenu()

end

function mainMenu.updateMenu()

end

function mainMenu.drawMenu()
 --love.graphics.draw(mainMenu.playButton)
 --love.graphics.draw(mainMenu.creditButton)
end

return mainMenu