function main()
SayNew("<color=green>V�n S� Th�ng<color>: M�i s� tr�n ��i ta ��u bi�t, ng��i c�n ta gi�p g� ?",3,
"Gi�p ta t�m tung t�ch m�t ng��i /timnguoi",
"Ta mu�n ki�m tra b�n th�n ch�t /kiemtrabanthan",
"Tho�t./no")
end

function kiemtrabanthan()
banhtet = GetTask(198) - 15
banhchung = GetTask(199) - 10
if GetTask(199) > 10 and GetTask(198) > 15 then
Talk(1,"","Hi�n t�i ng��i �� h�c: \n- 10 / 10 cu�n V� L�m M�t T�ch\n- 15 / 15 cu�n T�y T�y Kinh\n- "..banhtet.." / 5 B�nh T�t Ti�m N�ng\n- "..banhchung.." / 5 B�nh Ch�ng K� N�ng")
elseif GetTask(199) > 10 then
Talk(1,"","Hi�n t�i ng��i �� h�c: \n- 10 / 10 cu�n V� L�m M�t T�ch\n- "..GetTask(198).." / 15 cu�n T�y T�y Kinh\n- "..banhchung.." / 5 B�nh Ch�ng K� N�ng")
elseif GetTask(198) > 15 then
Talk(1,"","Hi�n t�i ng��i �� h�c: \n- "..GetTask(199).." / 10 cu�n V� L�m M�t T�ch\n- 15 / 15 cu�n T�y T�y Kinh\n- "..banhtet.." / 5 B�nh T�t Ti�m N�ng")
else
Talk(1,"","Hi�n t�i ng��i �� h�c: \n- "..GetTask(199).." / 10 cu�n V� L�m M�t T�ch\n- "..GetTask(198).." / 15 cu�n T�y T�y Kinh")
end
end
function no()
end

function timnguoi()
SayNew("<color=green>V�n S� Th�ng<color>: Ng��i c�n nh�p t�n ch�nh x�c c�a ng��i �� bao g�m c� k� t� ��c bi�t. Ph� t�m ng��i l�: <color=yellow>20 v�n l��ng ",2,
"Ta s� ��a ng��i 20 v�n �� t�m tung t�ch ng��i n�y /timnguoi2",
"Ta s� g�p l�i ng��i sau /no")
end

function timnguoi2()
OpenStringBox(1,"Nh�p t�n ng��i ch�i","oktim")
end

function oktim(string)
if GetCash() < 200000 then
Talk(1,"","B�n kh�ng �� 20 v�n l��ng, kh�ng th� t�m ng��i ch�i n�y !")
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
	Talk(1,"","Ng��i ch�i m� ng��i c�n t�m kh�ng online !")
else
	Pay(200000)
	bando = tenbando(w)
	SayNew("<color=green>V�n S� Th�ng<color>: Ng��i ch�i <color=green>"..string.."<color> hi�n �ang � <color=yellow>"..bando.."<color> t�a �� "..floor(x/8).." / "..floor(y/16).."",1,"Ta bi�t r�i, c�m �n ng��i./no")
	Msg2Player("Ng��i ch�i <color=green>"..string.." <color=red>hi�n �ang � <color=yellow>"..bando.." <color=red>t�a �� "..floor(x/8).." / "..floor(y/16).." ")
	Msg2Player("Th�ng tin b� sung: \n��ng c�p: "..level.."\nKinh nghi�m: "..exp.."\nT�ng ti�m n�ng: "..tiemnang.."\nT�ng k� n�ng: "..kynang.." ")
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
return "Khu V�c Bang H�i"
end

return "Khu V�c Kh�ng T�n"

end

