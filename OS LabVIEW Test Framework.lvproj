<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="26008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">26.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Config" Type="Folder">
			<Item Name="bootstrap.json" Type="Document" URL="../Config/bootstrap.json"/>
			<Item Name="users.json" Type="Document" URL="../Config/users.json"/>
		</Item>
		<Item Name="Data" Type="Folder"/>
		<Item Name="Logs" Type="Folder"/>
		<Item Name="Packages" Type="Folder"/>
		<Item Name="Plugins" Type="Folder"/>
		<Item Name="Shared" Type="Folder"/>
		<Item Name="Source" Type="Folder">
			<Item Name="Adapters" Type="Folder">
				<Item Name="GenericExecution" Type="Folder">
					<Item Name="Generic Execution Adapter.lvclass" Type="LVClass" URL="../Source/Adapters/Generic Execution Adapter/Generic Execution Adapter.lvclass"/>
				</Item>
			</Item>
			<Item Name="Application" Type="Folder">
				<Item Name="App Controller.lvclass" Type="LVClass" URL="../Source/Application/App Controller/App Controller.lvclass"/>
				<Item Name="Main.vi" Type="VI" URL="../Source/Application/Main.vi"/>
			</Item>
			<Item Name="Core" Type="Folder">
				<Item Name="Error Manager.lvclass" Type="LVClass" URL="../Source/Core/Error Manager/Error Manager.lvclass"/>
				<Item Name="Execution Manager.lvclass" Type="LVClass" URL="../Source/Core/Execution Manager/Execution Manager.lvclass"/>
				<Item Name="Framework Engine.lvclass" Type="LVClass" URL="../Source/Core/Framework Engine/Framework Engine.lvclass"/>
				<Item Name="Message Bus.lvclass" Type="LVClass" URL="../Source/Core/Message Bus/Message Bus.lvclass"/>
				<Item Name="Service Locator.lvclass" Type="LVClass" URL="../Source/Core/Service Locator/Service Locator.lvclass"/>
				<Item Name="Session Manager.lvclass" Type="LVClass" URL="../Source/Core/Session Manager/Session Manager.lvclass"/>
			</Item>
			<Item Name="Domain" Type="Folder">
				<Item Name="Audit Event.lvclass" Type="LVClass" URL="../Source/Domain/Audit Event/Audit Event.lvclass"/>
				<Item Name="Package Manifest.lvclass" Type="LVClass" URL="../Source/Domain/Package Manifest/Package Manifest.lvclass"/>
				<Item Name="Permission.lvclass" Type="LVClass" URL="../Source/Domain/Permission/Permission.lvclass"/>
				<Item Name="Readiness Report.lvclass" Type="LVClass" URL="../Source/Domain/Readiness Report/Readiness Report.lvclass"/>
				<Item Name="Role.lvclass" Type="LVClass" URL="../Source/Domain/Role/Role.lvclass"/>
				<Item Name="Session.lvclass" Type="LVClass" URL="../Source/Domain/Session/Session.lvclass"/>
				<Item Name="Setting Value.lvclass" Type="LVClass" URL="../Source/Domain/Setting Value/Setting Value.lvclass"/>
				<Item Name="Test Package.lvclass" Type="LVClass" URL="../Source/Domain/Test Package/Test Package.lvclass"/>
				<Item Name="Test Run Request.lvclass" Type="LVClass" URL="../Source/Domain/Test Run Request/Test Run Request.lvclass"/>
				<Item Name="Test Run Result.lvclass" Type="LVClass" URL="../Source/Domain/Test Run Result/Test Run Result.lvclass"/>
				<Item Name="User.lvclass" Type="LVClass" URL="../Source/Domain/User/User.lvclass"/>
			</Item>
			<Item Name="Interfaces" Type="Folder">
				<Item Name="I Audit Repository.lvclass" Type="LVClass" URL="../Source/Interfaces/I Audit Repository/I Audit Repository.lvclass"/>
				<Item Name="I Authentication Provider.lvclass" Type="LVClass" URL="../Source/Interfaces/I Authentication Provider/I Authentication Provider.lvclass"/>
				<Item Name="I Execution Adapter.lvclass" Type="LVClass" URL="../Source/Interfaces/I Execution Adapter/I Execution Adapter.lvclass"/>
				<Item Name="I Integrity Provider.lvclass" Type="LVClass" URL="../Source/Interfaces/I Integrity Provider/I Integrity Provider.lvclass"/>
				<Item Name="I Package Repository.lvclass" Type="LVClass" URL="../Source/Interfaces/I Package Repository/I Package Repository.lvclass"/>
				<Item Name="I Result Provider.lvclass" Type="LVClass" URL="../Source/Interfaces/I Result Provider/I Result Provider.lvclass"/>
				<Item Name="I Settings Provider.lvclass" Type="LVClass" URL="../Source/Interfaces/I Settings Provider/I Settings Provider.lvclass"/>
			</Item>
			<Item Name="Messages" Type="Folder">
				<Item Name="Commands" Type="Folder">
					<Item Name="Install Package Command.ctl" Type="VI" URL="../Source/Messages/Commands/Install Package Command.ctl"/>
					<Item Name="Login Command.ctl" Type="VI" URL="../Source/Messages/Commands/Login Command.ctl"/>
					<Item Name="Logout Command.ctl" Type="VI" URL="../Source/Messages/Commands/Logout Command.ctl"/>
					<Item Name="Refresh Settings Command.ctl" Type="VI" URL="../Source/Messages/Commands/Refresh Settings Command.ctl"/>
					<Item Name="Run Test Command.ctl" Type="VI" URL="../Source/Messages/Commands/Run Test Command.ctl"/>
					<Item Name="Uninstall Package Command.ctl" Type="VI" URL="../Source/Messages/Commands/Uninstall Package Command.ctl"/>
				</Item>
				<Item Name="Events" Type="Folder">
					<Item Name="Error Event.ctl" Type="VI" URL="../Source/Messages/Events/Error Event.ctl"/>
					<Item Name="Login Failed Event.ctl" Type="VI" URL="../Source/Messages/Events/Login Failed Event.ctl"/>
					<Item Name="Login Succeeded Event.ctl" Type="VI" URL="../Source/Messages/Events/Login Succeeded Event.ctl"/>
					<Item Name="Package Installed Event.ctl" Type="VI" URL="../Source/Messages/Events/Package Installed Event.ctl"/>
					<Item Name="Package Uninstalled Event.ctl" Type="VI" URL="../Source/Messages/Events/Package Uninstalled Event.ctl"/>
					<Item Name="Readiness Update Event.ctl" Type="VI" URL="../Source/Messages/Events/Readiness Update Event.ctl"/>
					<Item Name="Test Finished Event.ctl" Type="VI" URL="../Source/Messages/Events/Test Finished Event.ctl"/>
					<Item Name="Test Started Event.ctl" Type="VI" URL="../Source/Messages/Events/Test Started Event.ctl"/>
				</Item>
			</Item>
			<Item Name="Persistence" Type="Folder">
				<Item Name="SQLite" Type="Folder">
					<Item Name="Execution History Repository.lvclass" Type="LVClass" URL="../Source/Persistence/SQLite/Execution History Repository/Execution History Repository.lvclass"/>
					<Item Name="Package Registry Repository.lvclass" Type="LVClass" URL="../Source/Persistence/SQLite/Package Registry Repository/Package Registry Repository.lvclass"/>
					<Item Name="Resource Registry Repository.lvclass" Type="LVClass" URL="../Source/Persistence/SQLite/Resource Registry Repository/Resource Registry Repository.lvclass"/>
					<Item Name="SQLite Databaselvclass.lvclass" Type="LVClass" URL="../Source/Persistence/SQLite/SQLite Database/SQLite Databaselvclass.lvclass"/>
				</Item>
			</Item>
			<Item Name="Providers" Type="Folder">
				<Item Name="Authentication" Type="Folder">
					<Item Name="Local File Auth Provider.lvclass" Type="LVClass" URL="../Source/Providers/Authentication/Local File Auth Provider/Local File Auth Provider.lvclass"/>
				</Item>
				<Item Name="Integrity" Type="Folder">
					<Item Name="Hash Integrity Provider.lvclass" Type="LVClass" URL="../Source/Providers/Integrity/Hash Integrity Provider/Hash Integrity Provider.lvclass"/>
				</Item>
				<Item Name="Packages" Type="Folder">
					<Item Name="File System Package Repository.lvclass" Type="LVClass" URL="../Source/Providers/Packages/File System Package Repository/File System Package Repository.lvclass"/>
				</Item>
				<Item Name="Repositories" Type="Folder">
					<Item Name="SQLite Audit Repository.lvclass" Type="LVClass" URL="../Source/Providers/Repositories/SQLite Audit Repository/SQLite Audit Repository.lvclass"/>
				</Item>
				<Item Name="Results" Type="Folder">
					<Item Name="Local Summary Result Provider.lvclass" Type="LVClass" URL="../Source/Providers/Results/Local Summary Result Provider/Local Summary Result Provider.lvclass"/>
				</Item>
				<Item Name="Settings" Type="Folder">
					<Item Name="Json Settings Provider.lvclass" Type="LVClass" URL="../Source/Providers/Settings/Json Settings Provider/Json Settings Provider.lvclass"/>
					<Item Name="Remote Settings Provider.lvclass" Type="LVClass" URL="../Source/Providers/Settings/Remote Settings Provider/Remote Settings Provider.lvclass"/>
					<Item Name="SQLite Settings Provider.lvclass" Type="LVClass" URL="../Source/Providers/Settings/SQLite Settings Provider/SQLite Settings Provider.lvclass"/>
				</Item>
			</Item>
			<Item Name="Security" Type="Folder">
				<Item Name="User Role.lvclass" Type="LVClass" URL="../Source/Security/User Role/User Role.lvclass"/>
			</Item>
			<Item Name="Services" Type="Folder">
				<Item Name="Audit Service.lvclass" Type="LVClass" URL="../Source/Services/Audit Service/Audit Service.lvclass"/>
				<Item Name="Authentication Service.lvclass" Type="LVClass" URL="../Source/Services/Authentication Service/Authentication Service.lvclass"/>
				<Item Name="Execution Service.lvclass" Type="LVClass" URL="../Source/Services/Execution Service/Execution Service.lvclass"/>
				<Item Name="Integrity Service.lvclass" Type="LVClass" URL="../Source/Services/Integrity Service/Integrity Service.lvclass"/>
				<Item Name="Logging Service.lvclass" Type="LVClass" URL="../Source/Services/Logging Service/Logging Service.lvclass"/>
				<Item Name="Package Service.lvclass" Type="LVClass" URL="../Source/Services/Package Service/Package Service.lvclass"/>
				<Item Name="Plugin Service.lvclass" Type="LVClass" URL="../Source/Services/Plugin Service/Plugin Service.lvclass"/>
				<Item Name="Readines Service.lvclass" Type="LVClass" URL="../Source/Services/Readiness Service/Readines Service.lvclass"/>
				<Item Name="Resource Service.lvclass" Type="LVClass" URL="../Source/Services/Resource Service/Resource Service.lvclass"/>
				<Item Name="Result Summary Service.lvclass" Type="LVClass" URL="../Source/Services/Result Summary Service/Result Summary Service.lvclass"/>
				<Item Name="Settings Service.lvclass" Type="LVClass" URL="../Source/Services/Settings Service/Settings Service.lvclass"/>
			</Item>
			<Item Name="Typedefs" Type="Folder">
				<Item Name="clusters" Type="Folder">
					<Item Name="Audit Event Data.ctl" Type="VI" URL="../Source/Typedefs/clusters/Audit Event Data.ctl"/>
					<Item Name="Bootstrap Config.ctl" Type="VI" URL="../Source/Typedefs/clusters/Bootstrap Config.ctl"/>
					<Item Name="Database Config.ctl" Type="VI" URL="../Source/Typedefs/clusters/Database Config.ctl"/>
					<Item Name="Dependency Info.ctl" Type="VI" URL="../Source/Typedefs/clusters/Dependency Info.ctl"/>
					<Item Name="Execution Context.ctl" Type="VI" URL="../Source/Typedefs/clusters/Execution Context.ctl"/>
					<Item Name="Package Metadata.ctl" Type="VI" URL="../Source/Typedefs/clusters/Package Metadata.ctl"/>
					<Item Name="Plugin Manifest Data.ctl" Type="VI" URL="../Source/Typedefs/clusters/Plugin Manifest Data.ctl"/>
					<Item Name="Readiness Check Result.ctl" Type="VI" URL="../Source/Typedefs/clusters/Readiness Check Result.ctl"/>
					<Item Name="Shared Resource Info.ctl" Type="VI" URL="../Source/Typedefs/clusters/Shared Resource Info.ctl"/>
				</Item>
				<Item Name="enums" Type="Folder">
					<Item Name="Audit Event Type Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Audit Event Type Enum.ctl"/>
					<Item Name="Permission Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Permission Enum.ctl"/>
					<Item Name="Plugin Type Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Plugin Type Enum.ctl"/>
					<Item Name="Readiness State Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Readiness State Enum.ctl"/>
					<Item Name="Role Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Role Enum.ctl"/>
					<Item Name="Run Outcome Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Run Outcome Enum.ctl"/>
					<Item Name="Setting Source Enum.ctl" Type="VI" URL="../Source/Typedefs/enums/Setting Source Enum.ctl"/>
				</Item>
			</Item>
			<Item Name="UI" Type="Folder">
				<Item Name="Screens" Type="Folder">
					<Item Name="Home.vi" Type="VI" URL="../Source/UI/Screens/Home.vi"/>
					<Item Name="Login.vi" Type="VI" URL="../Source/UI/Screens/Login.vi"/>
					<Item Name="Run.vi" Type="VI" URL="../Source/UI/Screens/Run.vi"/>
				</Item>
				<Item Name="Views" Type="Folder">
					<Item Name="Admin View.lvclass" Type="LVClass" URL="../Source/UI/Views/Admin View/Admin View.lvclass"/>
					<Item Name="Home View.lvclass" Type="LVClass" URL="../Source/UI/Views/Home View/Home View.lvclass"/>
					<Item Name="Login View.lvclass" Type="LVClass" URL="../Source/UI/Views/Login View/Login View.lvclass"/>
					<Item Name="Package View.lvclass" Type="LVClass" URL="../Source/UI/Views/Package View/Package View.lvclass"/>
					<Item Name="Run View.lvclass" Type="LVClass" URL="../Source/UI/Views/Run View/Run View.lvclass"/>
				</Item>
				<Item Name="Shell UI.lvclass" Type="LVClass" URL="../Source/UI/Shell UI/Shell UI.lvclass"/>
			</Item>
			<Item Name="Utilities" Type="Folder">
				<Item Name="Error Utils.lvlib" Type="Library" URL="../Source/Utilities/Error Utils.lvlib"/>
				<Item Name="File Utils.lvlib" Type="Library" URL="../Source/Utilities/File Utils.lvlib"/>
				<Item Name="Hash Utils.lvlib" Type="Library" URL="../Source/Utilities/Hash Utils.lvlib"/>
				<Item Name="Json Utils.lvlib" Type="Library" URL="../Source/Utilities/Json Utils.lvlib"/>
				<Item Name="Path Utils.lvlib" Type="Library" URL="../Source/Utilities/Path Utils.lvlib"/>
				<Item Name="Time Utils.lvlib" Type="Library" URL="../Source/Utilities/Time Utils.lvlib"/>
				<Item Name="Version Utils.lvlib" Type="Library" URL="../Source/Utilities/Version Utils.lvlib"/>
			</Item>
		</Item>
		<Item Name="Tests" Type="Folder"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
