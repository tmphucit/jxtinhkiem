function main()
Say("<color=green>Ng�o V�n T�ng: <color>Ch�o ��i hi�p <color=red>"..GetName().."<color> �� xem c� g� cho b�n n�o",4,
"Nhi�m v� ch�nh tuy�n /nvct",
"Nhi�m v� trung l�p /nvtl",
"Nhi�m v� t� ph�i/nvtp",
"Ta s� quay l�i sau ! /no")
end

function nvtp()
if GetLevel() >= 60 then
if GetTask(157) < 15 then
Talk(1,"","<color=green>Ng�o V�n T�ng: <color> B�n ch�a ho�n th�nh nhi�m v� trung l�p . ")
elseif GetTask(157) == 15 then
	SetTask(157,16)
	Msg2Player("Nhi�m V�: ��n Ba L�ng Huy�n t�m V�n Nhi ...")
	Talk(1,"","<color=green>Ng�o V�n T�ng: <color> ��n Ba L�ng Huy�n t�m V�n Nhi")
elseif GetTask(157) == 16 then
Talk(1,"","<color=green>Ng�o V�n T�ng: <color> ��n Ba L�ng Huy�n t�m V�n Nhi")
elseif GetTask(157) == 20 then
	SetTask(156,0)
	SetTask(157,21)
	Msg2Player("Nhi�m V�: Ti�u di�t H� H�u Ph�c t�i Ch�n N�i Tr��ng B�ch ")
	Talk(1,"","<color=green>Ng�o V�n T�ng: <color> Ti�u di�t H� H�u Ph�c t�i Ch�n N�i Tr��ng B�ch 150/162") 
elseif GetTask(157) == 21 then
	if GetTask(156) == 1 then
		SetTask(156,0)
		SetTask(157,22)
		Msg2Player("Nhi�m V�: T�m Ti�u S� � Th�nh �� ")
		Talk(1,"","<color=green>Ng�o V�n T�ng <color> ��n Th�nh �� t�m Ti�u S� ...")
	else
	Talk(1,"","<color=green>Ng�o V�n T�ng: <color> Ch�a ti�u di�t h�n th� ��ng c� g�p ta ....") 
	end
elseif GetTask(157) == 22 then
	Talk(1,"","<color=green>Ng�o V�n T�ng <color> Ti�u S� �ang � Th�nh �� 376/316 ")
elseif GetTask(157) == 23 then
	SetTask(157,24)
	if GetTask(157) == 24 then
		Talk(1,"","<color=green>Ng�o V�n T�ng <color> Nhi�m v� Ch�nh Tuy�n - T� Ph�i ho�n th�nh ")
		Msg2Player("B�n nh�n ���c trang b� Kim Phong ")
		Msg2Player("B�n nh�n ���c 5 v�n l��ng")
		Earn(50000)
		
		for k=1,10 do AddOwnExp(50000) end
		Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
		kimphong3()
		SetTask(157,25)
		Talk(1,"no")

	end
else
Talk(1,"","<color=green>Ng�o V�n T�ng: <color> Ta kh�ng c� vi�c g� �� th� th�ch nh� ng��i ...")
end
else
	Talk(1,"","<color=green>Ng�o V�n T�ng <color>: ��t ��ng c�p <color=red>60<color> r�i quay l�i g�p ta !")
end
end


function no()
Msg2Player("H�y v� luy�n t�p khi n�o s�n s�ng th� ��n g�p ta !")
end
function nvct()
if GetLevel() >= 40 then
if GetTask(157) == 6 then
	SetTask(157,7)
	if GetTask(157) == 7 then
	SetTask(156,0)
	Msg2Player("Nhi�m V�: ��n Hoa S�n ti�u di�t 100 con Nh�m v� 1 con Nh�m Ch�a ")
	Talk(2,"","B�n �� nh�n Nhi�m v� Ch�nh Tuy�n !",
	"��n Hoa S�n ti�u di�t 100 con Nh�m v� 1 Con Nh�m Ch�a")	
	else
	Talk(1,"","Hack ha em")
	end
