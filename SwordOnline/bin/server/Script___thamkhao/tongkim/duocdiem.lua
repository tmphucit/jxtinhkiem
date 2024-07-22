
function main()
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))

SetFightState(0)
h,m,s = GetTimeNew()
	SayNew("<color=green>D≠Óc ßi’m: <color>: ChÁ ta chuy™n cung c p d≠Óc ph»m cho chi’n tr≠Íng ",7,
	"Giao dﬁch/giaodich",
	"Mua Cˆu Chuy”n Hoµn HÂn ßan /muacuuchuyen",
	"Mua § ß«u Hoµn HÂn ßan /muaodau",
	"Mua L‘ Bao NgÚ Hoa Ng‰c LÈ Hoµn /mualebao",
	"NhÀn D≠Óc Ph»m Mi‘n Ph› /nhannguhoa",
	"NhÀn NgÚ Hoa Mi‘n Ph› [10 L«n]/nhannguhoafree",
	"Tho∏t ./no")
end

function nhannguhoafree()
	if GetTask(948) >= 10 then
	Talk(1,"","Bπn Æ∑ nhÀn ÆÒ 10 l≠Ót mi‘n ph› trong trÀn nµy")
	return
	end
	for i=1,20 do
		idx = AddItem(1,2,0,5,0,0,0)
		SetItemLock(idx)
	end
	SetTask(948, GetTask(948) + 1)
	Msg2Player("Bπn nhÀn Æ≠Óc NgÚ Hoa Ng‰c LÈ Hoµn mi‘n ph› !")
	Msg2Player("SË l«n cﬂn lπi: <color=yellow>"..GetTask(948).." / 10 l«n")
end
function nhannguhoa()
	for i=1,60 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
	end
	Msg2Player("Bπn nhÀn Æ≠Óc d≠Óc li÷u mi‘n ph› !")
end

function nhanlebao()
for i=1,20 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
end
Msg2Player("Bπn nhÀn Æ≠Óc d≠Óc li÷u mi‘n ph› !")
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
	Msg2Player("Bπn nhÀn Æ≠Óc 20 b◊nh § ß«u Hoµn HÂn ßan !")
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","Bπn kh´ng mang ÆÒ 2 vπn l≠Óng !")
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
	Msg2Player("Bπn nhÀn Æ≠Óc 20 b◊nh Cˆu Chuy”n Hoµn HÂn ßan !")
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","Bπn kh´ng mang ÆÒ 2 vπn l≠Óng !")
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
Talk(1,"","Bπn kh´ng mang ÆÒ 3 vπn l≠Óng !")
end
end

function giaodich()
Sale(7)
end
function no()
end