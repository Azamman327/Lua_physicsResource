local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	--여기부터
	physics.start()
	physics.setDrawMode( "hybrid" )
	--여기까지 작성해주세요
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