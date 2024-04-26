
--!SerializeField
local speed:number =2
--!SerializeField
local max :number=1
--!SerializeField
local min :number=1

function self:Update()
    local posSpeed = speed*Time.deltaTime
    -- Rotate the object around its Y-axis (vertical axis)
    --print(self.transform.position.x)
    self.transform.position = Vector3.new(self.transform.position.x, self.transform.position.y,self.transform.position.z+ posSpeed)
   -- self.transform.tr
    --print(self.transform.position.z)
    if self.transform.position.z<max
    then
        if speed<0 then
speed=-speed
        end
    end  
    
    if self.transform.position.z>min
    then
        if speed>0 then
speed=-speed
        end
    end 
  end