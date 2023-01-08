local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	physics.start()
	physics.setDrawMode( "hybrid" )

	local background = display.newRect(display.contentWidth/2, display.contentHeight/2, display.contentWidth, display.contentHeight)
	
	local ground = display.newImageRect("ground.png", display.contentWidth, 200)
	ground.x, ground.y = display.contentWidth / 2, display.contentHeight-100

	local player = display.newImageRect("player.png", 270, 350)
	local player_outline = graphics.newOutline(1, "player.png")
	player.x, player.y = 200, 350

	local ptero = display.newImageRect("ptero.png", 276, 119)
	local ptero_outline = graphics.newOutline(1, "ptero.png")
	ptero.x, ptero.y = display.contentWidth - 300, 200

	physics.addBody( ground, "static" )
	physics.addBody( player, "dynamic", {outline=player_outline} )
	physics.addBody( ptero, "kinematic", {outline=ptero_outline} )

	--여기부터 이어서 작성해주세요.
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	physics.start()	--이 코드를 작성해주세요
	
	if phase == "will" then

	elseif phase == "did" then

	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	physics.pause() --이 코드를 작성해주세요

	if event.phase == "will" then

	elseif phase == "did" then

	end
end

function scene:destroy( event )
	local sceneGroup = self.view

	physics.stop() --이 코드를 작성해주세요
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene