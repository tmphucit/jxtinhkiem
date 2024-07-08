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
-- Talk(1,"","VËt phÈm chØ sö dông trong Tèng Kim !")
-- return
-- end
DelItemIdx(idx);

posNearly = 2
camp = GetCurCamp()
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w1,x1,y1 = GetWorldPos()
if w == w1 and (x1 >= x - posNearly * 8 and x1 <= x + posNearly * 8) and (y1 >= y - posNearly * 16 and y1 <= y + posNearly * 16) then
if (camp == GetCurCamp()) then
	AddSkillEffect(510,1,5*60*18)
	Msg2Player("B¹n nhËn ®­îc hç trî: +30% sinh lùc, +20% tèc ®é di chuyÓn")
end
end
end
PlayerIndex = idxp
end