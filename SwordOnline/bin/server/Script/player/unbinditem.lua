
itemidx2 = 0

function main(itemidx)
dofile("script/player/unbinditem.lua");
itemidx2 = itemidx

local StrTab = {};
local count = 1;
if(GetPlayerItemIsLock(itemidx) == 1 and GetPlayerItemSecondLock(itemidx) ==0) then
tinsert(StrTab,"K�ch ho�t m� trang b�./motrangbi");
count = count + 1
end
if(GetPlayerItemIsLock(itemidx) == 1 and GetPlayerItemSecondLock(itemidx) < 0) then
--tinsert(StrTab,"Ho�n t�t m� trang b�./motrangbi_f");
--count = count + 1
motrangbi_f()
end
tinsert(StrTab,"Tho�t/no");

if(count>1) then SayNew("B�n c� mu�n m� kho� b�o hi�m trang b� n�y kh�ng? ",count,StrTab) end

end

function motrangbi_f()

if (GetPlayerItemSecondLock(itemidx2) >0) then
--Talk(1,"","V�t ph�m �ang trong th�i gian ch� m� kho�!")
return
end

local res = SetPlayerItemUnLockF(itemidx2);
if(res==1) then
--Talk(1,"","�� m� kho� b�o hi�m.")
Msg2Player("�� m� kho� b�o hi�m.")
end
end

function no()
end

function motrangbi()

if (GetPlayerItemSecondLock(itemidx2) >0) then
Talk(1,"","V�t ph�m �ang trong th�i gian ch� m� kho�!")
return
end

local res = SetPlayerItemUnLock(itemidx2);
if(res==1) then
	Talk(1,"","�� m� kho� b�o hi�m, th�i gian ch� m� kho� 186 gi�.")
end
end

function no()
end