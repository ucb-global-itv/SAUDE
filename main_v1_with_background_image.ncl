<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="exemplo18" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<region id="rg_back" left="0%"      width="100%"  top="0%"  height="100%" zIndex="1"/>
			<region id="rg_logo" left="23%"     width="14%"   top="10%" height="15%"  zIndex="2"/>
			<region id="rg_strt" left="26.055%" width="7.89%" top="25%" height="5%"   zIndex="3"/>
			<region id="rg_stop" left="26.055%" width="7.89%" top="85%" height="5%"   zIndex="3"/>
			<!--<region id="rg_arrw" left="22.11%"  width="7.89%" top="85%" height="5%"   zIndex="3"/>-->
			<region id="rg_nlua" left="10%"     width="40%"   top="25%" height="60%"  zIndex="4"/>
		</regionBase>
		<descriptorBase>
			<descriptor id="dp_logo" region="rg_logo" focusIndex="1" focusBorderWidth="0"/>
			<descriptor id="dp_back" region="rg_back" focusIndex="2" focusBorderWidth="0"/>
			<descriptor id="dp_strt" region="rg_strt" focusIndex="3" focusBorderWidth="0" focusSrc="img_v1/BTN_START_FOCUS.png"/>
			<descriptor id="dp_stop" region="rg_stop" focusIndex="4" focusBorderWidth="0" focusSrc="img_v1/BTN_STOP_FOCUS.png"/>
			<!--<descriptor id="dp_arrw" region="rg_arrw" focusIndex="4" focusBorderWidth="0" focusSrc="img_v1/BTN_ARROWS_FOCUS.png"/>-->
			<descriptor id="dp_nlua" region="rg_nlua" focusIndex="5" focusBorderWidth="0">
				<descriptorParam name="transparency" value="0.2"/>
			</descriptor>
			
		</descriptorBase>
		<connectorBase>
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin"/>
				<simpleAction role="start" max="unbounded" operator="par" />
			</causalConnector>
			<causalConnector id="onBeginSet">
				<connectorParam name="var"/>
				<simpleCondition role="onBegin"/>
				<simpleAction role="set" max="unbounded" operator="par" value="$var"/>
			</causalConnector>
			<causalConnector id="onKeySelectionStartNSetNStopN">
				<connectorParam name="keyCode"/>
				<connectorParam name="value"/>
				<simpleCondition role="onSelection" key="$keyCode"/>
				<compoundAction operator="seq">
					<simpleAction role="start" max="unbounded" qualifier="seq"/>
					<simpleAction role="set"   max="unbounded" qualifier="seq" value="$value"/>
					<simpleAction role="stop"  max="unbounded" qualifier="seq"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndStartNSetNStopN">
				<connectorParam name="value"/>
				<simpleCondition role="onEnd"/>
				<compoundAction operator="seq">
					<simpleAction role="start" max="unbounded" qualifier="seq"/>
					<simpleAction role="set"   max="unbounded" qualifier="seq" value="$value"/>
					<simpleAction role="stop"  max="unbounded" qualifier="seq"/>
				</compoundAction>
			</causalConnector>
		</connectorBase>
	</head>
	<body>
		<port id="pt_start" component="md_logo"/>
		<media id="md_logo" descriptor="dp_logo" src="img_v1/APP_LOGO.png"/>
		<media id="md_back" descriptor="dp_back" src="media/back.png"/>
		<media id="md_strt" descriptor="dp_strt" src="img_v1/BTN_START.png"/>
		<media id="md_stop" descriptor="dp_stop" src="img_v1/BTN_STOP.png"/>
		<!--<media id="md_arrw" descriptor="dp_arrw" src="img_v1/BTN_ARROWS.png"/>-->
		<media id="md_nlua" descriptor="dp_nlua" src="lua/menu.lua"/>
		<media id="md_setn" type="application/x-ginga-settings">
			<property name="service.currentKeyMaster" value=""/>
		</media>
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_logo" />
			<bind role="start"   component="md_back" />
			<bind role="start"   component="md_strt" />
		</link>
		<link xconnector="onBeginSet">
			<bind role="onBegin" component="md_logo" />
			<bind role="set"     component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_strt"/>
			</bind>
		</link>
		
		<link id="lk_" xconnector="onKeySelectionStartNSetNStopN">
			<bind role="onSelection" component="md_strt">
				<bindParam name="keyCode" value="GREEN"/>
			</bind>
			<bind role="start" component="md_stop"/>
			<!--<bind role="start" component="md_arrw"/>-->
			<bind role="start" component="md_nlua"/>
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_nlua"/>
			</bind>
			<bind role="stop"  component="md_strt"/>
		</link>
		<link xconnector="onEndStartNSetNStopN">
			<bind role="onEnd" component="md_nlua"/>
			<bind role="start" component="md_strt"/>
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_strt"/>
			</bind>
			<bind role="stop"  component="md_stop"/>
			<!--<bind role="stop"  component="md_arrw"/>-->
		</link>
	</body>
</ncl>