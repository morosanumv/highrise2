function self:Update()
    local posSpeed = 1*Time.deltaTime
    -- Rotate the object around its Y-axis (vertical axis)
    print(self.transform.position.x)
    self.transform.position = Vector3.new(self.transform.position.x + posSpeed,self.transform.position.y,self.transform.position.z)
   -- self.transform.tr
    print(self.transform.position.x)
  end