function main()
SetTask(12,0) -- Reset Tong Kim
SetTask(19,0) -- Reset Danh Hieu
SetTask(128,0) -- Xoa Tham gia TK

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

SetPunish(0)
SetFightState(0)
SetDeathScript("");
DelMagic(413)
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(2)
Msg2Player("B�n �� v�o khu v�c b�o danh phe Kim !")
BlockPKState(0)
NewWorld(60,1593,3075)
end