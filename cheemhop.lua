_IllIIllllI("\072\111\112\032\076\111\119\032\080\108\097\121\101\114\032\083\101\114\118\101\114", 0x5F, function()

    local _IIIIllIIIl = game.PlaceId
    local _IIlIllIlII = {}
    local _IllIIIIIlI = ""

    repeat
        local _lIIIlllIII = "\104\116\116\112\115\058\047\047\103\097\109\101\115\046\114\111\098\108\111\120\046\099\111\109\047\118\049\047\103\097\109\101\115\047"
            .. _IIIIllIIIl ..
            "\047\115\101\114\118\101\114\115\047\080\117\098\108\105\099\063\115\111\114\116\079\114\100\101\114\061\065\115\099\038\108\105\109\105\116\061\049\048\048"

        if _IllIIIIIlI ~= "" then
            _lIIIlllIII = _lIIIlllIII .. "\038\099\117\114\115\111\114\061" .. _IllIIIIIlI
        end

        local _IIllIIIIll = HttpService:JSONDecode(game:HttpGet(_lIIIlllIII))

        for _, server in pairs(_IIllIIIIll.data) do
            if server.playing < server.maxPlayers and server.playing > 0x0 then
                table.insert(_IIlIllIlII, server)
            end
        end

        _IllIIIIIlI = _IIllIIIIll.nextPageCursor

    until not _IllIIIIIlI or #_IIlIllIlII > 0x0

    if #_IIlIllIlII > 0x0 then
        local _IlIIIIlIIl = _IIlIllIlII[math.random(0x1, #_IIlIllIlII)]
        TeleportService:TeleportToPlaceInstance(_IIIIllIIIl, _IlIIIIlIIl.id, Players.LocalPlayer)
    end

end)
