Include("\\script\\Global\\sourcejx49.lua")
TaskBossKyLan = 191

function OnDeath()

end

function OnDrop()
	updateNgay()
	if GetTask(TaskBossKyLan) < 1 then
		SetTask(TaskBossKyLan,1)		
		X=random(1000000,4000000)
		Earn(X)
		Msg2Player("C�c h� nh�n ���c "..X.." v�ng")
		Y=random(100000,4000000)
		AddOwnExp(Y)
	else
	Talk(1,"","Ng��i l� ai m� c� ch�ch ta ho�i v�y !, <color=yellow> �u D�m ")
	end
end
