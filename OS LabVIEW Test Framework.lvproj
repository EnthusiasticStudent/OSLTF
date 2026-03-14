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
		</Item>
		<Item Name="Data" Type="Folder"/>
		<Item Name="Logs" Type="Folder"/>
		<Item Name="Packages" Type="Folder"/>
		<Item Name="Plugins" Type="Folder"/>
		<Item Name="Shared" Type="Folder"/>
		<Item Name="Source" Type="Folder">
			<Item Name="Adapters" Type="Folder">
				<Item Name="TestStand" Type="Folder">
					<Item Name="TestStand Adapter.lvclass" Type="LVClass" URL="../Source/Adapters/TestStand/TestStand Adapter/TestStand Adapter.lvclass"/>
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
			<Item Name="Messages" Type="Folder"/>
			<Item Name="Persistence" Type="Folder">
				<Item Name="Database Service.lvclass" Type="LVClass" URL="../Source/Persistence/Database Service/Database Service.lvclass"/>
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
			<Item Name="Typedefs" Type="Folder"/>
			<Item Name="UI" Type="Folder">
				<Item Name="Views" Type="Folder">
					<Item Name="Admin View.lvclass" Type="LVClass" URL="../Source/UI/Views/Admin View/Admin View.lvclass"/>
					<Item Name="Home View.lvclass" Type="LVClass" URL="../Source/UI/Views/Home View/Home View.lvclass"/>
					<Item Name="Login View.lvclass" Type="LVClass" URL="../Source/UI/Views/Login View/Login View.lvclass"/>
					<Item Name="Package View.lvclass" Type="LVClass" URL="../Source/UI/Views/Package View/Package View.lvclass"/>
					<Item Name="Run View.lvclass" Type="LVClass" URL="../Source/UI/Views/Run View/Run View.lvclass"/>
				</Item>
				<Item Name="Shell UI.lvclass" Type="LVClass" URL="../Source/UI/Shell UI/Shell UI.lvclass"/>
			</Item>
			<Item Name="Utilities" Type="Folder"/>
		</Item>
		<Item Name="Tests" Type="Folder"/>
		<Item Name="users.json" Type="Document" URL="../users.json"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
