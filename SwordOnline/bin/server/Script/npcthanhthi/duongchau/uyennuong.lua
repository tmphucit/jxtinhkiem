function main(sel)
	SayNew("B�n l� v�t T�t n�m Th�n, thi�p ch�c T�t ��y!",2,"Ta mu�n xem/yes","Kh�ng mua/no")
end;

function yes()
	SayNew("Trang ph�c nam ��n xu�n, trang ph�c n� m�ng tu�i, ��ng gi� l� 88888 l��ng!",3,"Nh�n �o m�i/male","�o m�ng tu�i/female","Kh�ng mua/no")
end;

function no()
	SayNew("Kh�ng mua c�ng kh�ng sao! N�m m�i g�p nhi�u may m�n",0)
end;

function male()
	if(CheckRoom(2,3)==0) then
	Talk(1,"","Kh�ch quan h�y x�p l�i h�nh trang tr��c �� ");
	return end;
	if(GetCash()>=88888)then
		AddItemID(AddItem(0,0,2,28,7,0,0,0))
		Pay(88888)
	else
		SayNew("Ti�n c�a kh�ch quan kh�ng ��, l�y �� ti�n r�i h�y ��n mua!",0)
	end
end;

function female()
	if(CheckRoom(2,3)==0) then
	Talk(1,"","Kh�ch quan h�y x�p l�i h�nh trang tr��c �� ");
	return end;
	if(GetCash()>=88888)then
		AddItemID(AddItem(0,0,2,28,8,0,0))
		Pay(88888)
	else
		SayNew("Ti�n c�a kh�ch quan kh�ng ��, l�y �� ti�n r�i h�y ��n mua!",0)
	end
end;
