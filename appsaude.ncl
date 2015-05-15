<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="focus" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile
http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd">
<head>

  <regionBase>

    <region id="mainDevice" width="100%" height="100%">

    	<region id="rText1" left="60%" top="10%" width="16.5%" height="40%" zIndex="0"/>
    	<region id="rText2" left="60%" top="30%" width="16.5%" height="40%" zIndex="0"/>
    	<region id="rText3" left="60%" top="60%" width="16.5%" height="40%" zIndex="0"/>
    	<region id="rVideo"  width="100%" height="100%" zIndex ="0" />

      <region id="rMainMenu" left="0%" top="0%" width="20%" height="100%" zIndex="7"> <!--Regi�o do menu principal com as 3 op��es-->>
      	  <region id="rB1" left="17%" top="25%" width="60%" height="17%" zIndex="7"/> <!--Regi�o do bot�o Desease-->
	      <region id="rB2" left="17%" top="42%" width="60%" height="17%" zIndex="7"/> <!--Regi�o do bot�o Condition-->
	      <region id="rB3" left="17%" top="59%" width="60%" height="17%" zIndex="7"/> <!--Regi�o do bot�o Service-->
	      <region id="rB4" left="3%" top="1%" width="35%" height="10%" zIndex="0"/> <!--Regi�o do bot�o que abre o menu-->
	      <region id="rB5" left="3%" top="90%" width="50%" height="10%" zIndex="7"/> <!--Regi�o do bot�o que fecha o aplicativo-->
	      <region id="rB6" left="3%" top="85%" width="75%" height="10%" zIndex="7"/> <!--Regi�o do bot�o que habilita nova tela-->
	      <region id="rT1" left="6%" top="2%" width="80%" height="15%" zIndex="7"/>
	      <region id="rReturnButton" left="3%" top="90%" width="70%" height="10%" zIndex="7"/>
      </region>

      <region id="rrightColMenu" left="83.5%" top="0" width="16.5%" height="100%" zIndex="7"> <!--Regi�o do menu esquerdo-->
            <region id="rgOpcao1" left="8%" top="5%"  width="70%" height="15%"/> <!--Regi�o do bot�o 1 do menu esquerdo-->
            <region id="rgOpcao2" left="8%" top="20%" width="70%" height="15%"/> <!--Regi�o do bot�o 2 do menu esquerdo-->
            <region id="rgOpcao3" left="8%" top="35%" width="70%" height="15%"/> <!--Regi�o do bot�o 3 do menu esquerdo-->
            <region id="rgOpcao4" left="8%" top="50%" width="70%" height="15%"/> <!--Regi�o do bot�o 4 do menu esquerdo-->
            <region id="rgOpcao5" left="8%" top="65%" width="70%" height="15%"/> <!--Regi�o do bot�o 5 do menu esquerdo-->
      </region>

      <region id="rSubsectionMenu" left="75%" top="0%" width="20%" height="100%" zIndex ="7">
      	<region id="rSubsectionOpt1" right="0%" top="4%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt2" right="0%" top="14%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt3" right="0%" top="24%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt4" right="0%" top="34%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt5" right="0%" top="44%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt6" right="0%" top="54%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt7" right="0%" top="64%" width="40%" height="10%" zIndex ="7"/>
      	<region id="rSubsectionOpt8" right="0%" top="74%" width="40%" height="10%" zIndex ="7"/>
      </region>

      <region id="rBoxes" left="25%" top="0%" width="50%" height="100%">
		<region id="rBoxSymptoms" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxFreeMed" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxGovBene" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxGestDiab" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxHemo" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxChildHemo" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxDiabNeur" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxPrograms" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
		<region id="rBoxOtherIni" right="0%" top="2%" width="60%" height="40%" zIndex ="10"/>
      </region>

      <!--
      <region id="rNewScreen" width="100%" height="100%">
      		<region id="rVideo2"  width="55%" height="55%" left="0%" top="0%" zIndex ="0" />
      		<region id="rTV" left="60%" top="60%" width="40%" height="40%" zIndex="0"/>
      		<region id="rText4"  left="60%" height="40%"  top="60%" width="19%" zIndex ="0"/>
      		<region id="rBackMainMenu" left="3%" top="80%" width="15%" height="15%" zIndex="0"/>
      		<region id="rQRCode" left="25%" top="60%" width="20%" height="35%" zIndex="0"/>
      		<region id="rText4" left="60%" width="40%" height="55%" zIndex="0"/>
      		<region id="rMainMenuBTN" left="3%" top="63%" width="30%" height="40%">
		      	<region id="rBTN1" top="1%" left="1%" width="25%" height="30%"/>
		      	<region id="rBTN2" top="1%" left="30%" width="25%" height="30%"/>
		      	<region id="rBTN3" top="40%" left="1%" width="25%" height="30%"/>
		      	<region id="rBTN4" top="40%" left="30%" width="25%" height="30%"/>
 	        </region>
      </region>
      -->

    </region>
  </regionBase>

  <descriptorBase>

  	<descriptor id="dReturnButton1" region="rReturnButton"/>
	<descriptor id="dReturnButton2" region="rReturnButton"/>
	<descriptor id="dReturnButton3" region="rReturnButton"/>


  	<descriptor id="dText1" region="rText1"/>
  	<descriptor id="dText2" region="rText2"/>
  	<descriptor id="dText3" region="rText3"/>

  	<!--
  	<descriptor id="dNewScreen" region="rNewScreen"/>
  	<descriptor id="dBackMainMenu" region="rBackMainMenu" focusIndex="ixBtnBackMainMenu" />
  	<descriptor id="dQRCode" region="rQRCode"/>
  	<descriptor id="dVideo2" region="rVideo2"/>
  	<descriptor id="dText4" region="rText4"/>

    <descriptor id="dMainMenuBTN" region="rMainMenuBTN">
    	<descriptorParam name="background" value="red"/>
    </descriptor>

    <descriptor id="dBTN1" region="rBTN1" focusIndex="ixBTN1" focusBorderWidth="0"	moveUp="ixBTN3" moveDown="ixBTN3" moveRight="ixBTN2" moveLeft="ixBTN2" focusSrc="img/btndiseasefocus.png" focusSelSrc="img/btndiseasefocus.png"/>
    <descriptor id="dBTN2" region="rBTN2" focusIndex="ixBTN2" focusBorderWidth="0"	moveUp="ixBTN4" moveDown="ixBTN4" moveRight="ixBTN1" moveLeft="ixBTN1" focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btndiseaseselect.png"/>
    <descriptor id="dBTN3" region="rBTN3" focusIndex="ixBTN3" focusBorderWidth="0"	moveUp="ixBTN1" moveDown="ixBTN1" moveRight="ixBTN4" moveLeft="ixBTN4" focusSrc="img/btnservicefocus.png" focusSelSrc="img/btndiseaseselect.png"/>
    <descriptor id="dBTN4" region="rBTN4" focusIndex="ixBTN4" focusBorderWidth="0"	moveUp="ixBTN2" moveDown="ixBTN2" moveRight="ixBTN3" moveLeft="ixBTN3" focusSrc="img/btnOtherIniciativesFocus.png" focusSelSrc="img/btndiseaseselect.png"/>
    -->

	<descriptor id="dVideo" region="rVideo"/>

	<descriptor id="dLateralBar" region="rMainMenu">
    	<descriptorParam name="transparency" value="1"/>
    </descriptor>

    <!--Descritores dos bot�es da subse��o do menu 2-->
    <descriptor id="dSubsectionOpt1" region="rSubsectionOpt1" focusIndex="ixSubsectionOpt1" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt8" moveDown="ixSubsectionOpt2" focusSrc="img/btnSymptomsFocus.png" focusSelSrc="img/btnSymptoms.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt2" region="rSubsectionOpt2" focusIndex="ixSubsectionOpt2" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt1" moveDown="ixSubsectionOpt3" focusSrc="img/btnFreePubMedFocus.png" focusSelSrc="img/btnFreePubMed.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt3" region="rSubsectionOpt3" focusIndex="ixSubsectionOpt3" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt2" moveDown="ixSubsectionOpt4" focusSrc="img/btnGovernmentBeneFocus.png" focusSelSrc="img/btnGovernmentBene.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt4" region="rSubsectionOpt4" focusIndex="ixSubsectionOpt4" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt3" moveDown="ixSubsectionOpt5" focusSrc="img/btnGestacionalDiabetesFocus.png" focusSelSrc="img/btnGestacionalDiabetes.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt5" region="rSubsectionOpt5" focusIndex="ixSubsectionOpt5" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt4" moveDown="ixSubsectionOpt6" focusSrc="img/btnChildrenHemoFocus.png" focusSelSrc="img/btnChildrenHemo.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt6" region="rSubsectionOpt6" focusIndex="ixSubsectionOpt6" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt5" moveDown="ixSubsectionOpt7" focusSrc="img/btnDiabeticNeuroFocus.png" focusSelSrc="img/btnDiabeticNeuro.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt7" region="rSubsectionOpt7" focusIndex="ixSubsectionOpt7" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt6" moveDown="ixSubsectionOpt8" focusSrc="img/btnProgramsFocus.png" focusSelSrc="img/btnPrograms.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dSubsectionOpt8" region="rSubsectionOpt8" focusIndex="ixSubsectionOpt8" focusBorderWidth="0" moveRight="1" moveUp="ixSubsectionOpt7" moveDown="ixSubsectionOpt1" focusSrc="img/btnOtherIniciativesFocus.png" focusSelSrc="img/btnOtherIniciatives.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>


    <!--Descritores das caixas com as descri��es referentes a subse��o-->
    <descriptor id="dBoxSymptoms" region="rBoxSymptoms">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxFreeMed" region="rBoxFreeMed">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxGovBene" region="rBoxGovBene">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxGestDiab" region="rBoxGestDiab">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxHemo" region="rBoxHemo">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxChildHemo" region="rBoxChildHemo">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxDiabNeur" region="rBoxDiabNeur">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxPrograms" region="rBoxPrograms">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
   	<descriptor id="dBoxOtherIni" region="rBoxOtherIni">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>

    <!--Descritores dos bot�es do menu principal com 3 op��es-->
	<descriptor id="dBtStartMenu" 	region="rB4">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
	<descriptor id="dBtStopApp" 	region="rB5">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dBtDisease" 	region="rB1" focusIndex="ixBtDisease" focusBorderWidth="0"	moveUp="ixBtService" moveDown="ixBtCondition" moveRight="1" focusSrc="img/btndiseasefocus.png" focusSelSrc="img/btndiseaseselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dBtCondition" 	region="rB2" focusIndex="ixBtCondition" focusBorderWidth="0" moveUp="ixBtDisease" moveDown="ixBtService" moveRight="1" focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btnconditionselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dBtService" 	region="rB3" focusIndex="ixBtService" focusBorderWidth="0"	moveUp="ixBtCondition" moveDown="ixBtNewScreen" moveRight="1" focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dBtNewScreen" 	region="rB6" focusIndex="ixBtNewScreen" focusBorderWidth="0"	moveUp="ixBtService" moveDown="ixBtDisease" moveRight="1" focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dT1" region="rT1">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>

    <!--Descritores dos bot�es do menu esquerdo com 5 op��es-->
	<descriptor id="dFundoMenu" region="rrightColMenu">
		<descriptorParam name="transparency" value="1"/>
    </descriptor>

 	<descriptor id="dOpcao11" region="rgOpcao1" focusIndex="1" moveDown="2" moveUp="5" moveLeft="ixSubsectionOpt1" focusBorderWidth="0"
 	focusSrc="img/btnDiabetesFocus.png" focusSelSrc="img/btndiseaseselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao12" region="rgOpcao2" focusIndex="2" moveDown="3" moveUp="1" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnHypertensionFocus.png" focusSelSrc="img/btndiseaseselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>

    <!--
    <descriptor id="dOpcao13" region="rgOpcao3" focusIndex="3" moveDown="4" moveUp="2" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btndiseasefocus.png" focusSelSrc="img/btndiseaseselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao14" region="rgOpcao4" focusIndex="4" moveDown="5" moveUp="3" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btndiseasefocus.png" focusSelSrc="img/btndiseaseselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao15" region="rgOpcao5" focusIndex="5" moveDown="1" moveUp="4" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btndiseasefocus.png" focusSelSrc="img/btndiseaseselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    -->

    <descriptor id="dOpcao21" region="rgOpcao1" focusIndex="1" moveDown="2" moveUp="5" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btnconditionselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao22" region="rgOpcao2" focusIndex="2" moveDown="3" moveUp="1" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btnconditionselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao23" region="rgOpcao3" focusIndex="3" moveDown="4" moveUp="2" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btnconditionselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao24" region="rgOpcao4" focusIndex="4" moveDown="5" moveUp="3" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btnconditionselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao25" region="rgOpcao5" focusIndex="5" moveDown="1" moveUp="4" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnconditionfocus.png" focusSelSrc="img/btnconditionselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>

    <descriptor id="dOpcao31" region="rgOpcao1" focusIndex="1" moveDown="2" moveUp="5" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao32" region="rgOpcao2" focusIndex="2" moveDown="3" moveUp="1" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao33" region="rgOpcao3" focusIndex="3" moveDown="4" moveUp="2" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao34" region="rgOpcao4" focusIndex="4" moveDown="5" moveUp="3" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
    <descriptor id="dOpcao35" region="rgOpcao5" focusIndex="5" moveDown="1" moveUp="4" moveLeft="ixBtDisease" focusBorderWidth="0"
    focusSrc="img/btnservicefocus.png" focusSelSrc="img/btnserviceselect.png">
    	<descriptorParam name="transparency" value="0.3"/>
    </descriptor>
  </descriptorBase>

  <connectorBase>
    <causalConnector id="onKeySelectionStartNStopN">
	  <connectorParam name="keyCode" />
	  <simpleCondition role="onSelection" key="$keyCode" />
      <compoundAction operator="seq">
	  	<simpleAction role="start" max="unbounded" qualifier="par"/>
	  	<simpleAction role="stop" max="unbounded" qualifier="par"/>
      </compoundAction>
	 </causalConnector>

	 <causalConnector id="onBeginStart">
      <simpleCondition role="onBegin"/>
      <simpleAction role="start" max="unbounded" qualifier="par"/>
    </causalConnector>

	<causalConnector id="onSelectionStart">
      <simpleCondition role="onSelection"/>
      <simpleAction role="start" max="unbounded" qualifier="par"/>
    </causalConnector>

	<causalConnector id="onSelectionStartStop">
      <simpleCondition role="onSelection"/>
      <compoundAction operator="seq">
      	<simpleAction role="start" max="unbounded" qualifier="par"/>
      	<simpleAction role="stop" max="unbounded" qualifier="par"/>
      </compoundAction>
    </causalConnector>

    <causalConnector id="onKeySelectionStop">
      <connectorParam name="keyCode"/>
      <simpleCondition role="onSelection" key="$keyCode"/>
      <simpleAction role="stop" max="unbounded" qualifier="par"/>
    </causalConnector>

	<!--
    <causalConnector id="onSelectionSetVar">
      <connectorParam name="value"/>
      <connectorParam name="var"/>
      <simpleCondition role="onSelection"/>
      <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
    </causalConnector>

    <causalConnector id="onBeginSetVar">
      <connectorParam name="var"/>
      <simpleCondition role="onBegin"/>
      <simpleAction role="set" value="$var"/>
    </causalConnector>
    -->
  </connectorBase>

