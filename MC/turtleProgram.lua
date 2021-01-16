local modem = peripheral.wrap("left")
modem.open(3)
while true do
    local event, modemSide, senderChannel, 
        replyChannel, message, senderDistance = os.pullEvent("modem_message")
    if (message == "dump") then
        for i=1, 27, 1 do
            turtle.suckUp()
            turtle.dropDown()
        end
    end
end