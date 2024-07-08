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
	

 SetTask(242,GetTask(242) + 50)	
SetTask(156,GetTask(156) + 1)
AddOwnExp(50000000)
Msg2Player("Ban da ha guc doi thu nhan duoc 50 diem Kinh Nghiem Giang Ho va 50 trieu diem kinh nghiem.")
 Msg2MSAll(1,giet.." da ha guc doi thu "..bigiet.." , nang so PK hien thoi len "..GetTask(156)) 

	
        
        
	
        
        

 
	PlayerIndex = OrgPlayer;
	end

end;