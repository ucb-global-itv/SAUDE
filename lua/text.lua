--[[ @doc Function to return a table with strings from 'text'.
The separation of the string into table elements is done
through the \n symbol. 
	Input: text - string to be separated
	Outputs: table with separated strings, based on \n]]
function separateText(text)
	separate_text = {}
	j = 1
	k = 1
	while j do
		j = text:find('\n')
		if not j then
			separate_text[k] = text
		else
			separate_text[k] = text:sub(1,j-1)
			k = k+1
			text = text:sub(j+1,-1)
		end
	end
	return separate_text
end

--[[ @doc Function to find words starting from the 
position 'first_index' in the string 'str'. If the 
character at position 'first_index' is not a valid
letter, or if no words are found, the function
returns nil. Otherwise, the function returns the
position of the word's last letter
	Input: str - string where to find words
	Input: first_index - position in 'str' to start looking
	Output: position of the word's last letter, or nil
	if a word is not found starting from 'first_index']]
function findWord(str,first_index)
	-- local escape = '\n\b\t\r\f\a\v\\\'\"'
	local letras = 'aeiouAEIOUãáàâéêíóôõúÃÁÀÂÉÊÍÓÔÕÚbcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZçÇ'
	local j = first_index
	
	if j>1 and str:sub(j-1,j-1)=='\\' then return nil end --------escape:find(str:sub(j-1,j-1),1,true) then return nil end
	
	while j<=str:len() and letras:find(str:sub(j,j),1,true) do
		j = j+1
	end
	if j==nil or j==first_index then return nil
	else return j-1 end
end

--[[ Function to return a table with the syllables
of the word in the string 'palavra'. Works for the
portuguese language.
	Input: palavra - string containing a word in Portuguese
	Outputs: table with the syllables in 'palavra']]
function separarSilabasPalavra(palavra)
	--[[ Syllable-separation rules in Portuguese:
	==> 1. Vowel / consonant+vowel
	==> 2. Vowel+consonant / consonant+vowel
	Consonant-separation exceptions:
	==> 1. One of the letters 'bcdfgptv' followed by 'l' or 'r'
	==> 2. One of the letters 'cln' followed by 'h']]
	local vogais = 'aeiouyAEIOUY'
	local consoantes = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXZ'
	local acentos = 'ãáàâéêíóôõúÃÁÀÂÉÊÍÓÔÕÚ'
	local ccedil = 'çÇ'
	local grupos = {'bcdfgptvBCDFGPTV', 'clnCLN', 'lrLR', 'hH'}
	local silabas = {}
	
	--[[ @doc Vowels with accents are represented by two chars,
	but we only need the second char to separate syllables, because
	the first char represents the accent ]] 
	for j=2,acentos:len(),2 do
		vogais = vogais .. acentos:sub(j,j)
	end
	-- @doc Same problem with ç and Ç
	consoantes = consoantes .. ccedil:sub(2,2) .. ccedil:sub(4,4)
	
	--[[ @doc 'j[1]' and 'j[2]' will receive positions of occurrences
	of vowels in sequence]]
	local j={}
	--[[ @doc grupos_pos[1], grupos_pos[2], grupos_pos[3] and grupos_pos[4]
	will receive occurrences of the consonant groups, 'grupos[]']]
	local grupos_pos={}
	-- @doc 'i' will be the index that walks through the input string, 'palavra'
	local i=1
	while i<=palavra:len() do
		--[[ @doc Put position of next vowel in j[1]
		If no vowel was found, add syllable and end function]]
		j[1] = palavra:find('[' .. vogais .. ']', i)
		if j[1]==nil or j[1]==palavra:len() then
			table.insert(silabas,palavra:sub(i,palavra:len()))
			return silabas
		end
		--[[ @doc Put position of vowel next to j[1] in j[2]
		If no vowel was found, add syllable and end function]]
		j[2] = palavra:find('[' .. vogais .. ']', j[1]+1)
		if j[2]==nil then
			table.insert(silabas,palavra:sub(i,palavra:len()))
			return silabas
		end
		--[[ @doc If two vowels were found, check which 
		syllable-separation rule must be followed.
		Get string between j[1] and j[2], and count the
		number of consonants]]
		str = palavra:sub(j[1]+1,j[2]-1)
		_,c = str:gsub('[' .. consoantes .. ']','')
		-- @doc If there are no consonants, put everything in syllable
		if c==0 then
			table.insert(silabas,palavra:sub(i,j[2]))
			i = j[2]+1
		-- @doc If there is one consonant, rule 1 must be followed
		elseif c==1 then
			table.insert(silabas,palavra:sub(i,j[1]))
			i = j[1]+1
		-- @doc If there is more than one consonant, check for consonant-separation exceptions
		else
			for k=1,4 do
				grupos_pos[k] = str:find('[' .. grupos[k] .. ']')
			end
			-- @doc Consonant-separation exceptions number 1
			if grupos_pos[1]~=nil and grupos_pos[3]~=nil and grupos_pos[1]<grupos_pos[3] then
				table.insert(silabas,palavra:sub(i,j[1]))
				i = j[1]+1
			-- @doc Consonant-separation exceptions number 2
			elseif grupos_pos[2]~=nil and grupos_pos[4]~=nil and grupos_pos[2]<grupos_pos[4] then
				table.insert(silabas,palavra:sub(i,j[1]))
				i = j[1]+1
			-- @doc If there are no consonant-separation exceptions, rule 2 must be followed
			else
				cons = palavra:find('[' .. consoantes .. ']', j[1]+1)
				table.insert(silabas,palavra:sub(i,cons))
				i = cons+1
			end
		end
	end
	return silabas
