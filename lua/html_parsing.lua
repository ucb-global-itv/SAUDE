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

function htmlToTable(html_body, html_delimiters)
	est_info = {}
	i = {1,1}
	j = {1,1}
	k = html_body:find(html_delimiters[1].str_start,j[2],true)
	while k~=nil do
		cur_search = {}
		for k=1,#html_delimiters do
			cur_delim = html_delimiters[k]
			i[1],j[1] = html_body:find(cur_delim.str_start,j[2]+1,true)
			i[2],j[2] = html_body:find(cur_delim.str_end,  j[1],true)
			cur_search[cur_delim.field_name] = html_body:sub(j[1]+1,i[2]-1)
		end
		table.insert(est_info, cur_search)
		k = html_body:find(html_delimiters[1].str_start,j[2]+1,true)
	end
	return est_info
end

function tableValuePrefix(t, field_name, prefix_value)
	for j=1,#t do
		t[j][field_name] = prefix_value .. t[j][field_name]
	end
end

function tableValueSufix(t, field_name, sufix_value)
	for j=1,#t do
		t[j][field_name] = t[j][field_name] .. sufix_value
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

function tableToNodes(t, node_value, branches_values, sub_branches_values, sub_branch_type)
	if #t > 0 then
		search_tree = {}
		if node_value:len()==0 then
			for k=1,#t do
				cur_branch = ''
				for j=1,#branches_values do
					cur_branch = cur_branch .. t[k][branches_values[j]]
				end
				if #sub_branches_values > 0 then
					table.insert(search_tree,create_node(cur_branch,'txt'))
					if sub_branch_type=='qrcode' then
						for j=1,#sub_branches_values do
							cur_media = t[k][sub_branches_values[j] ]
							jj = cur_media:find('!',1,true)
							table.insert(search_tree, create_node(cur_media:sub(1,jj-1), 'txt'))
							table.insert(search_tree, create_node(cur_media:sub(jj+1,-1), 'qrcode'))
						end
					else
						for j=1,#sub_branches_values do
							table.insert(search_tree, create_node(t[k][sub_branches_values[j] ], sub_branch_type))
						end
					end
					--cur_sub_branch = {}
					--for j=1,#sub_branches_values do
					--	table.insert(cur_sub_branch, create_node(t[k][sub_branches_values[j] ], sub_branch_type))
					--end
					--search_tree = {create_node(cur_branch,'txt',1,cur_sub_branch)}
				else
					search_tree = {create_node(cur_branch,'txt')}
				end
			end
		else
			sortByField(t,node_value)
			for k=1,#t do
				kk = find_field_value(search_tree, 'media', t[k][node_value])
				if kk == 0 then
					table.insert(search_tree,create_node(t[k][node_value],'txt',1,{}))
					kk = #search_tree
				end
				cur_branch = ''
				for j=1,#branches_values do
					cur_branch = cur_branch .. t[k][branches_values[j]]
				end
				if #sub_branches_values > 0 then
					cur_sub_branch = {}
					for j=1,#sub_branches_values do
						table.insert(cur_sub_branch, create_node(t[k][sub_branches_values[j] ], sub_branch_type))
					end
					table.insert(search_tree[kk].branches,
						create_node(cur_branch,'txt',1,cur_sub_branch))
				else
					table.insert(search_tree[kk].branches,create_node(cur_branch,'txt'))
				end
			end
		end
	else
		search_tree = {create_node('No information available','txt')}
	end
	return search_tree
end

