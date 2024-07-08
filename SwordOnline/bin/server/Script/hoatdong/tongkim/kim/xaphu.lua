Include("\\script\\Global\\doimaump.lua")

function main()
SayNew("<color=green>Xa Phu: <color>: Ng­¬i muèn ®i ®©u ?",2,
"§Õn khu vùc b¸o danh Tèng /khuvucbaodanhtong",
"Tho¸t./no")
end

function khuvucbaodanhtong()
SetFightState(0)
SetRevPos(1)
Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Tèng !")
NewWorld(60,191*8,197*16)
end


function no()
end