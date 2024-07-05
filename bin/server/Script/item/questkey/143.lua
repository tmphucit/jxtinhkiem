function main(idx)
Talk(1,"","Chøc n¨ng sÏ update sau")
end
Include("\\script\\monphai.lua")

function Item()
if GetItemCount(145) >= 1 then
n = GetItemCount(143)
if GetItemCount(143) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(143) == (n-1) then	
	DelItem(145)
	sx = random(1,100)
	if sx <= 20 then
	w = random(1,8)
	Msg2Player("Ban Nhan Duoc trang Bi Hoang Kim")
	if w == 1 then
	AddItem(0,4,3,random(1,9),random(0,4),0,10)
	elseif w == 2 then
	AddItem(0,2,30,random(1,9),random(0,4),0,10)
	elseif w == 3 then
	AddItem(0,6,3,random(1,9),random(0,4),0,10)
	elseif w == 4 then
	AddItem(0,5,5,random(1,9),random(0,4),0,10)
	elseif w == 5 then
	AddItem(0,8,3,random(1,9),random(0,4),0,10)
	elseif w == 6 then
	AddItem(0,7,15,random(1,9),random(0,4),0,10)
	elseif w == 7 then
	AddItem(0,3,2,random(1,9),random(0,4),0,10)
	elseif w == 8 then
	AddItem(0,9,3,random(1,9),random(0,4),0,10)
	end
elseif sx >= 20 and sx < 50 then
	w = random(1,8)
	Msg2Player("Ban Nhan Duoc trang Bi Hoang Kim")
	if w == 1 then
	AddItem(0,4,2,random(1,9),random(0,4),0,10)
	elseif w == 2 then
	AddItem(0,2,29,random(1,9),random(0,4),0,10)
	elseif w == 3 then
	AddItem(0,6,2,random(1,9),random(0,4),0,10)
	elseif w == 4 then
	AddItem(0,5,4,random(1,9),random(0,4),0,10)
	elseif w == 5 then
	AddItem(0,8,2,random(1,9),random(0,4),0,10)
	elseif w == 6 then
	AddItem(0,7,14,random(1,9),random(0,4),0,10)
	elseif w == 7 then
	AddItem(0,3,1,random(1,9),random(0,4),0,10)
	elseif w == 8 then
	AddItem(0,9,2,random(1,9),random(0,4),0,10)
	end	
	
	
else
	s = random(1,2)
	if s == 1 then
	AddEventItem(random(28,31))
	elseif s == 2 then
	AddEventItem(random(0,2))
	end
end
else
Talk(1,"","Hack Ha Em")
end
end
else
Talk(1,"","Ban Khong Co Chia Khoa Vang")
end
end

