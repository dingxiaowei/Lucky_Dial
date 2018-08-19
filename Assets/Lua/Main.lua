-- require("UIMenuPanel")
require "CtrlManager"
require "functions"
require "define"
require "MenuPanel"
require "EntranceIconPanel"


Game = {}
local this = Game;

--主入口函数。从这里开始lua逻辑
function Main()					
	-- LuaHelper = LuaFramework.LuaHelper;
	-- resMgr = LuaHelper.GetResManager();
	-- resMgr:LoadPrefab('Dial', { 'UIMenuPanel' }, OnLoadFinish);
	
	
	CtrlManager.Init();
	local ctrl = CtrlManager.GetCtrl(CtrlNames.MenuPanel);
	if ctrl ~= nil then
        ctrl:Awake();
    end
end
 
--加载完成后的回调--
function OnLoadFinish(objs)
	--显示面板
	-- local menuPanelObj = UnityEngine.GameObject.Instantiate(objs[0]);
	-- local parent = UnityEngine.GameObject.Find("Canvas")
    -- menuPanelObj.transform:SetParent(parent.transform);
    -- menuPanelObj.transform.localScale = Vector3.one;
    -- menuPanelObj.transform.localRotation = Quaternion.Euler(0, 0, 0);
    -- menuPanelObj.transform.localPosition = Vector3.zero;
    -- LuaComponent.Add(menuPanelObj,UIMenuPanel)
    -- local btn = go.transform:Find("Button").gameObject
    -- UIEvent.AddButtonClick(btn,OnClick)
end

-- function OnClick()
-- 	print("触发按钮事件")
-- end