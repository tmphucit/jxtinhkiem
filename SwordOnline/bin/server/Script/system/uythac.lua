function main()
	-- SetTask(996, 1)
	-- if GetTask(996) == 1 then
		-- IsLiXian()
	-- end
	-- if GetAccount() == "loidai1" or GetAccount() == "loidai2" or GetAccount() == "loidai3" or GetAccount() == "loidai4" then
	-- IsLiXian()
	-- end
	if GetFightState() == 0 then
	--	Msg2SubWorld(""..GetName().." �� �y th�c r�i m�ng")
		print(GetName().." uy thac roi mang")
		SetOffline(1)
	end
end