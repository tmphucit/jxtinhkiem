idxQ = 0
function main(idx)
idxQ = idx
Say("Vui l�ng ch�n lo�i M�t N� mu�n ��i :",10,
"��o Thanh Ch�n Nh�n/doi",
"C� B�ch/doi",
"Ho�ng Li�t/doi",
"�o�n M�c Du� /doi",
"Chung Linh T� /doi",
"H� Linh Phi�u /doi",
"V��ng T� /doi",
"Huy�n Gi�c ��i S� /doi",
"Trang 2 /trang2",
"Tho�t ./no")
end

function no()
end

function trang2()
Say("Vui l�ng ch�n lo�i M�t N� mu�n ��i :",10,
"���ng B�t Nhi�m /doia",
"B�ch Doanh Doanh /doia",
"Thanh Tuy�t S� Th�i /doia",
"Y�n Hi�u Th�i /doia",
"H� Nh�n Ng� /doia",
"��n T� Nam/doia",
"Tuy�n C� T� /doia",
"H�n M�ng /doia",
"Trang 3/trang3",
"Tho�t./no")
end

function trang3()
Say("Vui l�ng ch�n lo�i M�t N� mu�n ��i :",10,
"X� T�m /doib",
"Thanh T� /doib",
"C� L�m S�t /doib",
"T� ��c V�n/doib",
"Th�ch H�ng/doib",
"Ti�u Linh T� /doib",
"Tr��ng T�ng Ch�nh/doib",
"Di�u Nh� /doib",
"Li�u Thanh Thanh/doib",
"Tho�t./no")
end

function doi(nsel)
choose(nsel+1+50)
end
function doia(nsel)
choose(nsel+9+50)
end
function doib(nsel)
choose(nsel+17+50)
end

function choose(i)
sl = GetItemCount(188)
DelItemIdx(idxQ);
if GetItemCount(188) == (sl-1) then
		AddItem(0,11,0,i,0,0,0)
		Msg2Player("B�n nh�n ���c  1 c�i  <color=yellow>M�t N� cao c�p ")
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end