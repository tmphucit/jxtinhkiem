function OnDrop()
w,x,y = GetWorldPos()
Msg2World("<color=green>Vi S�n ��o T�c �� b� nh�m c�a "..GetName().." ti�u di�t ")
team = GetTeam()
name = GetName()

if GetTeam() == nil then
	nhiemvuvsd(x,y,x,y)
else
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
				nhiemvuvsd(x,y,x1,y1)
		end
	end	
end
end	

function nhiemvuvsd(x,y,x1,y1)

loai = GetTask(309)
soluong = GetTask(310)
danglam = GetTask(311)
chenhlechx = 0
if (x > x1) then
chenhlechx = x - x1
else
chenhlechx = x1 - x
end
chenhlechy = 0
if (y > y1) then
chenhlechy = y - y1
else
chenhlechy = y1 - y
end

if GetFightState() == 1 and (chenhlechx <= 40) and (chenhlechy <= 80) then


if loai == 3 and danglam <= soluong then
	SetTask(311, GetTask(311) + 1)
	Msg2Player("<color=pink>[Nhi�m V�]<color=red> Ti�u di�t: "..GetTask(311).." / "..soluong.." Boss Vi S�n ��o T�c")
	if GetTask(311) >= soluong then
		Talk(1,"","B�n �� ho�n th�nh nhi�m v�, h�y ��n <color=green>Qu�n L� Vi S�n ��o <color>�� ph�c m�nh !")
	end
end

else
	Msg2Player("B�n ��ng qu� xa t� ��i, kh�ng th� h��ng chung nhi�m v� ")
end
end

function OnDeath()


end
function RotDotTim()
num = random(1,17)
if num < 15 then
type = typeitem(random(1,5))
param = paramitem(type)
level = 10
else
type = random(0,1)
if type == 0 then
param = random(0,5)
level = 210
else
param = random(0,2)
level = 70
end
end


xsdong = random(1,100)
if xsdong < 70 then
sodong = random(3,4)
else
sodong = random(5,6)
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

Msg2World("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng t� Vi S�n ��o ��c: <color=pink>Trang b� Huy�n Tinh "..sodong.." d�ng ch�a kh�m n�m !")

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
