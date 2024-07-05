--description: 唐门出师任务 竹丝洞第三层宝箱
--author: yuanlan	
--date: 2003/3/13


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 67) then 
	Say("一柄残破生锈的铁剑。", 2, "要/accept", "不要/refuse")
end;

if (UTask_tm == 68) then 
	Say("宝箱已空。", 0)
end;

if (UTask_tm == 69) then 
	Say("你已打开了另一个宝箱，不能再开启此宝箱。", 0)
end;

end;



function accept()
AddEventItem("七星绝命剑"); 
Msg2Player("得到七星绝命剑。");
SetTask(2, 68);
end;


function refuse()
end;

  	





