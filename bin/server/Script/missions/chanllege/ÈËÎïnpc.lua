CurStation = 10;
Include("\\Script\\Global\\station.lua");
Include("\\script\\missions\\chanllege\\ͷ�ļ�.lua");
Include("\\script\\Global\\gm�ж�.lua");

function main(sel)
if (GetTask(BWIF)==1) then
Msg2Player("���Ǳ����,���ڲ��ܳ�ȥ,�������ֱ�������ȥ,��500W��!")
Say("<color=Earth>����<color>����ѡ��:", 2, "�Ҹ���500W,���ҳ�ȥ/gohome" ,"���ǲ���ȥ��/no");
else
Say("<color=Earth>����<color>����ѡ��:", 2, "��Ҫ��ȥ/home" ,"ȡ��/no");
end
end;

function gohome()
	if (GetCash() >= 5000000) then 
		Pay(5000000)
		SetTask(BWIF,0)
		RestoreCamp()	
		SetDeathScript("");
		NewWorld(53, 1582, 3237);
		SetFightState(0)
		GameOver()
		Msg2Player("�㻨��500W,ϵͳֱ�����������!")
	else
		Msg2Player("�����ϲ�û�д�500W��!")
	end
end;

function home()
	RestoreCamp()
       NewWorld(53, 1582, 3237);
end;

function no()
end;