end

--[[ Function to look for words in string 'texto', and separate
each word's syllables. Works for the portuguese language.
	Input: texto - string containing a text in Portuguese
	Outputs: table with each word - palavras[].palavra -
	and its syllables - palavras[].silabas[]      ]]
function separarSilabasTexto(texto)
	local silabas = {}
	local pontuacao_antes  = ':\'\"([{<'
	local pontuacao_depois = '.,;!?)]}>'
	local outros = '0123456789/\\@#$%*-_|'
	local i = 1
	local j = 0
	local prefix = ''
	while i<=texto:len() do
		j = findWord(texto,i)
		if j~= nil then
			s = separarSilabasPalavra(texto:sub(i,j))
			table.insert(silabas,prefix .. s[1])
			for k=2,#s do
				table.insert(silabas,s[k])
			end
			i=j+1
		else
			c = texto:sub(i,i)
			if pontuacao_depois:find(c,1,true) then
				silabas[#silabas] = silabas[#silabas] .. c
				prefix=''
			elseif pontuacao_antes:find(c,1,true) then prefix = c
			elseif c==' ' then
				table.insert(silabas,c)
				prefix=''
			else
				table.insert(silabas,prefix .. c)
				prefix=''
			end
			i=i+1
		end
	end
	return silabas
end

--[[ Function to look for words in string 'texto', and separate
each word's syllables. Works for the portuguese language.
	Input: texto - string containing a text in Portuguese
	Outputs: table with each word - palavras[].palavra -
	and its syllables - palavras[].silabas[]      
function separarSilabasTexto(texto)
	local palavras = {}
	local numeros = '0123456789'
	local pontuacao_antes  = ':\'\"([{<'
	local pontuacao_depois = '.,;!?)]}>'
	local outros = '/\\@#$%*-_|'
	local i = 1
	local p = 1
	local j = 0
	while i<=texto:len() do
		j = findWord(texto,i)
		if j~= nil then
			palavras[p] = {}
			palavras[p].palavra = texto:sub(i,j)
			palavras[p].silabas = separarSilabasPalavra(palavras[p].palavra)
			i=j+1
			p=p+1
		else
			i=i+1
		end
	end
	return palavras
end]]

--[[
function removeExtraSpaces(text)
	L = text:len()+1
	while text:len()<L do
		L = text:len()
		text = text:gsub('  ',' ')
	end
	return text
end
]]
