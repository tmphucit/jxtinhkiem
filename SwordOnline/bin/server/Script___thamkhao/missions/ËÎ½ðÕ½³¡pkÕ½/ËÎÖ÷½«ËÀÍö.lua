Include("\\script\\missions\\�ν�ս��pkս\\�ν�ս��ͷ�ļ�.lua");
Include("\\script\\missions\\�ν�ս��pkս\\����.lua");
Include("\\script\\missions\\�ν�ս��pkս\\zhujiang.lua");

function OnDeath()

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

 if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then

 Qitawanjia();

 end

WinBonus(2,1);
str1 = "�ν�ս�۽��:����"..GetName().."ɱ�����η��󽫣��𷽻��ʤ��!";
str = "̫���ˣ�["..GetName().."]ɱ�����ν������ǽ���Ӯ���ⳡս��!��ʿ�ǻ���ѽ��";
Msg2MSAll(1, str1);
Msg2MSGroup(1, str, 2);
OnDeath4()
resultstr = WinBonus(2,1);
str2 = resultstr;
SetMissionV(2,1);
SetMissionV(1,3);
AddGlobalCountNews(str1 , 2);
EndMission(1);

end;
