
itemidx2 = 0

function main(itemidx)
dofile("script/player/binditem.lua");
itemidx2 = itemidx

Msg2Player("itemidx2:"..itemidx2)
Msg2Player("itemidx:"..itemidx)
Msg2Player("ItemIsLock(itemidx):"..GetPlayerItemIsLock(itemidx))
Msg2Player("SecondLock(itemidx):"..GetPlayerItemSecondLock(itemidx))

if (GetPlayerItemIsLock(itemidx) == 1 and GetPlayerItemSecondLock(itemidx) == 0) then return end
SayNew("B�n c� mu�n kho� b�o hi�m trang b� n�y kh�ng?",2,
	"Kho� trang b�./khoatrangbi", 
	"Kh�ng./no"
	);

end

function khoatrangbi()
local res = SetPlayerItemLock(itemidx2);
if(res==1) then
	Talk(1,"","�� kho� b�o hi�m trang b�.")
end
end

function no()
end