function main()
if GetTask(157) == 4 then
SayNew("<color=green>M�c S�u: <color> Nghe giang h� ��n r�ng � ngo�i th�nh c� 1 t�n gi� m�o ta �i ho�nh h�nh kh�p n�i. ��i hi�p c� th� gi�p ta cho n� m�t b�i h�c ���c kh�ng ?",2,
"Ta s�n s�ng ti�u di�t n� /nhannv",
"Hi�n t�i ta ch�a c� r�nh /no")
elseif GetTask(157) == 5 then
Talk(1,"","<color=green>M�c S�u: <color> Ta �� n�i l� n� � Bi�n Kinh 232/219 r�i m�. H�y �i nhanh �i !")
elseif GetTask(157) == 6 then
Talk(1,"","<color=green>M�c S�u <color>: ��n Ph��ng T��ng t�m Ng�o V�n T�ng s� c� �ch ��y !")
Msg2Player("<color=green>[Nhi�m V� Ho�ng Kim] <color=red>��n Ph��ng T��ng 198/206 g�p Ng�o V�n T�ng �� nh�n nhi�m v� m�i !")
else
Talk(1,"","<color=green>M�c S�u: <color> Ta kh�ng c� l�ng tham nh� bao ng��i kh�c ")
end
end


function nhannv()
SetTask(157,5)
Msg2Player("<color=green>[Nhi�m V� Ho�ng Kim] <color=red>Ti�u di�t L� M�c S�u gi� � Bi�n Kinh 232/219")
Talk(1,"","<color=green>M�c S�u: <color> L� M�c S�u gi� �ang � Bi�n Kinh 232/219. H�y gi�p ta nh� !")
end
function no()
end
