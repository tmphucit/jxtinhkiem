

function main()
SayNew("<color=green>Hi�p Kh�ch H�nh<color>:",4,
"Mua L�nh B�i Th��ng Ph�t /mualenhbai",
"��n B�n T� ��ng /movebantodong",
"Xin l�i, ta s� quay l�i sau./no")
end

function mualenhbai()
gia = 300000

if GetCash() < gia then
Talk(1,"","Ng��i kh�ng mang �� "..gia.." l��ng, kh�ng th� mua !")
return
end

Pay(gia)
idx = AddEventItem(686)
Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idx).."")
end
function movebantodong()
SayNew("B�n T� ��ng l� n�i nguy hi�m c� r�t nhi�u d� nh�n d�ng ��c gi�t ng��i kh�ng g�m tay, ng��i c� ch�c ch�n mu�n ��n ch�?",5,
"C�ng 1 /movebantodong1",
"C�ng 2 /movebantodong1",
"C�ng 3 /movebantodong1",
"C�ng 4 /movebantodong1",
"Tho�t./no")
end

function movebantodong1(nsel)
if GetItemCount(686) == 0 then
Talk(1,"","Ta th�y ng��i ch�a �� m�nh, h�y mang L�nh B�i Th��ng Thi�n Ph�t �c ��n g�p ta.")
return
end

sx = nsel + 1
AddSkillEffect(504,1,3*18)
SetFightState(1)
SetLogoutRV(1)
DelItem(686)
if sx == 1 then
NewWorld(77, 1527,3228)
elseif sx == 2 then
NewWorld(77, 1626,3230)
elseif sx == 3 then
NewWorld(77, 1675,3346)
elseif sx == 4 then
NewWorld(77, 1514,3355)
end
end

