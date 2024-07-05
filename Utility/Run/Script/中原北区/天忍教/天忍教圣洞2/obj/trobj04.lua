--description: 天忍教圣洞二层宝箱 天忍教出师任务
--author: yuanlan	
--date: 2003/5/20


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 67) then
	if (HaveItem("圣洞钥匙") == 1) then
		DelItem("圣洞钥匙")
		AddEventItem("羊皮书")
		Msg2Player("打开宝箱，得到羊皮书一卷。")
		SetTask(4, 68)	
	else
		Msg2Player("没有钥匙，打不开宝箱。")	
	end
return	
end

if (UTask_tr > 67) then
	Msg2Player("宝箱已空。")	
end;

end;

  	





