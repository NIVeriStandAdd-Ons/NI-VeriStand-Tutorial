<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">false</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="NI VeriStand 2014" Type="Folder" URL="../NI VeriStand 2014">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Tutorial" Type="Folder" URL="../Tutorial">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="XML Writer.exe" Type="Document" URL="../XML Writer.exe"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_VS Workspace ExecutionAPI.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Workspace/NI_VS Workspace ExecutionAPI.lvlib"/>
				<Item Name="UnpackedFlatVectorToMatrix.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/UnpackedFlatVectorToMatrix.vi"/>
				<Item Name="MergeError.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/MergeError.vi"/>
				<Item Name="PackedMatrixToFlatVector.vi" Type="VI" URL="/&lt;vilib&gt;/NI VeriStand/Execution/Shared/PackedMatrixToFlatVector.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Read Characters From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Characters From File.vi"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/Numeric/LVNumericRepresentation.ctl"/>
				<Item Name="NI_VS UI Single Node Browser.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI Veristand/UI Controls/Single Node Browser/NI_VS UI Single Node Browser.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="LV3DPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LV3DPointTypeDef.ctl"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="LVSceneTextAlignment.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSceneTextAlignment.ctl"/>
				<Item Name="LVTextureCoordinateArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVTextureCoordinateArrayTypeDef.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
			</Item>
			<Item Name="NationalInstruments.VeriStand.ClientAPI" Type="Document" URL="NationalInstruments.VeriStand.ClientAPI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand" Type="Document" URL="NationalInstruments.VeriStand">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand.SystemStorageUI" Type="Document" URL="NationalInstruments.VeriStand.SystemStorageUI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand.SystemStorage" Type="Document" URL="NationalInstruments.VeriStand.SystemStorage">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="cluster_Screen Item Settings.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/cluster_Screen Item Settings.ctl"/>
			<Item Name="cluster_Graph Scale Settings.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/cluster_Graph Scale Settings.ctl"/>
			<Item Name="cluster_Graph Plot Settings.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/cluster_Graph Plot Settings.ctl"/>
			<Item Name="enum_Display Template Handler Minimal To Widget Msg.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/enum_Display Template Handler Minimal To Widget Msg.ctl"/>
			<Item Name="enum_Display Template Handler Minimal To Workspace.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/enum_Display Template Handler Minimal To Workspace.ctl"/>
			<Item Name="System Directory Type.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/System Directory Type.ctl"/>
			<Item Name="Data.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Data.ctl"/>
			<Item Name="Get System Directory.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Get System Directory.vi"/>
			<Item Name="sub_Display Template Handler Custom.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/sub_Display Template Handler Custom.vi"/>
			<Item Name="General Error Handler.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/General Error Handler.vi"/>
			<Item Name="DialogType.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/DialogType.ctl"/>
			<Item Name="DialogTypeEnum.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/DialogTypeEnum.ctl"/>
			<Item Name="whitespace.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/whitespace.ctl"/>
			<Item Name="Check Special Tags.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Check Special Tags.vi"/>
			<Item Name="TagReturnType.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/TagReturnType.ctl"/>
			<Item Name="Set String Value.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Set String Value.vi"/>
			<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/GetRTHostConnectedProp.vi"/>
			<Item Name="Error Code Database.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Error Code Database.vi"/>
			<Item Name="Trim Whitespace.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Trim Whitespace.vi"/>
			<Item Name="Format Message String.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Format Message String.vi"/>
			<Item Name="Find Tag.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Find Tag.vi"/>
			<Item Name="Search and Replace Pattern.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Search and Replace Pattern.vi"/>
			<Item Name="Set Bold Text.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Set Bold Text.vi"/>
			<Item Name="Details Display Dialog.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Details Display Dialog.vi"/>
			<Item Name="ErrWarn.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/ErrWarn.ctl"/>
			<Item Name="eventvkey.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/eventvkey.ctl"/>
			<Item Name="Clear Errors.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Clear Errors.vi"/>
			<Item Name="Not Found Dialog.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Not Found Dialog.vi"/>
			<Item Name="Three Button Dialog.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Three Button Dialog.vi"/>
			<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Three Button Dialog CORE.vi"/>
			<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Longest Line Length in Pixels.vi"/>
			<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Convert property node font to graphics font.vi"/>
			<Item Name="Get Text Rect.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Get Text Rect.vi"/>
			<Item Name="Get String Text Bounds.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Get String Text Bounds.vi"/>
			<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/LVBoundsTypeDef.ctl"/>
			<Item Name="BuildHelpPath.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/BuildHelpPath.vi"/>
			<Item Name="GetHelpDir.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/GetHelpDir.vi"/>
			<Item Name="NI_VS Workspace ExecutionAPI.lvlib" Type="Library" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/NI_VS Workspace ExecutionAPI.lvlib"/>
			<Item Name="MergeError.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/MergeError.vi"/>
			<Item Name="Helicopter - Config Dialog.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Helicopter - Config Dialog.vi"/>
			<Item Name="NI_VS UI Single Node Browser.lvlib" Type="Library" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/NI_VS UI Single Node Browser.lvlib"/>
			<Item Name="Helicopter - Draw Model.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/Helicopter - Draw Model.vi"/>
			<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/NI_3D Picture Control.lvlib"/>
			<Item Name="cluster_Graph Handler Message.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/cluster_Graph Handler Message.ctl"/>
			<Item Name="enum_Graph Handler Message.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/enum_Graph Handler Message.ctl"/>
			<Item Name="sub_Display Template Handler Numeric.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/sub_Display Template Handler Numeric.vi"/>
			<Item Name="sub_Display Template Data Handler Numeric.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/sub_Display Template Data Handler Numeric.vi"/>
			<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/General Error Handler Core CORE.vi"/>
			<Item Name="LVRectTypeDef.ctl" Type="VI" URL="../NI VeriStand 2014/Display Templates/HeliSubVI LLB.ll_/LVRectTypeDef.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Vista &amp; Later" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{EEF30456-A116-458C-9E62-182B58CE29F2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">Users</Property>
				<Property Name="Destination[1].parent" Type="Str">{C63B6F86-C439-4240-9AAE-EC6A9DDD0A29}</Property>
				<Property Name="Destination[1].tag" Type="Str">{66DA7A26-BD22-4E61-88E2-2F904A9CB0C7}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">Public</Property>
				<Property Name="Destination[2].parent" Type="Str">{66DA7A26-BD22-4E61-88E2-2F904A9CB0C7}</Property>
				<Property Name="Destination[2].tag" Type="Str">{F537D938-FEA6-4847-AFB7-9E29A4D85C17}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">Documents</Property>
				<Property Name="Destination[3].parent" Type="Str">{F537D938-FEA6-4847-AFB7-9E29A4D85C17}</Property>
				<Property Name="Destination[3].tag" Type="Str">{60191736-FEAE-4057-A72C-5D3BD8253E03}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">National Instruments</Property>
				<Property Name="Destination[4].parent" Type="Str">{60191736-FEAE-4057-A72C-5D3BD8253E03}</Property>
				<Property Name="Destination[4].tag" Type="Str">{7425988C-1363-48A9-9244-5C741BB61F56}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">NI VeriStand 2014</Property>
				<Property Name="Destination[5].parent" Type="Str">{7425988C-1363-48A9-9244-5C741BB61F56}</Property>
				<Property Name="Destination[5].tag" Type="Str">{74E427ED-824A-4501-B464-2ABC5777235E}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="Destination[6].name" Type="Str">Projects</Property>
				<Property Name="Destination[6].parent" Type="Str">{74E427ED-824A-4501-B464-2ABC5777235E}</Property>
				<Property Name="Destination[6].tag" Type="Str">{F88ED9F2-C6D8-4F1D-BCDC-DBB253571165}</Property>
				<Property Name="Destination[6].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">/C/Users/NIIBMDemo2/Documents/software only/Installer/Vista &amp; Later</Property>
				<Property Name="INST_buildSpecName" Type="Str">Vista &amp; Later</Property>
				<Property Name="INST_defaultDir" Type="Str">{7425988C-1363-48A9-9244-5C741BB61F56}</Property>
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_productName" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.38</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">14008034</Property>
				<Property Name="MSI_arpCompany" Type="Str">National Instruments</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.ni.com/veristand</Property>
				<Property Name="MSI_distID" Type="Str">{65483C0B-56E1-4424-A65A-DE826B84136E}</Property>
				<Property Name="MSI_osCheck" Type="Int">2</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{7B471DF3-EBBB-4D33-9496-C5624681CDEF}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Select your NI public documents directory.</Property>
				<Property Name="MSI_windowTitle" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{EEF30456-A116-458C-9E62-182B58CE29F2}</Property>
				<Property Name="Source[0].name" Type="Str">XML Writer.exe</Property>
				<Property Name="Source[0].runEXE" Type="Bool">true</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/XML Writer.exe</Property>
				<Property Name="Source[0].type" Type="Str">File</Property>
				<Property Name="Source[1].dest" Type="Str">{F88ED9F2-C6D8-4F1D-BCDC-DBB253571165}</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{F88ED9F2-C6D8-4F1D-BCDC-DBB253571165}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">NI VeriStand Tutorial.pdf</Property>
				<Property Name="Source[1].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[1].File[0].Shortcut[0].name" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="Source[1].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[1].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[1].File[0].tag" Type="Ref">/My Computer/Tutorial/NI VeriStand Tutorial.pdf</Property>
				<Property Name="Source[1].FileCount" Type="Int">1</Property>
				<Property Name="Source[1].name" Type="Str">Tutorial</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Tutorial</Property>
				<Property Name="Source[1].type" Type="Str">Folder</Property>
				<Property Name="Source[2].dest" Type="Str">{7425988C-1363-48A9-9244-5C741BB61F56}</Property>
				<Property Name="Source[2].File[0].dest" Type="Str">{7425988C-1363-48A9-9244-5C741BB61F56}</Property>
				<Property Name="Source[2].File[0].name" Type="Str">fan.wrl</Property>
				<Property Name="Source[2].File[0].tag" Type="Ref">/My Computer/NI VeriStand 2014/Display Templates/fan.wrl</Property>
				<Property Name="Source[2].FileCount" Type="Int">1</Property>
				<Property Name="Source[2].name" Type="Str">NI VeriStand 2014</Property>
				<Property Name="Source[2].tag" Type="Ref">/My Computer/NI VeriStand 2014</Property>
				<Property Name="Source[2].type" Type="Str">Folder</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
			<Item Name="XP" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{EEF30456-A116-458C-9E62-182B58CE29F2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">Documents and Settings</Property>
				<Property Name="Destination[1].parent" Type="Str">{C63B6F86-C439-4240-9AAE-EC6A9DDD0A29}</Property>
				<Property Name="Destination[1].tag" Type="Str">{C9B42989-9910-4BB7-A822-93218F98F522}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">All Users</Property>
				<Property Name="Destination[2].parent" Type="Str">{C9B42989-9910-4BB7-A822-93218F98F522}</Property>
				<Property Name="Destination[2].tag" Type="Str">{D9994013-839A-47F6-8397-0151B485F2B6}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">Documents</Property>
				<Property Name="Destination[3].parent" Type="Str">{D9994013-839A-47F6-8397-0151B485F2B6}</Property>
				<Property Name="Destination[3].tag" Type="Str">{59746E03-38DC-4F10-99DB-49761359B841}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">National Instruments</Property>
				<Property Name="Destination[4].parent" Type="Str">{59746E03-38DC-4F10-99DB-49761359B841}</Property>
				<Property Name="Destination[4].tag" Type="Str">{758F1A6A-4A68-4CB9-A8A5-45B056AEECB6}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">NI VeriStand 2014</Property>
				<Property Name="Destination[5].parent" Type="Str">{758F1A6A-4A68-4CB9-A8A5-45B056AEECB6}</Property>
				<Property Name="Destination[5].tag" Type="Str">{EEC8EBAE-11FA-420A-AC06-8067B6621740}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="Destination[6].name" Type="Str">Projects</Property>
				<Property Name="Destination[6].parent" Type="Str">{EEC8EBAE-11FA-420A-AC06-8067B6621740}</Property>
				<Property Name="Destination[6].tag" Type="Str">{6DFBD186-9F44-450F-B9B9-AFF434CDC134}</Property>
				<Property Name="Destination[6].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">/C/Users/NIIBMDemo2/Documents/software only/Installer/XP</Property>
				<Property Name="INST_buildSpecName" Type="Str">XP</Property>
				<Property Name="INST_defaultDir" Type="Str">{758F1A6A-4A68-4CB9-A8A5-45B056AEECB6}</Property>
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_productName" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.34</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">14008034</Property>
				<Property Name="MSI_arpCompany" Type="Str">National Instruments</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.ni.com/veristand</Property>
				<Property Name="MSI_distID" Type="Str">{286D25ED-F67F-4D9B-BD90-DC405A7E6BB2}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{7B471DF3-EBBB-4D33-9496-C5624681CDEF}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Select your NI public documents directory. Windows Vista &amp; 7 users: the directory picked by default is NOT correct, you must modify this directory to &lt;Drive&gt;:\Users\Public\Documents\National Instruments</Property>
				<Property Name="MSI_windowTitle" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{EEF30456-A116-458C-9E62-182B58CE29F2}</Property>
				<Property Name="Source[0].name" Type="Str">XML Writer.exe</Property>
				<Property Name="Source[0].runEXE" Type="Bool">true</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/XML Writer.exe</Property>
				<Property Name="Source[0].type" Type="Str">File</Property>
				<Property Name="Source[1].dest" Type="Str">{758F1A6A-4A68-4CB9-A8A5-45B056AEECB6}</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{758F1A6A-4A68-4CB9-A8A5-45B056AEECB6}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">fan.wrl</Property>
				<Property Name="Source[1].File[0].tag" Type="Ref">/My Computer/NI VeriStand 2014/Display Templates/fan.wrl</Property>
				<Property Name="Source[1].FileCount" Type="Int">1</Property>
				<Property Name="Source[1].name" Type="Str">NI VeriStand 2014</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/NI VeriStand 2014</Property>
				<Property Name="Source[1].type" Type="Str">Folder</Property>
				<Property Name="Source[2].dest" Type="Str">{6DFBD186-9F44-450F-B9B9-AFF434CDC134}</Property>
				<Property Name="Source[2].File[0].dest" Type="Str">{6DFBD186-9F44-450F-B9B9-AFF434CDC134}</Property>
				<Property Name="Source[2].File[0].name" Type="Str">NI VeriStand Tutorial.pdf</Property>
				<Property Name="Source[2].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[2].File[0].Shortcut[0].name" Type="Str">NI VeriStand 2014 Tutorial</Property>
				<Property Name="Source[2].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[2].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[2].File[0].tag" Type="Ref">/My Computer/Tutorial/NI VeriStand Tutorial.pdf</Property>
				<Property Name="Source[2].FileCount" Type="Int">1</Property>
				<Property Name="Source[2].name" Type="Str">Tutorial</Property>
				<Property Name="Source[2].tag" Type="Ref">/My Computer/Tutorial</Property>
				<Property Name="Source[2].type" Type="Str">Folder</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
		</Item>
	</Item>
</Project>
