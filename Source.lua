--This is the main source code for the module

local uiLibrary = {}
uiLibrary.Configurations = {}

export type UiConfiguration = {[any]:any}

function uiLibrary.CreateConfiguration(Name)
	local Config:UiConfiguration = {}
	Config.Theme = "Default"
	
	return Config
end

function uiLibrary.CreateWindow(Name:string, Configuration:UiConfiguration)
	local Window = {}
	Window.Icon = ""
	Window.Name = Name
	Window.Configuration = Configuration or {}
	Window.Tabs = {}
	Window.GUI = Instance.new("ScreenGui")
	
	function Window:CreateTab(Name:string, Configuration:UiConfiguration)
		local Tab = {}
		Tab.Icon = ""
		Tab.Name = Name
		Tab.Configuration = Configuration or {}
		Tab.Elements = {}
		
		
		
		return Tab
	end
	
	return Window
end

return uiLibrary
