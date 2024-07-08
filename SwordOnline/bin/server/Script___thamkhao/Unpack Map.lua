function main()
min = 92
max = 105
LoginLog = openfile("Data/xxxxxxxxxxxxxx.txt", "a");
if LoginLog then
for t=1,getn(TD) do
for i=TD[t][2],TD[t][3] do
for j=TD[t][2],TD[t][3] do
	if i >= 100 then
		if j  >= 100 then
			write(LoginLog,"xxxmapsxxx"..TD[t][1].."xxxv_"..i.."xxx"..j.."_Region_C.dat\n");
		else
			write(LoginLog,"xxxmapsxxx"..TD[t][1].."xxxv_"..i.."xxx0"..j.."_Region_C.dat\n");
		end
	else
		if j  >= 100 then
			write(LoginLog,"xxxmapsxxx"..TD[t][1].."xxxv_0"..i.."xxx"..j.."_Region_C.dat\n");
		else
			write(LoginLog,"xxxmapsxxx"..TD[t][1].."xxxv_0"..i.."xxx0"..j.."_Region_C.dat\n");
		end
	end	

end
end
end
end
closefile(LoginLog)
Msg2Player("Xong 4")
end

TD = {
{"两湖区xxx武陵山xxx武陵",65,125},
{"两湖区xxx神农架xxx神农架",94,137},
{"中原南区xxx伏牛山xxx鸡冠洞迷宫",82,113},
{"中原北区xxx伏牛山xxx伏牛山西",85,141},
{"中原北区xxx伏牛山xxx天心洞迷宫",89,108},
{"中原北区xxx汴京xxx铁塔迷宫1",94,113},
{"中原北区xxx汴京xxx铁塔迷宫2",93,111},
{"中原南区xxx蜀冈山xxx蜀冈山",74,133},
{"中原北区xxx天忍教xxx七杀洞迷宫",88,104},
{"西北南区xxx剑阁西北xxx剑阁西北",47,129},
{"西北南区xxx剑阁西北xxx金光洞迷宫",84,118},
{"西北南区xxx剑阁西北xxx经皇洞迷宫",85,117},
{"西北南区xxx剑阁西北xxx锁云洞迷宫",81,110},
{"西南北区xxx青城山xxx青城山",100,183},
{"西南北区xxx青城山xxx白云洞迷宫",94,122},
}