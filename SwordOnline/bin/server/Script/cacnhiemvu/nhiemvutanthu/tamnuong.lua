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



if GetTask(493) == 0 then
	SayNew("<color=green>Tam N��ng<color>: Hi�n t�i ta �ang n� ti�n c�a Th�ch B�o, ng��i h�y gi�p ta mang ti�n tr� nh� ? ",2,
	"Nh�n nhi�m v� chuy�n b�c /nhiemvutanthu",
	"Hi�n t�i ta �ang b�n, g�p ng��i sau nh� ./no")
elseif GetTask(493) == 1 then
Talk(1,"","Ng��i h�y gi�p ta mang b�c ��n <color=yellow>Nam Nh�c Tr�n 204/198<color> ��a cho Th�ch B�o")
elseif GetTask(493) == 2 then
SetTask(100, GetTask(100) + 3)
Msg2Player("Ho�n th�nh nhi�m v� Chuy�n B�c. Nh�n ���c: <color=yellow>3 Danh V�ng")
SetTask(493,3)
Talk(1,"","Qua Ba L�ng Huy�n 204/200 g�p Tr��ng C�nh c� vi�c c�n gi�p")
elseif GetTask(493) == 5 then
SetTask(100, GetTask(100) + 5)
Msg2Player("Ho�n th�nh nhi�m v� H�i Thu�c. Nh�n ���c: <color=yellow>5 Danh V�ng")
SetTask(493,6)
Talk(1,"","Qua  Ba L�ng Huy�n 190/181 g�p Con G�i V� S� �� nh�n nhi�m v� ")
elseif GetTask(493) == 9 then
SetTask(100, GetTask(100) + 7)
Msg2Player("Ho�n th�nh nhi�m v� ��a C�m. Nh�n ���c: <color=yellow>7 Danh V�ng")
SetTask(493,10)
else
Talk(1,"","Ng��i �� nh�n nhi�m v� r�i m�, h�y nhanh ch�n �i l�m �i !")
end
end

function no()
end
function nhiemvutanthu()
SetTask(493,1)
idxitem = AddEventItem(637)
SetBindItem(idxitem , 1)
Talk(1,"","H�y mang b�c ��n Nam Nh�c Tr�n 204/198 �� tr� cho Th�ch B�o")
Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Nh�n nhi�m v� mang b�c ��n Nam Nh�c Tr�n 204/198 �� tr� cho Th�ch B�o")
end