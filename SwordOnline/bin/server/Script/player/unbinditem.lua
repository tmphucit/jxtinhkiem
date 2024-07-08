
itemidx2 = 0

function main(itemidx)
dofile("script/player/unbinditem.lua");
itemidx2 = itemidx

local StrTab = {};
local count = 1;
if(GetPlayerItemIsLock(itemidx) == 1 and GetPlayerItemSecondLock(itemidx) ==0) then
tinsert(StrTab,"KÝch ho¹t më trang bÞ./motrangbi");
count = count + 1
end
if(GetPlayerItemIsLock(itemidx) == 1 and GetPlayerItemSecondLock(itemidx) < 0) then
--tinsert(StrTab,"Hoµn tÊt më trang bÞ./motrangbi_f");
--count = count + 1
motrangbi_f()
end
tinsert(StrTab,"Tho¸t/no");

if(count>1) then SayNew("B¹n cã muèn më kho¸ b¶o hiÓm trang bÞ nµy kh«ng? ",count,StrTab) end

end

function motrangbi_f()

if (GetPlayerItemSecondLock(itemidx2) >0) then
--Talk(1,"","VËt phÈm ®ang trong thêi gian chê më kho¸!")
return
end

local res = SetPlayerItemUnLockF(itemidx2);
if(res==1) then
--Talk(1,"","§· më kho¸ b¶o hiÓm.")
Msg2Player("§· më kho¸ b¶o hiÓm.")
end
end

function no()
end

function motrangbi()

if (GetPlayerItemSecondLock(itemidx2) >0) then
Talk(1,"","VËt phÈm ®ang trong thêi gian chê më kho¸!")
return
end

local res = SetPlayerItemUnLock(itemidx2);
if(res==1) then
	Talk(1,"","§· më kho¸ b¶o hiÓm, thêi gian chê më kho¸ 186 giê.")
end
end

function no()
end