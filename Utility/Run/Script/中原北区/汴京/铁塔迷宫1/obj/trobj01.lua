--description: 汴京府铁塔一层宝箱 天忍教50级任务
--author: yuanlan	
--date: 2003/5/19


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 52) then
	if (HaveItem("铁塔钥匙一") == 1) then
		Msg2Player("打开第一道机关。")
		DelItem("铁塔钥匙一")
		SetTask(21, 1)	
		UTask_trsub02 = GetTask(22)
		UTask_trsub03 = GetTask(23)
		if (UTask_trsub02 == 1) and (UTask_trsub03 == 1) then 	
			Say("三层机关已全部打开，救出关在塔里的凤翕如。", 0)	
			Msg2Player("三层机关已全部打开，救出关在塔里的凤翕如。")
			SetTask(4, 55)	
		end
	else
		Msg2Player("没有第一把钥匙，打不开宝箱里的第一层机关。")		
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

  	





