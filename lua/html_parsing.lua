require "http"

function sortByField(t,field_name)
	for i=1,#t do
		for j = #t,(i+1),-1 do
			if t[j][field_name] < t[j-1][field_name] then
				dummy = t[j]
				t[j] = t[j-1]
				t[j-1] = dummy
			end
		end
	end
end

function find_field_value(t, field_name, field_value)
	for j = 1,#t do
		if t[j][field_name]==field_value then return j end
	end
	return 0
end

function create_node(media, media_type, focus, branches)
	if not(focus) or not(branches) then
		return {media=media, media_type=media_type}
	else
		return {media=media, media_type=media_type, focus=focus, branches=branches}
	end
end

function htmlToTable(html_body, html_delimiters, html_fields)
	est_info = {}
	i = {1,1}
	j = {1,1}
	k,kk = html_body:find(html_delimiters[1],j[2])
	while k~=nil do
		cur_search = {}
		for k=1,#html_fields do
			i[1],j[1] = html_body:find(html_delimiters[1],j[2]+1)
			i[2],j[2] = html_body:find(html_delimiters[2],j[1])
			cur_string = html_body:sub(j[1]+1,i[2]-1)
			sub_string = cur_string:match(html_delimiters[3])
			if sub_string == nil then
				cur_search[html_fields[k]] = cur_string
			else
				cur_search[html_fields[k]] = sub_string:sub(2,-2)
			end
		end
		table.insert(est_info, cur_search)
		k,kk = html_body:find(html_delimiters[1],j[2]+1)
	end
	return est_info
end

function tableValueConcat(t, field_name, value_concat)
	for j=1,#t do
		t[j][field_name] = t[j][field_name] .. value_concat
	end
end

function tableValueSubs(t, field_name, field_inputs, field_outputs)
	for j=1,#t do
		for k = 1,#field_inputs do
			if t[j][field_name] == field_inputs[k] then
				t[j][field_name] = field_outputs[k]
			end
		end
	end
end

function tableToNodes(t, media_search_value, branches_values)
	if #t > 0 then
		search_tree = {}
		sortByField(t,media_search_value)
		for k=1,#t do
			kk = find_field_value(search_tree, 'media', t[k][media_search_value])
			if kk == 0 then
				table.insert(search_tree,create_node(t[k][media_search_value],'txt',1,{}))
				kk = #search_tree
			end
			cur_branch = ''
			for j=1,#branches_values do
				cur_branch = cur_branch .. t[k][branches_values[j]]
				--if j<#branches_values then cur_branch = cur_branch .. '\n' end
			end
			table.insert(search_tree[kk].branches,create_node(cur_branch,'txt'))
		end
	else
		search_tree = {create_node('No information available','txt')}
	end
	return search_tree
end