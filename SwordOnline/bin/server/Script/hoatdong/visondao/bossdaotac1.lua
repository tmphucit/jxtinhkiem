function OnDrop()
w,x,y = GetWorldPos()
Msg2World("<color=green>Vi S�n ��o T�c "..floor(x/8).." / "..floor(y/16).."<color=red>. �� b� nh�m c�a <color=green>"..GetName().."<color=red> ti�u di�t ")
team = GetTeam()
name = GetName()

if GetTeam() == nil then
	if GetTask(172) > 18 then
		AddOwnExp(3000000)
		Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m v� �ang s� d�ng Ti�n Th�o L� !")
	else
		AddOwnExp(1500000)
		Msg2Player("B�n nh�n ���c 1.500.000 kinh nghi�m !")
	end


	xs = random(1,150)
if xs == 50 then
	m = random(1,getn(mangbk))
	AddEventItem(mangbk[m][1])
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>"..mangbk[m][2].." ")
	
inlog("Mat Tich: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 25 then
	m = random(61,66)
	AddEventItem(m)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>M�nh Thi�n Th�ch ")
elseif xs == 75 then
	m = random(1,getn(mangdp))
	AddEventItem(mangdp[m][1])
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>"..mangdp[m][2].." ")

inlog("Loai: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 60  or xs == 90 or xs == 100 or xs == 70 then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Th�y Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>V� L�m M�t T�ch ")
elseif xs == 40 or xs == 30 or xs == 20 then
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
				AddOwnExp(1500000)
				Msg2Player("B�n nh�n ���c 1.500.000 kinh nghi�m !")
			end

	xs = random(1,200)
if xs == 50 or xs == 55 then
	m = random(1,getn(mangbk))
	AddEventItem(mangbk[m][1])
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>"..mangbk[m][2].." ")
	
inlog("Mat Tich: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 25 then
	m = random(61,66)
	AddEventItem(m)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>M�nh Thi�n Th�ch ")
elseif xs == 75 or xs == 70 then
	m = random(1,getn(mangdp))
	AddEventItem(mangdp[m][1])
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>"..mangdp[m][2].." ")

inlog("Loai: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 60  or xs == 90  then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Th�y Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>V� L�m M�t T�ch ")
elseif xs == 40 or xs == 30 or xs == 20 then
	AddEventItem(31)
	Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] ti�u di�t Vi S�n ��o T�c may m�n nh�n ���c <color=green>Tinh H�ng B�o Th�ch ")
else
	AddEventItem(45)
	Msg2Player("Thu ph�c boss th�t b�i, b�n nh�n ���c 1 vi�n <color=pink>Huy�n Tinh 2")
	Msg2Player("Th�t ti�c cho ��i hi�p, kh�ng nh�n ���c v�t ph�m qu� n�o t� Vi S�n ��o T�c. H�y c� g�ng th� s�c l�i nh� !")
end		end
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