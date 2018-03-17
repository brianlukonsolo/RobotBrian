package.path = './RobotBrian/CodeConstants/?.lua;' .. package.path
local constants = require('codeConstants')

local M = {}

function M.moveFoward(distance, height)
  print(constants.robotName .. 'Left leg has moved to relative distance: ' 
    .. distance .. constants.singleSpace .. 'and a height of ' .. 
    constants.singleSpace .. height .. constants.cm)
  
end

return M