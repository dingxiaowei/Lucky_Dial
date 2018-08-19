
EnteranceIconPanelCtrl = {};
local this = EnteranceIconPanelCtrl;

local enteranceIconPanel;
local transform;
local gameObject;

--构建函数--
function EnteranceIconPanelCtrl.New()
	print("EnteranceIconPanelCtrl.New--->>");
	return this;
end

function EnteranceIconPanelCtrl.Awake()
	print("EnteranceIconPanelCtrl.Awake--->>-----------------------------");
	panelMgr:CreatePanel('EntranceIcon', this.OnCreate);
end

--启动事件--
function EnteranceIconPanelCtrl.OnCreate(obj)
	gameObject = obj;
	enteranceIconPanel = gameObject:GetComponent('LuaBehaviour');

	print("Start lua--->>"..gameObject.name);
end


--关闭事件--
function EnteranceIconPanelCtrl.Close()
	panelMgr:ClosePanel(CtrlNames.MenuPanel);
end