local M = {}

--Common strings
M.robotName = '[ Brian Robot OS ] >>> '
M.singleSpace = ' '
M.doubleSpace = '  '
M.newLine = '\n'
M.doubleNewLine = '\n\n'

--Robot metrics
M.cm = 'cm'
M.meter = 'meters'

--Robot module failure messages
M.BRAIN_FAILURE = 'Warning: failure in module: brain. [ Survival chance: 0% ] -- Danger: Fatal'
M.ARMS_FAILURE = 'Warning: failure in module section: arms. [ Survival chance: 50% ] -- Danger: yellow'
M.BODY_FAILURE = 'Warning: failure in module: body. [ Survival chance: 10% ] -- Danger: red'
M.LEGS_FAILURE = 'Warning: failure in module section: legs. [ Survival chance: 50% ] -- Danger: orange'

return M