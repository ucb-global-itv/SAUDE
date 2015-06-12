<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="appsaude" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile
http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd">
	<head>
		<!-- @doc Region base: defines where media will be presented -->
		<regionBase>
			<region id="mainDevice"
				width="100%"
				height="100%"
				zIndex="0">
				
				<!-- @doc Region to show main video on startup,
				for tests on virtual machines -->
				<region id="r_L0_VID_MAIN"
					width="100%"
					height="100%"
					zIndex ="0"/>
					
				<region id="rText1"
					left="60%"
					top="10%"
					width="16.5%"
					height="40%"
					zIndex="0"/>
				<region id="rText2"
					left="60%"
					top="30%"
					width="16.5%"
					height="40%"
					zIndex="0"/>
				<region id="rText3"
					left="60%"
					top="60%"
					width="16.5%"
					height="40%"
					zIndex="0"/>
				
				<!-- @doc Main menu's region (at the left side),
				with main options and navigation buttons -->
				<region id="r_MAIN_MENU"
					left="0%"
					top="0%"
					width="20%"
					height="100%"
					zIndex="7">
					<!-- @doc Region for the button that starts the app -->
					<region id="r_L0_BTN_START_APP"
						left="6%"
						top="2%"
						width="94%"
						height="15%"
						zIndex="0"/>
					<!-- @doc Region for the app's logo on the main menu -->
					<region id="r_L0_LOGO_APP"
						left="6%"
						top="2%"
						width="80%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the button that starts
					the Disease option from the main menu -->
					<region id="r_L1_BTN_START_DISEASE"
						left="17%"
						top="25%"
						width="58.78%"
						height="13.36%"
						zIndex="7"/>
					<!-- @doc Region for the button that starts
					the Condition option from the main menu -->
					<region id="r_L2_BTN_START_CONDITION"
						left="17%"
						top="41.36%"
						width="58.48%"
						height="13.45%"
						zIndex="7"/>
					<!-- @doc Region for the button that starts
					the Service option from the main menu -->
					<region id="r_L3_BTN_START_SERVICE"
						left="17%"
						top="57.81%"
						width="58.48%"
						height="13.36%"
						zIndex="7"/>
					<!-- @doc Region for the button that stops
					the app from the main menu -->
					<region id="r_L1_BTN_EXIT_APP"
						left="15%"
						top="90%"
						width="46%"
						height="6%"
						zIndex="7"/>
					<!-- @doc Region for the button that returns
					to the main menu from the Disease submenu -->
					<region id="r_L1_3_BTN_BACK_MAIN"
						left="15%"
						top="90%"
						width="46%"
						height="6%"
						zIndex="7"/>
					<!-- @doc Region for the button that returns
					to the Disease submenu from the Diabetes sub-submenu -->
					<region id="r_L1_1_10_BTN_BACK_DISEASE"
						left="15%"
						top="90%"
						width="46%"
						height="6%"
						zIndex="7"/>
					<region id="r_L1_2_8_BTN_BACK_DISEASE"
						left="15%"
						top="90%"
						width="46%"
						height="6%"
						zIndex="7"/>
					<region id="rReturnButton"
						left="15%"
						top="90%"
						width="46%"
						height="6%"
						zIndex="7"/>
				</region>
				
				<!-- @doc Submenu's region (at the right side),
				with main options and navigation buttons -->
				<region id="r_SUB_MENU"
					left="83.5%"
					top="0"
					width="16.5%"
					height="100%"
					zIndex="7">
					<!-- @doc Region for the Diabetes button of the submenu -->
					<region id="r_L1_1_BTN_START_DIABETES"
						left="8%"
						top="5%"
						 width="70%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the Hypertension button of the submenu -->
					<region id="r_L1_2_BTN_START_HYPERTENSION"
						left="8%"
						top="23%"
						width="70%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the first button of the submenu -->
					<region id="rgOpcao1"
						left="8%"
						top="5%"
						width="70%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the second button of the submenu -->
					<region id="rgOpcao2"
						left="8%"
						top="20%"
						width="70%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the third button of the submenu -->
					<region id="rgOpcao3"
						left="8%"
						top="35%"
						width="70%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the fourth button of the submenu -->
					<region id="rgOpcao4"
						left="8%"
						top="50%"
						width="70%"
						height="15%"
						zIndex="7"/>
					<!-- @doc Region for the fifth button of the submenu -->
					<region id="rgOpcao5"
						left="8%"
						top="65%"
						width="70%"
						height="15%"
						zIndex="7"/>
				</region>

				<region id="r_SUB_SUB_MENU"
					left="75%"
					top="0%"
					width="20%"
					height="100%"
					zIndex ="7">
					<region id="r_L1_1_1_BTN_START_SYMPTOMS"
						right="0%"
						top="4%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_2_BTN_START_FREE_PUB_MED"
						right="0%"
						top="14%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_3_BTN_START_GOV_BEN"
						right="0%"
						top="24%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_4_BTN_START_GESTATIONAL"
						right="0%"
						top="34%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_5_BTN_START_HEMODIALYSIS"
						right="0%"
						top="44%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_6_BTN_START_CHILD_HEMO"
						right="0%"
						top="54%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_7_BTN_START_DIAB_NEURO"
						right="0%"
						top="64%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_8_BTN_START_PROGRAMS"
						right="0%"
						top="74%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_1_9_BTN_START_OTHERS"
						right="0%"
						top="84%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_1_BTN_START_SYMPTOMS"
						right="0%"
						top="4%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_2_BTN_START_FREE_PUB_MED"
						right="0%"
						top="14%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_3_BTN_START_GOV_BEN"
						right="0%"
						top="24%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_4_BTN_START_PREVENTION"
						right="0%"
						top="34%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_5_BTN_START_BASIC_SERV_NET"
						right="0%"
						top="44%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_6_BTN_START_PROGRAMS"
						right="0%"
						top="54%"
						width="40%"
						height="10%"
						zIndex ="7"/>
					<region id="r_L1_2_7_BTN_START_OTHERS"
						right="0%"
						top="64%"
						width="40%"
						height="10%"
						zIndex ="7"/>
				</region>

				<region id="r_SUB_SUB_SUB_MENU"
					right="13%"
					top="0%"
					width="50%"
					height="100%"
					zIndex="10">
					<region id="r_L1_1_1_BOX_SYMPTOMS"
						right="0%"
						top="2%"
						width="60%"
						height="36.494%"
						zIndex="10"/>
					<region id="r_L1_1_2_BOX_FREE_PUB_MED"
						right="0%"
						top="2%"
						width="60%"
						height="32.626%"
						zIndex="10"/>
					<region id="r_L1_1_3_BOX_GOV_BEN"
						right="0%"
						top="2%"
						width="60%"
						height="25.677%"
						zIndex="10"/>
					<region id="r_L1_1_4_BOX_GESTATIONAL"
						right="0%"
						top="2%"
						width="60%"
						height="13.326%"
						zIndex="10"/>
					<region id="r_L1_1_5_BOX_HEMODIALYSIS"
						right="0%"
						top="2%"
						width="60%"
						height="29.16%"
						zIndex="10"/>
					<region id="r_L1_1_6_BOX_CHILD_HEMO"
						right="0%"
						top="2%"
						width="60%"
						height="13.326%"
						zIndex="10"/>
					<region id="r_L1_1_7_BOX_DIAB_NEURO"
						right="0%"
						top="2%"
						width="60%"
						height="13.326%"
						zIndex="10"/>
					<region id="r_L1_1_8_BOX_PROGRAMS"
						right="0%"
						top="2%"
						width="60%"
						height="32.6%"
						zIndex ="10"/>
					<region id="r_L1_1_9_BOX_OTHERS"
						right="0%"
						top="2%"
						width="60%"
						height="32.6%"
						zIndex="10"/>
					<region id="r_L1_2_1_BOX_SYMPTOMS"
						right="0%"
						top="2%"
						width="60%"
						height="32.6%"
						zIndex="10"/>
					<region id="r_L1_2_2_BOX_FREE_PUB_MED"
						right="0%"
						top="2%"
						width="60%"
						height="32.6%"
						zIndex="10"/>
					<region id="r_L1_2_3_BOX_GOV_BEN"
						right="0%"
						top="2%"
						width="60%"
						height="25.677%"
						zIndex="10"/>
					<region id="r_L1_2_4_BOX_PREVENTION"
						right="0%"
						top="2%"
						width="60%"
						height="32.6%"
						zIndex="10"/>
					<region id="r_L1_2_5_BOX_BASIC_SERV_NET"
						right="0%"
						top="2%"
						width="60%"
						height="13.326%"
						zIndex="10"/>
					<region id="r_L1_2_6_BOX_PROGRAMS"
						right="0%"
						top="2%"
						width="60%"
						height="17.226%"
						zIndex="10"/>
					<region id="r_L1_2_7_BOX_OTHERS"
						right="0%"
						top="2%"
						width="60%"
						height="17.226%"
						zIndex="10"/>
				</region>
			</region>
		</regionBase>

		<!-- @doc Descriptor base: defines how media will be presented -->
		<descriptorBase>
			<!-- @doc Descriptor to show main video on startup, for tests on virtual machines -->
			<descriptor id="d_L0_VID_MAIN" region="r_L0_VID_MAIN"
				focusBorderWidth="0"
				focusIndex="ix_L0_VID_MAIN"/>

			<!-- @doc Descriptor for the button that starts the app -->
			<descriptor id="d_L0_BTN_START_APP" region="r_L0_BTN_START_APP"
				focusBorderWidth="0"
				focusIndex="ix_L0_BTN_START_APP">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptor for the app's logo on the main menu -->
			<descriptor id="d_L0_LOGO_APP" region="r_L0_LOGO_APP"
				focusBorderWidth="0"
				focusIndex="ix_L0_LOGO_APP">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptor for the button that starts the Disease option in the main menu -->
			<descriptor id="d_L1_BTN_START_DISEASE" region="r_L1_BTN_START_DISEASE"
				focusBorderWidth="0"
				focusIndex="ix_L1_BTN_START_DISEASE"
				moveUp="ix_L3_BTN_START_SERVICE"
				moveDown="ix_L2_BTN_START_CONDITION"
				moveRight="1"
				focusSrc="img/L1_BTN_START_DISEASE_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptor for the button that starts the Condition option in the main menu -->
			<descriptor id="d_L2_BTN_START_CONDITION" region="r_L2_BTN_START_CONDITION"
				focusIndex="ix_L2_BTN_START_CONDITION"
				focusBorderWidth="0"
				moveUp="ix_L1_BTN_START_DISEASE"
				moveDown="ix_L3_BTN_START_SERVICE"
				focusSrc="img/L2_BTN_START_CONDITION_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptor for the button that starts the Service option in the main menu -->
			<descriptor id="d_L3_BTN_START_SERVICE" region="r_L3_BTN_START_SERVICE"
				focusBorderWidth="0"
				focusIndex="ix_L3_BTN_START_SERVICE"
				moveUp="ix_L2_BTN_START_CONDITION"
				moveDown="ix_L1_BTN_START_DISEASE"
				focusSrc="img/L3_BTN_START_SERVICE_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptor for the button that stops the app from the main menu -->
			<descriptor id="d_L1_BTN_EXIT_APP" region="r_L1_BTN_EXIT_APP"/>
			<!-- @doc Descriptor for the button that returns to the main menu from the Disease submenu -->
			<descriptor id="d_L1_3_BTN_BACK_MAIN" region="r_L1_3_BTN_BACK_MAIN"/>
			<descriptor id="d_L1_1_10_BTN_BACK_DISEASE" region="r_L1_1_10_BTN_BACK_DISEASE"/>
			<descriptor id="d_L1_2_8_BTN_BACK_DISEASE" region="r_L1_2_8_BTN_BACK_DISEASE"/>
			
			
			<!-- @doc Descriptor for the button that starts the Diabetes option from the Disease submenu -->
			<descriptor id="d_L1_1_BTN_START_DIABETES" region="r_L1_1_BTN_START_DIABETES"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_BTN_START_DIABETES"
				moveDown="ix_L1_2_BTN_START_HYPERTENSION"
				moveUp="ix_L1_2_BTN_START_HYPERTENSION"
				focusSrc="img/L1_1_BTN_START_DIABETES_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptor for the button that starts the Hypertension option from the Disease submenu -->
			<descriptor id="d_L1_2_BTN_START_HYPERTENSION" region="r_L1_2_BTN_START_HYPERTENSION"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_BTN_START_HYPERTENSION"
				moveDown="ix_L1_1_BTN_START_DIABETES"
				moveUp="ix_L1_1_BTN_START_DIABETES"
				focusSrc="img/L1_2_BTN_START_HYPERTENSION_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			
			<descriptor id="dReturnButton3" region="rReturnButton"/>
			<descriptor id="dText1" region="rText1"/>
			<descriptor id="dText2" region="rText2"/>
			<descriptor id="dText3" region="rText3"/>
						
			<!-- @doc Descriptors for buttons under Disease=>Diabetes -->
			<descriptor id="d_L1_1_1_BTN_START_SYMPTOMS" region="r_L1_1_1_BTN_START_SYMPTOMS"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_1_BTN_START_SYMPTOMS"
				moveUp="ix_L1_1_9_BTN_START_OTHERS"
				moveDown="ix_L1_1_2_BTN_START_FREE_PUB_MED"
				focusSrc="img/L1_1_1_BTN_START_SYMPTOMS_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_2_BTN_START_FREE_PUB_MED" region="r_L1_1_2_BTN_START_FREE_PUB_MED"
				focusIndex="ix_L1_1_2_BTN_START_FREE_PUB_MED"
				focusBorderWidth="0"
				moveUp="ix_L1_1_1_BTN_START_SYMPTOMS"
				moveDown="ix_L1_1_3_BTN_START_GOV_BEN"
				focusSrc="img/L1_1_2_BTN_START_FREE_PUB_MED_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_3_BTN_START_GOV_BEN" region="r_L1_1_3_BTN_START_GOV_BEN"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_3_BTN_START_GOV_BEN"
				moveUp="ix_L1_1_2_BTN_START_FREE_PUB_MED"
				moveDown="ix_L1_1_4_BTN_START_GESTATIONAL"
				focusSrc="img/L1_1_3_BTN_START_GOV_BEN_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_4_BTN_START_GESTATIONAL" region="r_L1_1_4_BTN_START_GESTATIONAL"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_4_BTN_START_GESTATIONAL"
				moveUp="ix_L1_1_3_BTN_START_GOV_BEN"
				moveDown="ix_L1_1_5_BTN_START_HEMODIALYSIS"
				focusSrc="img/L1_1_4_BTN_START_GESTATIONAL_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_5_BTN_START_HEMODIALYSIS" region="r_L1_1_5_BTN_START_HEMODIALYSIS"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_5_BTN_START_HEMODIALYSIS"
				moveUp="ix_L1_1_4_BTN_START_GESTATIONAL"
				moveDown="ix_L1_1_6_BTN_START_CHILD_HEMO"
				focusSrc="img/L1_1_5_BTN_START_HEMODIALYSIS_FOCUS.png"
				focusSelSrc="img/btnHemo.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_6_BTN_START_CHILD_HEMO" region="r_L1_1_6_BTN_START_CHILD_HEMO"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_6_BTN_START_CHILD_HEMO"
				moveUp="ix_L1_1_5_BTN_START_HEMODIALYSIS"
				moveDown="ix_L1_1_7_BTN_START_DIAB_NEURO"
				focusSrc="img/L1_1_6_BTN_START_CHILD_HEMO_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_7_BTN_START_DIAB_NEURO" region="r_L1_1_7_BTN_START_DIAB_NEURO"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_7_BTN_START_DIAB_NEURO"
				moveUp="ix_L1_1_6_BTN_START_CHILD_HEMO"
				moveDown="ix_L1_1_8_BTN_START_PROGRAMS"
				focusSrc="img/L1_1_7_BTN_START_DIAB_NEURO_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_8_BTN_START_PROGRAMS" region="r_L1_1_8_BTN_START_PROGRAMS"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_8_BTN_START_PROGRAMS"
				moveUp="ix_L1_1_7_BTN_START_DIAB_NEURO"
				moveDown="ix_L1_1_9_BTN_START_OTHERS"
				focusSrc="img/L1_1_8_BTN_START_PROGRAMS_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_9_BTN_START_OTHERS" region="r_L1_1_9_BTN_START_OTHERS"
				focusBorderWidth="0"
				focusIndex="ix_L1_1_9_BTN_START_OTHERS"
				moveUp="ix_L1_1_8_BTN_START_PROGRAMS"
				moveDown="ix_L1_1_1_BTN_START_SYMPTOMS"
				focusSrc="img/L1_1_9_BTN_START_OTHERS_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<!-- @doc Descriptors for buttons under Disease=>Diabetes -->
			<descriptor id="d_L1_2_1_BTN_START_SYMPTOMS" region="r_L1_2_1_BTN_START_SYMPTOMS"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_1_BTN_START_SYMPTOMS"
				moveUp="ix_L1_2_7_BTN_START_OTHERS"
				moveDown="ix_L1_2_2_BTN_START_FREE_PUB_MED"
				focusSrc="img/L1_1_1_BTN_START_SYMPTOMS_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_2_BTN_START_FREE_PUB_MED" region="r_L1_2_2_BTN_START_FREE_PUB_MED"
				focusIndex="ix_L1_2_2_BTN_START_FREE_PUB_MED"
				focusBorderWidth="0"
				moveUp="ix_L1_2_1_BTN_START_SYMPTOMS"
				moveDown="ix_L1_2_3_BTN_START_GOV_BEN"
				focusSrc="img/L1_1_2_BTN_START_FREE_PUB_MED_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_3_BTN_START_GOV_BEN" region="r_L1_2_3_BTN_START_GOV_BEN"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_3_BTN_START_GOV_BEN"
				moveUp="ix_L1_2_2_BTN_START_FREE_PUB_MED"
				moveDown="ix_L1_2_4_BTN_START_PREVENTION"
				focusSrc="img/L1_1_3_BTN_START_GOV_BEN_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_4_BTN_START_PREVENTION" region="r_L1_2_4_BTN_START_PREVENTION"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_4_BTN_START_PREVENTION"
				moveUp="ix_L1_2_3_BTN_START_GOV_BEN"
				moveDown="ix_L1_2_5_BTN_START_BASIC_SERV_NET"
				focusSrc="img/L1_2_4_BTN_START_PREVENTION_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_5_BTN_START_BASIC_SERV_NET" region="r_L1_2_5_BTN_START_BASIC_SERV_NET"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_5_BTN_START_BASIC_SERV_NET"
				moveUp="ix_L1_2_4_BTN_START_PREVENTION"
				moveDown="ix_L1_2_6_BTN_START_PROGRAMS"
				focusSrc="img/L1_2_5_BTN_START_BASIC_SERV_NET_FOCUS.png"
				focusSelSrc="img/btnHemo.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_6_BTN_START_PROGRAMS" region="r_L1_2_6_BTN_START_PROGRAMS"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_6_BTN_START_PROGRAMS"
				moveUp="ix_L1_2_5_BTN_START_BASIC_SERV_NET"
				moveDown="ix_L1_2_7_BTN_START_OTHERS"
				focusSrc="img/L1_1_8_BTN_START_PROGRAMS_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_7_BTN_START_OTHERS" region="r_L1_2_7_BTN_START_OTHERS"
				focusBorderWidth="0"
				focusIndex="ix_L1_2_7_BTN_START_OTHERS"
				moveUp="ix_L1_2_6_BTN_START_PROGRAMS"
				moveDown="ix_L1_2_1_BTN_START_SYMPTOMS"
				focusSrc="img/L1_1_9_BTN_START_OTHERS_FOCUS.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			
			<descriptor id="d_L1_1_1_BOX_SYMPTOMS" region="r_L1_1_1_BOX_SYMPTOMS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_2_BOX_FREE_PUB_MED" region="r_L1_1_2_BOX_FREE_PUB_MED">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_3_BOX_GOV_BEN" region="r_L1_1_3_BOX_GOV_BEN">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_4_BOX_GESTATIONAL" region="r_L1_1_4_BOX_GESTATIONAL">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_5_BOX_HEMODIALYSIS" region="r_L1_1_5_BOX_HEMODIALYSIS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_6_BOX_CHILD_HEMO" region="r_L1_1_6_BOX_CHILD_HEMO">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_7_BOX_DIAB_NEURO" region="r_L1_1_7_BOX_DIAB_NEURO">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_8_BOX_PROGRAMS" region="r_L1_1_8_BOX_PROGRAMS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_1_9_BOX_OTHERS" region="r_L1_1_9_BOX_OTHERS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_1_BOX_SYMPTOMS" region="r_L1_2_1_BOX_SYMPTOMS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_2_BOX_FREE_PUB_MED" region="r_L1_2_2_BOX_FREE_PUB_MED">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_3_BOX_GOV_BEN" region="r_L1_2_3_BOX_GOV_BEN">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_4_BOX_PREVENTION" region="r_L1_2_4_BOX_PREVENTION">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_5_BOX_BASIC_SERV_NET" region="r_L1_2_5_BOX_BASIC_SERV_NET">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_6_BOX_PROGRAMS" region="r_L1_2_6_BOX_PROGRAMS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="d_L1_2_7_BOX_OTHERS" region="r_L1_2_7_BOX_OTHERS">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
						
			<descriptor id="dOpcao21" region="rgOpcao1"
				focusIndex="1"
				moveDown="2"
				moveUp="5"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnconditionfocus.png"
				focusSelSrc="img/btnconditionselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao22" region="rgOpcao2"
				focusIndex="2"
				moveDown="3"
				moveUp="1"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnconditionfocus.png"
				focusSelSrc="img/btnconditionselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao23" region="rgOpcao3"
				focusIndex="3"
				moveDown="4"
				moveUp="2"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnconditionfocus.png"
				focusSelSrc="img/btnconditionselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao24" region="rgOpcao4"
				focusIndex="4"
				moveDown="5"
				moveUp="3"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnconditionfocus.png"
				focusSelSrc="img/btnconditionselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao25" region="rgOpcao5"
				focusIndex="5"
				moveDown="1"
				moveUp="4"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnconditionfocus.png"
				focusSelSrc="img/btnconditionselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>

			<descriptor id="dOpcao31" region="rgOpcao1"
				focusIndex="1"
				moveDown="2"
				moveUp="5"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnservicefocus.png"
				focusSelSrc="img/btnserviceselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao32" region="rgOpcao2"
				focusIndex="2"
				moveDown="3"
				moveUp="1"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnservicefocus.png"
				focusSelSrc="img/btnserviceselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao33" region="rgOpcao3"
				focusIndex="3"
				moveDown="4"
				moveUp="2"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnservicefocus.png"
				focusSelSrc="img/btnserviceselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao34" region="rgOpcao4"
				focusIndex="4"
				moveDown="5"
				moveUp="3"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnservicefocus.png"
				focusSelSrc="img/btnserviceselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
			<descriptor id="dOpcao35" region="rgOpcao5"
				focusIndex="5"
				moveDown="1"
				moveUp="4"
				moveLeft="ixBtDisease"
				focusBorderWidth="0"
			focusSrc="img/btnservicefocus.png"
				focusSelSrc="img/btnserviceselect.png">
				<descriptorParam name="transparency" value="0.3"/>
			</descriptor>
		</descriptorBase>
		<!-- @doc Connector base: defines media behaviour -->
		<connectorBase>
			<causalConnector id="onKeySelectionStartNStopN">
				<connectorParam name="keyCode" />
				<simpleCondition role="onSelection" key="$keyCode" />
				<compoundAction operator="seq">
					<simpleAction role="start" max="unbounded" qualifier="par"/>
					<simpleAction role="stop" max="unbounded" qualifier="par"/>
				</compoundAction>
			</causalConnector>
			
			<causalConnector id="onKeySelectionStartNStopNSetN">
				<connectorParam name="keyCode"/>
				<connectorParam name="value"/>
				<simpleCondition role="onSelection" key="$keyCode"/>
				<compoundAction operator="seq">
					<simpleAction role="start" max="unbounded" qualifier="seq"/>
					<simpleAction role="stop"  max="unbounded" qualifier="seq"/>
					<simpleAction role="set"   max="unbounded" qualifier="seq" value="$value"/>
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

			<causalConnector id="onSelectionStartNStopN">
				<simpleCondition role="onSelection"/>
				<compoundAction operator="seq">
					<simpleAction role="start" max="unbounded" qualifier="par"/>
					<simpleAction role="stop" max="unbounded" qualifier="par"/>
				</compoundAction>
			</causalConnector>
			
			<causalConnector id="onSelectionStartNStopNSetN">
				<connectorParam name="value"/>
				<simpleCondition role="onSelection"/>
				<compoundAction operator="seq">
					<simpleAction role="start" max="unbounded" qualifier="seq"/>
					<simpleAction role="stop"  max="unbounded" qualifier="seq"/>
					<simpleAction role="set"   max="unbounded" qualifier="seq" value="$value"/>
				</compoundAction>
			</causalConnector>
			
			<causalConnector id="onKeySelectionStop">
				<connectorParam name="keyCode"/>
				<simpleCondition role="onSelection" key="$keyCode"/>
				<simpleAction role="stop" max="unbounded" qualifier="par"/>
			</causalConnector>
						
			<!-- @doc Conector para iniciar uma mídia
			quando outra (ou a mesma) terminar -->
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd"/>
				<simpleAction role="start"/>
			</causalConnector>
		</connectorBase>

	</head>
	<body>
		<!-- @doc STARTUP MEDIA AND LINKS -->
		<!-- @doc Port, media and connector to show and loop the main
		video on startup, for tests on virtual machines -->
		<port id="p_L0_VID_MAIN" component="m_L0_VID_MAIN"/>
		<media id="m_L0_VID_MAIN"
			src="media/corrego1.mpg"
			descriptor="d_L0_VID_MAIN"/>
		<link id="l_L0_VID_MAIN" xconnector="onEndStart">
			<bind role="onEnd" component="m_L0_VID_MAIN"/>
			<bind role="start" component="m_L0_VID_MAIN"/>
		</link>
		<!-- @doc Port and media to show on startup the button that starts the app -->
		<port id="p_L0_BTN_START_APP" component="m_L0_BTN_START_APP"/>
		<media id="m_L0_BTN_START_APP"
			src="img/L0_BTN_START_APP.png"
			descriptor="d_L0_BTN_START_APP"/>
		<!-- @doc Connector to start the app when the green button is pressed -->
		<link id="l_L0_BTN_START_APP" xconnector="onKeySelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L0_BTN_START_APP">
				<bindParam name="keyCode" value="GREEN"/>
			</bind>
			<bind role="start" component="m_L0_LOGO_APP"/>
			<bind role="start" component="m_L1_BTN_START_DISEASE"/>
			<bind role="start" component="m_L2_BTN_START_CONDITION"/>
			<bind role="start" component="m_L3_BTN_START_SERVICE"/>
			<bind role="start" component="m_L1_BTN_EXIT_APP"/>
			<bind role="stop"  component="m_L0_BTN_START_APP" />
			<bind role="set"   component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_BTN_START_DISEASE"/>
			</bind>
		</link>
		<!-- @doc Global variable that sets the button focus -->
		<media id="m_L0_PROGRAM_SETTINGS" type="application/x-ncl-settings">
		   <property name="service.currentFocus" />
		</media>
		<!-- @doc Media to show app's logo on the main menu -->
		<media id="m_L0_LOGO_APP"
			src="img/L0_LOGO_APP.png"
			descriptor="d_L0_LOGO_APP"/>
		
		<!-- @doc MAIN MENU MEDIA AND LINKS -->
		<!-- @doc Media to show on the main menu the button for the Disease option -->
		<media id="m_L1_BTN_START_DISEASE"
			src="img/L1_BTN_START_DISEASE.png"
			descriptor="d_L1_BTN_START_DISEASE"/>
		<!-- Connector to start the Disease submenu when the Disease button is selected -->
		<link id="l_L1_BTN_START_DISEASE" xconnector="onSelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L1_BTN_START_DISEASE"/>
			<bind role="start" component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="start" component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="start" component="m_L1_3_BTN_BACK_MAIN"/>
			<bind role="stop"  component="m_L1_BTN_START_DISEASE"/>
			<bind role="stop"  component="m_L2_BTN_START_CONDITION"/>
			<bind role="stop"  component="m_L3_BTN_START_SERVICE"/>
			<bind role="stop"  component="m_L1_BTN_EXIT_APP"/>
			<bind role="stop"  component="cMenu2"/>
			<bind role="stop"  component="cMenu3"/>
			<bind role="set"   component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_1_BTN_START_DIABETES"/>
			</bind>
		</link>
		<!-- @doc Media to show on the main menu the button for the Condition option -->
		<media id="m_L2_BTN_START_CONDITION"
			src="img/L2_BTN_START_CONDITION.png"
			descriptor="d_L2_BTN_START_CONDITION"/>
		<!-- Connector to start the Condition submenu when the Condition button is selected -->
		<link id="l_L2_BTN_START_CONDITION" xconnector="onSelectionStartStop">
			<bind role="onSelection" component="m_L2_BTN_START_CONDITION"/>
			<bind role="start"       component="cMenu2"/>
			<bind role="stop"        component="cMenu3"/>
		</link>
		<!-- @doc Media to show on the main menu the button for the Service option -->
		<media id="m_L3_BTN_START_SERVICE"
			src="img/L3_BTN_START_SERVICE.png"
			descriptor="d_L3_BTN_START_SERVICE"/>
		<!-- Connector to start the Service submenu when the Service button is selected -->
		<link id="l_L3_BTN_START_SERVICE" xconnector="onSelectionStartStop">
			<bind role="onSelection" component="m_L3_BTN_START_SERVICE"/>
			<bind role="start"       component="cMenu3"/>
			<bind role="stop"        component="cMenu2"/>
		</link>
		<!-- @doc Media to show on the main menu the button that stops the app -->
		<media id="m_L1_BTN_EXIT_APP"
			src="img/L1_BTN_STOP_APP.png"
			descriptor="d_L1_BTN_EXIT_APP"/>
		<!-- @doc Connector to stop the app when the red button in the main menu is pressed -->
		<link id="l_L1_BTN_STOP_APP" xconnector="onKeySelectionStartNStopN">
			<bind role="onSelection" component="m_L1_BTN_EXIT_APP">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="start" component="m_L0_BTN_START_APP"/>
			<bind role="stop" component="m_L1_BTN_EXIT_APP"/>
			<bind role="stop" component="m_L1_BTN_START_DISEASE"/>
			<bind role="stop" component="m_L2_BTN_START_CONDITION"/>
			<bind role="stop" component="m_L3_BTN_START_SERVICE"/>
			<bind role="stop" component="cMenu2"/>
			<bind role="stop" component="cMenu3"/>
			<bind role="stop" component="m_L0_LOGO_APP"/>
		</link>
		
		<!-- @doc DISEASE SUBMENU MEDIA AND LINKS -->
		<!-- @doc Media to show on the Disease submenu
		the button for the Diabetes option -->
		<media id="m_L1_1_BTN_START_DIABETES"
			src="img/L1_1_BTN_START_DIABETES.png"
			descriptor="d_L1_1_BTN_START_DIABETES"/>
		<!-- @doc Connector to start the Diabetes sub-submenu
		when the Diabetes button is selected -->
		<link id="l_L1_1_BTN_START_DIABETES" xconnector="onSelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="start" component="m_L1_1_1_BTN_START_SYMPTOMS"/>
			<bind role="start" component="m_L1_1_2_BTN_START_FREE_PUB_MED"/>
			<bind role="start" component="m_L1_1_3_BTN_START_GOV_BEN"/>
			<bind role="start" component="m_L1_1_4_BTN_START_GESTATIONAL"/>
			<bind role="start" component="m_L1_1_5_BTN_START_HEMODIALYSIS"/>
			<bind role="start" component="m_L1_1_6_BTN_START_CHILD_HEMO"/>
			<bind role="start" component="m_L1_1_7_BTN_START_DIAB_NEURO"/>
			<bind role="start" component="m_L1_1_8_BTN_START_PROGRAMS"/>
			<bind role="start" component="m_L1_1_9_BTN_START_OTHERS"/>
			<bind role="start" component="m_L1_1_10_BTN_BACK_DISEASE"/>
			<bind role="stop"  component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="stop"  component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="stop"  component="m_L1_3_BTN_BACK_MAIN"/>
			<bind role="set"   component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_1_1_BTN_START_SYMPTOMS"/>
			</bind>
		</link>
		<!-- @doc Media to show on the Disease submenu
		the button for the Hypertension option -->
		<media id="m_L1_2_BTN_START_HYPERTENSION"
			src="img/L1_2_BTN_START_HYPERTENSION.png"
			descriptor="d_L1_2_BTN_START_HYPERTENSION"/>
		<!-- @doc Connector to start the Diabetes sub-submenu
		when the Diabetes button is selected -->
		<link id="l_L1_2_BTN_START_HYPERTENSION" xconnector="onSelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="start" component="m_L1_2_1_BTN_START_SYMPTOMS"/>
			<bind role="start" component="m_L1_2_2_BTN_START_FREE_PUB_MED"/>
			<bind role="start" component="m_L1_2_3_BTN_START_GOV_BEN"/>
			<bind role="start" component="m_L1_2_4_BTN_START_PREVENTION"/>
			<bind role="start" component="m_L1_2_5_BTN_START_BASIC_SERV_NET"/>
			<bind role="start" component="m_L1_2_6_BTN_START_PROGRAMS"/>
			<bind role="start" component="m_L1_2_7_BTN_START_OTHERS"/>
			<bind role="start" component="m_L1_2_8_BTN_BACK_DISEASE"/>
			<bind role="stop"  component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="stop"  component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="stop"  component="m_L1_3_BTN_BACK_MAIN"/>
			<bind role="set"   component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_2_1_BTN_START_SYMPTOMS"/>
			</bind>
		</link>
		<!-- @doc Media to show the button to return to the
		main menu from the Disease submenu-->
		<media id="m_L1_3_BTN_BACK_MAIN"
			src="img/L4_BTN_BACK_MAIN.png"
			descriptor="d_L1_3_BTN_BACK_MAIN"/>
		<!-- @doc Connector to return to main menu from the
		Disease submenu when the red button is pressed -->
		<link id="l_L1_3_BTN_BACK_MAIN" xconnector="onKeySelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L1_3_BTN_BACK_MAIN">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="start" component="m_L1_BTN_EXIT_APP"/>
			<bind role="start" component="m_L1_BTN_START_DISEASE"/>
			<bind role="start" component="m_L2_BTN_START_CONDITION"/>
			<bind role="start" component="m_L3_BTN_START_SERVICE"/>
			<bind role="stop"  component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="stop"  component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="stop"  component="m_L1_3_BTN_BACK_MAIN"/>
			<bind role="stop"  component="cMenu2"/>
			<bind role="stop"  component="cMenu3"/>
			<bind role="set"   component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_BTN_START_DISEASE"/>
			</bind>
		</link>
		
		<!-- @doc DISEASE=>DIABETES SUBMENU MEDIA AND LINKS -->
		<!-- @doc Media to show the Disease=>Diabetes=>Symptoms button  -->
		<media id="m_L1_1_1_BTN_START_SYMPTOMS"
			src="img/L1_1_1_BTN_START_SYMPTOMS.png"
			descriptor="d_L1_1_1_BTN_START_SYMPTOMS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Symptoms box
		when the Disease=>Diabetes=>Symptoms button is pressed -->
		<link id="l_L1_1_1_BTN_START_SYMPTOMS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_1_BTN_START_SYMPTOMS"/>
			<bind role="start"       component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Free Public Medicine button  -->
		<media id="m_L1_1_2_BTN_START_FREE_PUB_MED"
			src="img/L1_1_2_BTN_START_FREE_PUB_MED.png"
			descriptor="d_L1_1_2_BTN_START_FREE_PUB_MED"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Free Public Medicine box
		when the Disease=>Diabetes=>Free Public Medicine button is pressed -->
		<link id="l_L1_1_2_BTN_START_FREE_PUB_MED" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_2_BTN_START_FREE_PUB_MED"/>
			<bind role="start"       component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Government Benefits button  -->
		<media id="m_L1_1_3_BTN_START_GOV_BEN"
			src="img/L1_1_3_BTN_START_GOV_BEN.png"
			descriptor="d_L1_1_3_BTN_START_GOV_BEN"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Government Benefits box
		when the Disease=>Diabetes=>Government Benefits button is pressed -->
		<link id="l_L1_1_3_BTN_START_GOV_BEN" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_3_BTN_START_GOV_BEN"/>
			<bind role="start"       component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Gestational Diabetes button  -->
		<media id="m_L1_1_4_BTN_START_GESTATIONAL"
			src="img/L1_1_4_BTN_START_GESTATIONAL.png"
			descriptor="d_L1_1_4_BTN_START_GESTATIONAL"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Gestational Diabetes box
		when the Disease=>Diabetes=>Gestational Diabetes button is pressed -->
		<link id="l_L1_1_4_BTN_START_GESTATIONAL" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_4_BTN_START_GESTATIONAL"/>
			<bind role="start"       component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Hemodialysis button  -->
		<media id="m_L1_1_5_BTN_START_HEMODIALYSIS"
			src="img/L1_1_5_BTN_START_HEMODIALYSIS.png"
			descriptor="d_L1_1_5_BTN_START_HEMODIALYSIS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Hemodialysis box
		when the Disease=>Diabetes=>Gestational Diabetes button is pressed -->
		<link id="l_L1_1_5_BTN_START_HEMODIALYSIS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_5_BTN_START_HEMODIALYSIS"/>
			<bind role="start"       component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Children Hemodialysis button  -->
		<media id="m_L1_1_6_BTN_START_CHILD_HEMO"
			src="img/L1_1_6_BTN_START_CHILD_HEMO.png"
			descriptor="d_L1_1_6_BTN_START_CHILD_HEMO"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Children Hemodialysis box
		when the Disease=>Diabetes=>Children Hemodialysis button is pressed -->
		<link id="l_L1_1_6_BTN_START_CHILD_HEMO" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_6_BTN_START_CHILD_HEMO"/>
			<bind role="start"       component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Diabetic Neuropathies button  -->
		<media id="m_L1_1_7_BTN_START_DIAB_NEURO"
			src="img/L1_1_7_BTN_START_DIAB_NEURO.png"
			descriptor="d_L1_1_7_BTN_START_DIAB_NEURO"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Diabetic Neuropathies box
		when the Disease=>Diabetes=>Diabetic Neuropathies button is pressed -->
		<link id="l_L1_1_7_BTN_START_DIAB_NEURO" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_7_BTN_START_DIAB_NEURO"/>
			<bind role="start"       component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Programs button  -->
		<media id="m_L1_1_8_BTN_START_PROGRAMS"
			src="img/L1_1_8_BTN_START_PROGRAMS.png"
			descriptor="d_L1_1_8_BTN_START_PROGRAMS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Programs box
		when the Disease=>Diabetes=>Programs button is pressed -->
		<link id="l_L1_1_8_BTN_START_PROGRAMS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_8_BTN_START_PROGRAMS"/>
			<bind role="start"       component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_9_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Other Initiatives button  -->
		<media id="m_L1_1_9_BTN_START_OTHERS"
			src="img/L1_1_9_BTN_START_OTHERS.png"
			descriptor="d_L1_1_9_BTN_START_OTHERS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Other Initiatives box
		when the Disease=>Diabetes=>Other Initiatives button is pressed -->
		<link id="l_L1_1_9_BTN_START_OTHERS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_1_9_BTN_START_OTHERS"/>
			<bind role="start"       component="m_L1_1_9_BOX_OTHERS"/>
			<bind role="stop"        component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"        component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"        component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"        component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"        component="m_L1_1_8_BOX_PROGRAMS"/>
		</link>
		<!-- @doc Media to show the button to return
		from Disease=>Diabetes to Disease -->
		<media id="m_L1_1_10_BTN_BACK_DISEASE"
			src="img/L4_BTN_BACK_MAIN.png"
			descriptor="d_L1_1_10_BTN_BACK_DISEASE"/>
		<!-- @doc Connector to return from Disease=>Diabetes
		to Disease when the red button is pressed -->
		<link id="l_L1_1_10_BTN_BACK_DISEASE" xconnector="onKeySelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L1_1_10_BTN_BACK_DISEASE">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="start" component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="start" component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="start" component="m_L1_3_BTN_BACK_MAIN"/>
			<bind role="stop"  component="m_L1_1_1_BOX_SYMPTOMS"/>
			<bind role="stop"  component="m_L1_1_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"  component="m_L1_1_3_BOX_GOV_BEN"/>
			<bind role="stop"  component="m_L1_1_4_BOX_GESTATIONAL"/>
			<bind role="stop"  component="m_L1_1_5_BOX_HEMODIALYSIS"/>
			<bind role="stop"  component="m_L1_1_6_BOX_CHILD_HEMO"/>
			<bind role="stop"  component="m_L1_1_7_BOX_DIAB_NEURO"/>
			<bind role="stop"  component="m_L1_1_8_BOX_PROGRAMS"/>
			<bind role="stop"  component="m_L1_1_9_BOX_OTHERS"/>
			<bind role="stop"  component="m_L1_1_1_BTN_START_SYMPTOMS"/>
			<bind role="stop"  component="m_L1_1_2_BTN_START_FREE_PUB_MED"/>
			<bind role="stop"  component="m_L1_1_3_BTN_START_GOV_BEN"/>
			<bind role="stop"  component="m_L1_1_4_BTN_START_GESTATIONAL"/>
			<bind role="stop"  component="m_L1_1_5_BTN_START_HEMODIALYSIS"/>
			<bind role="stop"  component="m_L1_1_6_BTN_START_CHILD_HEMO"/>
			<bind role="stop"  component="m_L1_1_7_BTN_START_DIAB_NEURO"/>
			<bind role="stop"  component="m_L1_1_8_BTN_START_PROGRAMS"/>
			<bind role="stop"  component="m_L1_1_9_BTN_START_OTHERS"/>
			<bind role="stop"  component="m_L1_1_10_BTN_BACK_DISEASE"/>
			<bind role="stop"  component="cMenu2"/>
			<bind role="stop"  component="cMenu3"/>
			<bind role="set"         component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_1_BTN_START_DIABETES"/>
			</bind>
		</link>

		<media id="m_L1_1_1_BOX_SYMPTOMS"
			src="img/L1_1_1_BOX_SYMPTOMS.png"
			descriptor="d_L1_1_1_BOX_SYMPTOMS"/>
		<media id="m_L1_1_2_BOX_FREE_PUB_MED"
			src="img/L1_1_2_BOX_FREE_PUB_MED.png"
			descriptor="d_L1_1_2_BOX_FREE_PUB_MED"/>
		<media id="m_L1_1_3_BOX_GOV_BEN"
			src="img/L1_1_3_BOX_GOV_BEN.png"
			descriptor="d_L1_1_3_BOX_GOV_BEN"/>
		<media id="m_L1_1_4_BOX_GESTATIONAL"
			src="img/L1_1_4_BOX_GESTATIONAL.png"
			descriptor="d_L1_1_4_BOX_GESTATIONAL"/>
		<media id="m_L1_1_5_BOX_HEMODIALYSIS"
			src="img/L1_1_5_BOX_HEMODIALYSIS.png"
			descriptor="d_L1_1_5_BOX_HEMODIALYSIS"/>
		<media id="m_L1_1_6_BOX_CHILD_HEMO"
			src="img/L1_1_6_BOX_CHILD_HEMO.png"
			descriptor="d_L1_1_6_BOX_CHILD_HEMO"/>
		<media id="m_L1_1_7_BOX_DIAB_NEURO"
			src="img/L1_1_7_BOX_DIAB_NEURO.png"
			descriptor="d_L1_1_7_BOX_DIAB_NEURO"/>
		<media id="m_L1_1_8_BOX_PROGRAMS"
			src="img/L1_1_8_BOX_PROGRAMS.png"
			descriptor="d_L1_1_8_BOX_PROGRAMS"/>
		<media id="m_L1_1_9_BOX_OTHERS"
			src="img/L1_1_9_BOX_OTHERS.png"
			descriptor="d_L1_1_9_BOX_OTHERS"/>
		
		<!-- @doc DISEASE=>HYPERTENSION SUBMENU MEDIA AND LINKS -->
		<!-- @doc Media to show the Disease=>Diabetes=>Symptoms button  -->
		<media id="m_L1_2_1_BTN_START_SYMPTOMS"
			src="img/L1_1_1_BTN_START_SYMPTOMS.png"
			descriptor="d_L1_2_1_BTN_START_SYMPTOMS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Symptoms box
		when the Disease=>Diabetes=>Symptoms button is pressed -->
		<link id="l_L1_2_1_BTN_START_SYMPTOMS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_1_BTN_START_SYMPTOMS"/>
			<bind role="start"       component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_2_7_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Free Public Medicine button  -->
		<media id="m_L1_2_2_BTN_START_FREE_PUB_MED"
			src="img/L1_1_2_BTN_START_FREE_PUB_MED.png"
			descriptor="d_L1_2_2_BTN_START_FREE_PUB_MED"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Free Public Medicine box
		when the Disease=>Diabetes=>Free Public Medicine button is pressed -->
		<link id="l_L1_2_2_BTN_START_FREE_PUB_MED" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_2_BTN_START_FREE_PUB_MED"/>
			<bind role="start"       component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_2_7_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Government Benefits button  -->
		<media id="m_L1_2_3_BTN_START_GOV_BEN"
			src="img/L1_1_3_BTN_START_GOV_BEN.png"
			descriptor="d_L1_2_3_BTN_START_GOV_BEN"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Government Benefits box
		when the Disease=>Diabetes=>Government Benefits button is pressed -->
		<link id="l_L1_2_3_BTN_START_GOV_BEN" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_3_BTN_START_GOV_BEN"/>
			<bind role="start"       component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_2_7_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Gestational Diabetes button  -->
		<media id="m_L1_2_4_BTN_START_PREVENTION"
			src="img/L1_2_4_BTN_START_PREVENTION.png"
			descriptor="d_L1_2_4_BTN_START_PREVENTION"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Gestational Diabetes box
		when the Disease=>Diabetes=>Gestational Diabetes button is pressed -->
		<link id="l_L1_2_4_BTN_START_PREVENTION" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_4_BTN_START_PREVENTION"/>
			<bind role="start"       component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_2_7_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Hemodialysis button  -->
		<media id="m_L1_2_5_BTN_START_BASIC_SERV_NET"
			src="img/L1_2_5_BTN_START_BASIC_SERV_NET.png"
			descriptor="d_L1_2_5_BTN_START_BASIC_SERV_NET"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Hemodialysis box
		when the Disease=>Diabetes=>Gestational Diabetes button is pressed -->
		<link id="l_L1_2_5_BTN_START_BASIC_SERV_NET" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_5_BTN_START_BASIC_SERV_NET"/>
			<bind role="start"       component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_2_7_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Children Hemodialysis button  -->
		<media id="m_L1_2_6_BTN_START_PROGRAMS"
			src="img/L1_1_8_BTN_START_PROGRAMS.png"
			descriptor="d_L1_2_6_BTN_START_PROGRAMS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Children Hemodialysis box
		when the Disease=>Diabetes=>Children Hemodialysis button is pressed -->
		<link id="l_L1_2_6_BTN_START_PROGRAMS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_6_BTN_START_PROGRAMS"/>
			<bind role="start"       component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"        component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_7_BOX_OTHERS"/>
		</link>
		<!-- @doc Media to show the Disease=>Diabetes=>Diabetic Neuropathies button  -->
		<media id="m_L1_2_7_BTN_START_OTHERS"
			src="img/L1_1_9_BTN_START_OTHERS.png"
			descriptor="d_L1_2_7_BTN_START_OTHERS"/>
		<!-- @doc Media to open the Disease=>Diabetes=>Diabetic Neuropathies box
		when the Disease=>Diabetes=>Diabetic Neuropathies button is pressed -->
		<link id="l_L1_2_7_BTN_START_OTHERS" xconnector="onSelectionStartNStopN">
			<bind role="onSelection" component="m_L1_2_7_BTN_START_OTHERS"/>
			<bind role="start"       component="m_L1_2_7_BOX_OTHERS"/>
			<bind role="stop"        component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"        component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"        component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"        component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"        component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"        component="m_L1_2_6_BOX_PROGRAMS"/>
		</link>
		<!-- @doc Media to show the button to return
		from Disease=>Diabetes to Disease -->
		<media id="m_L1_2_8_BTN_BACK_DISEASE"
			src="img/L4_BTN_BACK_MAIN.png"
			descriptor="d_L1_2_8_BTN_BACK_DISEASE"/>
		<!-- @doc Connector to return from Disease=>Diabetes
		to Disease when the red button is pressed -->
		<link id="l_L1_2_8_BTN_BACK_DISEASE" xconnector="onKeySelectionStartNStopNSetN">
			<bind role="onSelection" component="m_L1_2_8_BTN_BACK_DISEASE">
				<bindParam name="keyCode" value="RED"/>
			</bind>
			<bind role="start" component="m_L1_1_BTN_START_DIABETES"/>
			<bind role="start" component="m_L1_2_BTN_START_HYPERTENSION"/>
			<bind role="start" component="m_L1_3_BTN_BACK_MAIN"/>
			<bind role="stop"  component="m_L1_2_1_BOX_SYMPTOMS"/>
			<bind role="stop"  component="m_L1_2_2_BOX_FREE_PUB_MED"/>
			<bind role="stop"  component="m_L1_2_3_BOX_GOV_BEN"/>
			<bind role="stop"  component="m_L1_2_4_BOX_PREVENTION"/>
			<bind role="stop"  component="m_L1_2_5_BOX_BASIC_SERV_NET"/>
			<bind role="stop"  component="m_L1_2_6_BOX_PROGRAMS"/>
			<bind role="stop"  component="m_L1_2_7_BOX_OTHERS"/>
			<bind role="stop"  component="m_L1_2_1_BTN_START_SYMPTOMS"/>
			<bind role="stop"  component="m_L1_2_2_BTN_START_FREE_PUB_MED"/>
			<bind role="stop"  component="m_L1_2_3_BTN_START_GOV_BEN"/>
			<bind role="stop"  component="m_L1_2_4_BTN_START_PREVENTION"/>
			<bind role="stop"  component="m_L1_2_5_BTN_START_BASIC_SERV_NET"/>
			<bind role="stop"  component="m_L1_2_6_BTN_START_PROGRAMS"/>
			<bind role="stop"  component="m_L1_2_7_BTN_START_OTHERS"/>
			<bind role="stop"  component="m_L1_2_8_BTN_BACK_DISEASE"/>
			<bind role="stop"  component="cMenu2"/>
			<bind role="stop"  component="cMenu3"/>
			<bind role="set"         component="m_L0_PROGRAM_SETTINGS" interface="service.currentFocus">
				<bindParam name="value" value="ix_L1_2_BTN_START_HYPERTENSION"/>
			</bind>
		</link>

		<media id="m_L1_2_1_BOX_SYMPTOMS"
			src="img/L1_2_1_BOX_SYMPTOMS.png"
			descriptor="d_L1_2_1_BOX_SYMPTOMS"/>
		<media id="m_L1_2_2_BOX_FREE_PUB_MED"
			src="img/L1_2_2_BOX_FREE_PUB_MED.png"
			descriptor="d_L1_2_2_BOX_FREE_PUB_MED"/>
		<media id="m_L1_2_3_BOX_GOV_BEN"
			src="img/L1_1_3_BOX_GOV_BEN.png"
			descriptor="d_L1_2_3_BOX_GOV_BEN"/>
		<media id="m_L1_2_4_BOX_PREVENTION"
			src="img/L1_2_4_BOX_PREVENTION.png"
			descriptor="d_L1_2_4_BOX_PREVENTION"/>
		<media id="m_L1_2_5_BOX_BASIC_SERV_NET"
			src="img/L1_2_5_BOX_BASIC_SERV_NET.png"
			descriptor="d_L1_2_5_BOX_BASIC_SERV_NET"/>
		<media id="m_L1_2_6_BOX_PROGRAMS"
			src="img/L1_2_6_BOX_PROGRAMS.png"
			descriptor="d_L1_2_6_BOX_PROGRAMS"/>
		<media id="m_L1_2_7_BOX_OTHERS"
			src="img/L1_2_7_BOX_OTHERS.png"
			descriptor="d_L1_2_7_BOX_OTHERS"/>

		<context id="cMenu2">
			<port id="pMenu20" component="fundoMenu2"/>
			<port id="pMenu21" component="opcao21"/>
			<port id="pMenu22" component="opcao22"/>
			<port id="pMenu23" component="opcao23"/>
			<port id="pMenu24" component="opcao24"/>
			<!-- <port id="pMenu25" component="opcao25"/> -->
			<media id="opcao21"
				src="img/L2_BTN_START_CONDITION.png"
				descriptor="dOpcao21"/>
			<media id="opcao22"
				src="img/L2_BTN_START_CONDITION.png"
				descriptor="dOpcao22"/>
			<media id="opcao23"
				src="img/L2_BTN_START_CONDITION.png"
				descriptor="dOpcao23"/>
			<media id="opcao24"
				src="img/L2_BTN_START_CONDITION.png"
				descriptor="dOpcao24"/>
			<media id="Text2"
				src="txt/text2.txt"
				descriptor="dText2"/>

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
		</context>
		<context id="cMenu3">
			<port id="pMenu30" component="fundoMenu3"/>
			<port id="pMenu31" component="opcao31"/>
			<port id="pMenu32" component="opcao32"/>
			<port id="pMenu33" component="opcao33"/>
			<port id="pMenu34" component="opcao34"/>
			<port id="pMenu35" component="opcao35"/>
			<media id="opcao31"
				src="img/L3_BTN_START_SERVICE.png"
				descriptor="dOpcao31"/>
			<media id="opcao32"
				src="img/L3_BTN_START_SERVICE.png"
				descriptor="dOpcao32"/>
			<media id="opcao33"
				src="img/L3_BTN_START_SERVICE.png"
				descriptor="dOpcao33"/>
			<media id="opcao34"
				src="img/L3_BTN_START_SERVICE.png"
				descriptor="dOpcao34"/>
			<media id="opcao35"
				src="img/L3_BTN_START_SERVICE.png"
				descriptor="dOpcao35"/>
			<media id="Text3"
				 src="txt/text2.txt"
				descriptor="dText3"/>

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
	</body>
</ncl>
