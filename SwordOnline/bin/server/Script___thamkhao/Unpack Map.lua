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
{"������xxx����ɽxxx����",65,125},
{"������xxx��ũ��xxx��ũ��",94,137},
{"��ԭ����xxx��ţɽxxx���ڶ��Թ�",82,113},
{"��ԭ����xxx��ţɽxxx��ţɽ��",85,141},
{"��ԭ����xxx��ţɽxxx���Ķ��Թ�",89,108},
{"��ԭ����xxx�꾩xxx�����Թ�1",94,113},
{"��ԭ����xxx�꾩xxx�����Թ�2",93,111},
{"��ԭ����xxx���ɽxxx���ɽ",74,133},
{"��ԭ����xxx���̽�xxx��ɱ���Թ�",88,104},
{"��������xxx��������xxx��������",47,129},
{"��������xxx��������xxx��ⶴ�Թ�",84,118},
{"��������xxx��������xxx���ʶ��Թ�",85,117},
{"��������xxx��������xxx���ƶ��Թ�",81,110},
{"���ϱ���xxx���ɽxxx���ɽ",100,183},
{"���ϱ���xxx���ɽxxx���ƶ��Թ�",94,122},
}