using UnityEngine;
using System.Collections;
using LuaInterface;
using LuaFramework;

public class LuaComponent : MonoBehaviour
{
	//Lua表
	public LuaTable table;

	//添加LUA组件  
	public static LuaTable Add(GameObject go, LuaTable tableClass)
	{
		LuaFunction fun = tableClass.GetLuaFunction("New");
		if (fun == null)
			return null;

		//object[] rets = fun.Call(tableClass);
		//if (rets.Length != 1)
		//	return null;

		LuaComponent cmp = go.AddComponent<LuaComponent>();
		cmp.table = tableClass;
		cmp.CallAwake();
		return cmp.table;
	}

	//获取lua组件
	public static LuaTable Get(GameObject go, LuaTable table)
	{
		LuaComponent[] cmps = go.GetComponents<LuaComponent>();
		foreach (LuaComponent cmp in cmps)
		{
			string mat1 = table.ToString();
			string mat2 = cmp.table.GetMetaTable().ToString();
			if (mat1 == mat2)
			{
				return cmp.table;
			}
		}
		return null;
	}
	//删除LUA组件的方法略，调用Destory()即可  

	void CallAwake()
	{
		LuaFunction fun = table.GetLuaFunction("Awake");
		if (fun != null)
			fun.Call(table, gameObject);
	}

	void Start()
	{
		LuaFunction fun = table.GetLuaFunction("Start");
		if (fun != null)
			fun.Call(table, gameObject);
	}

	void Update()
	{
		//效率问题有待测试和优化
		//可在lua中调用UpdateBeat替代
		LuaFunction fun = table.GetLuaFunction("Update");
		if (fun != null)
			fun.Call(table, gameObject);
	}

	void OnCollisionEnter(Collision collisionInfo)
	{
		//略
	}

	//更多函数略
}