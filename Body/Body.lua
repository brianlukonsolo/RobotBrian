package.path = './RobotBrian/CodeConstants/?.lua;' .. package.path
local constants = require('codeConstants')

local M = {}

function M.turn(degrees)
  print(constants.robotName .. 'Body has turned to relative direction: ' 
    .. degrees .. constants.singleSpace .. 'degrees')
end

return M