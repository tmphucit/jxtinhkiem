
Include("\\script\\monphai.lua")
function main(idx)
Talk(1,"","<color=red>T©n Ki’m Hi÷p<color>: H∑y gi˜ lπi Æ’n khi n©ng c p trang bﬁ hoµng kim <color=yellow>Trang bﬁ hoµng kim")
end


function dsadsa()
w,x,y = GetWorldPos();
if w == 2 or w == 8 or w == 100 or w == 101 or w == 187 or w == 75 or w == 102 or w == 104 or w == 103 or w == 105 or w == 107 or w == 106 or w == 6 then
DelItemIdx(idx);

tl = random(1,2)
if (tl == 1) then
dolechx = 0 - random(8,16)
dolechy = 0 - random(8,16)
else
dolechx = 0 + random(8,16)
dolechy = 0 + random(8,16)
end
ttb = random(1,16)
idboss = 636 + ttb
bosstieu = AddNpc(idboss,125,SubWorldID2Idx(w),x*32+dolechx,y*32+dolechy)
SetNpcScript(bosstieu, "\\script\\kinhnghiem\\bosshk.lua")
SetNpcBoss(bosstieu,1)
Msg2Player("Su dung thanh cong Hoang Kim Sat (Dai) !");
else
Talk(1,"","Lenh Bai Chi Su Dung O Map Luyen Cap")
end
end

