function main()

--ReLoadScript("\\script\\item\\questkey\\176.lua")
--ReLoadScript("\\script\\item\\questkey\\20.lua")
--ReLoadScript("\\script\\Global\\lequan.lua")
--ReLoadScript("\\script\\cacnhiemvu\\datau\\npcdatau.lua")

dofile("script\\Global\\vansuthong.lua")
SayNew("<color=green>V�n S� Th�ng<color>: M�i s� tr�n ��i ta ��u bi�t, ng��i c�n ta gi�p g� ?",2,
"Gi�p ta t�m tung t�ch m�t ng��i /timnguoi",
"Tho�t./no")
end
function no()
end

function timnguoi()
SayNew("<color=green>V�n S� Th�ng<color>: Ng��i c�n nh�p t�n ch�nh x�c c�a ng��i �� bao g�m c� k� t� ��c bi�t. Ph� t�m ng��i l�: <color=yellow>50 v�n l��ng ",2,
"Ta s� ��a ng��i 50 v�n �� t�m tung t�ch ng��i n�y /timnguoi2",
"Ta s� g�p l�i ng��i sau /no")
end

function timnguoi2()
OpenStringBox(1,"Nh�p t�n ng��i ch�i","oktim")
end

function oktim(string)
if GetCash() < 500000 then
Talk(1,"","B�n kh�ng �� 50 v�n l��ng, kh�ng th� t�m ng��i ch�i n�y !")
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
	Talk(1,"","Ng��i ch�i m� ng��i c�n t�m kh�ng online !")
else
	Pay(500000)
	bando = tenbando(w)
	SayNew("<color=green>V�n S� Th�ng<color>: Ng��i ch�i <color=green>"..string.."<color> hi�n �ang � <color=yellow>"..bando.."<color> t�a �� "..floor(x/8).." / "..floor(y/16).."",1,"Ta bi�t r�i, c�m �n ng��i./no")
	Msg2Player("Ng��i ch�i <color=green>"..string.." <color=red>hi�n �ang � <color=yellow>"..bando.." <color=red>t�a �� "..floor(x/8).." / "..floor(y/16).." ")
end
end



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
{64,"D��ng Trung ��ng"},
{8,"Ph�c Ng�u S�n"},
{100,"Tuy�t B�o ��ng"},
{101,"D��c V��ng ��ng"},
{187,"T�n L�ng"},
{75,"Xi V�u ��ng"},
{102,"L�m Du Quan"},
{104,"Ch�n N�i Tr��ng B�ch"},
{65,"C� D��ng ��ng"},
{105,"Tr��ng B�ch S�n B�c"},
{107,"Sa M�c ��a Bi�u"},
{64,"Tr��ng Ca M�n 1"},
{65,"Tr��ng Ca M�n 2"},
{15,"T��ng D��ng"},
{16,"D��ng Ch�u"},
{17,"Ph��ng T��ng"},
{18,"Th�nh ��"},
{19,"Ph��ng T��ng"},
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
{9,"Ph��ng T��ng"},
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
{4,"Long Tuyen Thon"}

}
