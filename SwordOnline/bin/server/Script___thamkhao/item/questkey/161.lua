

function main(idx)
n = GetItemCount(161)
	
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
		return
	end
	


if GetLevel() >= 115 then
Talk(1,"","��ng c�p tr�n 115 kh�ng th� s� d�ng !")
return
end


if GetItemCount(161) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(161) == (n-1) then
				
				for i=1,6 do
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(116)
					SetBindItem(idxitem , 1)
				end
			
				SetLevel(115)
				Msg2SubWorld("<color=pink>Ch�c m�ng t�n th� <color=yellow>"..GetName().."<color=pink> s� d�ng Thi�n S�n Tuy�t Li�n v� ��t ��ng c�p 115")
	
				TayTiemNang()
				TayKyNang()
						else
			Talk(1,"","Hack Ha Em")
			end
end
		
end



function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
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
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
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

