allHtmlTableAnalysis = {}

-- Hemodialysis equipment search
htmlTA = {}
htmlTA.url = 'cnes.datasus.gov.br/Mod_Ind_Equipamentos_Listar.asp?VCod_Equip=77&VTipo_Equip=6&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','Em_uso','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' hemodialysis machines\n'}
htmlTA.concat[3] = {t_ind=5,conc=' active\n'}
htmlTA.subs = {}
htmlTA.subs[1] = {t_ind=6,inputs={'S','N'}, outputs={'Supports SUS.','Does not support SUS.'}}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5,6}
allHtmlTableAnalysis['Equip_Hemo'] = htmlTA

-- Clinical obstetrics search
htmlTA = {}
htmlTA.url = 'cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=43&VTipo_Leito=4&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' clinical obstetrics beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['ClinObst'] = htmlTA

-- Surgical obstetrics search
htmlTA = {}
htmlTA.url = 'cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=10&VTipo_Leito=4&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' surgical obstetrics beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['SurgObst'] = htmlTA

-- Newborn screening search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=139&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['NewBScr'] = htmlTA

-- High-risk-pregnancy reference hospitals search
htmlTA = {}
htmlTA.url = 'cnes.datasus.gov.br/Mod_Ind_Habilitacoes_Listar.asp?VTipo=1402&VListar=1&VEstado=15&VMun=&VComp=&VContador=1&VTitulo=H'
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'UF','CNES','Estabelecimento','Competencia_inicial','Competencia_final',
								'Leitos_SUS','CNPJ_Proprio','CNPJ_Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=3,conc='\n'}
htmlTA.concat[2] = {t_ind=6,conc=' SUS beds'}
htmlTA.subs = {}
htmlTA.main_search_ind = 9
htmlTA.info_search_ind = {3,6}
allHtmlTableAnalysis['HRPregn'] = htmlTA

-- Natal UTI I search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=80&VTipo_Leito=3&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['Natal_UTI_I'] = htmlTA

-- Natal UTI II search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=81&VTipo_Leito=3&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['Natal_UTI_II'] = htmlTA

-- Natal UTI III search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=82&VTipo_Leito=3&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['Natal_UTI_III'] = htmlTA

-- Child-friendly hospital search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Habilitacoes_Listar.asp?VTipo=1404&VListar=1&VEstado=15&VMun=&VComp=&VContador=11&VTitulo=H'
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'UF','CNES','Estabelecimento','Competencia_inicial','Competencia_final',
						'Leitos_SUS','CNPJ_Proprio','CNPJ_Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=3,conc='\n'}
htmlTA.concat[2] = {t_ind=6,conc=' SUS beds'}
htmlTA.subs = {}
htmlTA.main_search_ind = 9
htmlTA.info_search_ind = {3,6}
allHtmlTableAnalysis['ChildHosp'] = htmlTA

-- Clinical pediatrics search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=45&VTipo_Leito=5&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['ClinPedi'] = htmlTA

-- Surgical pediatrics search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=68&VTipo_Leito=5&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['SurgPedi'] = htmlTA

-- Child UTI I search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=77&VTipo_Leito=3&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['Child_UTI_I'] = htmlTA

-- Child UTI II search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=78&VTipo_Leito=3&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['Child_UTI_II'] = htmlTA

-- Child UTI III search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Leitos_Listar.asp?VCod_Leito=79&VTipo_Leito=3&VListar=1&VEstado=15&VMun=&VComp='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'CNES','Estabelecimento','Municipio','Existentes','SUS'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=2,conc='\n'}
htmlTA.concat[2] = {t_ind=4,conc=' beds\n'}
htmlTA.concat[3] = {t_ind=5,conc=' from SUS'}
htmlTA.subs = {}
htmlTA.main_search_ind = 3
htmlTA.info_search_ind = {2,4,5}
allHtmlTableAnalysis['Child_UTI_III'] = htmlTA

-- Obesity-attention service search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=127&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['ObeseAtten'] = htmlTA

-- High-complexity assistance unit for the obese patient search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Habilitacoes_Listar.asp?VTipo=0202&VListar=1&VEstado=15&VMun=&VComp=&VContador=19&VTitulo=H'
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'UF','CNES','Estabelecimento','Competencia_inicial','Competencia_final',
						'Leitos_SUS','CNPJ_Proprio','CNPJ_Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=3,conc='\n'}
htmlTA.concat[2] = {t_ind=6,conc=' SUS beds'}
htmlTA.subs = {}
htmlTA.main_search_ind = 9
htmlTA.info_search_ind = {3,6}
allHtmlTableAnalysis['ObeseAsst'] = htmlTA

-- Transplants search
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=149&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['Transp'] = htmlTA

-- Pharmacy
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=125&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['Pharma'] = htmlTA

-- Mobile emergency care service (SAMU)
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=103&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['SAMU'] = htmlTA

-- Home care
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=113&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['HomeCare'] = htmlTA

-- Psychosocial care
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=115&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['PsyCare'] = htmlTA

-- Philanthropic hospital
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Habilitacoes_Listar.asp?VTipo=6001&VListar=1&VEstado=15&VMun=&VComp=&VContador=11&VTitulo=F'
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-<'}
htmlTA.searches = {'UF','CNES','Estabelecimento','Competencia_inicial','Competencia_final',
						'Leitos_SUS','CNPJ_Proprio','CNPJ_Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.concat[1] = {t_ind=3,conc='\n'}
htmlTA.concat[2] = {t_ind=6,conc=' SUS beds'}
htmlTA.subs = {}
htmlTA.main_search_ind = 9
htmlTA.info_search_ind = {3,6}
allHtmlTableAnalysis['PhiloHosp'] = htmlTA

-- Complementary and integrative practices
htmlTA = {}
htmlTA.url = 'http://cnes.datasus.gov.br/Mod_Ind_Especialidades_Listar.asp?VTipo=134&VListar=1&VEstado=15&VMun=&VComp=&VTerc=&VServico=&VClassificacao=&VAmbu=&VAmbuSUS=&VHosp=&VHospSus='
htmlTA.delims = {"<font size='1' color='#003366' face='verdana,arial'>","</font>",'>.-\r'}
htmlTA.searches = {'Estabelecimento','CNPJ','CNPJ Mantenedora','Municipio'}
htmlTA.concat = {}
htmlTA.subs = {}
--htmlTA.subs[1] = {t_ind=1,inputs={'\n'}, outputs={''}}
htmlTA.main_search_ind = 4
htmlTA.info_search_ind = {1}
allHtmlTableAnalysis['CompIntPract'] = htmlTA