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
-- Talk(1,"","V�t ph�m ch� s� d�ng trong T�ng Kim !")
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
	AddSkillEffect(509,1,5*60*18)
	Msg2Player("B�n nh�n ���c h� tr�: +50% t�c �� ��nh ngo�i c�ng, +50% t�c �� ��nh n�i c�ng")
end
end
end
PlayerIndex = idxp
end