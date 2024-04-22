--!SerializeField
local objectToDestroy2: GameObject=nil

function self:Awake()
   
    self.gameObject:GetComponent(TapHandler).Tapped:Connect(function() 
        -- Code to execute when the object is tapped
        Object.Destroy(objectToDestroy2)
        print("touch")
    end)
end