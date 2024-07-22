NPC_PHONGLANG={
{50310,102326},
{50676,102646},
{50648,102396},
{50494,102246},
{50747,102178},
{50749,101824},
{50920,102032},
{51105,101868},
{51248,101730},
{51332,101982},
{51436,101676},
{51247,101372},
{51646,101624},
{52084,101982},
{52103,102344},
{51979,102200},
{51598,102134},
{52020,102534},
{51402,102346},
{51773,102768},
{51609,102998},
{51152,102566},
{51426,102976},
{51322,103184},
{51071,102944},
{52588,102418},
{52718,102624},
{52504,102596},
{52366,102714},
{52426,103008},
{51995,102986},
{52150,103320},
{51718,103040},
{51976,103536},
{51592,103614},
{52001,103964},
{52314,103446},
{52402,103174},
{52580,102996},
{52769,103182},
{52866,102890},
{53021,103074},
{52197,104080},
{52384,103894}
};
BOSS_PHONGLANG={
{51619,102062},
{52565,102924}
}
DROP_PHONGLANG="\\script\\feature\\phonglangdo\\drop.lua"
DIE_PHONGLANG ="\\script\\feature\\phonglangdo\\die.lua"
function release_npcphonglang()
	local nNpcIdx;
	for i=1,getn(NPC_PHONGLANG) do
	nNpcIdx = AddNpcNew(724,100,337,NPC_PHONGLANG[i][1],NPC_PHONGLANG[i][2],DIE_PHONGLANG,nil,nil,
		1,RANDOMC(0,1,2,3,4),5000,50000,nil,300,50,50,55,nil,1400,25,nil,DROP_PHONGLANG);
		if(nNpcIdx > 0) then
		AddMSNpc(1,nNpcIdx);
		end
	end
	Msg2MSAll(1,"Thuy�n �� r�i b�n, qu� hi�p kh�ch xin �n ��nh ch� ng�i!");
end;

function release_phonglangboss()
	local nNpcIdx;
	for i=1,getn(BOSS_PHONGLANG) do
	nNpcIdx = AddNpcNew(725,100,337,BOSS_PHONGLANG[i][1],BOSS_PHONGLANG[i][2],DIE_PHONGLANG,
	nil,"Th�y t�c ��u l�nh",1,RANDOMC(0,1,2,3,4),150000,1000000,nil,500,80,50,55,nil,12*1080,50,2,DROP_PHONGLANG);
	if(nNpcIdx > 0) then
		AddMSNpc(1,nNpcIdx);
	end
	end
end;
