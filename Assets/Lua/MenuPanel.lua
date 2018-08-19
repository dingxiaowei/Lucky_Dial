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

--初始化面板--
function MenuPanel.InitPanel()
	resMgr:LoadPrefab('menu', { 'EnteranceIconPanel' }, this.InitObj);
	
	this.more = transform:Find("Top Screen/More").gameObject
	this.setting = transform:Find("Top Screen/Setting").gameObject
	UIEvent.AddButtonClick(this.more,MoreClick)
	UIEvent.AddButtonClick(this.setting,SettingClick)
end

function MenuPanel.InitObj(objs)

	for i = 1, #TableDials do
		local go = newObject(objs[0]);
		go.name = 'Item'..tostring(i);
		go.transform:SetParent(m_Content);
		go.transform.localScale = Vector3.one;
		go.transform.localPosition = Vector3.zero;
		
		-- go.transform:GetComponent('Image').sprite = 
	end
end

function MenuPanel.OnItemClick(go)
    log(go.name);
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

