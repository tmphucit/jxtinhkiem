function main()
min = 92
max = 105
LoginLog = openfile("Data/xxxxxxxxxxxxxx.txt", "a");
if LoginLog then
for i=min,max do
for j=min,max do
	if i >= 100 then
		if j  >= 100 then
			write(LoginLog,"xxxmapsxxx西北北区xxx黄河源头xxx轩辕洞迷宫xxxv_"..i.."xxx"..j.."_Region_C.dat\n");
		else
			write(LoginLog,"xxxmapsxxx西北北区xxx黄河源头xxx轩辕洞迷宫xxxv_"..i.."xxx0"..j.."_Region_C.dat\n");
		end
	else
		if j  >= 100 then
			write(LoginLog,"xxxmapsxxx西北北区xxx黄河源头xxx轩辕洞迷宫xxxv_0"..i.."xxx"..j.."_Region_C.dat\n");
		else
			write(LoginLog,"xxxmapsxxx西北北区xxx黄河源头xxx轩辕洞迷宫xxxv_0"..i.."xxx0"..j.."_Region_C.dat\n");
		end
	end	

end
end
end
closefile(LoginLog)
Msg2Player("Xong 4")
end