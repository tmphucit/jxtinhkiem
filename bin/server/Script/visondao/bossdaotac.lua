function OnDrop()
w,x,y = GetWorldPos()
Msg2World("<color=green>Vi S�n ��o T�c "..floor(x/8).." / "..floor(y/16).."<color=red>. �� b� nh�m c�a <color=green>"..GetName().."<color=red> ti�u di�t ")
team = GetTeam()
name = GetName()
maina()


if GetTeam() == nil then
	if GetTask(172) > 18 then
		AddOwnExp(3000000)
		Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m v� �ang s� d�ng Ti�n Th�o L� !")
	else
		AddOwnExp(2000000)
		Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m !")
	end

xs = random(1,100)
if xs == 60  then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Th�y Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>V� L�m M�t T�ch ")
elseif xs == 40 or xs == 30 or xs == 20 or xs == 10 then
	AddEventItem(31)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Tinh H�ng B�o Th�ch ")
else
	AddEventItem(45)
	Msg2Player("Thu ph�c boss th�t b�i, b�n nh�n ���c 1 vi�n <color=pink>Huy�n Tinh 2")
	Msg2Player("Th�t ti�c cho ��i hi�p, kh�ng nh�n ���c v�t ph�m qu� n�o t� Vi S�n ��o T�c. H�y c� g�ng th� s�c l�i nh� !")
end

else
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
			if GetTask(172) > 18 then
				AddOwnExp(3000000)
				Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m v� �ang s� d�ng Ti�n Th�o L� !")
			else
				AddOwnExp(2000000)
				Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m !")
			end

	xs = random(1,100)
if xs == 60 then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Th�y Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>V� L�m M�t T�ch ")
elseif xs == 40 or xs == 30 or xs == 20 or xs == 10 then
	AddEventItem(31)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Tinh H�ng B�o Th�ch ")
else
	AddEventItem(45)
	Msg2Player("Thu ph�c boss th�t b�i, b�n nh�n ���c 1 vi�n <color=pink>Huy�n Tinh 2")
	Msg2Player("Th�t ti�c cho ��i hi�p, kh�ng nh�n ���c v�t ph�m qu� n�o t� Vi S�n ��o T�c. H�y c� g�ng th� s�c l�i nh� !")
end

		end
	end
	

end	


end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/DoPhoHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangbk = {
{4,"M�t T�ch Thi�u L�m"},
{5,"M�t T�ch Thi�n V��ng"},
{6,"M�t T�ch ���ng M�n"},
{7,"M�t T�ch Ng� ��c"},
{8,"M�t T�ch Nga Mi"},
{9,"M�t T�ch Th�y Y�n"},
{10,"M�t T�ch Thi�n Nh�n"},
{11,"M�t T�ch C�i Bang"},
{12,"M�t T�ch V� �ang"},
{13,"M�t T�ch C�n L�n"},
}

mangdp = {
{243,"�� Ph� V� Kh� Ho�ng Kim"},
{244,"�� Ph� N�n Ho�ng Kim"},
{245,"�� Ph� �o Gi�p Ho�ng Kim"},
{246,"�� Ph� Bao Tay Ho�ng Kim"},
{247,"�� Ph� Th�t L�ng Ho�ng Kim"},
{248,"�� Ph� Gi�y Ho�ng Kim"},
{250,"�� Ph� D�y Chuy�n Ho�ng Kim"},
{251,"�� Ph� Ng�c B�i Ho�ng Kim"},
{252,"�� Ph� Nh�n Ho�ng Kim"},
}

function OnDeath()
end




function maina()
num = random(1,17)
if num < 15 then
type = typeitem(random(1,5))
param = paramitem(type)
level = random(8,10)
else
type = random(0,1)
if type == 0 then
param = random(0,5)
level = random(208,210)
else
param = random(0,2)
level = random(68,70)
end
end


xsdong = random(1,100)
if xsdong < 30 then
sodong = 1
elseif xsdong >= 30 and xsdong < 50 then
sodong = 2
elseif xsdong >= 50 and xsdong < 70 then
sodong = 3
elseif xsdong >= 70 and xsdong < 85 then
sodong = 4
elseif xsdong >= 85 and xsdong < 95 then
sodong = 5
else
sodong = 6
end
if (sodong == 1) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
elseif (sodong == 2) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
elseif (sodong == 3) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
elseif (sodong == 4) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
elseif (sodong == 5) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
elseif (sodong == 6) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
end

if type == 1 then
Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng t� Vi S�n ��o ��c: <color=pink>Trang b� Huy�n Tinh c�p "..(level-60).." - "..sodong.." d�ng ch�a kh�m n�m !")
elseif type == 0 then
Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng t� Vi S�n ��o ��c: <color=pink>Trang b� Huy�n Tinh c�p "..(level-200).." - "..sodong.." d�ng ch�a kh�m n�m !")
else
Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng t� Vi S�n ��o ��c: <color=pink>Trang b� Huy�n Tinh c�p "..level.." - "..sodong.." d�ng ch�a kh�m n�m !")
end

end



function typeitem(num)
if num == 1 then
return 2
elseif num == 2 then
return 6
elseif num == 3 then
return 5
elseif num == 4 then
return 8
elseif num == 5 then
return 7
end
end


function paramitem(num)
if num == 2 then
return random(50,77)
elseif num == 6 then
return random(24,25)
elseif num == 5 then
return random(20,23)
elseif num == 8 then
return random(20,21)
elseif num == 7 then
return random(27,40)
end
end
