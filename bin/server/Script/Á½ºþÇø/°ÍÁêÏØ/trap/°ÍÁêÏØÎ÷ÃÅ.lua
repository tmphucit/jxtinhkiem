--Á½ºşÇø °ÍÁêÏØÄÏÃÅ Õ½¶·×´Ì¬ÇĞ»»Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
ngay = tonumber(date("%d"))
h,m,s = GetTimeNew()

if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- Íæ¼Ò´¦ÓÚ·ÇÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÄÚ
	
	if ngay == 1 and h < 9 then
		Talk(1,"","HiÖn t¹i vÉn ch­a b¾t ®Çu sù kiÖn, kh«ng thÓ ra ngoµi !")
		Msg2Player("Thêi gian cßn l¹i: <color=yellow>"..(8-h).." giê "..(59-m).." phót "..(59-s).." gi©y !")
		SetPos(1542, 3116)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
	else
	SetPos(1539, 3112)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÍâ	
	SetFightState(1)		-- ×ª»»ÎªÕ½¶·×´Ì¬
	end	
else			       		-- Íæ¼Ò´¦ÓÚÕ½¶·×´Ì¬£¬¼´ÔÚ³ÇÍâ

	SetPos(1542, 3116)		-- ÉèÖÃ×ß³öTrapµã£¬Ä¿µÄµãÔÚ³ÇÄÚ	
	SetFightState(0)		-- ×ª»»Îª·ÇÕ½¶·×´Ì¬
end;
	AddStation(10)			-- ¼ÇÂ¼½ÇÉ«Ôø¾­µ½¹ı°ÍÁêÏØ
doimaump()
else
xuly()
end
end
