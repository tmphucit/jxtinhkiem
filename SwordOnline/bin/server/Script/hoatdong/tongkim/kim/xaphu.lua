Include("\\script\\Global\\doimaump.lua")

function main()
SayNew("<color=green>Xa Phu: <color>: Ng��i mu�n �i ��u ?",2,
"��n khu v�c b�o danh T�ng /khuvucbaodanhtong",
"Tho�t./no")
end

function khuvucbaodanhtong()
SetFightState(0)
SetRevPos(1)
Msg2Player("B�n �� v�o khu v�c b�o danh phe T�ng !")
NewWorld(60,191*8,197*16)
end


function no()
end