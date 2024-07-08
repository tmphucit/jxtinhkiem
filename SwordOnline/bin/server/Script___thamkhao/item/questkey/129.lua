
Include("\\script\\monphai.lua")

function main(idx)
w,x,y = GetWorldPos();
if w == 53 or w == 70 or w == 74 or w == 54 or w == 8 or w == 91 or w == 41 or w == 50 or w == 78 or w == 102 or w == 104 or w == 38 or w == 39 or w == 92 or w == 56 or w == 57 or w == 13 or w == 14 or w == 63 or w == 62 or w == 64 or w == 65 or w == 67 or w == 68 or w == 73  then
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
idboss = random(1,getn(bosshkmp))
bosshk = AddNpc(bosshkmp[idboss],95,SubWorldID2Idx(w),x*32+dolechx,y*32+dolechy)
SetNpcScript(bosshk1, "\\script\\boss\\bosshk1.lua")
Msg2Player("<color=green>Chóc mõng "..GetName().." triÖu héi thµnh c«ng "..GetNpcName(bosshk).." ")
else
Talk(1,"","LÖnh Bµi chØ sö dông ë b¶n ®å 1x - 8x")
end
end

bosshkmp = {643,644,646,639,647,648,649,645,637,651}
