require "TableDials"

local transform;
local gameObject;

MenuPanel = {};
local this = MenuPanel
local m_Content

--启动事件--
function MenuPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;
	m_Content = obj.transform:Find("ScrollRect/ViewPort/Content")
	this.InitPanel();
	logWarn("Awake lua--->>"..gameObject.name);
end

function MenuPanel.Start(obj)
	print("**************")
	print(#TableDials)
end

--初始化面板--
function MenuPanel.InitPanel()
	this.more = transform:Find("Top Screen/More").gameObject
	this.setting = transform:Find("Top Screen/Setting").gameObject
	UIEvent.AddButtonClick(this.more,MoreClick)
	UIEvent.AddButtonClick(this.setting,SettingClick)
end

function SettingClick()
	logWarn("设置")
end

function MoreClick()
	logWarn("更多内容")
end

--单击事件--
function MenuPanel.OnDestroy()
	logWarn("OnDestroy---->>>");
end
