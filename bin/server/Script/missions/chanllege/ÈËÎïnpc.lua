CurStation = 10;
Include("\\Script\\Global\\station.lua");
Include("\\script\\missions\\chanllege\\头文件.lua");
Include("\\script\\Global\\gm判断.lua");

function main(sel)
if (GetTask(BWIF)==1) then
Msg2Player("你是比武的,现在不能出去,如果想我直接送你出去,拿500W来!")
Say("<color=Earth>车夫<color>：请选择:", 2, "我给你500W,让我出去/gohome" ,"还是不出去了/no");
else
Say("<color=Earth>车夫<color>：请选择:", 2, "我要出去/home" ,"取消/no");
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
		Msg2Player("你花了500W,系统直接送你出来了!")
	else
		Msg2Player("你身上并没有带500W来!")
	end
end;

function home()
	RestoreCamp()
       NewWorld(53, 1582, 3237);
end;

function no()
end;