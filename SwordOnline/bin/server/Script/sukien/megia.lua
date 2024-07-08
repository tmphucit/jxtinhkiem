Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\danhsachguithu.lua")

ThongBaoXepHang = 0

function main()
Talk(1,"","S� ki�n �� k�t th�c !")
end
function main_()
gio = tonumber(date("%H"))
if ThongBaoXepHang ~= gio and getn(DS_THU) >= 5 then
	SapXepHangDuaTop()
	Msg2SubWorld("<color=green>Danh sach Top S� Ki�n T�m Th� Ng��i L�nh: ")
	for k=1,5 do
		if k <= getn(DS_THU) then
			Msg2SubWorld("- H�ng "..k..": "..DS_THU[k][1].." - "..DS_THU[k][2].." c�i")
		end
	end
	ThongBaoXepHang = gio
	savebang()
end

SayNew("�� l�u l�m r�i, k� t� ng�y con ta nh�p ng�, kh�ng bi�t b�y gi� n� th� n�o r�i...�m th�n gi� y�u n�y gi� ��y s�p kh�ng l�m ���c g� n�a r�i... V� tr�ng s� c� th� gi�p �� ta kh�ng?",3,
"Ta c� b�c th� t� xa c�a con b� g�i v� ��y. /guithu",
"B� c�n ta gi�p g� kh�c kh�ng? /giupba",
"L�n sau ta s� mang th� v� cho b� /no")

end


tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(DS_THU) do
	for j=1,getn(DS_THU) do
		if DS_THU[i][2] > DS_THU[j][2] then
			tam_duatop = DS_THU[i]
			DS_THU[i] = DS_THU[j]
			DS_THU[j] = tam_duatop
		end
	end
end

end

function giupba()
ngay = tonumber(date("%d"))

tinhtoan = GetTask(911) - mod(GetTask(911),1000)
if tinhtoan ~= ngay*1000 then
	SetTask(911, ngay * 1000)
	SetTask(912,0)
end

nhiemvu = mod(GetTask(911),1000)
if nhiemvu == 0 then
		if GetItemCount(130) > 0 and GetItemCount(131) > 0 and GetItemCount(132) > 0 and GetItemCount(133) > 0 and GetItemCount(134) > 0 then
			DelItem(130)
			DelItem(131)
			DelItem(132)
			DelItem(133)
			DelItem(134)
			SetTask(911, GetTask(911) + 1)
			Msg2Player("Ho�n th�nh nhi�m v� 1 !")
			Msg2Player("Nhi�m v� 2: ��n B�ch V�n ��ng ti�u di�t 100 S�i �� ")
			Talk(1,"","C�m �n tr�ng s� �� gi�p ta, h�y ��n B�ch V�n ��ng ti�u di�t 100 con s�i mang th� c�p v� cho ta !")
		else
			Talk(1,"","Nhi�m v� 1: Mang 5 S�t Th� L�nh kh�c ng� h�nh ��n cho ta !")
		end
elseif nhiemvu == 1 then
		if GetTask(912) >= 100 then
			SetTask(912,0)
			SetTask(911, GetTask(911) + 1)
			Msg2Player("Ho�n th�nh nhi�m v� 2 !")
			Msg2Player("Nhi�m v� 3: Mang cho M� Gi� 1 chi�c nh�n ")
		else
			Talk(1,"","Nhi�m v� 2: ��n B�ch V�n ��ng ��nh b�i 100 con s�i !")
		end
elseif nhiemvu == 2 then
			OpenCheckItemBox("H�m Ki�m Tra Item","H�y ��t v�o ��y 1 chi�c nh�n","ok")
elseif nhiemvu == 3 then
		if GetTask(162) >= GetTask(912) then			
				SetTask(911, GetTask(911) + 1)
				SetTask(912, GetTask(100) + 20)
			Msg2Player("Ho�n th�nh nhi�m v� 4 !")
			Msg2Player("Nhi�m v� 5: N�ng 20 �i�m danh v�ng ")
		else
			Talk(1,"","S� �i�m ph�c duy�n y�u c�u kh�ng ��: "..GetTask(162).." / "..GetTask(912).."")
		end
