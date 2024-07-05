Include("\\script\\Global\\doimaump.lua")

function main()
pktru = GetPK()-1
if GetTask(4) > 0 then
	Say("<color=green>Qu¶n Ngôc<color>: B¹n ®ang bÞ t¹m giam bëi Admin. Thêi gian cßn l¹i: <color=red>"..GetTask(4).."<color> phót ",3,
	"B¾t ®Çu hèi c¶i /ngoitubatdau",
	"Ra khái nhµ lao /rakhoitu",
	"Tho¸t/no")
else
if GetTaskTemp(142) == 0 then
	if GetTask(142) == 0 then
	Say("<color=green>Qu¶n Ngôc<color> §iÓm PK hiÖn t¹i cña b¹n lµ: <color=red>"..GetPK().."<color> ®iÓm. B¹n sÏ mÊt 2 giê ë ®©y ®Ó gi¶m 1 ®iÓm PK",3,
	"B¾t ®Çu ngåi nhµ lao /batdau",
	"Ta muèn ra ngoµi/rangoai",
	"Thoat/no")
	else
	Say("<color=green>Qu¶n Ngôc<color> B¹n ®ang trong giai ®o¹n x¸m hèi. Thêi gian ®Ó gi¶m ®iÓm PK xuèng <color=red>"..pktru.."<color> lµ: <color=yellow>"..GetTask(142).."<color> phót",2,
	"TiÕp tôc ngåi nhµ lao/tieptuc",
	"Tho¸t./no")
	end	
else
	if GetTask(142) == 0 then
	Say("<color=green>Qu¶n Ngôc<color> §iÓm PK hiÖn t¹i cña b¹n lµ: <color=red>"..GetPK().."<color> ®iÓm. B¹n sÏ mÊt 2 giê ë ®©y ®Ó gi¶m 1 ®iÓm PK",3,
	"B¾t ®Çu ngåi nhµ lao/batdau",
	"Ta muèn ra ngoµi/rangoai",
	"Tho¸t/no")
	else
	Say("<color=green>Qu¶n Ngôc<color> B¹n ®ang trong giai ®o¹n x¸m hèi. Thêi gian ®Ó gi¶m ®iÓm PK xuèng <color=red>"..pktru.."<color> lµ: <color=yellow>"..GetTask(142).."<color> phót",2,
	"Ra muèn dõng ngåi nhµ lao vµ ra ngoµi/rangoai",
	"Thoat./no")
end
end
end
end
function no()
end

function ngoitubatdau()
SetTimer(18*60,21)
Msg2Player("Thêi gian ngåi nhµ lao b¾t ®Çu !!!")
end

function batdau()
if GetPK() == 0 then
Talk(1,"","B¹n kh«ng cã giÕt ng­êi th× cÇn g× ph¶i ngåi nhµ lao !")
else
truPK = GetPK()-1
SetTaskTemp(142,1)  -- Task kiem tra dang su dung timer

SetTask(142,60)  -- Tasktimer ngoi tu. Mac dinh: 60 phut
Msg2Player("Sau 1 giê n÷a b¹n sÏ gi¶m ®iÓm PK xuèng: "..truPK.." ®iÓm")

SetTimer(18*60,21)
Msg2Player("Thêi gian ngåi nhµ lao b¾t ®Çu !!!")

end
end
function tieptuc()
SetTaskTemp(142,1)  -- Task kiem tra dang su dung timer
SetTimer(18*60,21)
Msg2Player("B¹n ®· tiÕp tôc ngåi nhµ lao !!!")
Msg2Player("Thêi gian cßn l¹i ®Ó gi¶m PK lµ: "..GetTask(142).." phót")
end

function rangoai()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

tien = GetPK()*100000
if tien > 0 then
Say("<color=green>Qu¶n Ngôc<color>: LÖ phÝ ra khái nhµ lao lµ: : <color=yellow>"..tien.."<color> l­îng. B¹n sÏ bÞ reset thêi gian ngåi tï. B¹n cã ch¾c ch¾n kh«ng? ",2,
"Ta ®ång ý tr¶ lÖ phÝ ®Ó ra khái ®©y/rangoai2",
"Ta sÏ tiÕp tôc ngåi nhµ lao/no")
else
Say("<color=green>Qu¶n Ngôc<color>: B¹n cÇn <color=yellow>10 v¹n<color> l­îng ®Ó ra khái nhµ lao ?",2,
"§­a ta ra khái ®©y/rangoai3",
"Ta ch­a ®ñ tiÒn. §îi ng­êi nhµ vµo ®­a vËy/no")
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
Talk(1,"","<color=green>Qu¶n Ngôc<color>: H·y chän B¾t ®Çu hèi c¶i ®Ó ngåi tï. Khi thêi gian cßn 1 phót b¹n cã thÓ ra ngoµi !")
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
Talk(1,"","<color=green>Qu¶n Ngôc<color> B¹n kh«ng ®ñ <color=red>"..tien.."<color> ®Ó ra khái nhµ lao")
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
Talk(1,"","<color=green>Qu¶n Ngôc<color> B¹n kh«ng ®ñ <color=red>"..tien.."<color> ®Ó ra khái nhµ lao")
end
end