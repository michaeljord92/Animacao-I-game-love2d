

local sprite = {}
sprite.player = {}
for i=1,8 do
    frame = love.graphics.newImage('assets/player/k'..i..'.png')
    table.insert(sprite.player, frame)
end


return sprite