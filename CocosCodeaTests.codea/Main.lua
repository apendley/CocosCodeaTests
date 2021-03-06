-- Main

supportedOrientations(ANY)
--displayMode(FULLSCREEN_NO_BUTTONS)
displayMode(FULLSCREEN)

function setup()
    local director = CCSharedDirector()
    director:showFPS(true)
    director:runWithScene(MyLayer:scene())
end

function touched(touch)
    CCSharedDirector():touchDispatcher():touched(touch)
end

function draw()    
    background(0)
    CCSharedDirector():drawScene(DeltaTime)
    
    --[[
    fill(0, 255, 0)
    strokeWidth(5)
    pointSize(20)
    point(WIDTH/2, HEIGHT/2)
    --]]
end

