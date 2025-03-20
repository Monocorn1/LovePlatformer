local level = {}

function level.load(world)
    --Added collision class for ground
    world:addCollisionClass('Ground')

    --Drawing collision class in world
    wall = world:newRectangleCollider(0,150, 320, 10)
    wall2 = world:newRectangleCollider(50, 140, 200, 10)
    wall:setCollisionClass('Ground')
    wall:setType("static")
    wall2:setType("static")
    wall2:setCollisionClass('Ground')
end

return level