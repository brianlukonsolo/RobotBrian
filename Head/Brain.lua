--Set the package path
package.path = './RobotBrian/CodeConstants/?.lua;' .. package.path
local constants = require('codeConstants')

local M = {}

function M.process()
  print(constants.robotName .. 'Brain has processed information')
  
end

return M