elseif nhiemvu == 4 then
	if CheckFreeBoxItem(0,10,5,5) == 0 then
		Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
		return
	end
		if GetTask(100) >= GetTask(912) then			
			SetTask(911, GetTask(911) + 1)
			SetTask(912, 0)
			Msg2Player("Ho�n th�nh nhi�m v� 5 !")
			AddEventItem(657) 
			for i=1,5 do 
				AddEventItem(662) 
			end
			Msg2Player("B�n nh�n ���c: 5 H�ng Bao, 5 L� Th� G�i M� !")
		else
			Talk(1,"","S� �i�m danh v�ng y�u c�u kh�ng ��: "..GetTask(100).." / "..GetTask(912).."")
		end
else
	Talk(1,"","Ng��i �� ho�n th�nh �� nhi�m v� trong ng�y, ng�y mai quay l�i ��y nh� !") 
end
end


function ok()
idx = GetIdxItemBox ()
if (idx == -1) then
Msg2Player("Trong r��ng c� nhi�u h�n 1 v�t ph�m ")
elseif (idx == 0) then
Msg2Player("Trong r��ng kh�ng c� v�t ph�m n�o ")
elseif (idx == -2) then
Msg2Player("V�t ph�m ��t  v�o kh�ng ph�i l� trang b� ")
elseif (idx == -3) then
Msg2Player("Trang b� ��t v�o �� b� kh�a b�o hi�m ")
else
	if GetDetailTypeItem(idx) == 3 then
		DelEquipIdx(idx)
		if GetIdxItemBox() == 0 then
			SetTask(911, GetTask(911) + 1)
			SetTask(912, GetTask(162) + 50)
			Msg2Player("Ho�n th�nh nhi�m v� 3 !")
			Msg2Player("Nhi�m v� 4: N�ng 50 �i�m ph�c duy�n ")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","Trang b� ��t v�o kh�ng ph�i nh�n !")
	end
end
end

function guithu()
ngay = tonumber(date("%d"))
if GetItemCount(657) == 0 then
Talk(1,"","Ng��i l�i �i l�a b� gi� n�y �, l�m g� c� l� th� n�o?")
return
end

tinhtoan = GetTask(909) - mod(GetTask(909),1000)
if tinhtoan ~= ngay*1000 then
	SetTask(909, ngay * 1000)
end

sl = GetItemCount(657)

DelItem(657)
if GetItemCount(657) == sl - 1 then
	if mod(GetTask(909),1000) < 5 then
		SetTask(909, GetTask(909) + 1)
		AddEventItem(662)
		Msg2Player("Giao th� th�nh c�ng, nh�n ���c 1 H�ng Bao !")
		Msg2Player("Gi�i h�n nh�n H�ng Bao trong ng�y: "..mod(GetTask(909),1000).." / 5 ")
	end	
	SetTask(910, GetTask(910) + 1)
	Msg2Player("T�ng s� th� �� giao trong s� ki�n: "..GetTask(910).." l�n")
	
	vt = checkds()
	if vt == 0 then
			DS_THU[getn(DS_THU)+1] = {GetName(), GetTask(910)}
	else
			DS_THU[vt][2] = GetTask(910)
	end
	xh = checkxh()
	
	Msg2Player("B�n �ang ��ng v� tr� th�: "..xh.." trong danh s�ch !")
	
else
	Talk(1,"","hack ha em")
end
end

function checkxh()
vt = 1
for i=1,getn(DS_THU) do
	if GetTask(910) < DS_THU[i][2] then
		vt = vt + 1
	end
end
return vt
end
function checkds()
for i=1,getn(DS_THU) do
	if GetName() == DS_THU[i][1] then
		return i
	end
end
return 0
end

function savebang()
BANG = TaoBang(DS_THU,"DS_THU")		
LuuBang("script/event/danhsachguithu.lua",BANG)
end

function no()
end