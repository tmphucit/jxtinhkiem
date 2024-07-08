Include("\\script\\Global\\doimaump.lua")

function main()
SayNew("<color=green>Xa Phu: <color>: Ng­¬i muèn ®i ®©u ?",5,
"§Õn khu vùc b¸o danh Tèng /khuvucbaodanhtong",
"VÒ T­¬ng D­¬ng /movethanh",
"VÒ Ph­îng T­êng /movethanh",
"VÒ §¹i Lý /movethanh",
"Tho¸t./no")
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
Msg2Player("B¹n ®· vÒ T­¬ng D­¬ng")
elseif nsel == 2 then
NewWorld(17, 1595, 3201);
Msg2Player("B¹n ®· vÒ Ph­îng T­êng")
elseif nsel == 3 then
NewWorld(11, 1585, 3143);
Msg2Player("B¹n ®· vÒ Ph­îng T­êng")
end
end
function khuvucbaodanhtong()
SetFightState(0)
SetRevPos(1)
Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Tèng !")
NewWorld(60,191*8,197*16)
end


function no()
end