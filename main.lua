-- Programa: Aula 5.5 - tilemaps, tilesets e animação
-- Autor: Michael Jordan S Chagas
-- Curso: Ciência da Computação - UFMT-CUA
-- Disclina: Design e Programação de Games (Opt)
-- Docente: Maxwell Silva Carmo
-- Data: 2021-08-06
-- Update: 2021-08-06
-- 
-- Este programa simula uma animação de jogo.
-------------------------------------------------------
local Display = require('display')
local Sprite = require('sprite')

function love.load()
    math.randomseed(os.time())

    -- Display:fullscreen()
    love.window.setMode(Display.width, Display.height, {
        fullscreen = Display.isFullScreen,
        resizable = true
    })

    curFrame = 1
end

function love.update(dt)
    curFrame = curFrame + 10 * dt
    if curFrame >= 9 then
        curFrame = 1
    end

    fps = love.timer.getFPS()
end

function love.draw()
    love.graphics.draw(Sprite.player[ math.floor(curFrame) ])
    
    -- love.graphics.print('FPS: ' .. fps, 10, 12)
end