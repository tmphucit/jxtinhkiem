
function OnDeath(idxnpc)


end

function OnDrop(idxnpc)
team = GetTeam()
bang = GetTongName()
name = GetName()
w,x,y = GetWorldPos()
idx = PlayerIndex
if bang ~= "" then
Msg2SubWorld("Boss <color=green>"..GetNpcName(idxnpc).." <color=red>�� b� <color=yellow>"..name.." - <color=red>thu�c bang <color=yellow>"..bang.." <color=red>ti�u di�t !")
Earn(2000000)
Msg2SubWorld("<color=yellow>- "..GetName().." nh�n ���c 200 v�n l��ng")	
		idxplayer = PlayerIndex	
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w1,x1,y1 = GetWorldPos()
			if GetTongName() == bang and w == w1 and (x1 >= x-40 and x1 <= x+40) and (y1 >= y-80 and y1 <= y+80) then

				AddOwnExp(30000000)
				Msg2Player("B�n nh�n ���c 30.000.000 kinh nghi�m")
				sxmanh = RandomNew(1,100)
				
				if sxmanh < 30 then
						idxitem = AddEventItem(random(895,903))
						Msg2SubWorld("+ "..GetName().." nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh < 3 then
						idxitem = AddEventItem(random(270,271))
						Msg2SubWorld("+ "..GetName().." nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh == 50 then
						idxitem = AddEventItem(random(919,920))
						Msg2SubWorld("+ "..GetName().." nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
				end
			else
				Msg2Player("B�n kh�ng thu�c b�n �� Boss Ch�t ho�c c�ch xa boss qu� 5 t�a ��, kh�ng nh�n ���c ph�n th��ng kinh nghi�m")
		
			end
			
		end

else
		Msg2SubWorld("Boss <color=green>"..GetNpcName(idxnpc).." <color=red>�� b� <color=yellow>"..name.." <color=red>ti�u di�t !")
		Earn(2000000)
		Msg2SubWorld("<color=yellow>- "..GetName().." nh�n ���c 200 v�n l��ng")		

end

		idxplayer = PlayerIndex	
end
