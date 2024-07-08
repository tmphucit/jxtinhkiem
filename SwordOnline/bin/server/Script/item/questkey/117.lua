TimeTTL = 60*60*18
GioiHan = 9*60*60*18

function main(idx)
ngay = tonumber(date("%d"))

if GetTask(502) ~= ngay then
	SetTask(501,0)
	SetTask(502,ngay)
end

if GetTask(172) >= 24*60*60*18 then
Talk(1,"","Giíi h¹n céng ®ån thêi gian Tiªn Th¶o Lé ®· ®¹t 24 giê, kh«ng thÓ sö dông thªm !")
return
end

if GetTask(501) >= 9*60*60*18 and GetLevel() >= 120 then
Talk(1,"","B¹n ®· nhËn ®­îc tèi ®a 9 giê Tiªn Th¶o Lé, kh«ng thÓ sö dông thªm")
return
end

sl = GetItemCount(117)
if GetItemCount(117) >= 1 then
DelItemIdx(idx);
if GetItemCount(117) == (sl-1) then

GiaTri = TimeTTL
if GetTask(501) + GiaTri >= GioiHan and GetLevel() >= 120 then
	GiaTri = GioiHan - GetTask(501)
	Msg2Player("B¹n cã thªm "..floor(GiaTri/ (60*18)).." phót nh©n ®«i kinh nghiÖm")
	Msg2Player("<color=yellow>L­u ý: B¹n bÞ mÊt "..floor((TimeTTL - GiaTri)/ (60*18)).." phót do qu¸ giíi h¹n 9 giê nh©n ®«i kinh nghiÖm.")
else
	Msg2Player("B¹n cã thªm 1 giê nh©n ®«i kinh nghiÖm")
end

if  GetTask(172) + GiaTri >= 24*60*60*18 then
giatrimat = GetTask(172) + GiaTri - 24*60*60*18
Msg2Player("<color=yellow>L­u ý: B¹n bÞ mÊt "..floor(giatrimat/ (60*18)).." phót do qu¸ giíi h¹n 24 giê céng dån nh©n ®«i kinh nghiÖm.")
SetTask(172, 24*60*60*18)
else
SetTask(172, GetTask(172) + GiaTri)
end
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)
SetTask(501, GetTask(501) + GiaTri)
Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm hiÖn t¹i: "..floor(GetTask(172)/18/60).." phót !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
