function main(sel)

SayNew("��ҽ�������ﶼ���Ϻõ�ҩ�ģ�����֧Ԯǰ�ߣ�Ҫ���ʲôҩ��", 4, "����/yes","�廨��¶��������/wuhua", "��Ҫ�뿪/out", "������/no");

end;

function wuhua()
SayNew("��ҽ����������Ƴ�ҩƷ������۷��񣬴�����ֻ��<color=Red>15����<color>.",2,"����/ok","����/no")
end;

function ok()
if (GetCash() >= 150000) then
Pay(150000)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
AddItem(1,2,0,5,1,1)
Msg2Player("�õ��廨��¶��20����")
else
SayNew("��ҽ���ȴ湻������������ɡ�")
end
end;

function yes()
Sale(11);  			--�������׿�
end;


function out()
timestate = GetMissionV(1);
if (timestate == 1) or (timestate == 2) then
SayNew("��ҽ��ս�۽����У��㲻�ܵ��ӱ���", 0);
else
SayNew("��ҽ������������ɱ�����Ŷ����������鷳��",2,"������/blang","��ȥ��/OnCancel");  
end
end;

   function blang()
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
       NewWorld(53, 1582, 3237);
       Msg2Player("������������! ��������...");
       SetFightState(0);
OldPK=GetTask(201)
SetPK(OldPK)
SetTask(201,0)
Msg2Player("���뿪���ν�ս����ϵͳ������PKֵ�ָ�Ϊ"..OldPK.."��");
   end;


function no()
end;
