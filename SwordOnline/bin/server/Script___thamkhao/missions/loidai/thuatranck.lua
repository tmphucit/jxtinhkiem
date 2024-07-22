function OnDeath(Launcher)
	
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	bigiet = GetName()
        SetCamp(0)
        SetCurCamp(0)
 	
       SetDeathScript("");

	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	giet = GetName()
	

 SetTask(242,GetTask(242) + 200)	
SetTask(157,GetTask(157) + 1)
AddOwnExp(200000000)
Msg2Player("Ban da ha guc doi thu nhan duoc 200 diem Kinh Nghiem Giang Ho va 200 trieu diem kinh nghiem.")
 Msg2MSAll(1,giet.." da danh chien thang thang, so tran thang trong dot chung ket hien gio "..GetTask(57).." tran.") 

	
        
        
	
        
        

 
	PlayerIndex = OrgPlayer;
Msg2MSAll(1,bigiet.." da thua, so tran thang trong dot chung ket hien gio "..GetTask(57).." tran.")
	end

end;