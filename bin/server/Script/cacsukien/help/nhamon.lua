Include("\\script\\Global\\doimaump.lua")

function main()
pktru = GetPK()-1
if GetTask(4) > 0 then
	Say("<color=green>Qu�n Ng�c<color>: B�n �ang b� t�m giam b�i Admin. Th�i gian c�n l�i: <color=red>"..GetTask(4).."<color> ph�t ",3,
	"B�t ��u h�i c�i /ngoitubatdau",
	"Ra kh�i nh� lao /rakhoitu",
	"Tho�t/no")
else
if GetTaskTemp(142) == 0 then
	if GetTask(142) == 0 then
	Say("<color=green>Qu�n Ng�c<color> �i�m PK hi�n t�i c�a b�n l�: <color=red>"..GetPK().."<color> �i�m. B�n s� m�t 2 gi� � ��y �� gi�m 1 �i�m PK",3,
	"B�t ��u ng�i nh� lao /batdau",
	"Ta mu�n ra ngo�i/rangoai",
	"Thoat/no")
	else
	Say("<color=green>Qu�n Ng�c<color> B�n �ang trong giai �o�n x�m h�i. Th�i gian �� gi�m �i�m PK xu�ng <color=red>"..pktru.."<color> l�: <color=yellow>"..GetTask(142).."<color> ph�t",2,
	"Ti�p t�c ng�i nh� lao/tieptuc",
	"Tho�t./no")
	end	
else
	if GetTask(142) == 0 then
	Say("<color=green>Qu�n Ng�c<color> �i�m PK hi�n t�i c�a b�n l�: <color=red>"..GetPK().."<color> �i�m. B�n s� m�t 2 gi� � ��y �� gi�m 1 �i�m PK",3,
	"B�t ��u ng�i nh� lao/batdau",
	"Ta mu�n ra ngo�i/rangoai",
	"Tho�t/no")
	else
	Say("<color=green>Qu�n Ng�c<color> B�n �ang trong giai �o�n x�m h�i. Th�i gian �� gi�m �i�m PK xu�ng <color=red>"..pktru.."<color> l�: <color=yellow>"..GetTask(142).."<color> ph�t",2,
	"Ra mu�n d�ng ng�i nh� lao v� ra ngo�i/rangoai",
	"Thoat./no")
end
end
end
end
function no()
end

function ngoitubatdau()
SetTimer(18*60,21)
Msg2Player("Th�i gian ng�i nh� lao b�t ��u !!!")
end

function batdau()
if GetPK() == 0 then
Talk(1,"","B�n kh�ng c� gi�t ng��i th� c�n g� ph�i ng�i nh� lao !")
else
truPK = GetPK()-1
SetTaskTemp(142,1)  -- Task kiem tra dang su dung timer

SetTask(142,60)  -- Tasktimer ngoi tu. Mac dinh: 60 phut
Msg2Player("Sau 1 gi� n�a b�n s� gi�m �i�m PK xu�ng: "..truPK.." �i�m")

SetTimer(18*60,21)
Msg2Player("Th�i gian ng�i nh� lao b�t ��u !!!")

end
end
function tieptuc()
SetTaskTemp(142,1)  -- Task kiem tra dang su dung timer
SetTimer(18*60,21)
Msg2Player("B�n �� ti�p t�c ng�i nh� lao !!!")
Msg2Player("Th�i gian c�n l�i �� gi�m PK l�: "..GetTask(142).." ph�t")
end

function rangoai()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

tien = GetPK()*100000
if tien > 0 then
Say("<color=green>Qu�n Ng�c<color>: L� ph� ra kh�i nh� lao l�: : <color=yellow>"..tien.."<color> l��ng. B�n s� b� reset th�i gian ng�i t�. B�n c� ch�c ch�n kh�ng? ",2,
"Ta ��ng � tr� l� ph� �� ra kh�i ��y/rangoai2",
"Ta s� ti�p t�c ng�i nh� lao/no")
else
Say("<color=green>Qu�n Ng�c<color>: B�n c�n <color=yellow>10 v�n<color> l��ng �� ra kh�i nh� lao ?",2,
"��a ta ra kh�i ��y/rangoai3",
"Ta ch�a �� ti�n. ��i ng��i nh� v�o ��a v�y/no")
end
end

function rakhoitu()
if GetTask(4) == 1 then
	doimaump()
	SetFightState(0)
	SetRevPos(53,19)
	StopTimer()
	SetTask(142,0)
	SetTask(143,0)
	SetTask(4,0)
	NewWorld(53,200*8,200*16)
else
Talk(1,"","<color=green>Qu�n Ng�c<color>: H�y ch�n B�t ��u h�i c�i �� ng�i t�. Khi th�i gian c�n 1 ph�t b�n c� th� ra ngo�i !")
end
end
function rangoai3()
tien = 100000
if GetCash() >= tien then
doimaump()
SetFightState(0)
SetRevPos(53,19)
StopTimer()
SetTask(142,0)
SetTask(143,0)
Pay(tien)
NewWorld(53,200*8,200*16)
else
Talk(1,"","<color=green>Qu�n Ng�c<color> B�n kh�ng �� <color=red>"..tien.."<color> �� ra kh�i nh� lao")
end

end
function rangoai2()
tien = GetPK()*100000
if GetCash() >= tien then
doimaump()
SetFightState(0)
SetRevPos(53,19)
StopTimer()
SetTask(142,0)
SetTask(143,0)
Pay(tien)
NewWorld(53,200*8,200*16)
else
Talk(1,"","<color=green>Qu�n Ng�c<color> B�n kh�ng �� <color=red>"..tien.."<color> �� ra kh�i nh� lao")
end
end