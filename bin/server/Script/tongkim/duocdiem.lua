function main()
SetFightState(0)
h,m,s = GetTimeNew()

if h == 18 or h == 19 then
	Say("<color=green>D��c �i�m: <color>: Ch� ta chuy�n cung c�p d��c ph�m cho chi�n tr��ng ",3,
	"Giao d�ch/giaodich",
	"Nh�n Ng� Hoa Ng�c L� Ho�n Mi�n Ph� /nhanlebao",
	"Tho�t ./no")
else
	Say("<color=green>D��c �i�m: <color>: Ch� ta chuy�n cung c�p d��c ph�m cho chi�n tr��ng ",5,
	"Giao d�ch/giaodich",
	"Mua C�u Chuy�n Ho�n H�n �an /muacuuchuyen",
	"Mua � ��u Ho�n H�n �an /muaodau",
	"Mua L� Bao Ng� Hoa Ng�c L� Ho�n /mualebao",
	"Tho�t ./no")
end
end


function nhanlebao()
for i=1,20 do
	AddItem(1,2,0,4,0,0,0)
end
Msg2Player("B�n nh�n ���c d��c li�u mi�n ph� !")
Talk(0,"")
end

function muaodau()
sl = GetCash()
if GetCash() >= 20000 then
Pay(20000)
if GetCash() == sl - 20000 then

	for k=1,20 do
		AddItem(1,1,0,4,0,0,0)
	end
	Msg2Player("B�n nh�n ���c 20 b�nh � ��u Ho�n H�n �an !")
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng mang �� 2 v�n l��ng !")
end
end


function muacuuchuyen()
sl = GetCash()
if GetCash() >= 20000 then
Pay(20000)
if GetCash() == sl - 20000 then

	for k=1,20 do
		AddItem(1,0,0,4,0,0,0)
	end
	Msg2Player("B�n nh�n ���c 20 b�nh C�u Chuy�n Ho�n H�n �an !")
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng mang �� 2 v�n l��ng !")
end
end

function mualebao()
sl = GetCash()
if GetCash() >= 30000 then
Pay(30000)
if GetCash() == sl - 30000 then

	for i=1,20 do
		AddItem(1,2,0,4,0,0,0)
	end

Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng mang �� 3 v�n l��ng !")
end
end

function giaodich()
Sale(9)
end
function no()
end