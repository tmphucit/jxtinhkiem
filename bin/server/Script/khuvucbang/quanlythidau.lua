function main()
Say("<color=green>Qu�n L� Thi ��u:<color> Vui l�ng ch�n khu v�c thi ��u ?",4,
"��a ta v�o khu v�c thi ��u 1 /chiendau1",
"�ua ta v�o khu v�c thi ��u 2 /chiendau1",
"Th�ng tin t�nh n�ng thi ��u bang h�i/thongtin",
"Tho�t./no")
end
function thongtin()
Talk(3,"","Thi ��u b�ng h�i chia l�m 2 khu v�c, th�nh vi�n bang h�i c� th� ch�n 1 trong 2 khu v�c �� v�o",
"Khi v�o khu v�c chi�n ��u, h� th�ng t� ��ng ��i sang m�u s�t th� v� tr�ng th�i chi�n ��u b�t bu�c",
"Thi ��u ch�t s� kh�ng b� m�t �i�m kinh nghi�m ........ ")
end

function no()
end

function chiendau1(nsel)
i = nsel+1
w,x,y = GetWorldPos()
SetPunish(1);
SetTaskTemp(40,GetCurCamp())
SetFightState(1)
SetCurCamp(4)
SetCamp(4)
SetDeathScript("\\script\\khuvucbang\\tunanthidau.lua")
SetTempRevPos(w,(x+5)*32,(y+5)*32)
SetPKState(1)
BlockPKState(1)
SetLogoutRV(1);

if i == 1 then
	Msg2World("<color=yellow>"..GetName().." <color=red>�� tham gia v�o khu v�c thi ��u 1 ")
	xs = random(1,2)
	if xs == 1 then
	NewWorld(w,1554,3250)
	else
	NewWorld(w,1570,3265)
	end
else
	Msg2World("<color=yellow>"..GetName().." <color=red>�� tham gia v�o khu v�c thi ��u 2 ")
	xs = random(1,2)
	if xs == 1 then
	NewWorld(w,1668,3158)
	else
	NewWorld(w,1652,3143)
	end
end
end
