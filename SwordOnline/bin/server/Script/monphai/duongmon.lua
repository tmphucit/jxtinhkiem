Include("\\script\\npcchucnang\\hotrotanthu.lua")
tennpc = "Ch��ng M�n ���ng M�n "
tenphai = "���ng M�n"
nguhanh = 1
tennguhanh = "h� m�c "
tenfaction = "Duong Mon"
idmonphai = 3

function hockynang()
--if GetTask(103) > 0 then
		if GetLevel() >= 10 and GetLevel() < 20 then
			SetTask(103,8)
		elseif GetLevel() >= 20 and GetLevel() < 30 then
			SetTask(103,11)
		elseif GetLevel() >= 30 and GetLevel() < 40 then
			SetTask(103,16)
		elseif GetLevel() >= 40 and GetLevel() < 50 then
			SetTask(103,21)
		elseif GetLevel() >= 50 and GetLevel() < 60 then
			SetTask(103,26)
		elseif GetLevel() >= 60 and GetLevel() < 80 then
			SetTask(103,33)
		elseif GetLevel() >= 80 then
			SetTask(103,45)
		end
		--end
		if GetTask(103) >= 1 then
		if HaveMagic(45) < 0  then
			AddMagic(45)
		end
				end
				if GetTask(103) >= 8 then
		if HaveMagic(462) < 0 or HaveMagic(43) < 0 then
		AddMagic(43)
		AddMagic(462)
		end
				end
				if GetTask(103) >= 11 then
	if HaveMagic(464) < 0 then
		AddMagic(464)
	end
				end
				if GetTask(103) >= 16 then
	if HaveMagic(436) < 0 or HaveMagic(50) < 0 or HaveMagic(54) < 0 or HaveMagic(47) < 0 then
	AddMagic(436)
	AddMagic(50)
	AddMagic(54)
	AddMagic(47)
	end
				end
				if GetTask(103) >= 21 then
	if HaveMagic(434) < 0 then
	AddMagic(434)
	end
				end
				if GetTask(103) >= 26 then
	if HaveMagic(439) < 0 then
	AddMagic(439)
	end
				end
				if GetTask(103) >= 33 then
	if HaveMagic(48) < 0 or HaveMagic(249) < 0 or HaveMagic(58) < 0 or HaveMagic(357) < 0 then
	AddMagic(48)
	AddMagic(249)
	AddMagic(58)
	AddMagic(357)
	end
				end
	-- if GetTask(103) >= 45 then
		-- if HaveMagic(355) > 0 then
			-- Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �� h�c k� n�ng 90 m�n ph�i ta r�i m� !")
			-- return
		-- end
		-- nhiemvu90()
		-- return
		-- end
		Msg2Player("B�n �� nh�n ��y �� k� n�ng m�n ph�i ��ng c�p hi�n t�i ")
end

function main()
		
W,X,Y = GetWorldPos()
	if GetFaction() == "" then
		if GetSeries() == nguhanh then
			if GetLevel() >= 10 then
				SayNew("<color=green>"..tennpc.."<color>: Ng��i c� mu�n tham gia v�o m�n ph�i <color=yellow>"..tenphai.."<color> hay kh�ng?",2,
				"V�ng ta mu�n tham gia v�o "..tenphai.."./nhapphai",
				"Tho�t/Exit")
			else
				Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i h�y luy�n t�p ��n <color=red>c�p �� 10<color> r�i h�y quay l�i g�p ta !")
			end
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." ch� d�nh cho nh�ng ng��i thu�c ng� h�nh "..tennguhanh..", ng��i vui l�ng gia nh�p ph�i kh�c nh� !")
		end
	elseif GetFaction() == tenfaction then
			if GetSeries() == nguhanh then
				SayNew("<color=green>"..tennpc.."<color>: Ng��i quay l�i g�p ta �� l�m g�?",3,
				"Ta Mu�n Nh�n L�i K� N�ng/hockynang",
				"Ta Mu�n Nh�n K� N�ng 90/hotroskill9x",
				"Tho�t/Exit")

			else
				Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." ch� d�nh cho nh�ng ng��i thu�c ng� h�nh "..tennguhanh..", ng��i vui l�ng gia nh�p ph�i kh�c nh� !")
			end
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: Ta kh�ng bao gi� n�i chuy�n v�i ng��i ngo�i ph�p m�nh, xin th� l�i!")
		end
