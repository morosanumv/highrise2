function self:Update()
    local rotationAngle = 30 * Time.deltaTime
    -- Rotate the object around its Y-axis (vertical axis)
    self.transform.localEulerAngles = self.transform.localEulerAngles + Vector3.new(0, rotationAngle, 0)
  end