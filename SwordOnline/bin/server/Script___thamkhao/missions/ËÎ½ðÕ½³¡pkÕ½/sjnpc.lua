Include("\\script\\missions\\�ν�ս��pkս\\�ν�ս��ͷ�ļ�.lua");

function main(sel)
        curidx = SubWorld
	idx = SubWorldID2Idx(44);
	if (idx == -1) then 
	return
	end;	
	SubWorld = idx;
timestate = GetMissionV(MS_STATE);
 if (timestate == 0) then
  SayNew("�ν����Ա��ս�ۻ�û�б����������ܽ���ս����", 0);
 else
  if (GetLevel() <= 49) then
  return 0;
  end
  SayNew("�ν����Ա����Ҫ����������Ҫ��50����������Ŷ��", 3, "��Ҫ���η�/song", "��Ҫ�ӽ�/jin", "û��/no");
  LeaveTeam()
 end
SubWorld = curidx
end;

function song()
NewWorld(44, 886, 4499);
SetFightState(0);
MyPK=GetPK()
SetTask(200,MyPK)
SetPK(0)
Msg2Player("����PKֵΪ"..MyPK.."�����ν�ս����ϵͳ��Ϊ�����ó�0����ȥ��ָ�����ֵ��");
MyExp=GetExp()
SetTask(190,MyExp)
Msg2Player("���ν�ս����ÿ���������ľ��飬ϵͳ���������������ϡ�");
end;

function jin()
NewWorld(44, 1585, 3215);
SetFightState(0);
MyPK=GetPK()
SetTask(200,MyPK)
SetPK(0)
Msg2Player("����PKֵΪ"..MyPK.."�����ν�ս����ϵͳ��Ϊ�����ó�0����ȥ��ָ�����ֵ��");
MyExp=GetExp()
SetTask(190,MyExp)
Msg2Player("���ν�ս����ÿ���������ľ��飬ϵͳ���������������ϡ�");
end;

function no()
end;