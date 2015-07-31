#!/opt/local/bin/lua

dofile("tree.lua")
dofile("menu_buttons.lua")
dofile("text.lua")

teste = 4

if teste==0 then
	for i=1,3 do
		tree_menu.level = i
		tree_node = read_node(tree_menu)
		print("level = " .. tree_menu.level .. ", node = " .. tree_node.node .. ", " .. #tree_node.branches .. " branches")
		imgs1,imgs2 = read_branches(tree_node)
		for i=1,#imgs1 do
			print("   " .. imgs1[i])
		end
	end
elseif teste==1 then
	texto = [[O rato CLN roeu a roupa, mas não tem problema.
	Quando vamos ao cinema? O cão comeu a maçã.
	Olá mundo!\nComo vai você? Eu vou bem, sem maiores problemas.
	Meu carro ficou com o Marreco no Maracanã, junto com o psicólogo.]]
	ss = separarSilabasTexto(texto)
	for j = 1,#ss do
		print(ss[j] .. ' ' .. ss[j]:len())
	end
elseif teste==2 then
	a = '123  456  789      6790.'
	print(removeExtraSpaces(a))
elseif teste==3 then
	texto = 'Belém: Programa de Assistência aos Portadores de Diabetes e Hipertensão do Hospital Universitário João de Barros Barreto (HUJBB)'
	ss = separarSilabasTexto(texto)
	for j = 1,#ss do
		print(ss[j] .. ' ' .. ss[j]:len())
	end
elseif teste==4 then
	texto = '1. Metformin hydrochloride (500 mg)\n2. Extended action metformin hydrochloride (500 mg)\n3. Metformin hydrochloride (800 mg)\n4. Glibenclamide (5 mg)\n5. NPH human insulin (100 UI/mL)\n6. Regular human insulin (100 UI/mL)'
	ss = separarSilabasTexto(texto)
	for j = 1,#ss do
		print('\'' .. ss[j] .. '\'')
	end
end