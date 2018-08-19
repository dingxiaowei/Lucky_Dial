using UnityEngine;
using System.Collections;
using LuaInterface;
using UnityEngine.UI;

public class UIEvent
{
	//添加监听
	public static void AddButtonClick(GameObject go, LuaFunction luafunc)
	{
		if (go == null || luafunc == null)
			return;
		Button btn = go.GetComponent<Button>();
		if (btn == null)
			return;

		btn.onClick.AddListener
		(
			delegate()
			{
				luafunc.Call(go);
			}
		);
	}

	//清除监听
	public static void ClearButtonClick(GameObject go)
	{
		if (go == null)
			return;

		Button btn = go.GetComponent<Button>();
		if (btn == null)
			return;

		btn.onClick.RemoveAllListeners();
	}
}