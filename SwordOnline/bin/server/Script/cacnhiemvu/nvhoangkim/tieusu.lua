function main()
if GetTask(157) == 22 then
	if GetItemCount(130) >= 1 and GetItemCount(131) >= 1 and GetItemCount(132) >= 1 and GetItemCount(133) >= 1 and GetItemCount(134) >= 1 then
		SetTask(157,23)
		DelItem(130)	
		DelItem(131)
		DelItem(132)
		DelItem(133)
		DelItem(134)
		Msg2Player("Nhi�m V�: Quay v� g�p Ng�o V�n T�ng ")
		Talk(1,"","<color=green>Ti�u S� <color>: Ng��i �� l� 1 s�t th�, ��n g�p Ng�o V�n T�ng �� ph�c m�nh ")
	else
	Talk(1,"","<color=green>Ti�u S� <color>: H�y mang 5 t�m S�t Th� L�nh ng� h�nh ��n cho ta ")
	end

else
Talk(1,"","<color=green>Ti�u S� <color> Ta ch� l� 1 ch�c nh� trong ti�u c�c n�y th�i !")
end
end
