mapX, mapY = 19, 36
micro = {}

-- Imagem do mapa do Pará
local img = canvas:new('./img_v1/maps/Para.png')
dxMap, dyMap = img:attrSize()
map = { img=img, x=mapX, y=mapY, dx=dxMap, dy=dyMap }

-- Tabela referente a microrregão de Tucurui
local img = canvas:new('./img_v1/maps/Para_Micro_Tucurui.png')
local dx, dy = img:attrSize()
local text = "Breu Branco\nItupiranga\nJacundá\nNova Ipixuna\nNovo Repartimento\nTucuruí"
micro[1] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=148, txtY=140,
up = 2, down = 3, right = 4, left = 5}

-- Tabela referente a microrregão de Cameta
local img = canvas:new('./img_v1/maps/Para_Micro_Cameta.png')
local dx, dy = img:attrSize()
local text = "Abaetetuba\nBaião\nCametá\nIgarapé-Miri\nLimoeiro do Ajuru\nMocajuba\nOeiras do Pará"
micro[2] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=128, txtY=190,
up = 14, down = 1, right = 7, left = 8}

-- Tabela referente a microrregão de Maraba
local img = canvas:new('./img_v1/maps/Para_Micro_Maraba.png')
local dx, dy = img:attrSize()
local text = "Brejo Grande do Araguaia\nMarabá\nPalestina do Pará\nSão Domingos do Araguaia\nSão João do Araguaia"
micro[3] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=238, txtY=160,
up = 1, down = 9, right = 3, left = 11}

-- Tabela referente a microrregão de Paragominas
local img = canvas:new('./img_v1/maps/Para_Micro_Paragominas.png')
local dx, dy = img:attrSize()
local text = "Abel Figueiredo\nBom Jesus do Tocantins\nDom Eliseu\nGoianésia do Pará\nParagominas\nRondon do Pará\nUlianópolis"
micro[4] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=148, txtY=190,
up = 12, down = 3, right = 4, left = 1}

-- Tabela referente a microrregão de Altamira
local img = canvas:new('./img_v1/maps/Para_Micro_Altamira.png')
local dx, dy = img:attrSize()
local text = "Altamira\nAnapu\nBrasil Novo\nMedicilândia\nPacajá\nSenador José Porfírio\nUruará\nVitória do Xingu"
micro[5] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=158, txtY=120,
up = 13, down = 5, right = 11, left = 10}

-- Tabela referente a microrregão de Furos de Breves
local img = canvas:new('./img_v1/maps/Para_Micro_FurosdeBreves.png')
local dx, dy = img:attrSize()
local text = "Afuá\nAnajás\nBreves\nCurralinho\nSão Sebastião de Boa Vista"
micro[6] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=178, txtY=300,
up = 6, down = 8, right = 14, left = 8}

-- Tabela referente a microrregão de Tome Açú
local img = canvas:new('./img_v1/maps/Para_Micro_TomeAcu.png')
local dx, dy = img:attrSize()
local text = "Acará\nConcórdia do Pará\nMoju\nTailândia\nTomé-Açu"
micro[7] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=158, txtY=190,
up = 15, down = 4, right = 12, left = 2}

-- Tabela referente a microrregão de Portel
local img = canvas:new('./img_v1/maps/Para_Micro_Portel.png')
local dx, dy = img:attrSize()
local text = "Bagre\nGurupá\nMelgaço\nPortel"
micro[8] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=118, txtY=190,
up = 6, down = 5, right = 2, left = 13}

-- Tabela referente a microrregão de Parauapebas
local img = canvas:new('./img_v1/maps/Para_Micro_Parauapebas.png')
local dx, dy = img:attrSize()
local text = "Água Azul do Norte\nCanaã dos Carajás\nCurionópolis\nEldorado dos Carajás\nParauapebas"
micro[9] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=248, txtY=160,
up = 3, down = 16, right = 9, left = 11}

-- Tabela referente a microrregão de Itaituba
local img = canvas:new('./img_v1/maps/Para_Micro_Itaituba.png')
local dx, dy = img:attrSize()
local text = "Aveiro\nItaituba\nJacareacanga\nNovo Progresso\nRurópolis\nTrairão"
micro[10] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=248, txtY=200,
up = 17, down = 10, right = 5, left = 10}

-- Tabela referente a microrregão de São Felix do Xingu
local img = canvas:new('./img_v1/maps/Para_Micro_SaoFelixdoXingu.png')
local dx, dy = img:attrSize()
local text = "Bannach\nCumaru do Norte\nOurilândia do Norte\nSão Félix do Xingu\nTucumã"
micro[11] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=248, txtY=150,
up = 5, down = 11, right = 16, left = 5}