</head>

<body>
  <port id="entrada" component="video"/>

  <media descriptor="dVideo" id="video" src="media/corrego1.mpg">
  	<area id="a2" begin="5s"/>
  </media>

  <media descriptor="dReturnButton3" id="btnreturn3" src="img/back_s.png"/>
  <media descriptor="dReturnButton2" id="btnreturn2" src="img/back_s.png"/>
  <media descriptor="dReturnButton1" id="btnreturn1" src="img/back_s.png"/>

  <!--
  <media descriptor="dMainMenuBTN" id="MainMenuBTN"/>

  <media descriptor="dBTN1" id="BTN1" src="img/btndisease.png"/>
  <media descriptor="dBTN2" id="BTN2" src="img/btncondition.png"/>
  <media descriptor="dBTN3" id="BTN3" src="img/btnservice.png"/>
  <media descriptor="dBTN4" id="BTN4" src="img/btnOtherIniciatives.png"/>

  <media descriptor="dBtNewScreen" id="btNewScreen" src="img/btndisease.png"/>
  <media descriptor="dVideo2" id="video2" src="media/corrego1.mpg"/>
  <media descriptor="dBackMainMenu" id="BackMainMenu" src="img/btndiabetes.png"/>
  <media descriptor="dQRCode" id="QRCodeDesafio" src="img/QR_doce_desafio.png"/>
  <media descriptor="dQRCode" id="QRCodeServiceDiabetes" src="img/QR_service_diabetes.png"/>
  <media descriptor="dQRCode" id="QRCodeDiabetes" src="img/QRdiabetes.png"/>
  <media descriptor="dText4" id="Text4" src="txt/text2.txt"/>
  -->
  <media descriptor="dLateralBar" id="menulateralbar" src="img/patternmenubar.png"/>
  <media descriptor="dBtStopApp" id="btnstopapp" src="img/exit_s.png"/>
  <media descriptor="dBtStartMenu" id="btnstartmenu" src="img/startmenu.png"/>
  <media descriptor="dBtDisease" id="btndisease" src="img/btndisease.png"/>
  <media descriptor="dBtCondition" id="btncondition" src="img/btncondition.png"/>
  <media descriptor="dBtService" id="btnservice" src="img/btnservice.png"/>
  <media descriptor="dT1" id="t1" src="img/healthcare.png"/>

