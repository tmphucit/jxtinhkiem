function main()
ngay = tonumber(date("%d"))
if GetTask(482) ~= ngay then
	SetTask(482, ngay)
	SetTask(493,0)
	SetTask(494,0)
	SetTask(495,0)
	SetTask(496,0)
	for i=632,638 do
			for p=1,GetItemCount2(i) do
				DelAllItem(i)
			end	
	end
	Msg2Player("Reset nhi�m v� t�n th� ")
end

if GetTask(495) == 0  then
SayNew("<colorr=green>C� Di ��a<color>:  Ng��i h�y qua Thanh Th�nh S�n t�m Ng��i B�n D�a H�u, nghe n�i c� �y �ang c�n ng��i gi�p",2,
"Nh�n nhi�m v� gi�p Ng��i B�n D�a H�u /nhannv1",
"Kh�ng c� g�, ta ch� h�i th�m th�i/no")
elseif GetTask(495) == 1 then
Talk(1,"","Nh�n nhi�m v� ��n <color=yellow>Thanh Th�nh S�n 314/265<color> t�m Ng��i B�n D�a H�u ")
elseif GetTask(495) == 2 then
Talk(1,"","Ng��i ch�a ti�u di�t �� 15 con K�n K�n cho Ng��i B�n D�a H�u, ��n ��y l�m g�?")
elseif GetTask(495) == 3 then
tranv1()
elseif GetTask(495) == 4 then
	Talk(1,"","Qua Giang T�n Th�n 438/384 g�p V��ng ��c Ph�c, �ng ta c� chuy�n c�n ng��i gi�p �� ")
elseif GetTask(495) == 6 then
tranv2()
elseif GetTask(495) == 7 then
	Talk(1,"","G�p T� ��ng t�i 430/389, h�n ta �ang r�t c�n ng��i t�m nguy�n li�u")
elseif GetTask(495) == 9 then
tranv3()
	
	
else
Talk(1,"","abcxvy")
end
end
function tranv3()
	SetTask(495,10)
	SetTask(100, GetTask(100) + 7)
	Talk(1,"","Ho�n th�nh nhi�m v� Khai Th�c Kho�ng V�t. Nh�n ���c: <color=yellow>7 �i�m Danh V�ng")
	
end

function tranv2()
	SetTask(495,7)
	SetTask(100, GetTask(100) + 5)
	Talk(1,"","Ho�n th�nh nhi�m v� Ti�u Di�t Qu�i. Nh�n ���c: <color=yellow>5 �i�m Danh V�ng")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Ti�p t�c nhi�m v� g�p T� ��ng 430/389  ")
end
function nhannv1()
SetTask(495,1)
Talk(1,"","H�y ��n Thanh Th�nh S�n 314/265 t�m Ng��i B�n D�a H�u, c� �y c� chuy�n c�n ng��i gi�p")
Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> ��n Thanh Thanh S�n 314/265 t�m Ng��i B�n D�a H�u")
end

function tranv1()
	if GetItemCount(634) >= 1 then
		DelItem(634)
		SetTask(495,4)
		SetTask(100, GetTask(100) + 3)
		Talk(1,"","Nhi�m v� ho�n th�nh. Nh�n ���c: <color=yellow>3 �i�m Danh V�ng")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red>Ti�p t�c nhi�m v� qua g�p V��ng ��c Ph�c t�i Giang T�n Th�n 438/384")
	else
		Talk(1,"","Ng��i kh�ng mang theo d�a h�u, kh�ng th� ho�n th�nh nhi�m v� ")
	end
end

function no()
end