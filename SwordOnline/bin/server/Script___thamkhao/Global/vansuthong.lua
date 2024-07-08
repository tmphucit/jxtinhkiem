function main()
SayNew("<color=green>V¹n Sù Th«ng<color>: Mäi sù trªn ®êi ta ®Òu biÕt, ng­êi cÇn ta gióp g× ?",3,
"Gióp ta t×m tung tÝch mét ng­êi /timnguoi",
"Ta muèn kiÓm tra b¶n th©n chót /kiemtrabanthan",
"Tho¸t./no")
end

function kiemtrabanthan()
banhtet = GetTask(198) - 15
banhchung = GetTask(199) - 10
if GetTask(199) > 10 and GetTask(198) > 15 then
Talk(1,"","HiÖn t¹i ng­¬i ®· häc: \n- 10 / 10 cuèn Vâ L©m MËt TÞch\n- 15 / 15 cuèn TÈy Tñy Kinh\n- "..banhtet.." / 5 B¸nh TÐt TiÒm N¨ng\n- "..banhchung.." / 5 B¸nh Ch­ng Kü N¨ng")
elseif GetTask(199) > 10 then
Talk(1,"","HiÖn t¹i ng­¬i ®· häc: \n- 10 / 10 cuèn Vâ L©m MËt TÞch\n- "..GetTask(198).." / 15 cuèn TÈy Tñy Kinh\n- "..banhchung.." / 5 B¸nh Ch­ng Kü N¨ng")
elseif GetTask(198) > 15 then
Talk(1,"","HiÖn t¹i ng­¬i ®· häc: \n- "..GetTask(199).." / 10 cuèn Vâ L©m MËt TÞch\n- 15 / 15 cuèn TÈy Tñy Kinh\n- "..banhtet.." / 5 B¸nh TÐt TiÒm N¨ng")
else
Talk(1,"","HiÖn t¹i ng­¬i ®· häc: \n- "..GetTask(199).." / 10 cuèn Vâ L©m MËt TÞch\n- "..GetTask(198).." / 15 cuèn TÈy Tñy Kinh")
end
end
function no()
end

function timnguoi()
SayNew("<color=green>V¹n Sù Th«ng<color>: Ng­êi cÇn nhËp tªn chÝnh x¸c cña ng­êi ®ã bao gåm c¶ ký tù ®Æc biÖt. PhÝ t×m ng­êi lµ: <color=yellow>20 v¹n l­îng ",2,
"Ta sÏ ®­a ng­êi 20 v¹n ®Ó t×m tung tÝch ng­êi nµy /timnguoi2",
"Ta sÏ gÆp l¹i ng­êi sau /no")
end

function timnguoi2()
OpenStringBox(1,"NhËp tªn ng­êi ch¬i","oktim")
end

function oktim(string)
if GetCash() < 200000 then
Talk(1,"","B¹n kh«ng ®ñ 20 v¹n l­îng, kh«ng thÒ t×m ng­êi ch¬i nµy !")
return
end

idx = PlayerIndex
idxplayer = 0
w = 0
x = 0
y = 0
tiemnang = 0
kynang = 0
level = 0
exp = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == string and GetLevel() ~= 0 then
		w1,x1,y1 = GetWorldPos()
		idxplayer = i
		w = w1
		x = x1
		y = y1
		level = GetLevel()
		exp = GetExp()
		tiemnang = GetRestAP() + GetStrg(1) + GetVit(1) + GetDex(1) + GetEng(1)
		kynang = GetRestSP() + tinhtongdiemskill()		 
		break;
	end
end

PlayerIndex = idx
if idxplayer == 0 then
	Talk(1,"","Ng­êi ch¬i mµ ng­êi cÇn t×m kh«ng online !")
else
	Pay(200000)
	bando = tenbando(w)
	SayNew("<color=green>V¹n Sù Th«ng<color>: Ng­êi ch¬i <color=green>"..string.."<color> hiÖn ®ang ë <color=yellow>"..bando.."<color> täa ®é "..floor(x/8).." / "..floor(y/16).."",1,"Ta biÕt råi, c¶m ¬n ng­êi./no")
	Msg2Player("Ng­êi ch¬i <color=green>"..string.." <color=red>hiÖn ®ang ë <color=yellow>"..bando.." <color=red>täa ®é "..floor(x/8).." / "..floor(y/16).." ")
	Msg2Player("Th«ng tin bæ sung: \n§¼ng cÊp: "..level.."\nKinh nghiÖm: "..exp.."\nTæng tiÒm n¨ng: "..tiemnang.."\nTæng kü n¨ng: "..kynang.." ")