end;	
function doimau11()
if GetCash() >= 100000 then
Pay(100000)
SetCamp(4)
SetCurCamp(4)
else
Talk(1,"","<color=green>H� tr� t�n th�: <color>Kh�ng �� 10 v�n l��ng")
end
end
function Exit()
end

function xemnvdanglam()
if GetTask(103) < 1 and GetTask(103) > getn(mangnv) then
	Talk(1,"","Kh�ng c� d� li�u nhi�m v� m�n ph�i !")
else
	Talk(1,"","<color=red>Nhi�m v� m�n ph�i<color>: "..mangnv[GetTask(103)][2].." ")
	Msg2Player("Nhi�m v� m�n ph�i: "..mangnv[GetTask(103)][2].." ")
end
end

mangnv = {
{1,"Ti�u di�t 10 con Nh�m � Hoa S�n "},
{2,"��i tho�i Di�p Ti�p M� t�i Hoa S�n 304/315 "},
{3,"��i tho�i v�i NPC M�n Ph�i "},
{4,"��i tho�i v�i NPC D��c �i�m "},
{5,"��i tho�i v�i NPC T�p H�a  "},
{6,"��i tho�i v�i NPC Th� R�n  "},
{7,"��i tho�i v�i NPC B�n ng�a � th�nh th�  "},
{8,"G�p NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{9,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 20 "},
{10,"H�y ��n Ph�c Ng�u S�n 235/214 ti�u di�t Tr��ng ��u B�u ! "},
{11,"��i tho�i NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{12,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 30 "},
{13,"��n T��ng D��ng t�m T�ng Vi�n Thanh 191/193 "},
{14,"�i Ph�c Ng�u S�n ��nh b�i Huy�t Ma H� 241/223 "},
{15,"Quay v� g�p T�ng Vi�n Thanh b�o tin "},
{16,"��i tho�i NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{17,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 40 "},
{18,"�i D��c V��ng ��ng ti�u di�t Th�ch Kh�ch Kim Qu�c 216/199 "},
{19,"Quay v� g�p NPC M�n Ph�i "},
{20,"��n Ph��ng T��ng g�p Ti�u T��ng Qu�n 217/184 "},
{21,"��i tho�i NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{22,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 50 "},
{23,"��n T�n T��ng T� Th�nh �� g�p T� Chung ��i S� 402/319 "},
{24,"�i T�n L�ng ti�u di�t Th�nh Kh�n 199/219 "},
{25,"Quay v� G�p T� Chung ��i S� "},
{26,"��i tho�i NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{27,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 60 "},
{28,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 60 "},
{29,"��n Ph��ng T��ng g�p Th�nh ��i Qu�n 201/202 "},
{30,"�i Chu Ti�n Tr�n ��nh b�i Li�u T� T� 217/180 "},
{31,"V� Ph��ng T��ng g�p Th�nh ��i Qu�n "},
{32,"Qua Th�nh �� g�p K� �n M�y "},
{33,"��i tho�i NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{34,"��i tho�i NPC m�n ph�i nh�n nhi�m v� 90 "},
{35,"��n Ba L�ng Huy�n g�p Tr� B� B� 203/202 "},
{36,"��n Ph��ng T��ng g�p Ch�c T� Thanh 198/191 "},
{37,"�i T��ng D��ng th�nh gi�o H� M� Tuy�t 191/206 "},
{38,"L�n L�m Du Quan thu ph�c ��ch H�o Nhi�n 204/235 "},
{39,"Quay v� g�p Ch�c T� Thanh "},
{40,"��n Ba L�ng Huy�n giao Tr�m cho Tr� B� B�  "},
{41,"��n Th�nh �� g�p C� D� T�u 384/318 "},
{42,"��n Ph��ng T��ng g�p V� L�m Minh Ch� 201/189 "},
{43,"L�n Ch�n N�i Tr��ng B�ch ti�u di�t T�o H�ng 168/142  "},
{44,"Quay v� G�p V� L�m Minh Ch�  "},
{45,"��i tho�i NPC M�n Ph�i �� ho�n th�nh nhi�m v�  "},
{46," "}
}
function nhapphai() -- nv lv 10
	if GetTask(103) == 0 then
		SetFaction("Duong Mon")
		SetCamp(3)
		SetCurCamp(3)
		if HaveMagic(45) < 0  then
			AddMagic(45)
			AddMagic(43)
			AddMagic(462)
			AddMagic(464)
			AddMagic(436)
			AddMagic(50)
			AddMagic(54)
			AddMagic(47)
			AddMagic(434)
			AddMagic(439)
			AddMagic(48)
			AddMagic(249)
			AddMagic(58)
			AddMagic(357)
		end
		SetTask(103,8)
		SetTask(104,0) -- so luong nhiem vu
		Talk(1,"","<color=green>"..tennpc.."<color>: T� h�m nay ng��i �� ch�nh th�c gia nh�p <color=yellow>"..tenphai.."<color>, h�y c� g�ng luy�n t�p nh�.")
		Msg2Player("H�y ��i tho�i l�i v�i NPC M�n Ph�i �� nh�n ��y �� k� n�ng c�p 10 !")
	elseif GetTask(103) == 1 then
		if GetTask(104) < 10 then
			Talk(1,"","<color=green>"..tennpc.."<color>: Nhi�m v� ta giao ch�a ho�n th�nh sao l�i v� nhanh th� !")
			Msg2Player("Nhi�m v� s� nh�p "..tenphai..": l�n Hoa S�n ti�u di�t 10 con nh�m !")
		else
			SetTask(103,2)
			SetTask(104,0)
			Talk(1,"","<color=green>"..tennpc.."<color>: Mang th� c�p Nh�m ��n Hoa S�n 304/315 g�p <color=yellow>Di�p Ti�p M� <color>")
			Msg2Player("Mang th� c�p Nh�m ��n Hoa S�n 304/215 g�p Di�p Ti�p M� ")
		end	
	elseif GetTask(103) == 3 then
		SetTask(103,4)
		Talk(3,"","<color=green>"..tennpc.."<color>: Nh� ng��i c�ng r�t kh� ��y, hi v�ng ng��i s� d�ng t�i tr� c�a m�nh �� l�m r�ng danh "..tenphai.."",
		"H�y �i g�p ch� d��c �i�m, ch� t�p h�a, ch� th� r�n v� ch� b�n ng�a. Giao t�n th� c�a ta ��n nh�ng ng��i n�y !",
		"H�y nhanh l�n nh�, ta c�n ph�i l�m nhi�u vi�c kh�c n�a ")
		Msg2Player("Nh�n ���c t�n th� c�a Ch��ng M�n, h�y �i n�i chuy�n l�n l��t : ch� d��c �i�m, ch� t�p h�a, ch� th� r�n, ch� b�n ng�a ")
	elseif GetTask(103) >= 4 and GetTask(103) <= 7 then
		Talk(1,"","Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
		Msg2Player("H�y giao t�n th� c�a ta ��n l�n l��t : ch� d��c �i�m, ch� t�p h�a, ch� th� r�n, ch� b�n ng�a ")
	elseif GetTask(103) == 8 then
		if HaveMagic(462) < 0 or HaveMagic(43) < 0 then
		AddMagic(43)
		AddMagic(462)
		end
		Talk(1,"","<color=green>"..tennpc.."<color>: Nh�ng g� ta giao ph� ng��i �� l�m r�t t�t, ch�nh th�c nh�n ng��i v�o <color=yellow>"..tenphai.."<color>")	
		Msg2Player("B�n �� gia nh�p "..tenphai..", h�c ���c k� n�ng c�p 10 !")
		SetTask(103,9)
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
	end
end;

function nhiemvu20()
if GetTask(103) == 9 then
	SetTask(103,10)
	Talk(2,"","<color=red><color>: Ta �� tu luy�n b�y l�u gi� mu�n n�ng cao s�c m�nh c�a m�nh, xin s� ph� ch� b�o th�m ",
	"Ng��i c� bao gi� nghe n�i m�t t�n � m�nh hi�p y�u kh�ng, h�n ta �ang h�ng h�ch � Ph�c Ng�u S�n, gi�p ta d�y b�o h�n ")
	Msg2Player("H�y ��n Ph�c Ng�u S�n 235/214 ti�u di�t Tr��ng ��u B�u !")
elseif GetTask(103) == 11 then
	if HaveMagic(464) < 0  then
		AddMagic(464)
	end
	Msg2Player("B�n �� ho�n th�nh nhi�m v� , h�c ���c k� n�ng c�p 20 !")
	SetTask(103,12)
else 
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
end
end

function nhiemvu30()
if GetTask(103) == 12 then
	Talk(2,"","<color=green>"..tennpc.."<color>: ��n <color=yellow>T��ng D��ng Ph� <color>t�m <color=red>T�ng Vi�n Th�nh 191/193<color>. �ng ta s� k� cho ng��i nghe v� chuy�n m�t con Huy�t Ma H� ",
	"N� �� t�ng s�t h�i r�t nhi�u ng��i khi�n d�n trong v�ng v� c�ng kinh s� !")
	Msg2Player("��n T��ng D��ng Ph� t�m T�ng Vi�n Th�nh 191/193")
	SetTask(103,13)
elseif GetTask(103) == 16 then
	if HaveMagic(436) < 0 or HaveMagic(50) < 0 or HaveMagic(54) < 0 or HaveMagic(47) < 0 then
	AddMagic(436)
	AddMagic(50)
	AddMagic(54)
	AddMagic(47)
	end
	Msg2Player("B�n �� ho�n th�nh nhi�m v� , h�c ���c k� n�ng c�p 30 !")
	SetTask(103,17)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
end
end

function nhiemvu40()
if GetTask(103) == 17 then
	Talk(2,"","<color=green>"..tennpc.."<color>: C� th� l�n n�y ng��i ph�i �i <color=yellow>D��c V��ng ��ng<color> 1 chuy�n r�i, ta �ang c�n t�m 1 m�t h�m quan tr�ng ",
	"��nh b�i <color=red>Th�ch Kh�ch Kim Qu�c<color> 216/199 v� 220/192, b�t h�n ph�i giao m�t h�m ra")
	Msg2Player("�i D��c V��ng ��ng ��nh b�i Th�ch Kh�ch Kim Qu�c 216/199 v� 220/192")
	SetTask(103,18)
elseif GetTask(103) == 19 then
	Talk(1,"","<color=green>"..tennpc.."<color>: Kh� l�m �� t�, h�y nhanh ch�n �em m�t h�m ��n <color=yellow>Ph��ng T��ng<color> ��a cho <color=red>Ti�u T��ng Quan 217/184")
	Msg2Player("��n Ph��ng T��ng 217/184 ��a b�c m�t h�m cho Ti�u T��ng Qu�n ")
	SetTask(103,20)
elseif GetTask(103) == 21 then
	if HaveMagic(434) < 0 then
	AddMagic(434)
	end
	Msg2Player("B�n �� ho�n th�nh nhi�m v� , h�c ���c k� n�ng c�p 40 !")
	SetTask(103,22)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
end
end

function nhiemvu50()
if GetTask(103) == 22 then
	Talk(1,"","<color=green>"..tennpc.."<color>: ��n <color=yellow>T�n T��ng T� Th�nh �� <color> g�p <color=red>T� Chung ��i S� <color>402/319, ta c� vi�c c�n truy�n ��t !")
	Msg2Player("Nh�n nhi�m v�: ��n T�n T��ng T� Th�nh �� g�p T� Chung ��i S� 402/319")
	SetTask(103,23)
elseif GetTask(103) == 26 then
	if HaveMagic(439) < 0 then
	AddMagic(439)
	end
	Msg2Player("B�n �� ho�n th�nh nhi�m v� , h�c ���c k� n�ng c�p 50 !")
	SetTask(103,28)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
end
end

function nhiemvu60()
if GetTask(103) == 28 or GetTask(103) == 27 then
	Talk(2,"","<color=green>"..tennpc.."<color>: H�y �i t�m <color=red>T�n V�t M�n Ph�i<color> �� th�t l�c trong giang h� ",
	"H�y ��n <color=yellow>Ph��ng T��ng 201/202<color> g�p Th�nh ��i Qu�n d� h�i th�m tin t�c !")
	Msg2Player("Nhi�m v� m�n ph�i: Ti�p nh�n nhi�m v�, ��n Ph��ng T��ng 201/202 g�p Th�nh ��i Qu�n !")
	SetTask(103,29)
elseif GetTask(103) == 33 then
	if HaveMagic(48) < 0 or HaveMagic(249) < 0 or HaveMagic(58) < 0 or HaveMagic(357) < 0 then
	AddMagic(48)
	AddMagic(249)
	AddMagic(58)
	AddMagic(357)
	end
	Msg2Player("B�n �� ho�n th�nh nhi�m v� , h�c ���c k� n�ng c�p 60 !")
	SetTask(103,34)		
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
end
end

function nhiemvu90()
if GetTask(103) == 34 then
	if GetTongName() == "" then
		if GetTask(100) >= 240 then
			Talk(2,"","<color=green>"..tennpc.."<color>: Kh� luy�n nhi�u n�m �t s� th�nh t�i, �� h�c tuy�t k� m�n ph�i ng��i ph�i v�t v� l�m ��y !",
			"H�y ��n <color=yellow>Ba L�ng Huy�n<color> g�p <color=red>Tr� B� B� 203/202<color> �� b� h��ng d�n cho")
			Msg2Player("Ti�p nh�n nhi�m v� Tr�ng Ph�n S� M�n, ��n Ba L�ng Huy�n g�p Tr� B� b� 203/202 ")
			SetTask(103,35)
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: Danh v�ng c�a ng��i kh�ng �� <color=red>240<color> �i�m, kh�ng th� quay v� !")	
			Msg2Player("Ho�n th�nh �� 240 �i�m r�i quay l�i. �i�m danh v�ng c� th� ki�m ���c � V��t �i, Boss S�t Th�, T�ng Kim !")
		end
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i mu�n v� m�n ph�i m� l�i chia bang chia ph�i th� kia, ta kh�ng nh�n ng��i !")
		Msg2Player("R�i kh�i bang h�i tr��c khi nh�n nhi�m v� Tr�ng Ph�n S� M�n !")
	end
elseif GetTask(103) == 45 then
	AddMagic(355,1)
	AddMagic(358,1)
	AddMagic(302,1)
	AddMagic(399,0)
	Talk(2,"","<color=green>"..tennpc.."<color>: Ng��i kh�ng h� danh l� �� t� c�a "..tenphai..", h�y d�ng tuy�t k� c�a b�n m�n �� vinh danh nh� !",
	"<color=red><color>: �a t� s� ph�, xin b�i bi�t !")
	Msg2Player("B�n �� ho�n th�nh nhi�m v� , h�c ���c k� n�ng c�p 90 !")
	SetTask(103,46)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng��i �ang l�m nhi�m v� M�n Ph�i, h�y ho�n th�nh r�i quay l�i g�p ta !")
end
end

function nhiemvu120()
Talk(1,"","Ch�c n�ng ch�a Updadte !")
end
