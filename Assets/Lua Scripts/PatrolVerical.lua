
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
    self.transform.position = Vector3.new(self.transform.position.x, self.transform.position.y+ posSpeed,self.transform.position.z)
   -- self.transform.tr
    print(self.transform.position.y)
    if self.transform.position.y>max
    then
        if speed>0 then
            --Object.Destroy(self.gameObject)
speed=speed*-1
        end
    end  
    
    if self.transform.position.y<min
    then
        if speed<0 then
speed=-speed
        end
    end 
  end