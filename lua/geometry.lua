dofile("text.lua")

function plotFullCircle(xm, ym, r, RGBA)
	local x = -r
	local y = 0
	local err = 2-2*r
	canvas:attrColor(RGBA[1],RGBA[2],RGBA[3],RGBA[4])
	while x < 0 do
		if y>0 then
			canvas:drawRect('fill',xm+x, ym-y, 2*(-x), 2*y)
			canvas:drawRect('fill',xm-y, ym+x, 2*y, 2*(-x))
		end
		r = err
		if r <= y then -- e_xy+e_y < 0
			y=y+1
			err = err+y*2+1
		end
		if r > x or err > y then -- e_xy+e_x > 0 or no 2nd y-step
			x=x+1
			err = err+x*2+1
		end
	end
end

function plotRoundedRect(x, y, width, height, r, RGBA)
	canvas:attrColor(RGBA[1],RGBA[2],RGBA[3],RGBA[4])
	plotFullCircle(x+r,       y+r,        r, RGBA)
	plotFullCircle(x+width-r, y+r,        r, RGBA)
	plotFullCircle(x+r,       y+height-r, r, RGBA)
	plotFullCircle(x+width-r, y+height-r, r, RGBA)
	canvas:drawRect('fill',x+r, y,   width-2*r,height)
	canvas:drawRect('fill',x,   y+r, width,    height-2*r)
end

function textDimensions(separate_text, border, font)
	dim = {}
	dim.max_x,dim.max_y = 0,0
	dim.dx = {}
	dim.dy = {}
	if #font == 2 then
		canvas:attrFont(font[1],font[2])
	elseif #font == 3 then
		canvas:attrFont(font[1],font[2],font[3])
	end
	for j=1,#separate_text do
		dim.dx[j],dim.dy[j] = canvas:measureText(separate_text[j])
		dim.max_x = math.max(dim.max_x, dim.dx[j])
		dim.max_y = dim.max_y + dim.dy[j]
	end
	dim.low_WH = border*3 --math.floor(math.min(dim.max_x,dim.max_y)*0.14+0.5)
	dim.rectR = dim.low_WH
	dim.rectW = dim.max_x+2*(dim.low_WH+border)
	dim.rectH = dim.max_y+2*(dim.low_WH+border)
	return dim
end

function hyphenatedText(text, font, width)
	separate_text = separateText(text)
	hyphenated_text = {}
	if #font == 2 then
		canvas:attrFont(font[1],font[2])
	elseif #font == 3 then
		canvas:attrFont(font[1],font[2],font[3])
	end
	j=1
	while j<=#separate_text do
		dx, dy = canvas:measureText(separate_text[j])
		if dx < width then table.insert(hyphenated_text, separate_text[j])
		else
			silab = separarSilabasTexto(separate_text[j])
			k = #silab
			reduction = ''
			dx = width+1
			while dx > width and k>0 do
				reduction = silab[k] .. reduction
				reduced_text = separate_text[j]:sub(1,-1-(reduction:len()))
				if silab[k] ~= ' ' then
					if k>1 and silab[k-1] ~=' ' then
						reduced_text = reduced_text .. '-'
					end
				else
				end
				dx,dy = canvas:measureText(reduced_text)
				k = k-1
				--print(k .. ' ' .. dx .. ' ' .. width .. ' ' .. reduced_text .. '||' .. reduction)
			end
			if k==0 then table.insert(hyphenated_text, separate_text[j])
			else
				table.insert(hyphenated_text, reduced_text)
				if silab[k-1]==' ' then reduction = '  ' .. reduction
				else reduction = '   ' .. reduction end
				table.insert(separate_text,j+1,reduction)
				--if j==#separate_text then separate_text[j+1] = reduction
				--else separate_text[j+1] = reduction .. separate_text[j+1] end
			end
		end
		j=j+1
	end
	return hyphenated_text
end


function branchesDimensions(level_data)
	for i = 1,#level_data.branches do
		if level_data.branches[i].media_type=='img' then
			level_data.branches[i].W, level_data.branches[i].H =
				level_data.branches[i].img_ysel:attrSize()
		elseif level_data.branches[i].media_type=='txt' then
			--level_data.branches[i].separate_text = separateText(level_data.branches[i].text)
			level_data.branches[i].separate_text = hyphenatedText(branches[i].text,
				level_data.box_font, level_data.W-level_data.border*8)
			level_data.branches[i].dim = textDimensions(
				level_data.branches[i].separate_text, level_data.border, level_data.box_font)
			level_data.branches[i].H = level_data.branches[i].dim.rectH
			level_data.branches[i].W = level_data.branches[i].dim.rectW
		elseif level_data.branches[i].media_type=='qrcode' then
			level_data.branches[i].H = (#(branches[i].qr_code_t))*branches[i].square_side
			level_data.branches[i].W = (#(branches[i].qr_code_t))*branches[i].square_side
		end
	end
	--return level_data
end

function textBox(branch, alignment, border, center_x, center_y, 
				RGBA_text, RGBA_rRect, RGBA_rRect_border)
	--separate_text = separateText(text)
	--separate_text = hyphenatedText(text, font, width-border*4)
	--dim = textDimensions(separate_text, border, font)
	local rectX = center_x - branch.W/2
	local rectY = center_y - branch.H/2
	
	if border>0 then
		plotRoundedRect(rectX, rectY, branch.W, branch.H,
			branch.dim.rectR, RGBA_rRect_border)
		plotRoundedRect(rectX+border, rectY+border, branch.W-2*border,
			branch.H-2*border, branch.dim.rectR, RGBA_rRect)
	else
		plotRoundedRect(rectX, rectY, branch.W, branch.H, branch.dim.rectR, RGBA_rRect)
	end
	
	y0 = 0
	for j = 1,#branch.dim.dy do
		y0 = y0+branch.dim.dy[j]
	end
	y0 = y0/2
	
	canvas:attrColor(RGBA_text[1],RGBA_text[2],RGBA_text[3],RGBA_text[4])
	if alignment=='center' then
		for j=1,#branch.separate_text do
			canvas:drawText(center_x-branch.dim.dx[j]/2,center_y - y0,
				branch.separate_text[j])
			y0 = y0-branch.dim.dy[j]
		end
	elseif alignment=='left' then
		x0 = center_x - branch.dim.max_x/2
		for j=1,#branch.separate_text do
			canvas:drawText(x0,center_y - y0,branch.separate_text[j])
			y0 = y0-branch.dim.dy[j]
		end
	end
end

function showQRCode(qr_code_t, x_center, y_center, square_side)
	--ok,qr_code_t=qrencode.qrcode(url)
	--if not ok then return end
	x0 = x_center - (#qr_code_t)/2*square_side
	y0 = y_center - (#qr_code_t)/2*square_side
	y = y0
	canvas:attrColor(255,255,255,255)
	canvas:drawRect('fill',x0-square_side,y0-square_side,(#qr_code_t+2)*square_side,(#qr_code_t+2)*square_side)
	for j = 1,#qr_code_t do
		x = x0
		for k = 1,#(qr_code_t[j]) do
			if qr_code_t[j][k]<0 then
				canvas:drawRect('fill',x,y,square_side,square_side)
			end
			x = x + square_side
		end
		y = y + square_side
	end
	y = y0
	canvas:attrColor(0,0,0,255)
	for j = 1,#qr_code_t do
		x = x0
		for k = 1,#(qr_code_t[j]) do
			if qr_code_t[j][k]>0 then
				canvas:drawRect('fill',x,y,square_side,square_side)
			end
			x = x + square_side
		end
		y = y + square_side
	end
end