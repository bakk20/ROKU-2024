sub main(args as dynamic)
    showHomeScreen()
end sub

sub showHomeScreen()
    m.screen = CreateObject("roSGSCreen")
    m.port = createObject("roMessagePort")
    m.screen.setMessagePort(m.port)
    m.scene = m.screen.CreateScene("mainScene")
    m.screen.show()

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent" then
            if msg.isScreenClosed() then return
        end if 
    end while
end sub