Include("\\script\\missions\\�ν�ս��pkս\\�ν�ս��ͷ�ļ�.lua");

function main(sel)

Say("ļ��Ա����������Ҫ��ս���ػ���Ҫ�뿪��", 3, "��Ҫ��ս��/yes", "��Ҫ�뿪/out", "û��/no");

end;


function yes()
timestate = GetMissionV(MS_STATE);
if (timestate == 0) then
Say("ļ��Ա��ս�ۻ�û�б����������ܽ���ս����", 0);
else
SJ_JoinS()
end
end;

function out()
   Say("ļ��Ա������������ɱ�����Ŷ����������鷳��",2,"������/blang", "��ȥ��/no");    

end;

   function blang()
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
       NewWorld(53, 1582, 3237);
       Msg2Player("������������! ��������...");
       SetFightState(0);
--OldPK=GetTask(201)
--SetPK(OldPK)
--SetTask(201,0)
--Msg2Player("���뿪���ν�ս����ϵͳ������PKֵ�ָ�Ϊ"..OldPK.."��");
   end;

function no()
end;