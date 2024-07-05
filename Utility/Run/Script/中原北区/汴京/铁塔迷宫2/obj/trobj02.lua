--description: 汴京府铁塔二层宝箱 天忍教50级任务
--author: yuanlan	
--date: 2003/5/19


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 52) then
	if (HaveItem("铁塔钥匙二") == 1) then
		Msg2Player("打开第二道机关。")
		DelItem("铁塔钥匙二")
		SetTask(22, 1)	
		UTask_trsub01 = GetTask(21)
		UTask_trsub03 = GetTask(23)
		if (UTask_trsub01 == 1) and (UTask_trsub03 == 1) then 	
			Say("三层机关已全部打开，救出关在塔里的凤翕如。", 0)	
			Msg2Player("三层机关已全部打开，救出关在塔里的凤翕如。")
			SetTask(4, 55)	
		end
	else	
		Msg2Player("没有第二把钥匙，打不开宝箱里的第二层机关。")	
	end
return	
end


if (UTask_tr < 52) then
Msg2Player("没接任务，打不开宝箱。")
end;

if (UTask_tr > 52) then
Msg2Player("宝箱里的机关已打开。")
end;

end;

  	





