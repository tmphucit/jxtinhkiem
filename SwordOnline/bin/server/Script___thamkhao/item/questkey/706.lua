iditem = 706
idskill = 538

Include("\\GameConfig.txt")

function main(idx)
thang = tonumber(date("%m"))
ngay =  tonumber(date("%d"))
gio = tonumber(date("%H"))

if KhoaThuocLag_Thang == thang and KhoaThuocLag_Ngay == ngay and (KhoaThuocLag_Gio == gio or KhoaThuocLag_Gio-1 == gio) then
Talk(1,"","V�t ph�m t�m kh�a s� d�ng trong th�i gian: "..gio.." gi� ng�y "..ngay.." th�ng "..thang.."")
return
end
w,x,y = GetWorldPos()
-- if w ~= 33 and w ~= 37 then
-- Talk(1,"","V�t ph�m ch� s� d�ng ���c � b�n �� T�ng Kim")
-- return
-- end
name = GetNameItemBox(idx)
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then

			AddSkillEffect(idskill,1,5*60*18)
			Msg2Player("S� d�ng th�nh c�ng "..name.."")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