end
end


function tinhtongdiemskill()
diem = 0
for i=1,getn(ListIdSkill) do
	if HaveMagic(ListIdSkill[i]) > 0 then
		diem = diem + HaveMagic(ListIdSkill[i])
	end
end
return diem
end

ListIdSkill = {
14,10,8,4,6,15,16,20,271,11,19,21,273,
34,30,29,26,23,24,33,37,35,31,40,42,36,32,41,325,
45,43,462,464,436,50,54,47,434,439,48,249,58,357,399,
63,65,62,60,67,70,66,68,333,64,69,336,73,72,75,71,74,327,
85,80,77,79,93,334,82,89,86,92,252,88,91,282,291,
99,102,95,97,269,105,113,100,109,114,108,111,
122,119,116,115,129,274,124,277,128,125,130,335,
135,145,132,131,136,137,141,138,140,364,143,150,142,148,328,
153,155,152,151,159,164,158,160,157,166,165,267,
169,179,167,168,338,171,174,178,172,339,173,175,181,176,90,275,182,472,329,

}

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
{62,"D­¬ng Trung §éng 1"},
{8,"Phôc Ng­u S¬n"},
{100,"TuyÕt B¸o §éng"},
{101,"D­îc V­¬ng §éng"},
{187,"TÇn L¨ng"},
{75,"Xi V­u §éng"},
{102,"L©m Du Quan"},
{104,"Ch©n Nói Tr­êng B¹ch"},
{63,"Cæ D­¬ng §éng 1"},
{105,"Tr­êng B¹ch S¬n B¾c"},
{107,"Sa M¹c §Þa BiÓu"},
{64,"D­¬ng Trung §éng"},
{65,"Cæ D­¬ng §éng"},
{15,"T­¬ng D­¬ng"},
{16,"D­¬ng Ch©u"},
{17,"Ph­îng T­îng"},
{18,"Thµnh §«"},
{19,"BiÖn Kinh"},
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
{9,"BiÖn Kinh"},
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
{4,"Long Tuyen Thon"},
{75,"Kháa Lang §éng"},


{53,"Ba L¨ng HuyÖn"},
{160,"Th¹ch Cæ TrÊn"},
{161,"Long M«n TrÊn"},
-- 4
{163,"Nh¹n §·ng S¬n"},
{170,"§¹t Ma §­êng"},
{157,"D­îc V­¬ng Cèc"},
--7
{166,"KiÕm C¸c Trung Nguyªn"},
{158,"TÇn L¨ng"},
{162,"KiÕm C¸c T©y Nam"},
--10
{167,"Thôc C­¬ng S¬n"},
{164,"D­îc V­¬ng §éng TÇng 1"},
{159,"L¨ng TÇn Thñy Hoµng"},
-- 13
{41,"Phôc Ng­u S¬n T©y"},
{8,"Phôc Ng­u S¬n §«ng"},
{168,"§iÓm Th­¬ng S¬n"},
-- 16
{165,"§iÓm Th­¬ng §éng TÇng 1"},
{91,"Mª cung Kª Qu¸n §éng"},
{169,"ThiÕu L©m MËt ThÊt"},
{38,"ThiÕt Th¸p Mª cung TÇng 1"},
{14,"Kim Quang §éng"},
-- 21
{171,"Hoµnh S¬n Ph¸i"},
{50,"Thiªn T©m §éng"},
{172,"Linh Cèc §éng"},
{39,"ThiÕt Th¸p Mª Cung TÇng 2"},
{62,"Kinh Hoµng §éng"},
-- 26
{174,"D­îc V­¬ng §éng TÇng 2"},
{173,"§¹i Tï §éng"},
{102,"L©m Du Quan"},
{63,"Táa V©n §éng"},
-- 30
{176,"TÇn L¨ng TÇng 3"},
{175,"L­ìng Thñy §éng"},
{180,"Nh¹n Th¹ch §éng"},
{104,"Ch©n Nói Tr­êng B¹ch"},
{107,"Sa M¹c §Þa BiÓu"},
{64,"D­¬ng Trung §éng"},
-- 36
{178,"D­îc V­¬ng §éng TÇng 4"},
{21,"M¹n B¾c Th¶o Nguyªn"},
{177,"Tr­êng B¹ch S¬n B¾c"},
{93,"TiÕn Cóc §éng"},
{94,"C¸n Viªn §éng"},
{110,"Sa M¹c 2"},

}