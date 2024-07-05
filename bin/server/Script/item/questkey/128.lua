
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
Msg2Player("Sö dông thµnh c«ng Hoµng Kim S¸t (TiÓu) !");
else
Talk(1,"","LÖnh b¶i chØ sö dông ë b¶n ®å luyÖn c«ng")
end
end

