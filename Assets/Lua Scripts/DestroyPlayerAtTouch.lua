--!SerializeField
local objectToDestroy: GameObject=nil
--!SerializeField
local Camera : GameObject = nil

local CamScript:Camera=nil;
function self:ClientStart()
     CamScript = Camera:GetComponent("CameraController")
end
function self:OnTriggerEnter(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    --CamScript.cen
    --Object.Destroy(objectToDestroy)
    enteringGameObject.transform.position= Vector3.new(0,0,0);
    --enteringGameObject.GetComponent(self,)
    --enteringGameObject.GetComponent(n)
    --CamScript.CenterOn(.pos)
    enteringGameObject.gameObject:SetActive(false)
    enteringGameObject.gameObject:SetActive(true)
    
end

function self:Update()
    --print("This frame took " .. Time.deltaTime .. "seconds")
    
end