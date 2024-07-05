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
SetFightState(1)
SetDeathScript("");
DelMagic(413)
AddMagic(413,1)
DelMagic(413)
SetLogoutRV(0)
SetCreateTeam(1);
Msg2Player("B¹n ®· vÒ Chu Tiªn TrÊn")
BlockPKState(0)
for k=1,GetItemCount(106) do
DelItem(106)
end
NewWorld(3, 1407, 3486);
end