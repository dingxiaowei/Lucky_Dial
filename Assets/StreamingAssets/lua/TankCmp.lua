TankCmp = 
{
	--里面可以放一些属性
	Hp = 100,
	att = 50,
	name = "good tank",
}

function TankCmp:Awake()
	print("TankCmp Awake name = "..self.name );
end

function TankCmp:Start()
	print("TankCmp Start name = "..self.name );
end

function TankCmp:Update()
	--print("TankCmp Update name = "..self.name );
end

--创建对象
function TankCmp:New(obj)
	local o = {} 
    setmetatable(o, self)  
    self.__index = self  
	return o
end  