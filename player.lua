local player = {}

function player.load(world)

    --Animation handle
    player_img = love.graphics.newImage('Sprites/potato.png')
    grid = anim8.newGrid(16, 16, player_img:getWidth(), player_img:getHeight())
    animation = anim8.newAnimation(grid('1-3',1), 0.15)

    --Position
    x = 20
    y = 100
    jump = 0
    
    --Colider
    colider = world:newRectangleCollider(x, y, 6.5, 6.5)
    colider:setMass(1)
    colider:setFixedRotation(true)
end

function player.update(dt, world)

    animation:update(dt)

    --Movement
    local vx, vy = colider:getLinearVelocity()

    if love.keyboard.isDown('d') then
        colider:setLinearVelocity(100, vy)
    elseif love.keyboard.isDown('a') then
        colider:setLinearVelocity(-100, vy)
    else
        colider:setLinearVelocity(0, vy)
    end

    --Jumping
    if love.keyboard.isDown('space') and jump == 0 then
        colider:applyLinearImpulse(0, -20)
        jump = 1
    end
    if colider:enter('Ground') then
        jump = 0
    end
end

function player.animate()

    local px, py = colider:getPosition()
    local spriteWidth = player_img:getWidth()
    local spriteHeight = player_img:getHeight()
    
    --Draw the animation
    animation:draw(player_img, px-7, py-12)
end

return player