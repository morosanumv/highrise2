local triggerRequest = Event.new("TriggerRequest")
local myInt = IntValue.new("MyInt", 1)


function self:ClientAwake()
    --read the new network value after it is changed
    myInt.Changed:Connect(function(newVal, oldVal)
        print("the server value changed to " .. tostring(newVal))
    end)



    function self:OnTriggerEnter(other : Collider)

        print("COLLIDE " )
        triggerRequest:FireServer()
       -- myInt.Changed:Connect(function(newValue, oldValue)
           -- print(tostring(newValue))
          --end)  
    end
       
    function self:OnTriggerExit(other : Collider)
        print("myInt Value is: " .. myInt.value .. " .")
        
    end










end
  



function self:ServerAwake()
    print("SERVER1 " )
  triggerRequest:Connect(function()
    print("SERVER " )
    myInt.value = 5
  end)

 
end

function self:Update()
   -- print("myInt Value is: " .. myInt.value .. " .")
end