function main()
if GetTask(157) == 4 then
Say("<color=green>M�c S�u: <color> Nghe giang h� ��n r�ng � ngo�i th�nh c� 1 t�n gi� m�o ta �i ho�nh h�nh kh�p n�i. ��i hi�p c� th� gi�p ta cho n� m�t b�i h�c ���c kh�ng ?",2,
"Ta s�n s�ng ti�u di�t n� /nhannv",
"Hi�n t�i ta ch�a c� r�nh /no")
elseif GetTask(157) == 5 then
Talk(1,"","<color=green>M�c S�u: <color> Ta �� n�i l� n� � Th�nh �� 412/303 r�i m�. H�y �i nhanh �i !")
elseif GetTask(157) == 6 then
Talk(1,"","<color=green>M�c S�u <color>: ��n Ph��ng T��ng t�m Ng�o V�n T�ng s� c� �ch ��y !")
else
Talk(1,"","<color=green>M�c S�u: <color> Ta kh�ng c� l�ng tham nh� bao ng��i kh�c ")
end
end


function nhannv()
SetTask(157,5)
Msg2Player("Nhi�m V�: Ti�u di�t L� M�c S�u gi� � Th�nh �� 412/303")
Talk(1,"","<color=green>M�c S�u: <color> L� M�c S�u gi� �ang � Th�nh �� 412/303. H�y gi�p ta nh� !")
end
function no()
end
