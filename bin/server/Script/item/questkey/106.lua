function main(idx)
w,x,y = GetWorldPos()

if w ~= 33 and w ~= 61 and w~= 34 and w ~= 35 and w ~= 36 then
Talk(1,"","Kh«ng më lÔ bao ë ngoµi chiÕn tr­êng !")
return
end

n = GetItemCount(106)
if GetFightState() == 0 then
DelItemIdx(idx);
	if GetItemCount(106) == (n-1) then
		for i=1,20 do
			AddItem(1,2,0,4,0,0,0)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Ngò Hoa Ngäc Lé Hoµn")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","VËt phÈm chØ sö dông trong doanh tr¹i Tèng Kim !")
end
end