local composer = require("composer")

local widget = require("widget")

local scene = composer.newScene()

local email
local senha

-- Cria a cena
function scene:create(event)

	local sceneGroup = self.view
	
	local tEmail = display.newText({text = "Email:", x = (display.contentWidth/3)-7, y = (display.contentHeight/4), fontSize = 25})
	
	
	local tSenha = display.newText({text = "Senha:", x = (display.contentWidth/3)-6, y = (display.contentHeight/5)*2, fontSize = 25})
	
	login = widget.newButton({label ="Login",x = display.contentWidth/2,y = (display.contentHeight/7*4) +15})
	cadastro = widget.newButton({label ="Cadastrar?",x = display.contentWidth/2,y = (display.contentHeight/7*5) })
	
	
	login:addEventListener("touch", redirecionaLogin)
	cadastro:addEventListener("touch", redirecionaCadastro)
	
	sceneGroup:insert(login)
	sceneGroup:insert(cadastro)
	sceneGroup:insert(tEmail)
	sceneGroup:insert(tSenha)
	
end
-- Mostra a cena
function scene:show(event) 
	
	if event.phase == "did" then
	email = native.newTextField( display.contentWidth/2, display.contentHeight/3,200,30)
	senha = native.newTextField( display.contentWidth/2, display.contentHeight/4*2,200,30)
	senha.isSecure = true
	end
	
end
 -- Na hora de esconder a cena faz determinada funções 
function scene:hide(event)
	
	if event.phase == "will" then
		
		display.remove(email)
		display.remove(senha)
		
		
		
	end
	
end

function redirecionaLogin(event)
	
	if event.phase == "began" then
	
		composer.gotoScene("")
		
	end
	
end

function redirecionaCadastro(event)

	if event.phase == "ended" then
		
		composer.gotoScene("telaCadastro")
		
	end

end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )

return scene