TimeTTL = 3*60*60*18
GioiHan = 9*60*60*18

function main(idx)
ngay = tonumber(date("%d"))

if GetTask(502) ~= ngay then
	SetTask(501,0)
	SetTask(502,ngay)
end
if GetTask(172) >= 24*60*60*18 then
Talk(1,"","Gi�i h�n c�ng ��n th�i gian Ti�n Th�o L� �� ��t 24 gi�, kh�ng th� s� d�ng th�m !")
return
end

if GetTask(501) >= 9*60*60*18 and GetLevel() >= 120 then
Talk(1,"","B�n �� nh�n ���c t�i �a 9gi� Ti�n Th�o L�, kh�ng th� s� d�ng th�m")
return
end

sl = GetItemCount(119)
if GetItemCount(119) >= 1 then
DelItemIdx(idx);
if GetItemCount(119) == (sl-1) then

GiaTri = TimeTTL
if GetTask(501) + GiaTri >= GioiHan and GetLevel() >= 120 then
	GiaTri = GioiHan - GetTask(501)
	Msg2Player("B�n c� th�m "..floor(GiaTri/ (60*18)).." ph�t nh�n ��i kinh nghi�m")
	Msg2Player("<color=yellow>L�u �: B�n b� m�t "..floor((TimeTTL - GiaTri)/ (60*18)).." ph�t do qu� gi�i h�n 9 gi� nh�n ��i kinh nghi�m.")
else
	Msg2Player("B�n c� th�m 3 gi� nh�n ��i kinh nghi�m")
end

if  GetTask(172) + GiaTri >= 24*60*60*18 then
giatrimat = GetTask(172) + GiaTri - 24*60*60*18
Msg2Player("<color=yellow>L�u �: B�n b� m�t "..floor(giatrimat/ (60*18)).." ph�t do qu� gi�i h�n 24 gi� c�ng d�n nh�n ��i kinh nghi�m.")
SetTask(172, 24*60*60*18)
else
SetTask(172, GetTask(172) + GiaTri)
end
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)
SetTask(501, GetTask(501) + GiaTri)
Msg2Player("Th�i gian nh�n ��i kinh nghi�m hi�n t�i: "..floor(GetTask(172)/18/60).." ph�t !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
