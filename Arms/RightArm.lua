package.path = './RobotBrian/CodeConstants/?.lua;' .. package.path
local constants = require('codeConstants')

local M = {}

function M.move(x, y, z)
  print(constants.robotName .. 'Right arm has moved to relative position: '
    ..'{x=' .. x .. ',' .. constants.singleSpace .. 'y=' ..y..',' 
    .. constants.singleSpace .. 'z='..z..'}')
  
end

return M