function main(idx)
SetPKState(1)
if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, vui l�ng ki�m tra l�i !")
return
end

if GetCurCamp() == 0 then
Talk(1,"","Ch� tr�ng kh�ng ���c nh�t nh� b�n")
return
end

h,m,s = GetTimeNew()
if m >= 30 then
DelNpc(idx)
Msg2Player("Qu� �� ch�n qu� l�u, hi�n t�i kh�ng th� s� d�ng ���c n�a !")
return
end

		if GetTask(193) == 0 then 
			SetTask(193,11)
			Msg2Player(""..GetTask(193))
			elseif GetTask(193) >= 2 then
			A = GetTask(193) - 1
			SetTask(193,A)
			Msg2Player("Th�i gian k�t qu� c�n l�i l�:"..GetTask(193).." gi�y !")	
			elseif GetTask(193) == 1 then 
			AddEventItem(22)
			DelNpc(idx)
			Msg2Player("<color=yellow>Thu th�p th�nh c�ng, b�n nh�n ���c 1 Qu� Huy Ho�ng ")
			SetTask(193,0)
		end
	end
