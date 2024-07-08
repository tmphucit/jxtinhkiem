function OnDeath(Launcher)
	ngay = tonumber(date("%d"))
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	tennguoigiet = GetName()
	taskhk = GetTaskTemp(1)
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
		
	giet = GetName()
	team = GetTeam()
	name = GetName()
	w,x,y = GetWorldPos()	
	if tennguoigiet ~= GetName() then
		--if taskhk == 32154678 then
		--	AddOwnExp(10000000)
		--	Msg2Player("Bπn nhÀn Æ≠Óc <color=yellow>10.000.000 kinh nghi÷m")
		--	Msg2World("<color=yellow>[Vi S¨n ß∂o] <color=red>"..GetName().." Æ∑ Æ∏nh bπi "..tennguoigiet.." vµ nhÀn Æ≠Óc 10.000.000 kinh nghi÷m !")
		--else
			if floor(GetTask(487)/1000) ~= ngay then
				SetTask(487, ngay * 1000)
			end
			if mod(GetTask(487),1000) < 10 then
				AddOwnExp(2000000)
				Msg2Player("Bπn nhÀn Æ≠Óc 2.000.000 kinh nghi÷m v◊ ti™u di÷t ng≠Íi ch¨i kh∏c ")
				SetTask(487, GetTask(487) +1)
				Msg2Player("SË l≠Óng ti™u di÷t ng≠Íi ch¨i nhÀn kinh nghi÷m trong ngµy: <color=green>"..mod(GetTask(487),1000).." / 10")
			else
				Msg2Player("Bπn Æ∑ Æπt tËi Æa sË l≠Óng gi’t ng≠Íi trong ngµy")
			end
		--end
	end
	
	PlayerIndex = OrgPlayer;
	
	SetFightState(0);
	if giet == GetName() then
		Msg2World(" ["..GetName().."] Æ∑ bﬁ qu∏i vÀt Æ∏nh tr‰ng th≠¨ng. ")
		if GetTask(534) == 100 then
			SetTempRevPos(187,1395*32,2783*32)
		else
			SetTempRevPos(24,1395*32,2783*32)
		end
		SetDeathScript("\\script\\hoatdong\\visondao\\playerdie.lua");
		if GetTaskTemp(1) == 32154678 then
			SetTaskTemp(1, 0 )
			Msg2World("<color=yellow>[Vi S¨n ß∂o] <color=red>"..GetName().." Æ∑ di chuy”n v“ thµnh, nhi÷m vÙ Qu∂ Hoµng Kim bﬁ hÒy !")
		end
	else
		SetDeathScript("");
		Msg2World("[<color=green>"..GetName().."<color=red>] Æ∑ bﬁ [<color=yellow>"..giet.."<color=red>] Æ∏nh tr‰ng th≠¨ng, t˘ ÆÈng Æ≠a v“ Ba L®ng Huy÷n")
		if GetTask(534) == 100 then
			SetRevPos(41)
		else
			SetRevPos(19)
		end
		KickOutSelf()
	end

end
function OnDrop()
end