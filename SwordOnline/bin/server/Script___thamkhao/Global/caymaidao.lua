function main()
SayNew("C�y mai, c�y ��o t��ng tr�ng cho ng�y t�t c� truy�n c�a d�n t�c. H�y d�ng nh�ng ch� ki�m ���c treo l�n c�y �� nh�n nhi�u may m�n.\n<color=green>!!!!!! Happy New Year !!!!!! ",2,
"Treo Ph�c L�c Th� /treochu",
"B� qua/no")
end

function no()
end

function treochu()
task = GetTask(102)
n1 = GetItemCount(219)
n2 = GetItemCount(220)
n3 = GetItemCount(221)

if GetTask(102) < 600 then
	if GetItemCount(219) >= 1 and GetItemCount(220) >= 1 and GetItemCount(221) >= 1 then
		DelItem(219)
		DelItem(220)
		DelItem(221)		
		SetTask(102,GetTask(102)+1)
		if GetItemCount(219) == n1 - 1 and GetItemCount(220) == n2 - 1 and GetItemCount(221) == n3-1 and GetTask(102) == task + 1 then
			for i=1,500 do AddOwnExp(1000) end
			Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m !")
			Msg2Player("Gi�i h�n s� ki�n treo ch� : "..GetTask(102).." / 600 b� !")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng mang �� b� ch� Ph�c - L�c - Th� ")
	end
else
	Talk(1,"","Gi�i h�n treo ch� c�a b�n �� ��t t�i �a 600 c�i !")
end
end