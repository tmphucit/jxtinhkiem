function main()
SayNew("<color=green>Th� Tr�ng<color>: Ng��i c� mang th�c �n ��n cho ta kh�ng ?",2,
"Cho Th� �n/chothoan",
"Ta kh�ng mang theo th�c �n/no")
end

function no()
end
function chothoan()
if GetTask(135) >= 100 then
Talk(1,"","Ng��i �� cho ta �n �� 100 l�n r�i, ta kh�ng th� �n th�m ���c n�a!")
return
end
nl = GetItemCount(191)
	if GetItemCount(191) >= 1 then
		DelItem(191)
		if GetItemCount(191) == nl -1 then
			SetTask(135,GetTask(135)+1)
			AddOwnExp(500000)
			Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m !")
			Msg2Player("S� l�n cho �n "..GetTask(135).."/100")
		end
	else
		Talk(1,"","Ng��i kh�ng mang theo th�c �n")
	end
end