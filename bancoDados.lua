
local sqlite3 = require( "sqlite3" )
 
local path = system.pathForFile( "banco.db", system.DocumentsDirectory )
local db = sqlite3.open( path )



function criaPessoa(pessoa)

local tablesetup = [[CREATE TABLE IF NOT EXISTS pessoa (id INTEGER PRIMARY KEY autoincrement, nome, cpf, email,senha);]]
db:exec( tablesetup )



end

