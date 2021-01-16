local modem = peripheral.wrap("top")
modem.open(2)

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
while true do
    local event, modemSide, senderChannel, 
    replyChannel, message, senderDistance = os.pullEvent("modem_message")
    argz = Split(message, " ");
    if (argz[1] == "get") then
        shell.run ("cget "..argz[2].." "..argz[3])
    elseif (argz[1] == "dump") then
        shell.run("cdump")
    end
end
