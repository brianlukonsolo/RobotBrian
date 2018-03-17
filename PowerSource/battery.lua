package.path = './RobotBrian/CodeConstants/?.lua;' .. package.path
local constants = require('codeConstants')

local Battery = {}

Battery.charge = 100

function Battery.drainBatteryBy(percentage)
  if Battery.charge > 0 then
    Battery.charge = Battery.charge - number
  end
  
  if Battery.charge < 0 then
     Battery.charge = 0
  end
  
end

function Battery.charge(percentage)
  Battery.charge = Battery.charge + percentage
  if Battery.charge > 100 then
    Battery.charge = 100
  end
  
end

return Battery