function htmlOptions(url)
	if url:find('Mod_Ind_Leitos_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {}
		htmlTA.delims[1] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNES"}
		htmlTA.delims[2] = {str_start="VCo_Unidade=", str_end="&VListar=", field_name = "Estab_Num"}
		htmlTA.delims[3] = {str_start='">', str_end='</a>', field_name = "Estabelecimento"}
		htmlTA.delims[4] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Municipio"}
		htmlTA.delims[5] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Existentes"}
		htmlTA.delims[6] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "SUS"}
		htmlTA.prefix = {}
		htmlTA.prefix[1] = {f_name="Estab_Num",add='http://cnes.datasus.gov.br/Exibe_Ficha_Estabelecimento.asp?VCo_Unidade='}
		htmlTA.sufix = {}
		htmlTA.sufix[1] = {f_name="Estab_Num",add='&VListar=1&VEstado=15&VMun='}
		htmlTA.sufix[2] = {f_name="Estabelecimento",add='\n'}
		htmlTA.sufix[3] = {f_name="Existentes",add=' beds\n'}
		htmlTA.sufix[4] = {f_name="SUS",add=' from SUS'}
		htmlTA.subs = {}
		htmlTA.node_ind = "Municipio"
		htmlTA.branch_ind = {"Estabelecimento","Existentes","SUS"}
		htmlTA.sub_branch_ind = {"Estab_Num"}
		htmlTA.sub_branch_type = 'url'
		return htmlTA
	elseif url:find('Mod_Ind_Habilitacoes_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {}
		htmlTA.delims[1]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "UF"}
		htmlTA.delims[2]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNES"}
		htmlTA.delims[3]  = {str_start="VCo_Unidade=", str_end="&VListar=", field_name = "Estab_Num"}
		htmlTA.delims[4]  = {str_start='">', str_end='</a>', field_name = "Estabelecimento"}
		htmlTA.delims[5]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Competencia_inicial"}
		htmlTA.delims[6]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Competencia_final"}
		htmlTA.delims[7]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Leitos_SUS"}
		htmlTA.delims[8]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNPJ_Proprio"}
		htmlTA.delims[9]  = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNPJ_Mantenedora"}
		htmlTA.delims[10] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Municipio"}
		htmlTA.prefix = {}
		htmlTA.prefix[1] = {f_name="Estab_Num",add='http://cnes.datasus.gov.br/Exibe_Ficha_Estabelecimento.asp?VCo_Unidade='}
		htmlTA.sufix = {}
		htmlTA.sufix[1] = {f_name="Estab_Num",add='&VListar=1&VEstado=15&VMun='}
		htmlTA.sufix[2] = {f_name="Estabelecimento",add='\n'}
		htmlTA.sufix[3] = {f_name="Leitos_SUS",add=' SUS beds'}
		htmlTA.subs = {}
		htmlTA.node_ind = "Municipio"
		htmlTA.branch_ind = {"Estabelecimento","Leitos_SUS"}
		htmlTA.sub_branch_ind = {"Estab_Num"}
		htmlTA.sub_branch_type = 'url'
		return htmlTA
	elseif url:find('Mod_Ind_Especialidades_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {}
		htmlTA.delims[1] = {str_start="VCo_Unidade=", str_end="&VListar=", field_name = "Estab_Num"}
		htmlTA.delims[2] = {str_start='">', str_end='\r', field_name = "Estabelecimento"}
		htmlTA.delims[3] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNPJ"}
		htmlTA.delims[4] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNPJ_Mantenedora"}
		htmlTA.delims[5] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Municipio"}
		htmlTA.prefix = {}
		htmlTA.prefix[1] = {f_name="Estab_Num",add='http://cnes.datasus.gov.br/Exibe_Ficha_Estabelecimento.asp?VCo_Unidade='}
		htmlTA.sufix = {}
		htmlTA.sufix[1] = {f_name="Estab_Num",add='&VListar=1&VEstado=15&VMun='}
		htmlTA.subs = {}
		htmlTA.node_ind = "Municipio"
		htmlTA.branch_ind = {"Estabelecimento"}
		htmlTA.sub_branch_ind = {"Estab_Num"}
		htmlTA.sub_branch_type = 'url'
		return htmlTA
	elseif url:find('Mod_Ind_Equipamentos_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {}
		htmlTA.delims[1] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "CNES"}
		htmlTA.delims[2] = {str_start="VCo_Unidade=", str_end="&VListar=", field_name = "Estab_Num"}
		htmlTA.delims[3] = {str_start='">', str_end='</a>', field_name = "Estabelecimento"}
		htmlTA.delims[4] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Municipio"}
		htmlTA.delims[5] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Existentes"}
		htmlTA.delims[6] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "Em_uso"}
		htmlTA.delims[7] = {str_start="<font size='1' color='#003366' face='verdana,arial'>", str_end="</font>", field_name = "SUS"}
		htmlTA.prefix = {}
		htmlTA.prefix[1] = {f_name="Estab_Num",add='http://cnes.datasus.gov.br/Exibe_Ficha_Estabelecimento.asp?VCo_Unidade='}
		htmlTA.sufix = {}
		htmlTA.sufix[1] = {f_name="Estab_Num",add='&VListar=1&VEstado=15&VMun='}
		htmlTA.sufix[2] = {f_name="Estabelecimento",add='\n'}
		htmlTA.sufix[3] = {f_name="Existentes",add=' machines\n'}
		htmlTA.sufix[4] = {f_name="Em_uso",add=' active\n'}
		htmlTA.subs = {}
		htmlTA.subs[1] = {f_name="SUS",inputs={'S','N'}, outputs={'Supports SUS.','Does not support SUS.'}}
		htmlTA.node_ind = "Municipio"
		htmlTA.branch_ind = {"Estabelecimento","Existentes","Em_uso","SUS"}
		htmlTA.sub_branch_ind = {"Estab_Num"}
		htmlTA.sub_branch_type = 'url'
		return htmlTA
	elseif url:find('Exibe_Ficha_Estabelecimento.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {}
		htmlTA.delims[1] = {str_start='<Input type=hidden name="Cod_Unidade" value="', str_end='">', field_name = 'Full_Site'}
		htmlTA.delims[2] = {str_start='onClick="Mostrar(\'', str_end='\')">', field_name = 'Geo'}
		if false then 
			htmlTA.delims[3] = {str_start=[[<tr>
			  <td bgcolor="#cccccc" colspan=3><font size=1 face=Verdana,arial color=#003366><b>Nome:</b></font></td>
			  <td bgcolor="#cccccc"><font size=1 face=Verdana,arial color=#003366><b>CNES:</b></font></td>
			  <td bgcolor="#cccccc"><font size=1 face=Verdana,arial color=#003366><b>CNPJ:</b></font></td>
			</tr>
			<tr>
			  <td colspan=3><font size=1 face=Verdana,arial color=#003366>]], str_end="</font></td>", field_name = "Nome"}
			htmlTA.delims[4] = {str_start=[[<tr>
			  <td bgcolor="#cccccc" colspan=3><font size=1 face=Verdana,arial color=#003366><b>Logradouro:</b></font></td>
			  <td bgcolor="#cccccc" colspan=1><font size=1 face=Verdana,arial color=#003366><b>Número:</b></font></td>
			  <td bgcolor="#cccccc" colspan=1><font size=1 face=Verdana,arial color=#003366><b>Telefone:</b></font></td>
			</tr>
			<tr>
			  <td colspan=3><font size=1 face=Verdana,arial color=#003366>]], str_end="</font></td>", field_name = "Logradouro"}
		end
        htmlTA.delims[3]  = {str_start='<td colspan=3><font size=1 face=Verdana,arial color=#003366>', str_end="</font></td>", field_name = "Nome"}
        htmlTA.delims[4]  = {str_start='<td colspan=3><font size=1 face=Verdana,arial color=#003366>', str_end="</font></td>", field_name = "Nome_Empresarial"}
		htmlTA.delims[5]  = {str_start='<td colspan=3><font size=1 face=Verdana,arial color=#003366>', str_end="</font></td>", field_name = "Logradouro"}
		htmlTA.delims[6]  = {str_start="<td colspan=1><font size=1 face=Verdana,arial color=#003366>", str_end="</font></td>", field_name = "Numero"}
		htmlTA.delims[7]  = {str_start="<td colspan=1><font size=1 face=Verdana,arial color=#003366>", str_end="</font></td>", field_name = "Telefone"}
		htmlTA.delims[8]  = {str_start="<td><font size=1 face=Verdana,arial color=#003366>", str_end="</font></td>", field_name = "Complemento"}
		htmlTA.delims[9]  = {str_start="<td><font size=1 face=Verdana,arial color=#003366>", str_end="</font></td>", field_name = "Bairro"}
		htmlTA.delims[10] = {str_start="<td><font size=1 face=Verdana,arial color=#003366>", str_end="</font></td>", field_name = "CEP"}
		htmlTA.delims[11] = {str_start="<font color='#003366' face=verdana,arial size=1>", str_end="- IBGE", field_name = "Municipio"}
		htmlTA.prefix = {}
		htmlTA.prefix[1] = {f_name="Full_Site",add='Website!http://cnes.datasus.gov.br/Cabecalho_Reduzido_Competencia.asp?VCod_Unidade='}
		htmlTA.prefix[2] = {f_name="Geo",add='Map!http://cnes.datasus.gov.br/geo.asp?VUnidade='}
		htmlTA.prefix[3] = {f_name="Telefone",add='Tel.: '}
		htmlTA.prefix[4] = {f_name="CEP",add='CEP: '}
		htmlTA.prefix[5] = {f_name="Bairro",add='Bairro: '}
		htmlTA.sufix = {}
		htmlTA.sufix[1] = {f_name="Nome",add='\n'}
		htmlTA.sufix[2] = {f_name="Logradouro",add=', '}
		htmlTA.sufix[3] = {f_name="Numero",add='\n'}
		htmlTA.sufix[4] = {f_name="Telefone",add='\n'}
		htmlTA.sufix[5] = {f_name="Bairro",add=', '}
		htmlTA.sufix[6] = {f_name="CEP",add='\n'}
		htmlTA.sufix[7] = {f_name="Municipio",add='\n'}
		htmlTA.subs = {}
		htmlTA.node_ind = ""
		htmlTA.branch_ind = {"Nome","Logradouro","Numero","Bairro","Municipio","Telefone","CEP"}
		htmlTA.sub_branch_ind = {"Full_Site","Geo"}
		htmlTA.sub_branch_type = 'qrcode'
		return htmlTA
	end
end

--[[
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
				cur_search[html_fields[k] ] = cur_string
			else
				cur_search[html_fields[k] ] = sub_string:sub(2,-2)
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
				cur_branch = cur_branch .. t[k][branches_values[j] ]
				--if j<#branches_values then cur_branch = cur_branch .. '\n' end
			end
			table.insert(search_tree[kk].branches,create_node(cur_branch,'txt'))
		end
	else
		search_tree = {create_node('No information available','txt')}
	end
	return search_tree
end

function htmlOptions(url)
	if url:find('Mod_Ind_Leitos_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
		htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
		htmlTA.concat = {}
		htmlTA.concat[1] = {t_ind=2,conc='\n'}
		htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
		htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
		htmlTA.subs = {}
		htmlTA.main_search_ind = 3
		htmlTA.info_search_ind = {2,4,5}
		return htmlTA
	elseif url:find('Mod_Ind_Habilitacoes_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
		htmlTA.searches = {'UF','CNES','Estabelecimento','Competencia_inicial','Competencia_final',
										'Leitos_SUS','CNPJ_Proprio','CNPJ_Mantenedora','Municipio'}
		htmlTA.concat = {}
		htmlTA.concat[1] = {t_ind=3,conc='\n'}
		htmlTA.concat[2] = {t_ind=6,conc=' SUS beds'}
		htmlTA.subs = {}
		htmlTA.main_search_ind = 9
		htmlTA.info_search_ind = {3,6}
		return htmlTA
	elseif url:find('Mod_Ind_Especialidades_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
		htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
		htmlTA.concat = {}
		htmlTA.subs = {}
		--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
		htmlTA.main_search_ind = 4
		htmlTA.info_search_ind = {1}
		return htmlTA
	elseif url:find('Mod_Ind_Equipamentos_Listar.asp') then
		htmlTA = {}
		htmlTA.url = url
		htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
		htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','Em_uso','SUS'}
		htmlTA.concat = {}
		htmlTA.concat[1] = {t_ind=2,conc='\n'}
		htmlTA.concat[2] = {t_ind=4,conc=' machines\n'}
		htmlTA.concat[3] = {t_ind=5,conc=' active\n'}
		htmlTA.subs = {}
		htmlTA.subs[1] = {t_ind=6,inputs={'S','N'}, outputs={'Supports SUS.','Does not support SUS.'}}
		htmlTA.main_search_ind = 3
		htmlTA.info_search_ind = {2,4,5,6}
		return htmlTA
	end
end
]]