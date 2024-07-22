Include("\\script\\missions\\chanllege\\头文件.lua");
function OnTimer()
	StopTimer()				
	if (GetGlbMissionV(BWID)~=1) then	--刷任务npc
		mapindex = SubWorldID2Idx(209)
		if (mapindex < 0 ) then
			return
		end;
		FILE_FLAG =  	"\\script\\missions\\chanllege\\人物npc.lua"
		bossid = 341
		bosslvl = 95
		posx = 200*8*32
  		posy = 200*16*32     
		npcidx = AddNpc(bossid,bosslvl,mapindex,posx,posy)
		SetNpcScript(npcidx, FILE_FLAG)

		FILE_FLAG1 =  	"\\script\\两湖区\\巴陵县\\npc\\禁地箱子.lua"
		bossid = 516
		bosslvl = 95
		posx = 199*8*32
  		posy = 200*16*32     
		npcidx = AddNpc(bossid,bosslvl,mapindex,posx,posy)
		SetNpcScript(npcidx, FILE_FLAG1)
		SetGlbMissionV(BWID,1);	
	end
if (GetGlbMissionV(BWSTATE)==0) then		--未开始
	SetGlbMissionV(BWNUM,1);
	SetGlbMissionV(BWSTATE,1);
	AddGlobalCountNews("<color=Red>擂台挑战赛<color>已经开放!快去擂台比武NPC那报名!",2);
elseif (GetGlbMissionV(BWSTATE)==2) then	--中场休息
	SetGlbMissionV(DEATH,0)

	n=GetGlbMissionV(BWNUM)
	if (n<=0) then
	SetGlbMissionV(BWNUM,n+1)
	SetGlbMissionV(BWSTATE,1)
	AddGlobalCountNews("<color=Red>第"..GetGlbMissionV(BWNUM).."场<color>擂台赛已经开始报名!快去擂台比武NPC那报名!",2);
	elseif (n>0) then
	AddGlobalCountNews("这一轮的擂台挑战赛已经结束!",2);
	GameOver()
	end
end
end;
