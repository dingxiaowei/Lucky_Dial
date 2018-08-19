

UIEnteranceIcon = 
{
	--里面可以放一些属性
	name = "enteranceIcon",
}

function UIEnteranceIcon:Awake(obj)
	print("UIEnteranceIcon Awake name = "..self.name );
end

function UIEnteranceIcon:Start()
	print("UIEnteranceIcon Start name = "..self.name );
end

function UIEnteranceIcon:Update()

end

--创建对象
function UIEnteranceIcon:New(obj)
	local o = {} 
    setmetatable(o, self)  
    self.__index = self  
	return o
end  