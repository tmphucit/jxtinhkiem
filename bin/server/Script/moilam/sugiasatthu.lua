function main()
if (GetTask(27) == 0) then
Say("<color=green>S� Gi� S�t Th�: <color> Ng��i ��n ��y mu�n l�m g� ch�ng?",3,
"Nh�n nhi�m v� Boss S�t th�/nhannv1",
"Gh�p l�nh b�i, s�t th� gi�n./ghks",
"Tho�t/no")
else
Say("<color=green>S� Gi� S�t Th�: <color> Ng��i ��n ��y mu�n l�m g� ch�ng?",6,
"Tr� nhi�m v� Boss S�t Th�/tnvst",
"Di chuy�n ��n Boss S�t Th� /dichuyen",
"Xem nhi�m v� �ang l�m /xemnv",
"Hu� nhi�m v�/bnvst",
"Gh�p l�nh b�i, s�t th� gi�n/ghks",
"Tho�t/no")
end
end

function tnvst()
if GetTask(27) == 99 then
	SetTask(27,0)
	Msg2Player("B�n �� ho�n th�nh nhi�m v� v� nh�n ���c 5 �i�m danh v�ng")
	AddRepute(5)
	 
else
Talk(1,"","<color=green>S� Gi� S�t Th� <color>: H�y ho�n th�nh nhi�m v� r�i quay l�i g�p ta. ")
end
end

function bnvst()
Say("B�n c� ch�c ch�n mu�n h�y nhi�m v� kh�ng? ",2,
"Ta mu�n h�y nhi�m v�/xacnhanhuynv",
"Tho�t./no")
end
function xacnhanhuynv()
nl = GetCash()
if GetCash() >= 20000 then
	Pay(20000)
	if GetCash() == (nl-20000) then
		SetTask(27,0)
		Talk(1,"","<color=green>S� Gi� S�t Th� <color>: B�n �� h�y nhi�m v� th�nh c�ng !")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>S� Gi� S�t Th� <color>: Ng��i kh�ng mang �� <color=yellow>20000<color> l��ng")
end
end
function manglevel()
if GetLevel() <= 90 then
return 0
elseif GetLevel() > 90 and GetLevel() <= 120 then
return 10
elseif GetLevel() > 120 and GetLevel() <= 150 then
return 20
else
return  30
end
end

function nhannv1()
Say("<color=green>S� Gi� S�t Th�: <color> �� nh�n nhi�m v� <color=fire>Boss S�t th� <color> c�n c� <color=fire>5000 <color> l��ng",2,
"Nh�n nhi�m v�/nhannv",
"Tho�t/no")
end;
function nhannv()
ngay = tonumber(date("%d"))
if GetLevel() < 90 then
	if GetCash() < 2500 then
		Msg2Player("B�n kh�ng mang �� 2500 l��ng. Kh�ng th� nh�n nhi�m v� ! ")
		return
	else
		Pay(2500)
	end
elseif GetLevel() >= 90 and GetLevel() < 120 then
	if GetCash() < 5000 then
		Msg2Player("B�n kh�ng mang �� 5000 l��ng. Kh�ng th� nh�n nhi�m v� ! ")
		return
	else
		Pay(5000)
	end
elseif GetLevel() >= 120 and GetLevel() < 150 then
	if GetCash() < 7500 then
		Msg2Player("B�n kh�ng mang �� 7500 l��ng. Kh�ng th� nh�n nhi�m v� ! ")
		return
	else
		Pay(7500)
	end	
elseif GetLevel() >= 150 then
	if GetCash() < 10000 then
		Msg2Player("B�n kh�ng mang �� 10000 l��ng. Kh�ng th� nh�n nhi�m v� ! ")
		return
	else
		Pay(10000)
	end
end
if GetTask(136) == ngay then
	if GetTask(137) < 8 then
                                axs={1,4,5,7,8}  
		i = random(1,5)
                          
		SetTask(137,GetTask(137)+1)
		SetTask(27,axs[i]+manglevel())
		Msg2Player("Nhi�m v� th�: "..GetTask(137).."/8")
		nhannv2()	
	else
		Talk(1,"","<color=green>S� Gi� S�t Th� <color>: H�m nay b�n �� ti�u di�t �� <color=red>8<color> Boss S�t Th�")
	end
else

	SetTask(136,ngay)
	SetTask(137,0)
	SetTask(82,0)
	SetTask(9,0)
	SetTask(2,0)
	SetTask(3,0)
	nhannv()
end

end

function dichuyen()
if GetTask(27) == 0 or GetTask(27) > getn(mangboss) then
Msg2Player("Kh�ng th� s� d�ng ch�c n�ng n�y !")
return
end

