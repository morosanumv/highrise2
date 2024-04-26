function self:OnTriggerEnter(other : Collider)
    local enteringGameObject = other.gameObject
    --local agent= enteringGameObject.GetComponent(self,)
    print(enteringGameObject.name .. " has entered the trigger")
    Object.Destroy(self.gameObject)
    --objectToInactivate.gameObject.SetActive(objectToInactivate, false)
    
end