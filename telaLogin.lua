local composer = require("composer")

local widget = require("widget")

local scene = composer.newScene()



function scene:create(event)

	local sceneGroup = self.view
	
	display.newText({text = "Email:", x = (display.contentWidth/3)-7, y = (display.contentHeight/4), fontSize = 25})
	
	local email = native.newTextField( display.contentWidth/2, display.contentHeight/3,200,30)
	
	display.newText({text = "Senha:", x = (display.contentWidth/3)-6, y = (display.contentHeight/5)*2, fontSize = 25})
	
	local senha = native.newTextField( display.contentWidth/2, display.contentHeight/4*2,200,30)
	
	senha.isSecure = true
	
	login = widget.newButton({label ="Login",x = display.contentWidth/2,y = (display.contentHeight/7*4) +15, shape = "rect" })
	cadastro = widget.newButton({label ="Cadastrar?",x = display.contentWidth/2,y = (display.contentHeight/7*5) ,shape = "rect" })
	
	
	login:addEventListener("touch", redirecionaLogin)
	cadastro:addEventListener("touch", redirecionaCadastro)
	
	sceneGroup:insert(login)
	sceneGroup:insert(cadastro)
	
end


function redirecionaLogin(event)
	
	if event.phase == "began" then
		composer.gotoScene("")
	end
	
end


function redirecionaCadastro(event)

	if event.phase == "ended" then
		composer.gotoScene ("")		
	end

end

scene:addEventListener( "create", scene )
return scene