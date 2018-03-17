package.path = './RobotBrian/?.lua;' .. package.path
local constants = require('CodeConstants.codeConstants')

local AssemblyDrone = {}

function AssemblyDrone.buildRobot(brainModule, leftArmModule, rightArmModule, bodyModule, leftLegModule, rightLegModule, name)
  if name == nil then name = 'BrianRobot v1' end
  
  local robot = {}
  robot.brain = brainModule
  robot.leftArm = leftArmModule
  robot.rightArm = rightArmModule
  robot.body = bodyModule
  robot.leftLeg = leftLegModule
  robot.rightLeg = rightLegModule
  robot.name = name
  
    function robot.selfCheck(self)
      local brainResult, armsResult, bodyResult, legsResult
      --Check all modules of the robot to ensure that all are working
      print(constants.newLine)
      print(constants.robotName .. 'Starting self-check...')
      brainResult = pcall( function() self.brain.process('Self test beginning...') end)
      armsResult = pcall( function() self.leftArm.move(0,0,0); self.rightArm.move(0,0,0) end)
      bodyResult = pcall( function() self.body.turn(45); self.body.turn(135) end)
      legsResult = pcall( function() self.leftLeg.moveFoward(0, 0); self.rightLeg.moveFoward(0, 0) end)
      --Check that all robot parts are online and ready
      checkFailures(brainResult, armsResult, bodyResult, legsResult)
      
    end
  
  return robot
  
end

function checkFailures(brainResult, armsResult, bodyResult, legsResult)
  if brainResult and armsResult and bodyResult and legsResult then
    print(constants.robotName .. 'Self check successful. All modules online.' .. constants.newLine)
  else
    print(constants.robotName .. 'Warning: Self check failures!')
    if not brainResult then print(constants.robotName .. constants.BRAIN_FAILURE) end
    if not armsResult then print(constants.robotName .. constants.ARMS_FAILURE) end
    if not bodyResult then print(constants.robotName .. constants.BODY_FAILURE) end
    if not legsResult then print(constants.robotName .. constants.LEGS_FAILURE) end
  end
  
end

return AssemblyDrone