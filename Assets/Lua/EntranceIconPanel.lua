local transform;
local gameObject;

EntranceIconPanel = {};
local this = EntranceIconPanel
local m_Content

--启动事件--
function EntranceIconPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;
	this.InitPanel();
	logWarn("Awake lua--->>"..gameObject.name);
end

function EntranceIconPanel.Start(obj)
	print("Start")
end

--初始化面板--
function EntranceIconPanel.InitPanel()
	print("InitPanel")
end

--单击事件--
function MenuPanel.OnDestroy()
	logWarn("OnDestroy---->>>");
end
