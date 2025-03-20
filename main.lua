config = require('config')

function love.load()
    --setup screen
    
    --Gravity
    world = wf.newWorld(0, 1000)
    level.load(world)
    
    --Load objects
    player.load(world)
end

function love.update(dt)
    player.update(dt)
    world:update(dt)
end

function love.draw()
    push:start()
    player.animate()
    world:draw(20) -- Comment out for coliders
    push:finish()
end

