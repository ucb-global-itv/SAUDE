<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="exemplo18" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<!-- Regions for initial screen -->
			<region id="rg_main_vid"  left="0px"   width="1280px" top="0px"   height="720px" zIndex="1"/>
			<region id="rg_logo"      left="256px" width="244px"  top="144px"  height="147px" zIndex="2"/>
			<region id="rg_strt_menu" left="309px" width="138px"  top="291px" height="48px"  zIndex="3"/>
			<region id="rg_strt_vid"  left="309px" width="138px"  top="343px" height="48px"  zIndex="3"/>
			
			<!-- Regions for main menu -->
			<region id="rg_logo_small" left="278px" width="120px" top="72px"  height="72px"  zIndex="2"/>
			<region id="rg_stop"       left="286px" width="103px" top="576px" height="36px"  zIndex="3"/>
			<region id="rg_nlua1"      left="128px" width="420px" top="144px" height="432px" zIndex="4"/>
			
			<!-- Regions for video menu -->
			<region id="rg_main_vid_small" left="871px" top="479px" width="256px"  height="144px" zIndex="2"/>
			<region id="rg_nlua2"          left="0px"   top="0px"   width="1280px" height="720px" zIndex="1"/>
			<region id="rg_online_vid"     left="153px" top="97px"  width="640px"  height="360px" zIndex="3"/>
		</regionBase>
		<descriptorBase>
			<!-- Descriptors for initial screen -->
			<descriptor id="dp_main_vid"   region="rg_main_vid"   focusIndex="1" focusBorderWidth="0"/>
			<descriptor id="dp_logo"       region="rg_logo"       focusIndex="2" focusBorderWidth="0"/>
			<descriptor id="dp_strt_menu"  region="rg_strt_menu"  focusIndex="3" focusBorderWidth="0" focusSrc="img_v1_2/BTN_MENU_FOCUS.png"/>
			<descriptor id="dp_strt_vid"   region="rg_strt_vid"   focusIndex="4" focusBorderWidth="0" focusSrc="img_v1_2/BTN_MOVIE_FOCUS.png"/>
			
			<!-- Descriptors for main menu -->
			<descriptor id="dp_logo_small" region="rg_logo_small" focusIndex="5" focusBorderWidth="0"/>
			<descriptor id="dp_stop"       region="rg_stop"       focusIndex="6" focusBorderWidth="0" focusSrc="img_v1_2/BTN_STOP_FOCUS.png"/>
			<descriptor id="dp_nlua1"      region="rg_nlua1"      focusIndex="7" focusBorderWidth="0">
				<descriptorParam name="transparency" value="0.2"/>
			</descriptor>
			
			<!-- Descriptors for video menu -->
			<descriptor id="dp_main_vid_small" region="rg_main_vid_small" focusIndex="8" focusBorderWidth="0">
				<descriptorParam name="soundLevel" value="0.2"/>
			</descriptor>
			<descriptor id="dp_nlua2"      region="rg_nlua2"      focusIndex="9"  focusBorderWidth="0"/>
			<descriptor id="dp_online_vid" region="rg_online_vid" focusIndex="10" focusBorderWidth="0"/>
		</descriptorBase>
		<connectorBase>
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin"/>
				<simpleAction role="start" max="unbounded" operator="par" />
			</causalConnector>
			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd"/>
				<simpleAction role="stop" max="unbounded" operator="par" />
			</causalConnector>
			<causalConnector id="onBeginSet">
				<connectorParam name="var"/>
				<simpleCondition role="onBegin"/>
				<simpleAction role="set" max="unbounded" operator="par" value="$var"/>
			</causalConnector>
			<causalConnector id="onAbortStopNStartNSetN">
				<simpleCondition role="onAbort"/>
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded" operator="par" />
					<simpleAction role="start" max="unbounded" operator="par" />
					<simpleAction role="set"   max="unbounded" qualifier="seq" value="$value"/>
				</compoundAction>
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
		<port id="pt_start_vid" component="md_main_vid"/>
		<!-- Media for initial screen -->
		<media id="md_main_vid"  descriptor="dp_main_vid"  src="video"/>
		<media id="md_logo"      descriptor="dp_logo"      src="img_v1_2/APP_LOGO.png"/>
		<media id="md_strt_menu" descriptor="dp_strt_menu" src="img_v1_2/BTN_MENU.png"/>
		<media id="md_strt_vid"  descriptor="dp_strt_vid"  src="img_v1_2/BTN_MOVIE.png"/>
		
		<!-- Media for main menu -->
		<media id="md_logo_small" descriptor="dp_logo_small" src="img_v1_2/APP_LOGO.png"/>
		<media id="md_stop"       descriptor="dp_stop"       src="img_v1_2/BTN_STOP.png"/>
		<media id="md_nlua1"      descriptor="dp_nlua1"      src="lua/menu.lua"/>
		
		<!-- Media for video menu -->
		<media id="md_online_vid1" descriptor="dp_online_vid" src="http://gingadf.com.br/globalitv/Diabetes_narrativa_ingles.mp4"/>
		<media id="md_online_vid2" descriptor="dp_online_vid" src="http://gingadf.com.br/globalitv/Diabetes_tipoI_ingles.mp4"/>
		<media id="md_online_vid3" descriptor="dp_online_vid" src="http://gingadf.com.br/globalitv/Diabetes_tipoII_ingles.mp4"/>
		<media id="md_online_vid4" descriptor="dp_online_vid" src="http://gingadf.com.br/globalitv/Diabetes_tipoIeII_ingles.mp4"/>
		<media id="md_online_vid5" descriptor="dp_online_vid" src="http://gingadf.com.br/globalitv/Diabetes_sintomas_ingles.mp4"/>
		<media id="md_online_vid6" descriptor="dp_online_vid" src="http://gingadf.com.br/globalitv/Diabetes_prevencao_ingles.mp4"/>
		<media id="md_nlua2" src="lua/call_videos.lua" descriptor="dp_nlua2">
			<area id="start_vid1"/>
			<area id="start_vid2"/>
			<area id="start_vid3"/>
			<area id="start_vid4"/>
			<area id="start_vid5"/>
			<area id="start_vid6"/>
		</media>
		<media id="md_main_vid_small" descriptor="dp_main_vid_small" src="video"/>
		
		<!-- Media variable to focus on media -->
		<media id="md_setn" type="application/x-ginga-settings">
			<property name="service.currentKeyMaster" value=""/>
		</media>
		
		<!-- Actions for initial screen -->
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_main_vid" />
			<bind role="start"   component="md_logo" />
			<bind role="start"   component="md_strt_menu" />
			<bind role="start"   component="md_strt_vid" />
		</link>
		<link xconnector="onBeginSet">
			<bind role="onBegin" component="md_logo" />
			<bind role="set"     component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_main_vid"/>
			</bind>
		</link>
		
		<!-- Actions for main menu -->
		<link id="lk_nlua1" xconnector="onKeySelectionStartNSetNStopN">
			<bind role="onSelection" component="md_main_vid">
				<bindParam name="keyCode" value="GREEN"/>
			</bind>
			<bind role="start" component="md_logo_small" />
			<bind role="start" component="md_stop"/>
			<bind role="start" component="md_nlua1"/>
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_nlua1"/>
			</bind>
			<bind role="stop" component="md_logo" />
			<bind role="stop" component="md_strt_menu"/>
			<bind role="stop" component="md_strt_vid"/>
		</link>
		
		<link xconnector="onEndStartNSetNStopN">
			<bind role="onEnd" component="md_nlua1"/>
			<bind role="start" component="md_logo" />
			<bind role="start" component="md_strt_menu" />
			<bind role="start" component="md_strt_vid" />
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_main_vid"/>
			</bind>
			<bind role="stop" component="md_logo_small" />
			<bind role="stop" component="md_stop"/>
		</link>
		
		<!-- Actions for video menu -->
		<link id="lk_nlua2" xconnector="onKeySelectionStartNSetNStopN">
			<bind role="onSelection" component="md_main_vid">
				<bindParam name="keyCode" value="BLUE"/>
			</bind>
			<bind role="start" component="md_nlua2"/>
			<bind role="start" component="md_main_vid_small"/>
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_nlua2"/>
			</bind>
			<!--<bind role="set"   component="md_main_vid_small" interface="soundLevel">
				<bindParam name="value" value="0.2"/>
			</bind>-->
			<bind role="stop"  component="md_main_vid"/>
			<bind role="stop"  component="md_strt_menu"/>
			<bind role="stop"  component="md_strt_vid"/>
			<bind role="stop"  component="md_logo"/>
		</link>

		<!--<link xconnector="onAbortStopNStartNSetN">
			<bind role="onAbort" component="md_nlua2"/>
			<bind role="stop" component="md_main_vid_small" />
			<bind role="start"  component="md_main_vid" />
			<bind role="start"  component="md_logo" />
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_main_vid"/>
			</bind>
		</link>-->
		<link xconnector="onEndStartNSetNStopN">
			<bind role="onEnd" component="md_nlua2"/>
			<bind role="start" component="md_main_vid" />
			<bind role="start" component="md_strt_menu" />
			<bind role="start" component="md_strt_vid" />
			<bind role="start" component="md_logo" />
			<bind role="set"   component="md_setn" interface="service.currentKeyMaster">
				<bindParam name="value" value="md_main_vid"/>
			</bind>
			<bind role="stop"  component="md_main_vid_small"/>
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_nlua2" interface="start_vid1"/>
			<bind role="start"   component="md_online_vid1" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="md_nlua2" interface="start_vid1"/>
			<bind role="stop"   component="md_online_vid1" />
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_nlua2" interface="start_vid2"/>
			<bind role="start"   component="md_online_vid2" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="md_nlua2" interface="start_vid2"/>
			<bind role="stop"   component="md_online_vid2" />
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_nlua2" interface="start_vid3"/>
			<bind role="start"   component="md_online_vid3" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="md_nlua2" interface="start_vid3"/>
			<bind role="stop"   component="md_online_vid3" />
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_nlua2" interface="start_vid4"/>
			<bind role="start"   component="md_online_vid4" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="md_nlua2" interface="start_vid4"/>
			<bind role="stop"   component="md_online_vid4" />
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_nlua2" interface="start_vid5"/>
			<bind role="start"   component="md_online_vid5" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="md_nlua2" interface="start_vid5"/>
			<bind role="stop"   component="md_online_vid5" />
		</link>

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="md_nlua2" interface="start_vid6"/>
			<bind role="start"   component="md_online_vid6" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="md_nlua2" interface="start_vid6"/>
			<bind role="stop"   component="md_online_vid6" />
		</link>
	</body>
</ncl>