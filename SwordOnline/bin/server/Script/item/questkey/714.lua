
idxitem = 714

function main(idxitem)
dofile("script\\item\\questkey\\714.lua")
-- if GetTask(777) >= 1 then
	-- Talk(1,"","Ng��i �� nh�n r�i kh�ng th� nh�n l�i n�a !")
	-- return
-- end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	if(GetFightState() == 1) then
	-- Talk(1,"","T�nh n�ng t�m kh�a ��i c�p nh�t t�nh n�ng m�i thay th� !")
		Talk(1,"","Ch� c� th� s� d�ng khi �ang � c�c th�nh th� or th�n.")
	return 
	end
SayNew("Ch�n lo�i trang b� m�nh mu�n: ",2,
"V� kh� c�n chi�n /tbxanh_vukhi_ruong",
"V� kh� t�m xa /tbxanh_tamxa_ruong",
-- "Ao /tbxanh1",
-- "Nh�n /tbxanh1",
-- "D�y Chuy�n /tbxanh1",
-- "Gi�y /tbxanh1",
-- "Th�t l�ng /tbxanh1",
-- "N�n /tbxanh1",
-- "Bao Tay/tbxanh1",
-- "Ng�c B�i/tbxanh1",
"Tho�t/no")
	DelItemIdx(idxitem);
end

function tbxanh_tamxa_ruong()
SayNew("Ch�n lo�i v� kh�",4,
"Phi Ti�u /tbxanh_tamxa3",
"Phi �ao /tbxanh_tamxa3",
"N� /tbxanh_tamxa3",
"Quay l�i./main")
end

function tbxanh_vukhi_ruong()
SayNew("Ch�n lo�i v� kh�",7,
"Ki�m /tbxanh_vukhi3",
"�ao /tbxanh_vukhi3",
"B�ng /tbxanh_vukhi3",
"Th��ng /tbxanh_vukhi3",
"Ch�y /tbxanh_vukhi3",
"Song �ao /tbxanh_vukhi3",
"Quay l�i./main")
end
function tbxanh_vukhi3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh_vukhi4",
"M�c /tbxanh_vukhi4",
"Th�y/tbxanh_vukhi4",
"H�a /tbxanh_vukhi4",
"Th� /tbxanh_vukhi4",
"Quay l�i./tbxanh_vukhi_ruong")
end
function tbxanh_tamxa3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh_tamxa4",
"M�c /tbxanh_tamxa4",
"Th�y/tbxanh_tamxa4",
"H�a /tbxanh_tamxa4",
"Th� /tbxanh_tamxa4",
"Quay l�i./tbxanh_tamxa_ruong")
end

function tbxanh_vukhi4(nsel)
id = GetTaskTemp(1)
idxitem = AddItem(0,0,id,10,nsel,9,1)
-- SetTimeItem(idxitem,550324);
-- SetTask(777,1)
end

function tbxanh_tamxa4(nsel)
id = GetTaskTemp(1)
idxitem = AddItem(0,1,id,10,nsel,9,1)
-- SetTimeItem(idxitem,550324);
-- SetTask(777,1)
end

function no()

end