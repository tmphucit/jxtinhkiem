function main()
SetTask(12,0) -- Reset Tong Kim
SetTask(19,0) -- Reset Danh Hieu
SetTask(128,0) -- Xoa Tham gia TK
SetTask(123,0) -- Xoa Tich luy tran

-- Reset Task Xep Hang
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)


--DelMagic(413)
SetPunish(0)
SetFightState(1)
SetDeathScript("");


SetLogoutRV(0)
SetCreateTeam(1);
Msg2Player("B�n �� v� T��ng D��ng")
BlockPKState(0)

NewWorld(15, 1768, 3099);


--KickOutSelf()
end