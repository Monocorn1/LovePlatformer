anim8 = require 'lib.anim8' --Aimation plugin
push = require 'lib.push'   --Resize plugin
wf = require 'lib/windfield'    --Gravity plugin

player = require 'player'   --Player obj
level = require 'level'     --World obj


--Screen Setup
gameWidth, gameHeight = 1080, 720 --fixed game resolution
windowWidth, windowHeight = love.window.getDesktopDimensions()
windowWidth, windowHeight = windowWidth*.7, windowHeight*.7

virtualWidth, virtualHeight = 320, 180