NewWorld(mangboss[GetTask(27)][5],mangboss[GetTask(27)][3],mangboss[GetTask(27)][4])
SetFightState(1)
Msg2Player("�� di chuy�n ��n v� tr� Boss S�t Th� ")
end
function xemnv()
if GetTask(27) == 99 then
Talk(1,"","B�n �� ho�n th�nh nhi�m v� !")
else
Talk(1,"","Nhi�m v� ti�u di�t: <color=red>"..mangboss[GetTask(27)][1].."<color>  � <color=yellow>"..mangboss[GetTask(27)][2].."<color> "..(mangboss[GetTask(27)][3]/8).."/"..(mangboss[GetTask(27)][4]/16).."")
end
end
function nhannv2()
NewWorld(mangboss[GetTask(27)][5],mangboss[GetTask(27)][3],mangboss[GetTask(27)][4])
SetFightState(1)
Msg2Player("H�y ti�u di�t: "..mangboss[GetTask(27)][1]..". H�n ta �ang � "..mangboss[GetTask(27)][2].." "..(mangboss[GetTask(27)][3]/8).."/"..(mangboss[GetTask(27)][4]/16).."")
end

function tinhngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
tinhngay1 = 0
for k=1,getn(mang) do
	if thang > mang[k][1] then
	tinhngay1 = tinhngay1 + mang[k][2]
	end
end
tinhngay1 = tinhngay1 + ngay
return tinhngay1
end

mang = {
{1,31},
{2,28},
{3,31},
{4,30},
{5,31},
{6,30},
{7,31},
{8,31},
{9,30},
{10,31},
{11,30},
{12,31},
}
mangboss = {
{"Thi�u L�m S�t Th� - C�p 71","Ba L�ng Huy�n",183*8,16*191,53},
{"���ng M�n S�t Th� - C�p 71","Ba L�ng Huy�n",193*8,16*183,53},
{"Nga Mi S�t Th� - C�p 71","Ba L�ng Huy�n",217*8,16*187,53},
{"C�i Bang S�t Th� - C�p 71","Ba L�ng Huy�n",222*8,16*199,53},
{"V� �ang S�t Th� - C�p 71","Ba L�ng Huy�n",219*8,16*212,53},
{"Thi�n V��ng S�t Th� - C�p 71","Ba L�ng Huy�n",223*8,16*191,53},
{"Ng� ��c S�t Th� - C�p 71","Ba L�ng Huy�n",208*8,16*188,53},
{"Th�y Y�n S�t Th� - C�p 71","Ba L�ng Huy�n",201*8,16*184,53},
{"Thi�n Nh�n S�t Th� - C�p 71","Ba L�ng Huy�n",186*8,16*211,53},
{"C�n L�n S�t Th� - C�p 71","Ba L�ng Huy�n",205*8,16*212,53},
{"Thi�u L�m S�t Th� - C�p 91","T�n L�ng",209*8,16*210,187},
{"���ng M�n S�t Th� - C�p 91","T�n L�ng",200*8,16*214,187},
{"Nga Mi S�t Th� - C�p 91","T�n L�ng",189*8,16*201,187},
{"C�i Bang S�t Th� - C�p 91","T�n L�ng",183*8,16*204,187},
{"V� �ang S�t Th� - C�p 91","T�n L�ng",179*8,16*214,187},
{"Thi�n V��ng S�t Th� - C�p 91","D��c V��ng ��ng",213*8,16*191,101},
{"Ng� ��c S�t Th� - C�p 91","D��c V��ng ��ng",222*8,16*196,101},
{"Th�y Y�n S�t Th� - C�p 91","D��c V��ng ��ng",208*8,16*194,101},
{"Thi�n Nh�n S�t Th� - C�p 91","D��c V��ng ��ng",206*8,16*190,101},
{"C�n L�n S�t Th� - C�p 91","D��c V��ng ��ng",201*8,16*199,101},
{"Thi�u L�m S�t Th� - C�p 121","Xi V�u ��ng",1865,3123,75},
{"���ng M�n S�t Th� - C�p 121","Xi V�u ��ng",1821,3143,75},
{"Nga Mi S�t Th� - C�p 121","Xi V�u ��ng",1829,3194,75},
{"C�i Bang S�t Th� - C�p 121","Xi V�u ��ng",1725,3256,75},
{"V� �ang S�t Th� - C�p 121","Xi V�u ��ng",1692,3294,75},
{"Thi�n V��ng S�t Th� - C�p 121","Xi V�u ��ng",1691,3200,75},
{"Ng� ��c S�t Th� - C�p 121","Xi V�u ��ng",1690,3135,75},
{"Th�y Y�n S�t Th� - C�p 121","Xi V�u ��ng",1756,3110,75},
{"Thi�n Nh�n S�t Th� - C�p 121","Xi V�u ��ng",1621,3200,75},
{"C�n L�n S�t Th� - C�p 121","Xi V�u ��ng",1650,3235,75},
{"Thi�u L�m S�t Th� - C�p 151","L�m Du Quan",206*8,16*213,102},
{"���ng M�n S�t Th� - C�p 151","L�m Du Quan",204*8,16*205,102},
{"Nga Mi S�t Th� - C�p 151","L�m Du Quan",217*8,16*206,102},
{"C�i Bang S�t Th� - C�p 151","L�m Du Quan",226*8,16*204,102},
{"V� �ang S�t Th� - C�p 151","L�m Du Quan",238*8,16*210,102},
{"Thi�n V��ng S�t Th� - C�p 151","L�m Du Quan",237*8,16*215,102},
{"Ng� ��c S�t Th� - C�p 151","L�m Du Quan",233*8,16*222,102},
{"Th�y Y�n S�t Th� - C�p 151","L�m Du Quan",219*8,16*218,102},
{"Thi�n Nh�n S�t Th� - C�p 151","L�m Du Quan",226*8,16*213,102},
{"C�n L�n S�t Th� - C�p 151","L�m Du Quan",216*8,16*209,102}
}







