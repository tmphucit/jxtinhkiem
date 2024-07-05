--description: 唐门30级任务 青城山白云洞宝箱
--author: yuanlan	
--date: 2003/3/11


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 33) then 
	if ( HaveItem("钥匙一") == 1) then					--得到钥匙一
		DelItem("钥匙一")
		AddEventItem("火器谱") 
		Msg2Player("得到《火器谱》。")
		SetTask(2, 35)
	else
		Say("没有钥匙，开不了宝箱。", 0)		
	end
return		
end;

if (UTask_tm > 33) then 
	Say("宝箱已空。", 0)
return
end

Say("未接任务，打不开宝箱。", 0)

end;
	   	





