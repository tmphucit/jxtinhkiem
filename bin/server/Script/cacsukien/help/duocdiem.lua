--Author: thaihoa91
Include("\\script\\Global\\passwords.lua");
Include("\\script\\ket_hon\\nguyet_lao.lua");
function main()
SetFightState(0)
w,X,Y = GetWorldPos()
if GetTask(157) == 2 then

	if w == 18 then
		Say("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",3,
		"Mua ng� hoa t�n /muanguhoa",
		"Giao d�ch/giaodich",
		"K�t th�c ��i tho�i/kogiaodich")	
	else
	Talk(1,"","<color=green>D��c �i�m <color>: B�n �ang l�m nhi�m v� Ho�ng Kim. H�y ��n Th�nh �� �i !!!")
	end
elseif GetTask(103) == 4 then
	Say("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",3,
	"Giao d�ch/giaodich",
	"Giao t�n th� ch��ng m�n/giaotinthu",
	"K�t th�c ��i tho�i/kogiaodich")
else
	if w == 20 then
	Say("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",5,
	"Giao d�ch/giaodich",
	"Mua Ng�ng Th�n �an L� Bao/lagmau",
	"Mua Th� � Ho�n Th�n L� Bao/lagmau2",
	"Mua N� Nhi H�ng /muannh",
	"K�t th�c ��i tho�i/kogiaodich")
	else
	Say("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",3,
	"Giao d�ch/giaodich",
	"Mua L� Bao nhanh/muanhanh",
	--"Nh�n T�i Thu�c Mi�n Ph� /nhanmaumienphi",
	"K�t th�c ��i tho�i/kogiaodich")
	end
end
end;

function nhanmaumienphi()
if GetLevel() < 130 then
for i=1,10 do AddEventItem(109) end
Msg2Player("B�n nh�n ���c 10 T�i Thu�c Mi�n Ph� !")
else
Talk(1,"","T�i Thu�c ch� h� tr� cho t�n th� ��ng c�p d��i 130 !")
end
end

function muanhanh()
Say("B�n mu�n mua thu�c n�o: ?",4,
"Kim S�ng D��c L� Bao/kimsang",
"Ng�ng Th�n �an L� Bao/lagmau",
"Th�a Ti�n M�t L� Bao/thuatien",
"Tho�t./no")
end

function muannh()
if CheckFreeBoxItem(4,114,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end


sl = GetItemCount(114) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 1 and GetTask(101) >= 1 then
	SetTask(99,GetTask(99) - 1)
	SetTask(101,GetTask(101) - 1)
	if GetTask(99) == vang-1 and GetTask(101) == vang2 - 1 and GetTask(99) == GetTask(101) then
		AddEventItem(118)
		Msg2Player("B�n �� mua 1 b�nh N� Nhi H�ng gi� 1 v�ng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>1<color> v�ng !")
end
end

function lagmau()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(111)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 5000 l��ng !")
end
end


function lagmau2()
sl = GetCash()
if GetCash() >= 40000 then
Pay(40000)
if GetCash() == sl - 40000 then
AddEventItem(105)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 40000 l��ng !")
end
end
function thuatien()
sl = GetCash()
if GetCash() >= 7500 then
Pay(7500)
if GetCash() == sl - 7500 then
AddEventItem(109)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 5000 l��ng !")
end
end

function kimsang()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(110)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 5000 l��ng !")
end
end

function giaotinthu()
	if GetTask(103) == 4 then
		SetTask(103,5)
		Talk(1,"","<color=green>D��c �i�m <color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
	end
end

function muanguhoa()
tv = GetCash()
		if GetCash() >= 5000 then
		Pay(5000)
			if GetCash() == (tv-5000) then
			AddEventItem(18)
			Msg2Player("B�n nh�n ���c 1 Ng� Hoa T�n.")
			Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
		else
		Talk(1,"","<color=green>D��c �i�m <color>: B�n kh�ng �� 5000 l��ng kh�n th� mua Ng� Hoa T�n")
		end
end

function giaodich()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
Sale(22);
else
	Sale(7);
end
end;

function kogiaodich()
end;





