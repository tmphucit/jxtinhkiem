

function main()
SayNew("C� c�i th�nh n�y kh�ng ai l�m ���c b�nh kem ngo�i �ng h�t, n�n kh�i ki�m chi cho m�t c�ng.",3,
"Ta mu�n ph�n th��ng M�c S� Ki�n /ptmoc",
"Ta mu�n gia h�n s� ki�n /giahan",
"Kh�ng c� g� /no")
end

function no()
end



function giahan()

if GetItemCount(17) < 5 then
Talk(1,"","Ng��i kh�ng mang theo 5 Kim Nguy�n B�o, kh�ng th� gia h�n")
return
end

if GetTask(921) >= 2 then
Talk(1,"","B�n �� ��t gia h�n t�i �a, kh�ng th� gia h�n th�m")
return
end

for i=1,5 do DelItem(17) end

SetTask(921, GetTask(921) + 1)
Msg2Player("Ch�c m�ng b�n �� th�ng c�p S� Ki�n Qu�c T� Thi�u Nhi 1-6 l�n: <color=pink>Gia H�n "..GetTask(921).."")
inlog5("Gia han "..GetTask(921).." - "..GetAccount().." - "..GetName().."")

end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function ptmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� nh�n ph�n th��ng!")
	return
end

if GetTask(906) < 10 then
	if GetTask(920) >= 500000 then
		SetTask(906, 10)
		sx = random(1,100)
		if sx < 50 then
				idxitem = AddEventItem(0)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		else
				idxitem = AddEventItem(1)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		end
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(920).."000 / 500.000.000")
	end
elseif GetTask(906) == 10 then
	if GetTask(920) >= 1000000 then
		SetTask(906, 20)
		sx = random(1,100)
		if sx < 20 then
			idxitem = AddItem(0,10,5,random(1,4),0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 40 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 60 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 80 then	
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		else
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
		end						
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(920).."000 / 1.000.000.000")
	end

elseif GetTask(906) == 20 then
	if GetTask(920) >= 1500000 then
		SetTask(906, 30)
		
		
		
		if GetGlbMissionV(37) == 111 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,9)
							if item == 1 then	
								idxitem = AddItem(0,4,19,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 2 then
								idxitem = AddItem(0,2,79,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 3 then
								idxitem = AddItem(0,5,24,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 4 then
								idxitem = AddItem(0,8,22,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 5 then
								idxitem = AddItem(0,7,41,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 6 then
								idxitem = AddItem(0,6,26,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 7 then
								idxitem = AddItem(0,9,19,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 8 then
								idxitem = AddItem(0,3,35,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 9 then
								idxitem = AddItem(0,3,36,1,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							end			
							return
					elseif GetGlbMissionV(37) == 222 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,4,1,0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
							return
					elseif GetGlbMissionV(37) == 333 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,2,32,2,0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							return	
					elseif GetGlbMissionV(37) == 444 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,3)
							if item == 1 then
								idxitem = AddItem(0,9,3,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 2 then
								idxitem = AddItem(0,3,3,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 3 then
								idxitem = AddItem(0,3,4,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							end
							return	
					elseif GetGlbMissionV(37) == 555 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,5)
							if item == 1 then
								idxitem = AddItem(0,2,30,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 2 then
								idxitem = AddItem(0,6,3,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 3 then
								idxitem = AddItem(0,5,5,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 4 then
								idxitem = AddItem(0,7,15,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 5 then
								idxitem = AddItem(0,8,3,random(1,10),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
							end
							return			
					end
		
		sx = random(1,100)
		if sx < 20 then
			idxitem = AddItem(0,10,5,random(1,4),0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 40 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 60 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 80 then	
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		else
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1500 S� Ki�n Qu�c T� Thi�u Nhi ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
		end						
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(920).."000 / 1.500.000.000")
	end	
	
	
else
	Msg2Player("B�n �� nh�n �� to�n b� ph�n th��ng m�c S� Ki�n Qu�c T� Thi�u Nhi")
end

end

function inlogMocEvent(text)
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MocSuKienThieuNhi.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..text.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
