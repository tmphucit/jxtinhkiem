Include("\\script\\Global\\doimaump.lua")

function main()
SayNew("<color=green>Xa Phu: <color>: Ng��i mu�n �i ��u ?",5,
"��n khu v�c b�o danh T�ng /khuvucbaodanhtong",
"V� T��ng D��ng /movethanh",
"V� Ph��ng T��ng /movethanh",
"V� ��i L� /movethanh",
"Tho�t./no")
end

function movethanh(nsel)
SetTask(128,0) -- Xoa Tham gia TK

DelMagic(413)
SetPunish(0)
SetFightState(0)
SetDeathScript("");
SetLogoutRV(0)
SetCreateTeam(1);
BlockPKState(0)

if nsel == 1 then
NewWorld(15, 1559, 3247);
Msg2Player("B�n �� v� T��ng D��ng")
elseif nsel == 2 then
NewWorld(17, 1595, 3201);
Msg2Player("B�n �� v� Ph��ng T��ng")
elseif nsel == 3 then
NewWorld(11, 1585, 3143);
Msg2Player("B�n �� v� Ph��ng T��ng")
end
end
function khuvucbaodanhtong()
SetFightState(0)
SetRevPos(1)
Msg2Player("B�n �� v�o khu v�c b�o danh phe T�ng !")
NewWorld(60,191*8,197*16)
end


function no()
end