Include("\\script\\missions\\�ν�ս��pkս\\�ν�ս��pk��ս.lua");


function OnTimer()

State = GetMissionV(1) ;
if (State == 0) then
return
end;

--�ڹ涨ʱ���ڣ��������δ��һ��ɱ�������������������
--���� ĳĳ��:��ʿ��!��ͨѶ��ͨ�����о������˺���Ԯ���ӣ����Ǵ����..���ᡣ�����˱�...�ȵ�..
Msg2MSAll(1, "��ɫ�������������ձ�������������ս����ɱ�н��Ĳ�����");
SetMissionV(MS_STATE,3);
EndMission(1);
end;
