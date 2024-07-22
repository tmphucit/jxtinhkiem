Include("\\script\\missions\\�ν�ս��pkս\\�ν�ս��pk��ս.lua");

function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE);
	SetMissionV(MS_NEWSVALUE,V + 1);

--�����׶�
if (timestate == 1) then 
	ReportMemberState(V);
elseif (timestate == 2) then 
	ReportBattle(V);

idx = 0;
for i = 1 , 500 do 
 idx, pidx = GetNextPlayer(1,idx, 0);
 
 if (idx == 0) then 
 break
 end;
 
 if (pidx > 0) then
   PlayerIndex = pidx;
   if (GetFightState() == 0) then
   SetFightState(1);
   end
 end;
end;

--����ѳ�����һ�׶Σ�����δ���κ���������ʱ
	if (V >= SHOWKINGTIME1 and GetMissionV(MS_FIRSTSHOW) == 0) then
		s_show = GetMissionV(MS_S_SHOWKING);
		j_show = GetMissionV(MS_J_SHOWKING);

--�����ǰֻ��һ�����ϻ�������������Ҫ����������������
		if (s_show == 1 and j_show == 0) then 
			SetMissionV(MS_FIRSTSHOW, 1)
			ShowTheKing(1)
			SetMissionV(MS_S_SHOWKING,2)
			return
		end;

		if (s_show == 0 and j_show == 1) then 
			SetMissionV(MS_FIRSTSHOW, 2)
			ShowTheKing(2)
			SetMissionV(MS_J_SHOWKING,2)
			return
		end;

--����������ﵽ��������������Ҫ�������˫���ĵ�ǰ����ȷ��
		if (s_show == 1 and j_show == 1) then
			s_dpk  = GetMissionV(MS_S_DEATHCOUNT);--���PK��������
			j_dpk  = GetMissionV(MS_J_DEATHCOUNT);
			s_dnpc = GetMissionV(MS_S_NPCDEATH);--NPC��������
			j_dnpc = GetMissionV(MS_J_NPCDEATH);

			if (s_dpk * 1.5 + s_dnpc > j_dpk * 1.5 + j_dnpc) then
				SetMissionV(MS_FIRSTSHOW, 1)
				ShowTheKing(1)
				SetMissionV(MS_S_SHOWKING,2)
				return
			else
				SetMissionV(MS_FIRSTSHOW, 2)
				ShowTheKing(2)
				SetMissionV(MS_J_SHOWKING,2)
				return
			end
		end;
	end;

--����Ѿ����˵ڶ��׶Σ������Ʒ��������Գ�����
	if (V >= SHOWKINGTIME2) then
		--�����ǰ���κη��������֣���ֱ�ӷ���
		local fstshow = GetMissionV(MS_FIRSTSHOW);
		if (fstshow <= 0) then
			return
		end

--��¼���Ʒ��Ĵ��� 1song ,2jing
		nextgroup = 0;
		if (fstshow == 1) then	
			nextgroup = 2
		else
			nextgroup = 1
		end;

--����÷�����������Ҫ���Ѿ��ﵽ��������������
		local canshow = GetMissionV(MS_S_SHOWKING + nextgroup - 1);

		if (canshow == 1) then
			ShowTheKing(nextgroup);
			SetMissionV(MS_S_SHOWKING + nextgroup - 1, 2);
		end;
	end;
elseif (timestate == 3) then 
	Msg2MSAll("ս�۽���!");
	StopMissionTimer(1,1);
end;

end;

function ReportMemberState(V)
--�ڱ����ڼ䣬ϵͳ����֪ͨ��ҵ�ǰ�ı������

if (V >= GO_TIME) then
	if (GetMSPlayerCount(1,1) <= 1 or GetMSPlayerCount(1,2) <= 1) then
		AddGlobalNews("�ν�ս������ʱ�䵽����Ŀǰ˫������������Ҫ�󣬱���ս��ȡ����");
		GiveBackBonus()
		CloseMission(1)
		return
	else
		AddGlobalNews("�ν�ս������ʱ�䵽���ν�ս������ʽ��ʼ��!",3);
		RunMission(1);
		return
	end
end;

if (mod(V, 6) == 0) then 
	RestTime = (GO_TIME - V) * 1800 / GO_TIME;
	RestMin, RestSec = GetMinAndSec(RestTime);
	local str1 = "�ν��ս�����뱨���׶Σ�����ʣ��ʱ��:"..RestMin.."�֡�";
	AddGlobalCountNews(str1, 2);
end;

str = "�����׶�:�Ρ���˫����ǰ������Ϊ:"..GetMSPlayerCount(1,1)..":"..GetMSPlayerCount(1,2);
Msg2MSAll(1,str);

end;

function ReportBattle(V)
--ս�����й����У�ϵͳ����֪ͨ�������������
	s_death = GetMissionV(4) + GetMissionV(8);
	j_death = (GetMissionV(3) + GetMissionV(9));
	gametime = (floor(GetMSRestTime(1,5)/18));

	RestMin, RestSec = GetMinAndSec(gametime);

	s_dpk  = GetMissionV(MS_S_DEATHCOUNT);
	j_dpk  = GetMissionV(MS_J_DEATHCOUNT);
	s_dnpc = GetMissionV(MS_S_NPCDEATH);
	j_dnpc = GetMissionV(MS_J_NPCDEATH);

	s_result = floor(j_dpk * 1.5 + j_dnpc);
	j_result = floor(s_dpk * 1.5 + s_dnpc);
	
	str1 = "ս���׶�:Ŀǰ�������:�ξ�"..s_death.."�ˣ�����"..s_result..";���"..j_death.."��,����"..j_result.."��ʣ��ʱ��:"..RestMin.."��"..RestSec.."��";

	Msg2MSAll(1, str1);
	if (mod(V, 24) == 0) then
		str2 = "�ν�ս�����������ҵ�ս��!Ŀǰ�ν�����Ϊ"..s_death..":"..j_death;
		AddGlobalCountNews(str2 , 1);
	end;
end;
 
