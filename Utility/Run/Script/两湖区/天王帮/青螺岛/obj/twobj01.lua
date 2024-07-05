--description: 天王帮出师任务 青螺岛宝箱
--author: yuanlan	
--date: 2003/4/28


function main()

UTask_tw = GetTask(3);

if (UTask_tw == 62) then
	if ( HaveItem("天王帮钥匙") == 1) then		
		DelItem("天王帮钥匙")
		Say("宝箱是空的，原来《天王遗书》已被山洞里的杀手抢先拿到。",0)
		SetTask(3, 64)
	else
		Say("没有钥匙，打不开宝箱。",0)
	end
else
	Say("宝箱是空的。",0)	
end

end;

  	





