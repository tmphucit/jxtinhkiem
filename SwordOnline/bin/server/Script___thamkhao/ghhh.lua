function main()
min = 92
max = 105
LoginLog = openfile("Data/xxxxxxxxxxxxxx.txt", "a");
if LoginLog then
for i=min,max do
for j=min,max do
	if i >= 100 then
		if j  >= 100 then
			write(LoginLog,"xxxmapsxxx��������xxx�ƺ�Դͷxxx��ԯ���Թ�xxxv_"..i.."xxx"..j.."_Region_C.dat\n");
		else
			write(LoginLog,"xxxmapsxxx��������xxx�ƺ�Դͷxxx��ԯ���Թ�xxxv_"..i.."xxx0"..j.."_Region_C.dat\n");
		end
	else
		if j  >= 100 then
			write(LoginLog,"xxxmapsxxx��������xxx�ƺ�Դͷxxx��ԯ���Թ�xxxv_0"..i.."xxx"..j.."_Region_C.dat\n");
		else
			write(LoginLog,"xxxmapsxxx��������xxx�ƺ�Դͷxxx��ԯ���Թ�xxxv_0"..i.."xxx0"..j.."_Region_C.dat\n");
		end
	end	

end
end
end
closefile(LoginLog)
Msg2Player("Xong 4")
end