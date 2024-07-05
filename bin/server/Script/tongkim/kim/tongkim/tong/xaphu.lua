Include("\\script\\Global\\doimaump.lua")

function main()
Say("<color=green>Xa Phu: <color>: Ng­¬i muèn ®i ®©u ?",2,
"§Õn khu vùc b¸o danh Kim/khuvucbaodanhkim",
"Tho¸t./no")
end

function khuvucbaodanhkim()
SetRevPos(2)
SetFightState(0)
Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Kim !")
NewWorld(60,196*8,192*16)
end

function no()
end