elseif GetTask(157) == 7 then
	a = GetTask(156)
	if GetTask(156) == 101 then
		SetTask(156,GetTask(156)-101)		
		if GetTask(156) == (a-101) then
		SetTask(156,0)
		SetTask(157,8)
		Msg2Player("Nhi�m V�: ��n Th�nh �� t�m �n M�y. Giao cho h�n 5 v�n l��ng �� ki�m �i�m t�ch ��c ")
		Talk(1,"","<color=green>Ng�o V�n T�ng: <color> ��n Th�nh �� t�m �n M�y �� ki�m ch�t t�ch ��c ")
		else
		Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","��n Hoa S�n ti�u di�t 100 con Nh�m. Sau �� ��nh b�i 1 con Nh�m Ch�a ....")
	end
elseif GetTask(157) == 8 then
	if GetTask(156) == 1 then
		SetTask(156,0)
		if GetTask(156) == 0 then
			SetTask(157,9)
			if GetTask(157) == 9 then
			Earn(50000) 
			Msg2Player("B�n nh�n ���c 5 v�n l��ng ")
			for k=1,10 do AddOwnExp(50000) end
			Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
			kimphong()
			Talk(1,"no")
			else
			Talk(1,"","hack he em")
			end	
		else
		Talk(1,"","hack he em")
		end
	else
	Talk(1,"","<color=green>Ng�o V�n T�ng: <color> H�y ��n Th�nh �� t�m �n M�y �i ! ")
	end		
elseif GetTask(157) == 9 then
	Talk(1,"","<color=green>Ng�o V�n T�ng <color>: B�n �� ho�n th�nh nhi�m v� ch�nh tuy�n ")
else
Talk(1,"","<color=green>Ng�o V�n T�ng <color>: Th� gian c�n r�t nhi�u th� th�ch m� con ng��i ch�a v��t qua h�t !")
end
else
	Talk(1,"","<color=green>Ng�o V�n T�ng <color>: ��t ��ng c�p <color=red>40<color> r�i quay l�i g�p ta !")
end
end
function nvtl()
if GetLevel() >= 50 then
if GetTask(157) < 9 then
Talk(1,"","<color=green>Ng�o V�n T�ng <color>: Nhi�m v� ch�nh tuy�n ch�a ho�n th�nh !")
elseif GetTask(157) == 9 then
Msg2Player("Nhi�m V�: ��n T��ng D��ng t�m Ph� Nam B�ng. ")
Talk(1,"","<color=green>Ng�o V�n T�ng <color>: H�y ��n T��ng D��ng t�m Ph� Nam B�ng. C� th� gi�p �ch cho ng��i �� ...")
elseif GetTask(157) == 14 then
	SetTask(157,15)
	if GetTask(157) == 15 then
		Earn(50000)
		Msg2Player("B�n nh�n ���c 5 v�n l��ng")
		for k=1,10 do AddOwnExp(50000) end
		Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
		kimphong2()
		Talk(1,"no")

		
	end
elseif GetTask(157) == 15 then
	Talk(1,"","Nhi�m v� �� ho�n th�nh")	
else
Talk(1,"","<color=green>Ng�o V�n T�ng <color>: Th� gian c�n r�t nhi�u th� th�ch m� con ng��i ch�a v��t qua h�t !")
end
else
	Talk(1,"","<color=green>Ng�o V�n T�ng <color>: ��t ��ng c�p <color=red>50<color> r�i quay l�i g�p ta !")
end
end

function kimphong2()
AddItem(0,6,2,1,0,0,0)
AddItem(0,5,4,1,0,0,0)
AddItem(0,9,2,1,0,0,0)
Talk(1,"no")
end

function kimphong()
AddItem(0,7,14,1,0,0,0)
AddItem(0,2,29,1,0,0,0)
AddItem(0,8,2,1,0,0,0)
Talk(1,"no")
end
function kimphong3()
AddItem(0,4,2,1,0,0,0)
AddItem(0,3,1,1,0,0,0)
AddItem(0,3,2,1,0,0,0)
Talk(1,"no")
end
