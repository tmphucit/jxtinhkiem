

function main()

SayNew("<color=green>H�ng Nga<color>: Tr�ng thanh gi� m�t, ph�i ch�ng �ang thi�u m�t m�t ng��i....\n<color=yellow>Qu� b�ng h�u c�n ta gi�p g�? T��ng t� tr�ng c�ng ���c ��y! Ahihi....<color>",3,
"Gia h�n s� d�ng L�ng ��n /giahan",
"Nh�n th��ng m�c L�ng ��n /nhanthuongmoc_longden",
"Tho�t./no")

end
function giahan()
SayNew("<color=green>H�ng Nga:<color> Gia h�n s� ki�n m�t ph� 100 Ti�n ��ng, ng��i th�y sao?",2,
"Ta ch�c ch�n mu�n gia h�n s� ki�n/giahan1",
"Tho�t./no")
end

function giahan1()
if GetTask(955) >= 2 then
	Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 100 then
	for k=1,100 do DelItem(697) end	
	if GetItemCount(697) == vang - 100 then
		SetTask(955, GetTask(955) + 1)
		Msg2Player("B�n �� gia h�n s� ki�n Qu�c Kh�nh l�n <color=yellow>"..GetTask(955).." l�n")
		inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 100 Ti�n ��ng �� gia h�n s� ki�n")
end
end

function nhanthuongmoc_longden()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� s� d�ng l�ng ��n!")
	return
end

if GetTask(958) == 0 then
	if GetTask(954) >= 500000 then
			SetTask(958, GetTask(958) + 1)
			if GetTask(958) == 1 then
				
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 1 - L�ng ��n ���c: <color=yellow>2 Ti�n Th�o L� 6 Gi� ")
			inlog2("[Ti�n Th�o L�] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","M�c 1 ��t ���c: "..GetTask(954).."000 / 500000000")
	end
elseif GetTask(958) == 1 then
	if GetTask(954) >= 1000000 then
			SetTask(958, GetTask(958) + 1)
			if GetTask(958) == 2 then
				
			AddEventItem(685)	
			itemname = AddEventItem(random(0,1))
			SetBindItem(itemname, 1)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 2 - L�ng ��n ���c: <color=yellow>"..GetNameItemBox(itemname).." + V� Phong V�n Lo�n Chi�n")
			inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","M�c 2 ��t ���c: "..GetTask(954).."000 / 1000000000")
	end
elseif GetTask(958) == 2 then
		if GetTask(954) >= 1500000 then
			SetTask(958, GetTask(958) + 1)
			if GetTask(958) == 3 then
				
				
				if GetGlbMissionV(37) == 1111 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(691)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c <color=yellow>"..GetNameItemBox(idxitem).."")		
				elseif GetGlbMissionV(37) == 2222 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(692)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c <color=yellow>"..GetNameItemBox(idxitem).."")			
				elseif GetGlbMissionV(37) == 3333 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(694)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c <color=yellow>"..GetNameItemBox(idxitem).."")			
				else		
					itemname = AddEventItem(random(698,699))
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng M�c 3 - L�ng ��n ���c: <color=yellow>"..GetNameItemBox(itemname).." ")
					inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
				end
			end
	else
		Talk(1,"","M�c 3 ��t ���c: "..GetTask(954).."000 / 1500000000")
	end



else
	Talk(1,"","B�n �� nh�n �� t�t c� ph�n th��ng, kh�ng th� nh�n th�m")
end
end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan_LongDen.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/PTMoc_LongDen.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function no()
end