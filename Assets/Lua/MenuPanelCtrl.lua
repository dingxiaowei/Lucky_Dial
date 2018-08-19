
MenuPanelCtrl = {};
local this = MenuPanelCtrl;

local menupanel;
local transform;
local gameObject;

--构建函数--
function MenuPanelCtrl.New()
	print("MenuPanelCtrl.New--->>");
	return this;
end

function MenuPanelCtrl.Awake()
	print("MenuPanelCtrl.Awake--->>-----------------------------");
	panelMgr:CreatePanel('Menu', this.OnCreate);
end

--启动事件--
function MenuPanelCtrl.OnCreate(obj)
	gameObject = obj;
	menupanel = gameObject:GetComponent('LuaBehaviour');
	
	print("Start lua--->>"..gameObject.name);
end


--关闭事件--
function MenuPanelCtrl.Close()
	panelMgr:ClosePanel(CtrlNames.MenuPanel);
end