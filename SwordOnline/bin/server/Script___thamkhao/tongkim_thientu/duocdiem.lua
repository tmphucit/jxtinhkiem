
function main()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))

SetFightState(0)
h,m,s = GetTimeNew()
	SayNew("<color=green>D��c �i�m: <color>: Ch� ta chuy�n cung c�p d��c ph�m cho chi�n tr��ng ",7,
	"Giao d�ch/giaodich",
	"Mua C�u Chuy�n Ho�n H�n �an /muacuuchuyen",
	"Mua � ��u Ho�n H�n �an /muaodau",
	"Mua L� Bao Ng� Hoa Ng�c L� Ho�n /mualebao",
	"Nh�n D��c Ph�m Mi�n Ph� /nhannguhoa",
	"Nh�n Ng� Hoa Mi�n Ph� [10 L�n]/nhannguhoafree",
	"Tho�t ./no")
end

function nhannguhoafree()
	if GetTask(948) >= 10 then
	Talk(1,"","B�n �� nh�n �� 10 l��t mi�n ph� trong tr�n n�y")
	return
	end
	for i=1,20 do
		idx = AddItem(1,2,0,5,0,0,0)
		SetItemLock(idx)
	end
	SetTask(948, GetTask(948) + 1)
	Msg2Player("B�n nh�n ���c Ng� Hoa Ng�c L� Ho�n mi�n ph� !")
	Msg2Player("S� l�n c�n l�i: <color=yellow>"..GetTask(948).." / 10 l�n")
end
function nhannguhoa()
	for i=1,60 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
	end
	Msg2Player("B�n nh�n ���c d��c li�u mi�n ph� !")
end

function nhanlebao()
for i=1,20 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
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
Sale(7)
end
function no()
end