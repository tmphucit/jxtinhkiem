function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio == 21 then
	SayNew("<color=green>L� Quan<color>: Hi�n t�i �ang di�n ra s� ki�n <color=red>Th�p S�ng ��m R�m<color>: ",3,
	"Ta mu�n treo L�ng ��n K�o Qu�n /treolongden",
	"H��ng d�n s� ki�n /huongdan",
	"Tho�t./no")
else
	Talk(1,"","S� ki�n <color=red>Th�p S�ng ��m R�m<color> b�t ��u v�o l�c 21h00 - 22h00 m�i ng�y !")
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
"L�ng ��n treo th�nh c�ng nh�n ���c 40.000.000 kinh nghi�m, th�t b�i ���c 10 ph�t nh�n ��i kinh nghi�m ",
"M�i ng�y ch� ���c treo 3 l�ng ��n k�o qu�n")
end

function no()
end

function treolongden()
ngay = tonumber(date("%d"))
if floor(GetTask(321)/1000) ~= ngay then
SetTask(321, ngay*1000)
end

if GetItemCount(144) <= 0 then
Talk(1,"","B�n kh�ng mang theo <color=yellow>L�ng ��n K�o Qu�n<color>, kh�ng th� treo !")
return
end
if mod(GetTask(321),1000) >= 3 then
Talk(1,"","B�n �� ��t gi�i h�n 3 L�ng ��n K�o Qu�n v�o ng�y h�m nay")
return
end

sl = GetItemCount(144)
if GetItemCount(144) > 0 then
	DelItem(144)
	if GetItemCount(144) == sl - 1 then
		sx = random(1,100)
		if sx < 10 then
			h = tonumber(date("%H"))
			m = tonumber(date("%M"))
			s = tonumber(date("%S"))	
			AddPropObj(456)
			Msg2Player("Treo L�ng ��n K�o Qu�n th�nh c�ng !")
			for k=1,40 do AddOwnExp(1000000) end
			Msg2Player("B�n nh�n ���c <color=yellow>40.000.000 kinh nghi�m")
			SetTask(321, GetTask(321) + 1)
			Msg2Player("Gi�i h�n s� d�ng: "..mod(GetTask(321),1000).." / 3")
		else			
			Msg2Player("Treo L�ng ��n K�o Qu�n th�t b�i, vui l�ng th� l�i !")
			SetTask(172, GetTask(172) + 10*60*18)
			AddSkillEffect(460,1,GetTask(172))
			SetTask(141,1)
			Msg2Player("B�n nh�n ���c th�m 10 ph�t nh�n ��i kinh nghi�m. Th�i gian nh�n ��i hi�n t�i l�: <color=yellow>"..floor(GetTask(172)/18).." gi�y!")
		end

	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","hack ha em")
end


end