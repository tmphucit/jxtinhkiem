
Include("\\script\\admin\\monphai.lua")
function main(idx)
DelItemIdx(idx);
SetTask(162,GetTask(162)+10)
Msg2Player("�i�m Ph�c duy�n c�a b�n hi�n t�i l�: "..GetTask(162).." �i�m")
end

