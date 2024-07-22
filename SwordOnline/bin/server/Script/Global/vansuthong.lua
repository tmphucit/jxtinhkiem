function main()

--ReLoadScript("\\script\\item\\questkey\\176.lua")
--ReLoadScript("\\script\\item\\questkey\\20.lua")
--ReLoadScript("\\script\\Global\\lequan.lua")
--ReLoadScript("\\script\\cacnhiemvu\\datau\\npcdatau.lua")

dofile("script\\Global\\vansuthong.lua")
SayNew("<color=green>V¹n Sù Th«ng<color>: Mäi sù trªn ®êi ta ®Òu biÕt, ng­êi cÇn ta gióp g× ?",2,
"Gióp ta t×m tung tÝch mét ng­êi /timnguoi",
"Tho¸t./no")
end
function no()
end

function timnguoi()
SayNew("<color=green>V¹n Sù Th«ng<color>: Ng­êi cÇn nhËp tªn chÝnh x¸c cña ng­êi ®ã bao gåm c¶ ký tù ®Æc biÖt. PhÝ t×m ng­êi lµ: <color=yellow>50 v¹n l­îng ",2,
"Ta sÏ ®­a ng­êi 50 v¹n ®Ó t×m tung tÝch ng­êi nµy /timnguoi2",
"Ta sÏ gÆp l¹i ng­êi sau /no")
end

function timnguoi2()
OpenStringBox(1,"NhËp tªn ng­êi ch¬i","oktim")
end

function oktim(string)
if GetCash() < 500000 then
Talk(1,"","B¹n kh«ng ®ñ 50 v¹n l­îng, kh«ng thÒ t×m ng­êi ch¬i nµy !")
return
end

idx = PlayerIndex
idxplayer = 0
w = 0
x = 0
y = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == string then
		w1,x1,y1 = GetWorldPos()
		idxplayer = i
		w = w1
		x = x1
		y = y1
		break;
	end
end

PlayerIndex = idx
if idxplayer == 0 then
	Talk(1,"","Ng­êi ch¬i mµ ng­êi cÇn t×m kh«ng online !")
else
	Pay(500000)
	bando = tenbando(w)
	SayNew("<color=green>V¹n Sù Th«ng<color>: Ng­êi ch¬i <color=green>"..string.."<color> hiÖn ®ang ë <color=yellow>"..bando.."<color> täa ®é "..floor(x/8).." / "..floor(y/16).."",1,"Ta biÕt råi, c¶m ¬n ng­êi./no")
	Msg2Player("Ng­êi ch¬i <color=green>"..string.." <color=red>hiÖn ®ang ë <color=yellow>"..bando.." <color=red>täa ®é "..floor(x/8).." / "..floor(y/16).." ")
end
end



function tenbando(num)

for i=1,getn(mangtenbando) do
if mangtenbando[i][1] == num then
return mangtenbando[i][2]
end
end

if num >= 116 and num <= 152 then
return "Khu Vùc Bang Héi"
end

return "Khu Vùc Kh«ng Tªn"

end

mangtenbando = {
{53,"Ba L¨ng HuyÖn"},
{64,"D­¬ng Trung §éng"},
{8,"Phôc Ng­u S¬n"},
{100,"TuyÕt B¸o §éng"},
{101,"D­îc V­¬ng §éng"},
{187,"TÇn L¨ng"},
{75,"Xi V­u §éng"},
{102,"L©m Du Quan"},
{104,"Ch©n Nói Tr­êng B¹ch"},
{65,"Cæ D­¬ng §éng"},
{105,"Tr­êng B¹ch S¬n B¾c"},
{107,"Sa M¹c §Þa BiÓu"},
{64,"Tr­êng Ca M«n 1"},
{65,"Tr­êng Ca M«n 2"},
{15,"T­¬ng D­¬ng"},
{16,"D­¬ng Ch©u"},
{17,"Ph­îng T­îng"},
{18,"Thµnh §«"},
{19,"Ph­îng T­êng"},
{33,"Tèng Kim"},
{20,"§¶o TÈy Tñy"},
{26,"V­ît ¶i"},
{27,"V­ît ¶i"},
{28,"V­ît ¶i"},
{29,"V­ît ¶i"},
{21,"M¹n B¾c Th¶o Nguyªn"},
{22,"Tr­êng B¹ch S¬n Nam"},
{24,"Vi S¬n §¶o"},
{25,"Nhµ Lao"},
{45,"DiÔn Vâ Tr­êng"},
{2,"Hoa S¬n"},
{5,"Nhµ Lao"},
{9,"Ph­îng T­êng"},
{79,"M¹c Cao QuËt"},
{106,"Tr­êng Ca M«n"},
{42,"Liªn §Êu"},
{43,"Liªn §Êu"},
{34,"C«ng Thµnh ChiÕn"},
{35,"C«ng Thµnh ChiÕn"},
{36,"C«ng Thµnh ChiÕn"},
{46,"Phong L¨ng §é "},
{47,"BÒn ThuyÒn 1"},
{48,"BÒn ThuyÒn 2"},
{49,"BÒn ThuyÒn 3"},
{60,"B¸o Danh Tèng Kim"},
{61,"Tèng Kim"},
{3,"Chu Tiªn TrÊn"},
{109,"Sa M¹c S¬n §éng 1"},
{110,"Sa M¹c S¬n §éng 2"},
{111,"Sa M¹c S¬n §éng 3"},
{66,"Giang T©n Th«n"},
{4,"Long Tuyen Thon"}

}
