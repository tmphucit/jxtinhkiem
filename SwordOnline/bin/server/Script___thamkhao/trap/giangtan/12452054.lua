--Á½ºşÇø °ÍÁêÏØÄÏÃÅ Õ½¶·×´Ì¬ÇĞ»»Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()
if ngay == 82 and gio < 10 then
		Talk(1,"","HiÖn t¹i vÉn ch­a b¾t ®Çu sù kiÖn, kh«ng thÓ ra ngoµi !")
		Msg2Player("Thêi gian cßn l¹i: <color=yellow>"..(9-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
	
		SetPos(3441, 6097)
		return
end

if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- Íæ¼Ò´¦ÓÚ·ÇÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÄÚ
	SetPos(3425, 6078)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÍâ	
	SetFightState(1)		-- ×ª»»ÎªÕ½¶·×´Ì¬
else			       		-- Íæ¼Ò´¦ÓÚÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÍâ
	SetPos(3441, 6097)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
end;
	AddStation(10)			-- ¼ÇÂ¼½ÇÉ«Ôø¾­µ½¹ı°ÍÁêÏØ
Msg2Player("Thay doi trang thai")
doimaump()
else
xuly()
end
end;

-- cua thanh thanh son