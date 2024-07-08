
itemidx2 = 0

function main(itemidx)
dofile("script/player/binditem.lua");
itemidx2 = itemidx

Msg2Player("itemidx2:"..itemidx2)
Msg2Player("itemidx:"..itemidx)
Msg2Player("ItemIsLock(itemidx):"..GetPlayerItemIsLock(itemidx))
Msg2Player("SecondLock(itemidx):"..GetPlayerItemSecondLock(itemidx))

if (GetPlayerItemIsLock(itemidx) == 1 and GetPlayerItemSecondLock(itemidx) == 0) then return end
SayNew("B¹n cã muèn kho¸ b¶o hiÓm trang bÞ nµy kh«ng?",2,
	"Kho¸ trang bÞ./khoatrangbi", 
	"Kh«ng./no"
	);

end

function khoatrangbi()
local res = SetPlayerItemLock(itemidx2);
if(res==1) then
	Talk(1,"","§· kho¸ b¶o hiÓm trang bÞ.")
end
end

function no()
end