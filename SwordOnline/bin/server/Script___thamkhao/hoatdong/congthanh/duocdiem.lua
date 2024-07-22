function main()
SetFightState(0)
h,m,s = GetTimeNew()

if h == 18 or h == 19 then
	SayNew("<color=green>D≠Óc ßi’m: <color>: ChÁ ta chuy™n cung c p d≠Óc ph»m cho chi’n tr≠Íng ",3,
	"Giao dﬁch/giaodich",
	"NhÀn NgÚ Hoa Ng‰c LÈ Hoµn Mi‘n Ph› /nhanlebao",
	"Tho∏t ./no")
else
	SayNew("<color=green>D≠Óc ßi’m: <color>: ChÁ ta chuy™n cung c p d≠Óc ph»m cho chi’n tr≠Íng ",5,
	"Giao dﬁch/giaodich",
	"Mua Cˆu Chuy”n Hoµn HÂn ßan /muacuuchuyen",
	"Mua § ß«u Hoµn HÂn ßan /muaodau",
	"Mua L‘ Bao NgÚ Hoa Ng‰c LÈ Hoµn /mualebao",
	"Tho∏t ./no")
end
end


function nhanlebao()
for i=1,20 do
	AddItem(1,2,0,4,0,0,0)
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
AddEventItem(106)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","Bπn kh´ng mang ÆÒ 3 vπn l≠Óng !")
end
end

function giaodich()
Sale(9)
end
function no()
end