--�α�Npc�����ű�

Include("�ν�ս��ͷ�ļ�.lua");

function OnDeath(Launcher)

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

MyExp=GetExp()
SetTask(190,MyExp)
pkrs = GetTask(192);
SetTask(192, pkrs+5);
AddOwnExp(400000)
Msg2Player("�������������5��")

npccount = GetTask(SJKILLNPC) + 1;
SetTask(SJKILLNPC, npccount);
str1 = "��Ŀǰ��ɱ��Npc������Ϊ"..npccount;
Msg2Player(str1);


nCount = GetMissionV(MS_S_NPCDEATH) + 1;
SetMissionV(MS_S_NPCDEATH, nCount);

if (nCount == MS_SHOWKINGCOUNT) then
	CheckShowKing(1);
end;


end;


