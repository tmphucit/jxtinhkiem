
function main(idx)
ngay = tonumber(date("%d"))

ngay = tonumber(date("%d"))
if floor(GetTask(510)/1000) ~= ngay then
	SetTask(510,ngay*1000)
end
soluonggioihan = 4

if GetTask(510) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng Tiªn Th¶o Lé S­ §å sö dông trong ngµy: "..soluonggioihan.." b×nh")
return
end

sl = GetItemCount(652)
if GetItemCount(652) >= 1 then
DelItemIdx(idx);
if GetItemCount(652) == (sl-1) then
SetTask(510,GetTask(510)+1)
SetTask(172, GetTask(172) + 60*60*18)
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)
Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm hiÖn t¹i: "..floor(GetTask(172)/18/60).." phót !")
Talk(0,"")

else
Talk(1,"","Hack ha em")
end
end
end
