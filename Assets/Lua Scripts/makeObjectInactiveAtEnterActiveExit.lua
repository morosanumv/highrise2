--!SerializeField
local objectToInactivate: GameObject=nil

function self:OnTriggerEnter(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    --Object.Destroy(objectToInactivate)
    objectToInactivate.gameObject.SetActive(objectToInactivate, false)
    
end
function self:OnTriggerStay(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
  --  print(enteringGameObject.name .. " has entered the trigger")
    --Object.Destroy(objectToInactivate)
    --if(objectToInactivate.gameObject.activeSelf())
--{
        objectToInactivate.gameObject.SetActive(objectToInactivate, false)
--}
    
end
function self:OnTriggerExit(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    --Object.Destroy(objectToInactivate)
    objectToInactivate.gameObject.SetActive(objectToInactivate, true)
    
end
function self:Update()
    --print("This frame took " .. Time.deltaTime .. "seconds")
    
end