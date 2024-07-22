iditem = 701
idskill = 533

Include("\\GameConfig.txt")

function main(idx)
thang = tonumber(date("%m"))
ngay =  tonumber(date("%d"))
gio = tonumber(date("%H"))

if KhoaThuocLag_Thang == thang and KhoaThuocLag_Ngay == ngay and (KhoaThuocLag_Gio == gio or KhoaThuocLag_Gio-1 == gio) then
Talk(1,"","VËt phÈm t¹m khãa sö dông trong thêi gian: "..gio.." giê ngµy "..ngay.." th¸ng "..thang.."")
return
end
w,x,y = GetWorldPos()
-- if w ~= 33 and w ~= 37 then
-- Talk(1,"","VËt phÈm chØ sö dông ®­îc ë b¶n ®å Tèng Kim")
-- return
-- end
name = GetNameItemBox(idx)
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then

			AddSkillEffect(idskill,1,5*60*18)
			Msg2Player("Sö dông thµnh c«ng "..name.."")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