<!-- medias do context1 (Doenças) -->

	  <media id="opcao11" src="img/btnDiabetes.png" descriptor="dOpcao11"/>
	  <media id="opcao12" src="img/btnHypertension.png" descriptor="dOpcao12"/>
	  <!--
	  <media type="image/png" id="fundoMenu1" src= "img/patternmenubar.png" descriptor="dFundoMenu"/>
	  <media id="opcao13" src="img/btndisease.png" descriptor="dOpcao13"/>
	  <media id="opcao14" src="img/btndisease.png" descriptor="dOpcao14"/>
	  -->

	  <media descriptor="dSubsectionOpt1" id="SubsectionOpt1" src="img/btnSymptoms.png"/>
	  <media descriptor="dSubsectionOpt2" id="SubsectionOpt2" src="img/btnFreePubMed.png"/>
	  <media descriptor="dSubsectionOpt3" id="SubsectionOpt3" src="img/btnGovernmentBene.png"/>
	  <media descriptor="dSubsectionOpt4" id="SubsectionOpt4" src="img/btnGestacionalDiabetes.png"/>
	  <media descriptor="dSubsectionOpt5" id="SubsectionOpt5" src="img/btnHemo.png"/>
	  <media descriptor="dSubsectionOpt6" id="SubsectionOpt6" src="img/btnChildrenHemo.png"/>
	  <media descriptor="dSubsectionOpt7" id="SubsectionOpt7" src="img/btnDiabeticNeuro.png"/>
	  <media descriptor="dSubsectionOpt8" id="SubsectionOpt8" src="img/btnPrograms.png"/>

	  <media descriptor="dBoxSymptoms" id="boxSubsectionOpt1" src="img/BOX_symptoms.png"/>
	  <media descriptor="dBoxFreeMed" id="boxSubsectionOpt2" src="img/Free_public_medicine_03.png"/>
	  <media descriptor="dBoxGovBene" id="boxSubsectionOpt3" src="img/BOX_Government_benefits_03.png"/>
	  <media descriptor="dBoxGestDiab" id="boxSubsectionOpt4" src="img/BOX_gestational_diabetes_06.png"/>
	  <media descriptor="dBoxHemo" id="boxSubsectionOpt5" src="img/Hemodialysis_03.png"/>
	  <media descriptor="dBoxChildHemo" id="boxSubsectionOpt6" src="img/BOX_children_hemodialysis_06.png"/>
	  <media descriptor="dBoxDiabNeur" id="boxSubsectionOpt7" src="img/BOX_diabetic_neuropathies_06.png"/>
	  <media descriptor="dBoxPrograms" id="boxSubsectionOpt8" src="img/BOX_programs.png"/>
	  <media descriptor="dBoxOtherIni" id="boxSubsectionOpt9" src="img/BOX_other_iniciaties_03.png"/>

	<link id="ShowSubsection11" xconnector="onSelectionStartStop">
  		<bind component="opcao11" role="onSelection"/>
  		<bind component="btnreturn2" role="stop"/>
  		<bind component="btnreturn3" role="start"/>
  		<bind component="SubsectionOpt1" role="start"/>
  		<bind component="SubsectionOpt2" role="start"/>
  		<bind component="SubsectionOpt3" role="start"/>
  		<bind component="SubsectionOpt4" role="start"/>
  		<bind component="SubsectionOpt5" role="start"/>
  		<bind component="SubsectionOpt6" role="start"/>
  		<bind component="SubsectionOpt7" role="start"/>
  		<bind component="SubsectionOpt8" role="start"/>
  		<bind component="opcao11" role="stop"/>
  		<bind component="opcao12" role="stop"/>
  	</link>

  	<link id="ShowText11" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt1" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="start"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText12" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt2" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="start"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText13" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="start"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText14" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="start"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText15" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="start"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText16" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="start"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText17" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="start"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText18" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="start"/>
	  	<bind component="boxSubsectionOpt9" role="stop"/>
	</link>
  	<link id="ShowText19" xconnector="onSelectionStartStop">
	  	<bind component="SubsectionOpt3" role="onSelection"/>
	  	<bind component="boxSubsectionOpt1" role="stop"/>
	  	<bind component="boxSubsectionOpt2" role="stop"/>
	  	<bind component="boxSubsectionOpt3" role="stop"/>
	  	<bind component="boxSubsectionOpt4" role="stop"/>
	  	<bind component="boxSubsectionOpt5" role="stop"/>
	  	<bind component="boxSubsectionOpt6" role="stop"/>
	  	<bind component="boxSubsectionOpt7" role="stop"/>
	  	<bind component="boxSubsectionOpt8" role="stop"/>
	  	<bind component="boxSubsectionOpt9" role="start"/>
	</link>


  <context id="cMenu2">
	   <port id="pMenu20" component="fundoMenu2"/>
	   <port id="pMenu21" component="opcao21"/>
	   <port id="pMenu22" component="opcao22"/>
	   <port id="pMenu23" component="opcao23"/>
	   <port id="pMenu24" component="opcao24"/>
	   <!-- <port id="pMenu25" component="opcao25"/> -->
	   <media type="image/png" id="fundoMenu2" src= "img/patternmenubar.png" descriptor="dFundoMenu"/>
	   <media id="opcao21" src="img/btncondition.png" descriptor="dOpcao21"/>
	   <media id="opcao22" src="img/btncondition.png" descriptor="dOpcao22"/>
	   <media id="opcao23" src="img/btncondition.png" descriptor="dOpcao23"/>
	   <media id="opcao24" src="img/btncondition.png" descriptor="dOpcao24"/>
	<!--  <media id="opcao25" src="img/btncondition.png" descriptor="dOpcao25"/> -->
	   <media id="Text2"  src="txt/text2.txt" descriptor="dText2"/>

	<link id="ShowText21" xconnector="onSelectionStart">
  		<bind component="opcao21" role="onSelection"/>
  		<bind component="Text2" role="start"/>
  	</link>
  	<link id="ShowText22" xconnector="onSelectionStart">
  		<bind component="opcao22" role="onSelection"/>
  		<bind component="Text2" role="start"/>
  	</link>
  	<link id="ShowText23" xconnector="onSelectionStart">
  		<bind component="opcao23" role="onSelection"/>
  		<bind component="Text2" role="start"/>
  	</link>
  	<link id="ShowText24" xconnector="onSelectionStart">
  		<bind component="opcao24" role="onSelection"/>
  		<bind component="Text2" role="start"/>
  	</link>
	<!--
  	<link id="ShowText25" xconnector="onSelectionStart">
  		<bind component="opcao25" role="onSelection"/>
  		<bind component="Text2" role="start"/>
  	</link>
  	-->
  </context>
  <context id="cMenu3">

	   <port id="pMenu30" component="fundoMenu3"/>
	   <port id="pMenu31" component="opcao31"/>
	   <port id="pMenu32" component="opcao32"/>
	   <port id="pMenu33" component="opcao33"/>
	   <port id="pMenu34" component="opcao34"/>
	   <port id="pMenu35" component="opcao35"/>
	  <media type="image/png" id="fundoMenu3" src= "img/patternmenubar.png" descriptor="dFundoMenu"/>
	  <media id="opcao31" src="img/btnservice.png" descriptor="dOpcao31"/>
	  <media id="opcao32" src="img/btnservice.png" descriptor="dOpcao32"/>
	  <media id="opcao33" src="img/btnservice.png" descriptor="dOpcao33"/>
	  <media id="opcao34" src="img/btnservice.png" descriptor="dOpcao34"/>
	  <media id="opcao35" src="img/btnservice.png" descriptor="dOpcao35"/>
	   <media id="Text3"  src="txt/text2.txt" descriptor="dText3"/>

	<link id="ShowText31" xconnector="onSelectionStart">
  		<bind component="opcao31" role="onSelection"/>
  		<bind component="Text3" role="start"/>
  	</link>

  	<link id="ShowText32" xconnector="onSelectionStart">
  		<bind component="opcao32" role="onSelection"/>
  		<bind component="Text3" role="start"/>
  	</link>

  	<link id="ShowText33" xconnector="onSelectionStart">
  		<bind component="opcao33" role="onSelection"/>
  		<bind component="Text3" role="start"/>
  	</link>

  	<link id="ShowText34" xconnector="onSelectionStart">
  		<bind component="opcao34" role="onSelection"/>
  		<bind component="Text3" role="start"/>
  	</link>

  	<link id="ShowText35" xconnector="onSelectionStart">
  		<bind component="opcao35" role="onSelection"/>
  		<bind component="Text3" role="start"/>
  	</link>


  </context>

