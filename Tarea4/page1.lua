local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 local cw = display.contentWidth
 local ch = display.contentHeight

 local background
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 local controlador = true
 
 function toCotrolador()
    controlador = true
    print( "Accion completada" )
 end

 local estados = {
    {x=0, y=0, xScale = 1.5, yScale=3, anchorX=0, anchorY=0, time=2000, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3, yScale=3, anchorX=0.67, anchorY=0, time=500, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3.7, yScale=3, anchorX=0, anchorY=0.33, time=500, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3.4, yScale=3, anchorX=0.37, anchorY=0.33, time=500, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3.7, yScale=3, anchorX=0, anchorY=0.67, time=500, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3.5, yScale=3, anchorX=0.35, anchorY=0.67, time=500, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3, yScale=3, anchorX=0.67, anchorY=0.33, time=500, onComplete=toCotrolador},
    {x=0, y=0, xScale = 3, yScale=3, anchorX=0.67, anchorY=0.66, time=500, onComplete=toCotrolador},
 }

 local cuadro = 0
 local controlador = true

function toCotrolador()
    controlador = true
    print( "Accion completada" )
end
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    background = display.newImageRect( sceneGroup, "spidermanuno.jpg", cw, ch )
    background.x = cw/2; background.y = ch/2
    
    print( background.width, background.height )

    function cambiar_cuadro(e)
        if e.phase == "ended" then 

           if controlador == true then
              cuadro = cuadro + 1
              transition.to( background,estados[cuadro])
              print( "touch" )
            end
        end
        return true
    end

    background:addEventListener( "touch", cambiar_cuadro )

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene