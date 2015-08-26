dofile("geometry.lua")
qrencode = dofile("qrencode.lua")

cur_video = 1
W, H = canvas:attrSize()
img_folder = './img_v1/'
img_ext = '.png'
imgs_l1 = {}
imgs_l2 = {}
img_l1_names = {'BTN_movie1', 'BTN_movie2', 'BTN_movie3', 'BTN_movie4', 'BTN_movie5', 'BTN_movie6'}
img_l2_names = {'ARROW_LEFT', 'BTN_STOP_FOCUS', 'ARROW_RIGHT'}
xs_l1 = {}
xs_l2 = {}

function clear_canvas(W, H)
	canvas:attrColor(51,51,51,255)
	canvas:clear(0,0,W,H)
end

function showQRCode(cur_url, x_center, y_center)
	ok,qr_code_t=qrencode.qrcode(cur_url)
	if not ok then return end
	square_side = math.floor(192/(#qr_code_t)+0.5)
	
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

function update_screen(cur_value)
	clear_canvas(W, H)
	local urls = {}
	urls[1] = "http://gingadf.com.br/globalitv/Diabetes_completa_ingles.avi"
	urls[2] = "http://gingadf.com.br/globalitv/Diabetes_sintomas_ingles.avi"
	urls[3] = "http://gingadf.com.br/globalitv/Diabetes_prevencao_ingles.avi"
	urls[4] = "http://gingadf.com.br/globalitv/Diabetes_tipo_I_ingles.avi"
	urls[5] = "http://gingadf.com.br/globalitv/Diabetes_tipo_II_ingles.avi"
	urls[6] = "http://gingadf.com.br/globalitv/Diabetes_tipo_I_e_II_ingles.avi"
	cur_label = 'start_vid' .. cur_value
	event.post {
		class = 'ncl',
		type = 'presentation',
		label = cur_label,
		action = 'start',
	}
	if cur_value==1 then img_vals = {#imgs_l1,1,2}
	elseif cur_value==#imgs_l1 then img_vals = {(#imgs_l1)-1,#imgs_l1,1}
	else img_vals = {cur_value-1,cur_value,cur_value+1} end
	
	--canvas:attrColor(251,251,251,255)
	--canvas:drawRect('fill',128, 72, 1024,576)
	
	-- Place buttons on screen
	canvas:compose(xs_l1[1], 503, imgs_l1[img_vals[1]][2])
	canvas:compose(xs_l1[2], 503, imgs_l1[img_vals[2]][1])
	canvas:compose(xs_l1[3], 503, imgs_l1[img_vals[3]][2])
	canvas:compose(xs_l2[1], 544, imgs_l2[1])
	canvas:compose(xs_l2[2], 149-39, imgs_l2[2])
	canvas:compose(xs_l2[3], 544, imgs_l2[3])
	-- Place rectangle with rounded corners behind online video
	plotRoundedRect(138, 82, 670, 390, 15, {161,161,161,255})
	plotRoundedRect(143, 87, 660, 380, 15, {255,255,255,255})
	-- Place rectangle with rounded corners behind main video
	plotRoundedRect(856, 464, 286, 174, 15, {161,161,161,255})
	plotRoundedRect(860, 469, 276, 164, 15, {255,255,255,255})
	-- Place rectangle with rounded corners behind QR code for online video
	plotRoundedRect(878, 149+39, 242, 242, 15, {161,161,161,255})
	plotRoundedRect(883, 154+39, 232, 232, 15, {255,255,255,255})
	-- Draw QR code
	showQRCode(urls[cur_value], 999, 270+39)
	
	canvas:flush()
end

function lua_event_handler(evt)
	if((evt.class == 'ncl') and (evt.type == 'presentation'))
	and (evt.action == 'start') then
		for j = 1,#img_l1_names do
			imgs_l1[j] = {}
			imgs_l1[j][1] = canvas:new(img_folder .. img_l1_names[j] .. '_FOCUS' .. img_ext)
			imgs_l1[j][2] = canvas:new(img_folder .. img_l1_names[j] .. img_ext)
		end
		Wi_l1,Hi_l1 = (imgs_l1[1][1]):attrSize()
		Wi_l2 = {}
		Hi_l2 = {}
		for j = 1,#img_l2_names do
			imgs_l2[j] = canvas:new(img_folder .. img_l2_names[j] .. img_ext)
			Wi_l2[j], Hi_l2[j] = (imgs_l2[j]):attrSize()
		end
		vidW = 640
		vidX = 153
		xgap = (vidW-3*Wi_l1)/4
		xs_l1 = {vidX+xgap,vidX+xgap*2+Wi_l1,vidX+xgap*3+2*Wi_l1}
		xs_l2[1] = xs_l1[1]+Wi_l1+(xgap-Wi_l2[1])/2
		xs_l2[3] = xs_l1[2]+Wi_l1+(xgap-Wi_l2[3])/2
		xs_l2[2] = 999-138/2  --xs_l1[2]+(Wi_l1-Wi_l2[2])/2
		update_screen(cur_video)
	end
	
	if evt.class == 'key' and evt.type == 'press' then
		if evt.key == 'CURSOR_LEFT' or evt.key == 'CURSOR_RIGHT' then
			cur_label = 'start_vid' .. cur_video
			event.post {
				class = 'ncl',
				type = 'presentation',
				label = cur_label,
				action = 'stop',
			}
			if evt.key == 'CURSOR_LEFT' then
				if cur_video > 1 then cur_video = cur_video - 1
				else cur_video = 6 end
			elseif evt.key == 'CURSOR_RIGHT' then
				if cur_video < 6 then cur_video = cur_video + 1
				else cur_video = 1 end
			end
			update_screen(cur_video)
		end
		if evt.key == 'RED' then
			cur_label = 'start_vid' .. cur_video
			event.post {
				class = 'ncl',
				type = 'presentation',
				label = cur_label,
				action = 'stop',
			}
			event.post {
				class = 'ncl',
				type = 'presentation',
				action = 'stop',
			}
		end
	end
end

event.register(lua_event_handler)