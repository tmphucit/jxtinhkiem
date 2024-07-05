--description: 唐门出师任务 竹丝洞第三层宝箱
--author: yuanlan	
--date: 2003/3/13


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 67) then 
	Say("一万两银子。", 2, "要/accept", "不要/refuse")
end;

if (UTask_tm == 68) then 
	Say("你已打开了另一个宝箱，不能再开启此宝箱。", 0)
end;

if (UTask_tm == 69) then 
	Say("宝箱已空。", 0)
end;

end;



function accept()
Earn(10000); 
Msg2Player("得到一万两银子。");
SetTask(2, 69);
end;


function refuse()
end;

  	





