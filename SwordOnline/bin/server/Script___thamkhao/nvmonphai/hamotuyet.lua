function main()
if GetTask(103) == 37 then
	Talk(3,"","<color=red>"..GetName().."<color>: <color=yellow>Ch�c T� Thanh<color> nh� ta �i c�u cha m�nh, nh�ng s�c m�nh c� h�n n�n ta qua nh� ng��i gi�p m�t tay ",
	"���c, ng��i h�y �i tr��c �i. Ta s� theo sau h� tr� ng��i ",
	"��n <color=red>L�m Du Quan 204/235<color> thu ph�c <color=yellow>��ch H�o Nhi�n ")
	Msg2Player("��n L�m Du Quan thu ph�c ��ch H�o Nhi�n 204/235")
	SetTask(103,38)
else
	Talk(1,"","<color=green>H� M� Tuy�t<color>: � ��i t� kh�ng th� th�ng ch�nh, ng��i h�y l�p th�t nhi�u chi�n t�ch v�o �t s� c� ng�y vinh danh ")
end
end