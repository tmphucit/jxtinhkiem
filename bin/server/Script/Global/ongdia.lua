function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio == 20 or gio == 21 then
	Say("<color=green>L� Quan<color>: Hi�n t�i �ang di�n ra s� ki�n <color=red>Th�p S�ng ��m R�m<color>: ",4,
	"Ta mu�n treo L�ng ��n K�o Qu�n /treolongden",
	"Ki�m tra th�i gian h� tr� L�ng ��n K�o Qu�n /kiemtra",
	"H��ng d�n s� ki�n /huongdan",
	"Tho�t./no")
else
	Talk(1,"","S� ki�n <color=red>Th�p S�ng ��m R�m<color> b�t ��u v�o l�c 20h00 - 22h00 m�i ng�y !")
end
end

function kiemtra()
if GetTask(107) == 0 then
	Talk(1,"","Hi�n t�i th�i gian h� tr� L�ng ��n K�o Qu�n �� h�t !")
else
	Talk(1,"","Hi�n t�i b�n c�n <color=red>"..floor(GetTask(107)/18).."<color> gi�y h� tr� t� L�ng ��n K�o Qu�n !")
end
end
function huongdan()
Talk(3,"","X�c su�t treo th�nh c�ng L�ng ��n K�o Qu�n l� 10%, khi th�nh c�ng s� xu�t hi�n l�ng ��n � v� tr� c�a b�n",
"L�ng ��n treo th�nh c�ng s� h� tr� nh�n 1.5 l�n kinh nghi�m s� d�ng B�nh Trung Thu ",
"Khi h�t t�c d�ng, h� th�ng s� kh�ng th�ng b�o ")
end

function no()
end

function treolongden()
if GetItemCount(137) <= 0 then
Talk(1,"","B�n kh�ng mang theo <color=yellow>L�ng ��n K�o Qu�n<color>, kh�ng th� treo !")
return
end
sl = GetItemCount(137)
if GetItemCount(137) > 0 then
	DelItem(137)
	if GetItemCount(137) == sl - 1 then
		sx = random(1,100)
		if sx < 5 then
			h = tonumber(date("%H"))
			m = tonumber(date("%M"))
			s = tonumber(date("%S"))	
			SetTask(107,2*60*18)
			AddPropObj(456)
			Msg2Player("Treo L�ng ��n K�o Qu�n th�nh c�ng !")
			Msg2Player("<color=pink>B�n ���c h��ng 120 gi�y nh�n 1.5 kinh nghi�m s� d�ng B�nh Trung Thu. Th�i gian k�t th�c: "..h.." gi� "..(m+2).." ph�t "..s.." gi�y !")
			
		else			
			Msg2Player("Treo L�ng ��n K�o Qu�n th�t b�i, vui l�ng th� l�i !")
		end

	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","hack ha em")
end


end