-- Tabela referente a microrregão de Guama
local img = canvas:new('./img_v1/maps/Para_Micro_Guama.png')
local dx, dy = img:attrSize()
local text = "Aurora do Pará\nCachoeira do Piriá\nCapitão Poço\nGarrafão do Norte\nIpixuna do Pará\nIrituia\nMãe do Rio\nNova Esperança do Piriá\nOurém\nSanta Luzia do Pará\nSão Domingos do Capim\nSão Miguel do Guamá\nViseu"
micro[12] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=168, txtY=220,
up = 21, down = 4, right = 12, left = 7}

-- Tabela referente a microrregão de Almeirim
local img = canvas:new('./img_v1/maps/Para_Micro_Almeirim.png')
local dx, dy = img:attrSize()
local text = "Almeirim\nPorto de Moz"
micro[13] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=308, txtY=200,
up = 13, down = 5, right = 8, left = 18}

-- Tabela referente a microrregão de Arari
local img = canvas:new('./img_v1/maps/Para_Micro_Arari.png')
local dx, dy = img:attrSize()
local text = "Cachoeira do Arari\nChaves\nMuaná\nPonta de Pedras\nSalvaterra\nSanta Cruz do Arari\nSoure"
micro[14] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=128, txtY=190,
up = 14, down = 2, right = 19, left = 6}

-- Tabela referente a microrregão de Belem
local img = canvas:new('./img_v1/maps/Para_Micro_Belem.png')
local dx, dy = img:attrSize()
local text = "Ananindeua\nBarcarena\nBelém\nBenevides\nMarituba\nSanta Bárbara do Pará"
micro[15] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=158, txtY=230,
up = 14, down = 7, right = 20, left = 14}

-- Tabela referente a microrregão de Redenção
local img = canvas:new('./img_v1/maps/Para_Micro_Redencao.png')
local dx, dy = img:attrSize()
local text = "Pau-d\'Arco\nPiçarra\nRedenção\nRio Maria\nSapucaia\nSão Geraldo do Araguaia\nXinguara" -- FICAR ATENTO AO 'Arco
micro[16] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=248, txtY=150,
up = 9, down = 22, right = 16, left = 11}

-- Tabela referente a microrregão de Obidos
local img = canvas:new('./img_v1/maps/Para_Micro_Obidos.png')
local dx, dy = img:attrSize()
local text = "Faro\nJuruti\nÓbidos\nOriximiná\nTerra Santa"
micro[17] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=248, txtY=200,
up = 17, down = 10, right = 18, left = 17}

-- Tabela referente a microrregão de Santarem
local img = canvas:new('./img_v1/maps/Para_Micro_Santarem.png')
local dx, dy = img:attrSize()
local text = "Alenquer\nBelterra\nCuruá\nMojuí dos Campos\nMonte Alegre\nPlacas\nPrainha\nSantarém"
micro[18] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=308, txtY=200,
up = 18, down = 10, right = 13, left = 17}

-- Tabela referente a microrregão de Salgado
local img = canvas:new('./img_v1/maps/Para_Micro_Salgado.png')
local dx, dy = img:attrSize()
local text = "Colares\nCuruçá\nMagalhães Barata\nMaracanã\nMarapanim\nSalinópolis\nSão Caetano de Odivelas\nSão João da Ponta\nSão João de Pirabas\nTerra Alta\nVigia"
micro[19] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=158, txtY=230,
up = 19, down = 20, right = 21, left = 14}

-- Tabela referente a microrregão de Castanhal
local img = canvas:new('./img_v1/maps/Para_Micro_Castanhal.png')
local dx, dy = img:attrSize()
local text = "Bujaru\nCastanhal\nInhangapi\nSanta Isabel do Pará\nSanto Antônio do Tauá"
micro[20] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=158, txtY=210,
up = 19, down = 7, right = 21, left = 15}

-- Tabela referente a microrregão de Bragantina
local img = canvas:new('./img_v1/maps/Para_Micro_Bragantina.png')
local dx, dy = img:attrSize()
local text = "Augusto Corrêa\nBonito\nBragança\nCapanema\nIgarapé-Açu\nNova Timboteua\nPeixe-Boi\nPrimavera\nQuatipuru\nSanta Maria do Pará\nSantarém Novo\nSão Francisco do Pará\nTracuateua"
micro[21] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=158, txtY=220,
up = 19, down = 12, right = 21, left = 20}

-- Tabela referente a microrregão de Conceicao do Araguaia
local img = canvas:new('./img_v1/maps/Para_Micro_ConceicaodoAraguaia.png')
local dx, dy = img:attrSize()
local text = "Conceição do Araguaia\nFloresta do Araguaia\nSanta Maria das Barreiras\nSantana do Araguaia"
micro[22] = { img=img, x=mapX, y=mapY, dx=dx, dy=dy, text=text, txtX=248, txtY=220,
up = 16, down = 22, right = 22, left = 11}
