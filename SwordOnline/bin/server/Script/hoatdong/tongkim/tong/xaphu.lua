Include("\\script\\Global\\doimaump.lua")

function main()
SayNew("<color=green>Xa Phu: <color>: Ng��i mu�n �i ��u ?",2,
"��n khu v�c b�o danh Kim/khuvucbaodanhkim",
"Tho�t./no")
end

function khuvucbaodanhkim()
SetRevPos(2)
SetFightState(0)
Msg2Player("B�n �� v�o khu v�c b�o danh phe Kim !")
NewWorld(60,196*8,192*16)
end

function no()
end