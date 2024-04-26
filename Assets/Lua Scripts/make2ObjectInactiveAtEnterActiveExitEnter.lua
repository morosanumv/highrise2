--!SerializeField
local objectToActivateEnter: GameObject=nil
--!SerializeField
local objectToInactivateEnter: GameObject=nil

function self:OnTriggerEnter(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    --Object.Destroy(objectToInactivate)
    objectToInactivateEnter.gameObject.SetActive(objectToInactivateEnter, false)
    objectToActivateEnter.gameObject.SetActive(objectToActivateEnter, true)    
end

function self:OnTriggerStay(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    --Object.Destroy(objectToInactivate)
    objectToInactivateEnter.gameObject.SetActive(objectToInactivateEnter, false)
    objectToActivateEnter.gameObject.SetActive(objectToActivateEnter, true)    
end
function self:OnTriggerExit(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    --Object.Destroy(objectToInactivate)
    objectToInactivateEnter.gameObject.SetActive(objectToInactivateEnter, true)
    objectToActivateEnter.gameObject.SetActive(objectToActivateEnter, false)
end
function self:Update()
    --print("This frame took " .. Time.deltaTime .. "seconds")
    
end