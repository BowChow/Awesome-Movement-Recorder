--
-- PewX (HorrorClown)
-- Using: IntelliJ IDEA 14 Ultimate
-- Date: 20.08.2015 - Time: 06:18
-- pewx.de // iGaming-mta.de // iRace-mta.de // iSurvival.de // mtasa.de
--
iDEBUG = true

if CLIENT then
    x, y = guiGetScreenSize()

    function isHover(startX, startY, width, height)
        if isCursorShowing() then
            local pos = {getCursorPosition()}
            return (x*pos[1] >= startX) and (x*pos[1] <= startX + width) and (y*pos[2] >= startY) and (y*pos[2] <= startY + height)
        end
        return false
    end
end

function debugOutput(sText, nType, cr, cg, cb)
    if iDEBUG then
        outputDebugString(("[%s] %s"):format(SERVER and "Server" or "Client", sText), nType or 3, cr, cg, cb)
    end
end