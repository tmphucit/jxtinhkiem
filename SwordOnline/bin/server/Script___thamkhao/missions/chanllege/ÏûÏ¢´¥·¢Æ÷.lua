Include("\\script\\missions\\chanllege\\ͷ�ļ�.lua");
function OnTimer()
	StopTimer()				
	if (GetGlbMissionV(BWID)~=1) then	--ˢ����npc
		mapindex = SubWorldID2Idx(209)
		if (mapindex < 0 ) then
			return
		end;
		FILE_FLAG =  	"\\script\\missions\\chanllege\\����npc.lua"
		bossid = 341
		bosslvl = 95
		posx = 200*8*32
  		posy = 200*16*32     
		npcidx = AddNpc(bossid,bosslvl,mapindex,posx,posy)
		SetNpcScript(npcidx, FILE_FLAG)

		FILE_FLAG1 =  	"\\script\\������\\������\\npc\\��������.lua"
		bossid = 516
		bosslvl = 95
		posx = 199*8*32
  		posy = 200*16*32     
		npcidx = AddNpc(bossid,bosslvl,mapindex,posx,posy)
		SetNpcScript(npcidx, FILE_FLAG1)
		SetGlbMissionV(BWID,1);	
	end
if (GetGlbMissionV(BWSTATE)==0) then		--δ��ʼ
	SetGlbMissionV(BWNUM,1);
	SetGlbMissionV(BWSTATE,1);
	AddGlobalCountNews("<color=Red>��̨��ս��<color>�Ѿ�����!��ȥ��̨����NPC�Ǳ���!",2);
elseif (GetGlbMissionV(BWSTATE)==2) then	--�г���Ϣ
	SetGlbMissionV(DEATH,0)

	n=GetGlbMissionV(BWNUM)
	if (n<=0) then
	SetGlbMissionV(BWNUM,n+1)
	SetGlbMissionV(BWSTATE,1)
	AddGlobalCountNews("<color=Red>��"..GetGlbMissionV(BWNUM).."��<color>��̨���Ѿ���ʼ����!��ȥ��̨����NPC�Ǳ���!",2);
	elseif (n>0) then
	AddGlobalCountNews("��һ�ֵ���̨��ս���Ѿ�����!",2);
	GameOver()
	end
end
end;
