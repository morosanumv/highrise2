--!SerializeField
local DummyObject: GameObject=nil


function self:OnTriggerEnter(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    
    DummyObject.transform.position= self.transform.position;

end