-- Teohook wrapper v0.1 made by [arky#0086]
-- License: MIT
-- Contributors: [teocodes]
removeHooks() -- to prevent crashes, probably removing when 2.0 th
local nopulldialog = false

-- Functions

function hit(x, y)
    pkt = {}
    pkt.type = 3
    pkt.int_data = 18
    pkt.int_x = x
    pkt.int_y = y
    pkt.pos_x = getLocal().pos.x
    pkt.pos_y = getLocal().pos.y
    sleep(150)
    sendPacketRaw(false, pkt)
end

function place(x, y, id)
    pkt = {}
    pkt.type = 3
    pkt.int_data = id
    pkt.int_x = x
    pkt.int_y = y
    pkt.pos_x = getLocal().pos.x
    pkt.pos_y = getLocal().pos.y
    sleep(150)
    sendPacketRaw(false, pkt)
end

function pull(name)
    for _,player in pairs(getPlayers()) do
        if player.name:lower():find(name:lower()) then -- if player name contains string pull that player
            nopulldialog = true
            sendPacket(false, "action|dialog_return\ndialog_name|popup\nnetID|"..tostring(player.netid).."|\nnetID|"..tostring(player.netid).."|\nbuttonClicked|pull",2)
            sleep(170)
            nopulldialog = false
        end
    end
end

function joinworld(name)
    sendPacket(false, "action|join_request\nname|"..name, 3)
end

function joinworldwithid(name, doorid)
    sendPacket(false, "action|join_request\nname|"..name.."|"..doorid, 3)
end

-- Hooks

function pullhook(varlist)
    if varlist[1]:find("add_button|report_player|") and nopulldialog == true then
        return true
    end
end
addHook("OnVarlist", "pull hook", pullhook)

