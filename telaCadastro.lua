local composer = require("composer")

local scene = composer.newScene()

local widget = require("widget")

local bancoDados = require("bancoDados")

local nome
local cpf
local email
local senha


medicao = {y1 = display.contentHeight/7, x1 = display.contentWidth}

function scene:create(event) 

	local sceneGroup = self.view
	
	txtNome = display.newText({text = "Nome: ", x = 30 , y = medicao.y1 , fontSize = 25, align = "left" })
	
	txtCpf = display.newText({text = "Cpf: ", x = 15 , y = medicao.y1*2 , fontSize = 25, align = "left" })
	
	txtEmail = display.newText({text = "Email: ", x = 25 , y = medicao.y1*3 , fontSize = 25, align = "left" })
	
	txtSenha = display.newText({text = "Senha: ", x = 30 , y = medicao.y1*4 , fontSize = 25, align = "left" })
	
	
	cadastrar = widget.newButton({label ="Cadastrar",x = (medicao.x1/2)+(medicao.x1/4),y = medicao.y1 *5})
	
	voltar = widget.newButton({label ="Voltar",x = (medicao.x1/2)-(medicao.x1/4),y = medicao.y1 *5})
	
	
	voltar:addEventListener("touch", redirecionaVoltar)
	cadastrar:addEventListener("touch", cadastrarPessoa)
	
	
	
	
	-- inserção nos grupos
	sceneGroup:insert(cadastrar)
	sceneGroup:insert(voltar)
	
	
end


function scene:show(event)
	nome = native.newTextField((display.contentWidth - display.contentWidth/2)+5, medicao.y1,200,30)
	
	cpf = native.newTextField((display.contentWidth - display.contentWidth/2)+5, medicao.y1*2,200,30)
	
	email = native.newTextField((display.contentWidth - display.contentWidth/2)+5, medicao.y1*3,200,30)
	
	senha= native.newTextField((display.contentWidth - display.contentWidth/2)+5, medicao.y1*4,200,30)
	
	senha.isSecure = true

end



function cadastrarPessoa(event)

	if event.phase == "ended" then
		
		bancoDados:criaPessoa()

	end

end


function redirecionaVoltar(event)


	if event.phase == "ended" then
		composer.gotoScene("telaLogin")
	
	end


end


scene:addEventListener( "create", scene )
scene:addEventListener("show",scene)
return scene