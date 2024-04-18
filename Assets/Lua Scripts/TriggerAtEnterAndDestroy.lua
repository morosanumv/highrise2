--!SerializeField
local objectToDestroy: GameObject=nil

function self:OnTriggerEnter(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    Object.Destroy(objectToDestroy)
    
end

function self:Update()
    --print("This frame took " .. Time.deltaTime .. "seconds")
    
end