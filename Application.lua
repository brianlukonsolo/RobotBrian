--Set the package path
package.path = './RobotBrian/?.lua;' .. package.path
local constants = require('CodeConstants.codeConstants')

--Prepare the robot parts
local brainModule = require('Head.Brain')
local leftArmModule = require('Arms.LeftArm')
local rightArmModule= require('Arms.RightArm')
local bodyModule = require('Body.Body')
local leftLegModule = require('Legs.LeftLeg')
local rightLegModule = require('Legs.RightLeg')

--Start the AssemblyDrone
local assemblyDrone = require('AssemblyDrone.AssemblyDrone')
--Assemble the robot
local robot = assemblyDrone.buildRobot(brainModule, leftArmModule, 
  rightArmModule, bodyModule, leftLegModule, rightLegModule)

--Power the robot
robot:selfCheck()

--end