<link id="lB9" xconnector="onBeginStart">
   <bind component="video" interface="a2" role="onBegin" />
   <bind component="btnstartmenu" role="start" />
</link>

  <link id="linkInicio" xconnector="onKeySelectionStartNStopN">
    <bind component="btnstartmenu" role="onSelection">
    	<bindParam name="keyCode" value="YELLOW"/>
    </bind>
    <bind component="btnreturn1" role="start"/>
    <bind component="btnstartmenu" role="stop"/>
    <bind component="menulateralbar" role="start"/>
    <bind component="btndisease" role="start"/>
    <bind component="btncondition" role="start"/>
    <bind component="btnservice" role="start"/>
    <bind component="btnstopapp" role="start"/>
    <!-- <bind component="btNewScreen" role="start"/> -->
    <bind component="t1" role="start"/>
  </link>

  <link id="linkStop" xconnector="onKeySelectionStop">
    <bind component="btnstopapp" role="onSelection">
    	<bindParam name="keyCode" value="YELLOW"/>
    </bind>
    <bind component="menulateralbar" role="stop"/>
    <bind component="btndisease" role="stop"/>
    <bind component="btncondition" role="stop"/>
    <bind component="btnservice" role="stop"/>
    <!-- <bind component="btNewScreen" role="stop"/> -->
    <bind component="t1" role="stop"/>
    <bind component="opcao11" role="stop"/>
    <bind component="opcao12" role="stop"/>
    <bind component="SubsectionOpt1" role="stop"/>
    <bind component="SubsectionOpt2" role="stop"/>
    <bind component="SubsectionOpt3" role="stop"/>
    <bind component="SubsectionOpt4" role="stop"/>
    <bind component="SubsectionOpt5" role="stop"/>
    <bind component="SubsectionOpt6" role="stop"/>
    <bind component="SubsectionOpt7" role="stop"/>
    <bind component="SubsectionOpt8" role="stop"/>
	<bind component="boxSubsectionOpt1" role="stop"/>
    <bind component="boxSubsectionOpt2" role="stop"/>
    <bind component="boxSubsectionOpt3" role="stop"/>
    <bind component="boxSubsectionOpt4" role="stop"/>
    <bind component="boxSubsectionOpt5" role="stop"/>
    <bind component="boxSubsectionOpt6" role="stop"/>
    <bind component="boxSubsectionOpt7" role="stop"/>
    <bind component="boxSubsectionOpt8" role="stop"/>
    <bind component="cMenu2" role="stop"/>
    <bind component="cMenu3" role="stop"/>
    <bind component="btnreturn1" role="stop"/>
    <bind component="btnreturn2" role="stop"/>
    <bind component="btnreturn3" role="stop"/>
    <bind component="btnstopapp" role="stop"/>
  </link>

  <link id="linkReturnDisease3" xconnector="onKeySelectionStartNStopN">
    <bind component="btnreturn3" role="onSelection">
    	<bindParam name="keyCode" value="GREEN"/>
    </bind>
    <bind component="btnreturn2" role="start"/>
    <bind component="opcao11" role="start"/>
    <bind component="opcao12" role="start"/>
    <bind component="btnreturn3" role="stop"/>
    <bind component="SubsectionOpt1" role="stop"/>
    <bind component="SubsectionOpt2" role="stop"/>
    <bind component="SubsectionOpt3" role="stop"/>
    <bind component="SubsectionOpt4" role="stop"/>
    <bind component="SubsectionOpt5" role="stop"/>
    <bind component="SubsectionOpt6" role="stop"/>
    <bind component="SubsectionOpt7" role="stop"/>
    <bind component="SubsectionOpt8" role="stop"/>
	<bind component="boxSubsectionOpt1" role="stop"/>
    <bind component="boxSubsectionOpt2" role="stop"/>
    <bind component="boxSubsectionOpt3" role="stop"/>
    <bind component="boxSubsectionOpt4" role="stop"/>
    <bind component="boxSubsectionOpt5" role="stop"/>
    <bind component="boxSubsectionOpt6" role="stop"/>
    <bind component="boxSubsectionOpt7" role="stop"/>
    <bind component="boxSubsectionOpt8" role="stop"/>
    <bind component="cMenu2" role="stop"/>
    <bind component="cMenu3" role="stop"/>
  </link>

  <link id="linkReturnDisease2" xconnector="onKeySelectionStartNStopN">
    <bind component="btnreturn2" role="onSelection">
    	<bindParam name="keyCode" value="GREEN"/>
    </bind>
    <bind component="btnreturn1" role="start"/>
    <bind component="opcao11" role="stop"/>
    <bind component="opcao12" role="stop"/>
    <bind component="btnreturn2" role="stop"/>
  	<bind component="btndisease" role="start"/>
    <bind component="btnservice" role="start"/>
    <bind component="btncondition" role="start"/>
    <bind component="cMenu2" role="stop"/>
    <bind component="cMenu3" role="stop"/>
  </link>

  <link id="linkReturnDisease1" xconnector="onKeySelectionStartNStopN">
    <bind component="btnreturn1" role="onSelection">
    	<bindParam name="keyCode" value="GREEN"/>
    </bind>
    <bind component="btnreturn1" role="stop"/>
  	<bind component="btndisease" role="stop"/>
    <bind component="btnservice" role="stop"/>
    <bind component="btncondition" role="stop"/>
    <bind component="btnstartmenu" role="start"/>
    <bind component="cMenu2" role="stop"/>
    <bind component="cMenu3" role="stop"/>
    <bind component="t1" role="stop"/>
  </link>

  <link id="linkSelectMenuItemDisease" xconnector="onSelectionStartStop">
  	<bind component="btndisease" role="onSelection"/>
  	<bind component="cMenu2" role="stop"/>
    <bind component="cMenu3" role="stop"/>
    <bind component="btnreturn2" role="start"/>
    <bind component="btnreturn1" role="stop"/>
    <bind component="btndisease" role="stop"/>
    <bind component="btncondition" role="stop"/>
    <bind component="btnservice" role="stop"/>
    <bind component="opcao11" role="start"/>
    <bind component="opcao12" role="start"/>
  </link>

  <link id="linkSelectMenuItemCondition" xconnector="onSelectionStartStop">
  	<bind component="btncondition" role="onSelection"/>
  	<bind component="cMenu1" role="stop"/>
    <bind component="cMenu3" role="stop"/>
    <bind component="cMenu2" role="start"/>
  </link>
  <link id="linkSelectMenuItemService" xconnector="onSelectionStartStop">
  	<bind component="btnservice" role="onSelection"/>

  	<bind component="cMenu2" role="stop"/>
    <bind component="cMenu1" role="stop"/>
    <bind component="cMenu3" role="start"/>
  </link>

  	<!--
	<link id="linkSelectMenuItemNewScreen" xconnector="onSelectionStartStop">
		  	<bind component="btNewScreen" role="onSelection"/>
		  	<bind component="btNewScreen" role="stop"/>
		  	<bind component="menulateralbar" role="stop"/>
	    <bind component="btndisease" role="stop"/>
	    <bind component="btncondition" role="stop"/>
    <bind component="btnservice" role="stop"/>
    <bind component="btNewScreen" role="stop"/>
    <bind component="t1" role="stop"/>
    <bind component="cMenu1" role="stop"/>
    <bind component="cMenu2" role="stop"/>
    <bind component="cMenu3" role="stop"/>
    <bind component="video" role="stop"/>
    <bind component="video2" role="start"/>
	<bind component="BackMainMenu" role="start"/>
    <bind component="Text4" role="start"/>
    <bind component="QRCodeDiabetes" role="start"/>
    <bind component="BTN1" role="start"/>
    <bind component="BTN2" role="start"/>
    <bind component="BTN3" role="start"/>
    <bind component="BTN4" role="start"/>
	</link>


  <link id="linkSelectBackMainMenu" xconnector="onSelectionStartStop">
  	<bind component="BackMainMenu" role="onSelection"/>
  	<bind component="BackMainMenu" role="stop"/>
	<bind component="video2" role="stop"/>
    <bind component="Text4" role="stop"/>
   	<bind component="btNewScreen" role="start"/>
  	<bind component="menulateralbar" role="start"/>
    <bind component="btndisease" role="start"/>
    <bind component="btncondition" role="start"/>
    <bind component="btnservice" role="start"/>
    <bind component="t1" role="start"/>
    <bind component="video" role="start"/>
  </link>
  -->
</body>
</ncl>
