function main()
SayNew("<color=green>D��c �i�m - ��i H�i Anh H�ng<color>",2,
"Ta mu�n nh�n H�i Thi�n T�i T�o ��n /nhanhoithien",
"Tho�t./no")
end

function nhanhoithien()
	for i=1,20 do
		idxitem = AddItem(1,10,0,3,0,0,0)
		SetItemLock(idxitem)
	end	
	Msg2Player("B�n nh�n ���c 20 b�nh H�i Thi�n T�i T�o ��n")
end

function no()

end