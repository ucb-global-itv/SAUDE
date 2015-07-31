dofile("geometry.lua")
dofile("mapa_micro.lua")

cur_micro = 13 -- Variável de controle da microrregiao que é mostrada na tela
map_branches = {}

-- ************************************************************************************************************
-- Variáveis que controlam o texto e o retângulo que apresentam os municÌpios das microrregiıes

fontTxt = {"Tiresias", 18, "bold"} -- Determina a fonte do texto a ser escrito na caixa
RGBA_Txt = {0,0,0,255} -- Determina a cor do texto
RGBA_RectIn = {204,19,49,255} -- Determina a cor de preeenchimento interno do quadrado
RGBA_RectBord = {51,51,51,255} -- Determina a cor da borda do quadrado
BorderWidth = 5

-- ************************************************************************************************************

-- Função que desenha o mapa e a microrregiao definida por cur_micro
function redraw_map(W, H)
	clear_canvas(W, H)
	canvas:compose(map.x, map.y, map.img)
	canvas:compose(micro[cur_micro].x, micro[cur_micro].y, micro[cur_micro].img)
	textBox(map_branches[cur_micro], 'left', BorderWidth, micro[cur_micro].txtX, micro[cur_micro].txtY, RGBA_Txt, RGBA_RectIn, RGBA_RectBord)
end

function handler_mapa(evt_key, W, H)
	-- Mostra o mapa do Pará apenas uma vez
	if evt_key=='start' then
		for j=1,#micro do
			map_branches[j] = {}
			map_branches[j].media_type = 'txt'
			map_branches[j].text = micro[j].text
			--map_branches[j].separate_text = separateText(map_branches[j].text)
			map_branches[j].separate_text = hyphenatedText(map_branches[j].text,
				fontTxt, dxMap*3/4)
			map_branches[j].dim = textDimensions(map_branches[j].separate_text, BorderWidth, fontTxt)
			map_branches[j].H = map_branches[j].dim.rectH
			map_branches[j].W = map_branches[j].dim.rectW
		end
		redraw_map(W, H)
		canvas:flush()
	elseif evt_key == 'CURSOR_UP' then
		cur_micro = micro[cur_micro].up
		redraw_map(W, H)
		canvas:flush()
	elseif evt_key == 'CURSOR_DOWN' then
		cur_micro = micro[cur_micro].down
		redraw_map(W, H)
		canvas:flush()
	elseif evt_key == 'CURSOR_LEFT' then
		cur_micro = micro[cur_micro].left
		redraw_map(W, H)
		canvas:flush()
	elseif evt_key == 'CURSOR_RIGHT' then
		cur_micro = micro[cur_micro].right
		redraw_map(W, H)
		canvas:flush()
	end
	return cur_micro
end