function ghks()
Say("<color=green>S� Gi� S�t Th�: <color> �� gh�p <color=fire>Ho�ng Kim S�t <color> can co <color=fire> L�nh b�i s�t th� v� ng�n l��ng",3,
"Gh�p S�t Th� Gi�n/glbst",
"Gh�p L�nh B�i V��t �i/glbva",
--"Gh�p Ho�ng Kim S�t (Ti�u)/ghkst",
"Tho�t/no")
end;
function ghksd1()
Talk(1,"","<color=green>Nhi�p Th� Tr�n <color>: Ch�c n�ng s� m� l�i khi c� Trang B� Ho�ng Kim")

end
function glbva()
nl = GetCash()
sl1 = GetItemCount(151)
sl2 = GetItemCount(152)
sl3 = GetItemCount(153)
sl4 = GetItemCount(154)
sl5 = GetItemCount(155)
if (sl1 >= 1) and (sl2 >= 1) and (sl3 >= 1) and (sl4 >= 1) and (sl5 >= 1) and (nl >= 50000) then
Pay(50000)
DelItem(151)
DelItem(152)
DelItem(153)
DelItem(154)
DelItem(155)
if (GetItemCount(151) == (sl1-1)) and (GetItemCount(152) == (sl2-1)) and (GetItemCount(153) == (sl3-1)) and (GetItemCount(154) == (sl4-1)) and (GetItemCount(155) == (sl5-1)) and (GetCash() == (nl-50000)) then
AddEventItem(156)
AddRepute(1)
Msg2Player("B�n nh�n ���c 1 �i�m Danh V�ng ")
Msg2Player("B�n nh�n ���c 1 L�nh B�i Li�n Ho�n Ai");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>5 chi�c S�t th� gi�n ng� h�nh v� 5 v�n l��ng <color> ,kh�ng th� gh�p")
end
end;

function glbst()
nl = GetCash()
sl1 = GetItemCount(130)
sl2 = GetItemCount(131)
sl3 = GetItemCount(132)
sl4 = GetItemCount(133)
sl5 = GetItemCount(134)
if (sl1 >= 1) and (sl2 >= 1) and (sl3 >= 1) and (sl4 >= 1) and (sl5 >= 1) and (nl >= 10000) then
Pay(10000)
DelItem(130)
DelItem(131)
DelItem(132)
DelItem(133)
DelItem(134)
if (GetItemCount(130) == (sl1-1)) and (GetItemCount(131) == (sl2-1)) and (GetItemCount(132) == (sl3-1)) and (GetItemCount(133) == (sl4-1)) and (GetItemCount(134) == (sl5-1)) and (GetCash() == (nl-10000)) then
AddEventItem(random(151,155))
Msg2Player("B�n nh�n ���c 1 S�t Th� Gi�n");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>5 chi�c S�t th� l�nh 5 ng� h�nh v� 1 v�n l��ng <color> ,kh�ng th� gh�p")
end
end;

function ghkst()
nl = GetCash()
sl1 = GetItemCount(151)
sl2 = GetItemCount(152)
sl3 = GetItemCount(153)
sl4 = GetItemCount(154)
sl5 = GetItemCount(155)
if (sl1 >= 3) and (sl2 >= 3) and (sl3 >= 3) and (sl4 >= 3) and (sl5 >= 3) and (nl >= 100000) then
Pay(100000)
for k=1,3 do
DelItem(151)
DelItem(152)
DelItem(153)
DelItem(154)
DelItem(155)
end
if (GetItemCount(151) == (sl1-3)) and (GetItemCount(152) == (sl2-3)) and (GetItemCount(153) == (sl3-3)) and (GetItemCount(154) == (sl4-3)) and (GetItemCount(155) == (sl5-3)) and (GetCash() == (nl-100000)) then
AddEventItem(128)
Msg2Player("B�n nh�m ���c 1 Ho�ng kim s�t (ti�u)");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>3 chi�c S�t th� gi�n ng� h�nh m�i lo�i v� 10 v�n l��ng <color> ,kh�ng th� gh�p")
end

end;

function ghksd()
nl = GetCash()
sl = GetItemCount(151)
if (sl >= 20) and (nl >= 500000) then
Pay(50000)
for i=1,20 do
DelItem(151)
end
if (GetItemCount(151) == (sl-20)) and (GetCash() == (nl-500000)) then
AddEventItem(129)
Msg2Player("B�n nh�n ���c 1 Ho�ng kim s�t (��i)");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>20 S�t th� gi�n va 50 v�n l��ng <color> , kh�ng th� gh�p")
end
end;


function no()

end;
