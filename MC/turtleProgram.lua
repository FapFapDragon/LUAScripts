local modem = peripheral.wrap("left")
modem.open(3)
local event, modemSide, senderChannel, 
    replyChannel, message, senderDistance = os.pullEvent("modem_message")
if (message == "dump"){
    turtle.suckUp()
    turtle.dropDown()
}