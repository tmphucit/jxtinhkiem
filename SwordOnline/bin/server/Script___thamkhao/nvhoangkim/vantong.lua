function main()
SayNew("<color=green>Ng�o V�n T�ng: <color>Ch�o ��i hi�p <color=red>"..GetName().."<color> �� xem c� g� cho b�n n�o",4,
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
		Msg2Player("Nhi�m V�: T�m Ti�u S� � Bi�n Kinh ")
		Talk(1,"","<color=green>Ng�o V�n T�ng <color> ��n Bi�n Kinh t�m Ti�u S� ...")
	else
	Talk(1,"","<color=green>Ng�o V�n T�ng: <color> Ch�a ti�u di�t h�n th� ��ng c� g�p ta ....") 
	end
elseif GetTask(157) == 22 then
	Talk(1,"","<color=green>Ng�o V�n T�ng <color> Ti�u S� �ang � Bi�n Kinh 200/194 ")
elseif GetTask(157) == 23 then
if CheckFreeBoxItem(4,364,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

	SetTask(157,24)
	if GetTask(157) == 24 then
		Talk(1,"","<color=green>Ng�o V�n T�ng <color> Nhi�m v� Ch�nh Tuy�n - T� Ph�i ho�n th�nh ")
		
		for k=1,10 do AddOwnExp(50000) end
		Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
		kimphong3()
		SetTask(157,25)
		TayKyNang()
		Talk(0,"")

	end
else
Talk(1,"","<color=green>Ng�o V�n T�ng: <color> Ta kh�ng c� vi�c g� �� th� th�ch nh� ng��i ...")
end
else
	Talk(1,"","<color=green>Ng�o V�n T�ng <color>: ��t ��ng c�p <color=red>60<color> r�i quay l�i g�p ta !")
end
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end


function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
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
		Msg2Player("Nhi�m V�: ��n T��ng D��ng t�m �n M�y. Giao cho h�n 5 v�n l��ng �� ki�m �i�m t�ch ��c ")
		Talk(1,"","<color=green>Ng�o V�n T�ng: <color> ��n Th�nh �� t�m �n M�y �� ki�m ch�t t�ch ��c ")
		else
		Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","��n Hoa S�n ti�u di�t 100 con Nh�m. Sau �� ��nh b�i 1 con Nh�m Ch�a ....")
	end
elseif GetTask(157) == 8 then
if CheckFreeBoxItem(4,364,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end
	if GetTask(156) == 1 then
		SetTask(156,0)
		if GetTask(156) == 0 then
			SetTask(157,9)
			if GetTask(157) == 9 then
			
			for k=1,10 do AddOwnExp(50000) end
			Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
			kimphong()
			Talk(0,"")
			else
			Talk(1,"","hack he em")
			end	
		else
		Talk(1,"","hack he em")
		end
	else
	Talk(1,"","<color=green>Ng�o V�n T�ng: <color> H�y ��n T��ng D��ng t�m �n M�y �i ! ")
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
if CheckFreeBoxItem(4,364,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

	SetTask(157,15)
	if GetTask(157) == 15 then
	
		for k=1,10 do AddOwnExp(50000) end
		Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m")
		kimphong2()
		Talk(1,"no","Nhi�m v� ho�n th�nh !")

		
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
sx = random(1,3)
if sx == 1 then
	idx = AddItem(0,6,2,2,0,0,0)
	--SetTimeItem(idx,550324);
elseif sx == 2 then
	idx = AddItem(0,8,2,2,0,0,0)
--	SetTimeItem(idx,550324);
elseif sx == 3 then
	idx = AddItem(0,9,2,2,0,0,0)
--	SetTimeItem(idx,550324);
end
Talk(0,"")
end

function kimphong()
sx = random(1,3)
if sx == 1 then
	idx = AddItem(0,2,29,2,0,0,0)	
--	SetTimeItem(idx,550324);	
elseif sx == 2 then
	idx = AddItem(0,7,14,2,0,0,0)
	--SetTimeItem(idx,550324);
elseif sx == 3 then
	idx = AddItem(0,5,4,2,0,0,0)
	--SetTimeItem(idx,550324);
end	
Talk(0,"")
end
function kimphong3()
sx = random(1,3)
if sx == 1 then
		idx = AddItem(0,4,2,2,0,0,0)
--	SetTimeItem(idx,550324);
elseif sx == 2 then
		idx = AddItem(0,3,2,2,0,0,0)
	--SetTimeItem(idx,550324);
elseif sx == 3 then
		idx = AddItem(0,3,1,2,0,0,0)
	--SetTimeItem(idx,550324);
end
Talk(0,"")
end


