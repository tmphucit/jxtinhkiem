


function main(idx)
ngay = tonumber(date("%d"))
if floor(GetTask(474)/1000) ~= ngay then
	SetTask(474, ngay * 1000)
	Msg2Player("Reset ngµy míi")
end

if mod(GetTask(474),1000) >= 2 and (GetTask(139) == 0 or (GetTask(139) == 1 and GetLevel() >= 120)) then
Talk(1,"","B¹n ®· sö dông ®ñ 2 lÇn trong ngµy, kh«ng thÓ sö dông thªm")
return
end

sl = GetItemCount(410)
if GetItemCount(410) >= 1 then
DelItemIdx(idx);
if GetItemCount(410) == (sl-1) then
	SetTask(475, GetTask(475) + 2*60*60*18)
	AddSkillEffect(455,1,GetTask(475))
	SetTask(474, GetTask(474) + 1)
	Msg2Player("B¹n cã thªm 2 giê nh©n ba kinh nghiÖm")
	Msg2Player("Thêi gian nh©n ba kinh nghiÖm hiÖn t¹i: "..floor(GetTask(475)/18/60).." phót !")
	Msg2Player("Sè l­ît hiÖn t¹i trong ngµy: "..mod(GetTask(474),1000).." / 2 lÇn")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
