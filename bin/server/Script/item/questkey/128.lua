
Include("\\script\\monphai.lua")

function main(idx)
w,x,y = GetWorldPos();
if w == 2 or w == 8 or w == 100 or w == 101 or w == 187 or w == 75 or w == 102 or w == 104 or w == 103 or w == 105 or w == 107 or w == 106 or w == 6 or (w >= 116 and w <= 134)then
DelItemIdx(idx);

tl = random(1,2)
if (tl == 1) then
dolechx = 0 - random(8,16)
dolechy = 0 - random(8,16)
else
dolechx = 0 + random(8,16)
dolechy = 0 + random(8,16)
end

idboss = random(653,661)
bosstieu = AddNpc(idboss,85,SubWorldID2Idx(w),x*32+dolechx,y*32+dolechy)
SetNpcScript(bosstieu, "\\script\\kinhnghiem\\bosstieuhk.lua")
Msg2Player("S� d�ng th�nh c�ng Ho�ng Kim S�t (Ti�u) !");
else
Talk(1,"","L�nh b�i ch� s� d�ng � b�n �� luy�n c�ng")
end
end

