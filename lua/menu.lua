dofile("tree.lua")
dofile("menu_buttons.lua")
dofile("geometry.lua")
require "http"
dofile("html_parsing.lua")
-- dofile("html_options.lua")
-- dofile("mapa.lua")

level_data  = {}
current_level_index = {0,0,0}
is_downloading = false
is_moving = false

function printt(t)
	str = t[1]
	for j=2,#t do
		str = str .. ' ' .. t[j]
	end
	print(str)
end

function clear_canvas(W, H)
	canvas:attrColor(0,0,0,0)
	canvas:clear(0,0,W,H)
	--canvas:attrColor(255,255,255,255) canvas:drawRect('fill',0,0,W,H) canvas:flush()
end

function draw_canvas(level_data)
	cur_y = level_data.y
	for i=1,#level_data.branches do 
		if cur_y + level_data.branches[i].H > 0 and cur_y < level_data.H then
			if level_data.branches[i].media_type=='img' then
				if i==level_data.focus then
					canvas:compose(level_data.x-level_data.branches[i].W/2,
						cur_y, level_data.branches[i].img_ysel)
				else
					canvas:compose(level_data.x-level_data.branches[i].W/2,
						cur_y, level_data.branches[i].img_nsel)
				end
			elseif level_data.branches[i].media_type=='txt' then
				if i==level_data.focus then
					textBox(level_data.branches[i], 'left', level_data.border,
						level_data.x, cur_y+level_data.branches[i].H/2,
						{50,50,50,255}, {255,255,255,255}, {90,90,90,255})
				else
					textBox(level_data.branches[i], 'left', level_data.border,
						level_data.x, cur_y+level_data.branches[i].H/2,
						{255,255,255,255}, {90,90,90,255}, {161,161,161,255})
				end
			elseif level_data.branches[i].media_type=='qrcode' then
				showQRCode(level_data.branches[i].qr_code_t,
					level_data.x, cur_y+level_data.branches[i].H/2,
					level_data.branches[i].square_side)
			end
		end
		cur_y = cur_y+level_data.branches[i].H+level_data.y_gap
	end
	if level_data.focus>1 then
		canvas:compose(329, level_data.H-140,  level_data.arrow_up)
	end
	if level_data.focus<(#level_data.branches) then
		canvas:compose(329, level_data.H-56, level_data.arrow_down)
	end
	if level_data.level>1 then
		canvas:compose(281, level_data.H-90,  level_data.arrow_left)
	end
	if level_data.has_branches then
		canvas:compose(361, level_data.H-90, level_data.arrow_right)
	end
	canvas:flush()
end

steps = 0
dx = 0
dy = 0
animation_level_data = {}
function animate_canvas(level_data, anim_dir)
	if anim_dir=="DOWN" or anim_dir=="UP" then
		max_d = 11
		max_s = 10
		steps = 1
		--local total_y = level_data.branches[level_data.focus].H+level_data.y_gap
		local total_y = 0
		if anim_dir=="UP" then total_y = level_data.branches[level_data.focus-1].H+level_data.y_gap
		else total_y = level_data.branches[level_data.focus].H+level_data.y_gap end
		dy = total_y/steps
		while math.floor(dy+0.5)>max_d and steps < max_s do
			steps = steps+1
			dy = total_y/steps
		end
		if anim_dir=="UP" then dy = -dy end
		animation_level_data = level_data
		is_moving = true
		animate_canvas_vertically()
		--[[while steps>0 do
			steps = steps - 1
			level_data.y = level_data.y+dy
			clear_canvas(level_data.W, level_data.H)
			draw_canvas(level_data)
		end]]
	elseif anim_dir=="LEFT" or anim_dir=="RIGHT" then
		max_d = 11
		max_s = 14
		steps = 1
		local total_x = level_data.branches[level_data.focus].W+level_data.x_gap
		dx = total_x/steps
		while math.floor(dx)>max_d and steps < max_s do
			steps = steps+1
			dx = total_x/steps
		end
		if anim_dir=="LEFT" then dx = -dx end
		animation_level_data = level_data
		is_moving = true
		animate_canvas_horizontally()
		--[[while steps>0 do
			steps = steps - 1
			level_data.x = level_data.x+dx
			clear_canvas(level_data.W, level_data.H)
			draw_canvas(level_data)
		end]]
	end
end

function animate_canvas_vertically()
	if steps>0 then
		steps = steps - 1
		animation_level_data.y = animation_level_data.y+dy
		clear_canvas(animation_level_data.W, animation_level_data.H)
		draw_canvas(animation_level_data)
		event.timer(30,animate_canvas_vertically)
	else
		is_moving = false
	end
end

function animate_canvas_horizontally()
	if steps>0 then
		steps = steps - 1
		animation_level_data.x = animation_level_data.x+dx
		clear_canvas(animation_level_data.W, animation_level_data.H)
		draw_canvas(animation_level_data)
		event.timer(30,animate_canvas_horizontally)
	else
		is_moving = false
		local tree_node = read_node(app_tree)
		tree_node.focus = level_data.focus
		if dx>0 then -- ANIMATION TO THE RIGHT
			app_tree.level = app_tree.level-1
		else -- ANIMATION TO THE LEFT
			app_tree.level = app_tree.level+1
		end
		level_data = read_level_data(app_tree)
		clear_canvas(level_data.W, level_data.H)
		if level_data.has_branches and level_data.branches[1].media_type=='map' then
			level_data.branches[1].focus = handler_mapa('start', level_data.W, level_data.H)
		else
			draw_canvas(level_data)
		end
	end
end


htmlTableAnalysis = {}

function htmlCallback(header, body)
	if body=='' then
		search_tree = {create_node('No internet connection available','txt')}
	else
		est_info = htmlToTable(body, htmlTableAnalysis.delims)
		for j = 1,#htmlTableAnalysis.prefix do
			c = htmlTableAnalysis.prefix[j]
			tableValuePrefix(est_info, c.f_name, c.add)
		end
		for j = 1,#htmlTableAnalysis.sufix do
			c = htmlTableAnalysis.sufix[j]
			tableValueSufix(est_info, c.f_name, c.add)
		end
		for j = 1,#htmlTableAnalysis.subs do
			c = htmlTableAnalysis.subs[j]
			tableValueSubs(est_info, c.f_name, c.inputs, c.outputs)
		end
		search_tree = tableToNodes(est_info,
									htmlTableAnalysis.node_ind, 
									htmlTableAnalysis.branch_ind,
									htmlTableAnalysis.sub_branch_ind,
									htmlTableAnalysis.sub_branch_type)
	end
	current_level_index[3] = app_tree.level
	app_tree.level = current_level_index[1]
	tree_node = read_node(app_tree)
	tree_node.branches = search_tree
	level_data = read_level_data(app_tree)
	app_tree.level = current_level_index[3]
	if current_level_index[1]==current_level_index[3] then
		clear_canvas(level_data.W, level_data.H)
		draw_canvas(level_data)
	end
	is_downloading = false
end
--[[
function htmlCallback(header, body)
	if body=='' then
		search_tree = {create_node('No internet connection available','txt')}
	else
		est_info = htmlToTable(body, htmlTableAnalysis.delims)
		--est_info = htmlToTable(body, htmlTableAnalysis.delims, htmlTableAnalysis.searches)
		for j = 1,#htmlTableAnalysis.concat do
			c = htmlTableAnalysis.concat[j]
			tableValueConcat(est_info, htmlTableAnalysis.searches[c.t_ind],c.conc)
		end
		for j = 1,#htmlTableAnalysis.subs do
			s = htmlTableAnalysis.subs[j]
			tableValueSubs(est_info, htmlTableAnalysis.searches[s.t_ind], s.inputs, s.outputs)
		end
		ordering_search = htmlTableAnalysis[htmlTA.main_search_ind].field_name
		--ordering_search = htmlTableAnalysis.searches[htmlTableAnalysis.main_search_ind]
		info_searches = {}
		for j = 1,#htmlTableAnalysis.info_search_ind do
			info_searches[j] = htmlTableAnalysis.searches[htmlTableAnalysis.info_search_ind[j] ]
		end
		search_tree = tableToNodes(est_info, ordering_search, info_searches)
	end
	current_level_index[3] = app_tree.level
	app_tree.level = current_level_index[1]
	tree_node = read_node(app_tree)
	tree_node.branches = search_tree
	level_data = read_level_data(app_tree)
	app_tree.level = current_level_index[3]
	if current_level_index[1]==current_level_index[3] then
		clear_canvas(level_data.W, level_data.H)
		draw_canvas(level_data)
	end
	is_downloading = false
end]]

function htmlProcessing(url)
	htmlTableAnalysis = htmlOptions(url)
	http.request(htmlTableAnalysis.url, htmlCallback)
end

function read_level_data(tree_data)
	local level_data = {}
	local tree_node = read_node(tree_data)
	
	level_data.W = luaW -- Defined in menu_buttons.lua
	level_data.H = luaH -- Defined in menu_buttons.lua
	-- These variables were defined to avoid using the function canvas:attrSize(),
	-- which is poorly defined in several Ginga NCL implementations:
	-- level_data.W, level_data.H = canvas:attrSize()
	
	level_data.media_type = tree_node.media_type
	level_data.arrow_down  = canvas:new('../img_v1_2/ARROW_DOWN.png')  --level_data.arrow_down  = canvas:new('./img_v1_2/ARROW_DOWN.png')
	level_data.arrow_up    = canvas:new('../img_v1_2/ARROW_UP.png')    --level_data.arrow_up    = canvas:new('./img_v1_2/ARROW_UP.png')
	level_data.arrow_left  = canvas:new('../img_v1_2/ARROW_LEFT.png')  --level_data.arrow_left  = canvas:new('./img_v1_2/ARROW_LEFT.png')
	level_data.arrow_right = canvas:new('../img_v1_2/ARROW_RIGHT.png') --level_data.arrow_right = canvas:new('./img_v1_2/ARROW_RIGHT.png')
	
	level_data.box_font   = {'Tiresias',22,'bold'}
	level_data.border = 5
	level_data.branches = read_branches(tree_node, level_data.border, level_data.box_font)      --level_data.img_nsel, level_data.img_ysel, level_data.text = read_branches(tree_node)
	level_data.branch_num = #(level_data.branches)
	if level_data.branch_num > 0 and level_data.branches[1].media_type=='url' then
		tree_node.branches = {create_node('Downloading data.','txt')}
		is_downloading = true
		htmlProcessing(level_data.branches[1].url)
		level_data.branches = read_branches(tree_node, level_data.border, level_data.box_font)
		level_data.branch_num = #(level_data.branches)
		current_level_index = {tree_data.level, tree_node.focus}
	end
	level_data.level = tree_data.level
	level_data.focus = tree_node.focus
	branchesDimensions(level_data)
	if tree_node.focus~=nil then
		level_data.has_branches = tree_node.branches[1].focus~=nil
	else
		level_data.has_branches = false
	end
	
	if level_data.has_branches and level_data.branches[1].media_type=='map' then
		return level_data
	end
	
	level_data.x_gap = 0
	level_data.y_gap = level_data.H
	num_btns = 1
	min_gap = 50
	for j=1,#level_data.branches do
		level_data.x_gap = math.max(level_data.x_gap,level_data.branches[j].W)
		if level_data.y_gap > level_data.branches[j].H + min_gap then-- j<4 then
			level_data.y_gap = level_data.y_gap - level_data.branches[j].H
			num_btns = num_btns + 1
		end
	end
	level_data.y_gap = level_data.y_gap/num_btns
	level_data.x_gap = (level_data.W-level_data.x_gap)/2
	level_data.y = level_data.y_gap
	for j=2,level_data.focus do
		level_data.y = level_data.y - level_data.branches[j-1].H - level_data.y_gap
	end
	level_data.x = level_data.W/2
	return level_data
end

function main_menu_handler(evt_key)
	if is_moving == true then return end
	if evt_key == 'CURSOR_DOWN' then
		if level_data.focus<(#level_data.branches) then
			level_data.focus = level_data.focus+1
			animate_canvas(level_data,"UP")
		end
	elseif evt_key == 'CURSOR_UP' then
		if level_data.focus>1 then
			level_data.focus = level_data.focus-1
			animate_canvas(level_data,"DOWN")
		end
	elseif evt_key == 'CURSOR_RIGHT' then
		if level_data.has_branches then
			animate_canvas(level_data,"LEFT")
			--[[local tree_node = read_node(app_tree)
			tree_node.focus = level_data.focus
			app_tree.level = app_tree.level+1
			level_data = read_level_data(app_tree)
			clear_canvas(level_data.W, level_data.H)
			if level_data.has_branches and level_data.branches[1].media_type=='map' then
				level_data.branches[1].focus = handler_mapa('start', level_data.W, level_data.H)
			else
				draw_canvas(level_data)
			end]]
		end
	elseif evt_key == 'CURSOR_LEFT' then
		if level_data.level>1 then
			animate_canvas(level_data,"RIGHT")
			--[[local tree_node = read_node(app_tree)
			tree_node.focus = level_data.focus
			app_tree.level = app_tree.level-1
			level_data = read_level_data(app_tree)
			clear_canvas(level_data.W, level_data.H)
			if level_data.has_branches and level_data.branches[1].media_type=='map' then
				level_data.branches[1].focus = handler_mapa('start', level_data.W, level_data.H)
			else
				draw_canvas(level_data)
			end]]
		end
	end
end

function lua_event_handler(evt)
	if((evt.class == 'ncl') and (evt.type == 'presentation')) and (evt.action == 'start') then
		level_data = read_level_data(app_tree)
		-- clear_canvas(level_data.W, level_data.H)
		draw_canvas(level_data)
	end
	
	if evt.class == 'key' and evt.type == 'press' then
		if is_downloading==true then return end
		if evt.key == 'RED' then
			event.post {class  = 'ncl', type = 'presentation', action = 'stop'}
		end
		
		if level_data.has_branches and level_data.branches[1].media_type=='map' then
			level_data.branches[1].focus = handler_mapa(evt.key, level_data.W, level_data.H)
			--printt({'DEBUG',level_data.level,level_data.focus,level_data.branches[1].focus,level_data.branches[1].media_type})
			if evt.key=='ENTER' then
				app_tree.level = app_tree.level+1
				local tree_node = read_node(app_tree)
				tree_node.focus = level_data.branches[1].focus
				level_data = read_level_data(app_tree)
				clear_canvas(level_data.W, level_data.H)
				--printt({level_data.media_type,level_data.level,level_data.focus})
				if level_data.has_branches and level_data.branches[1].media_type=='map' then
					level_data.branches[1].focus = handler_mapa('start', level_data.W, level_data.H)
				else
					draw_canvas(level_data)
				end
			end
		else
			main_menu_handler(evt.key)
		end
		--printt({'Level,focus',level_data.level,level_data.focus})
	end
end

event.register(lua_event_handler)