mangtenbando = {
{53,"Ba L�ng Huy�n"},
{62,"D��ng Trung ��ng 1"},
{8,"Ph�c Ng�u S�n"},
{100,"Tuy�t B�o ��ng"},
{101,"D��c V��ng ��ng"},
{187,"T�n L�ng"},
{75,"Xi V�u ��ng"},
{102,"L�m Du Quan"},
{104,"Ch�n N�i Tr��ng B�ch"},
{63,"C� D��ng ��ng 1"},
{105,"Tr��ng B�ch S�n B�c"},
{107,"Sa M�c ��a Bi�u"},
{64,"D��ng Trung ��ng"},
{65,"C� D��ng ��ng"},
{15,"T��ng D��ng"},
{16,"D��ng Ch�u"},
{17,"Ph��ng T��ng"},
{18,"Th�nh ��"},
{19,"Bi�n Kinh"},
{33,"T�ng Kim"},
{20,"��o T�y T�y"},
{26,"V��t �i"},
{27,"V��t �i"},
{28,"V��t �i"},
{29,"V��t �i"},
{21,"M�n B�c Th�o Nguy�n"},
{22,"Tr��ng B�ch S�n Nam"},
{24,"Vi S�n ��o"},
{25,"Nh� Lao"},
{45,"Di�n V� Tr��ng"},
{2,"Hoa S�n"},
{5,"Nh� Lao"},
{9,"Bi�n Kinh"},
{79,"M�c Cao Qu�t"},
{106,"Tr��ng Ca M�n"},
{42,"Li�n ��u"},
{43,"Li�n ��u"},
{34,"C�ng Th�nh Chi�n"},
{35,"C�ng Th�nh Chi�n"},
{36,"C�ng Th�nh Chi�n"},
{46,"Phong L�ng �� "},
{47,"B�n Thuy�n 1"},
{48,"B�n Thuy�n 2"},
{49,"B�n Thuy�n 3"},
{60,"B�o Danh T�ng Kim"},
{61,"T�ng Kim"},
{3,"Chu Ti�n Tr�n"},
{109,"Sa M�c S�n ��ng 1"},
{110,"Sa M�c S�n ��ng 2"},
{111,"Sa M�c S�n ��ng 3"},
{66,"Giang T�n Th�n"},
{4,"Long Tuyen Thon"},
{75,"Kh�a Lang ��ng"},


{53,"Ba L�ng Huy�n"},
{160,"Th�ch C� Tr�n"},
{161,"Long M�n Tr�n"},
-- 4
{163,"Nh�n ��ng S�n"},
{170,"��t Ma ���ng"},
{157,"D��c V��ng C�c"},
--7
{166,"Ki�m C�c Trung Nguy�n"},
{158,"T�n L�ng"},
{162,"Ki�m C�c T�y Nam"},
--10
{167,"Th�c C��ng S�n"},
{164,"D��c V��ng ��ng T�ng 1"},
{159,"L�ng T�n Th�y Ho�ng"},
-- 13
{41,"Ph�c Ng�u S�n T�y"},
{8,"Ph�c Ng�u S�n ��ng"},
{168,"�i�m Th��ng S�n"},
-- 16
{165,"�i�m Th��ng ��ng T�ng 1"},
{91,"M� cung K� Qu�n ��ng"},
{169,"Thi�u L�m M�t Th�t"},
{38,"Thi�t Th�p M� cung T�ng 1"},
{14,"Kim Quang ��ng"},
-- 21
{171,"Ho�nh S�n Ph�i"},
{50,"Thi�n T�m ��ng"},
{172,"Linh C�c ��ng"},
{39,"Thi�t Th�p M� Cung T�ng 2"},
{62,"Kinh Ho�ng ��ng"},
-- 26
{174,"D��c V��ng ��ng T�ng 2"},
{173,"��i T� ��ng"},
{102,"L�m Du Quan"},
{63,"T�a V�n ��ng"},
-- 30
{176,"T�n L�ng T�ng 3"},
{175,"L��ng Th�y ��ng"},
{180,"Nh�n Th�ch ��ng"},
{104,"Ch�n N�i Tr��ng B�ch"},
{107,"Sa M�c ��a Bi�u"},
{64,"D��ng Trung ��ng"},
-- 36
{178,"D��c V��ng ��ng T�ng 4"},
{21,"M�n B�c Th�o Nguy�n"},
{177,"Tr��ng B�ch S�n B�c"},
{93,"Ti�n C�c ��ng"},
{94,"C�n Vi�n ��ng"},
{110,"Sa M�c 2"},

}