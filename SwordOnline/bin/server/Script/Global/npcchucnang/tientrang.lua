--hoangnhk
FUNC_MAIN = "chaohang"
function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 1) then--phuong tuong
	Talk(1,FUNC_MAIN,12235)
	return end
	if (w == 11) then--thanh do
	Talk(1,FUNC_MAIN,12235)
	return end
	if (w == 162) then--dai ly
	Talk(1,FUNC_MAIN,12235)
	return end
	if (w == 78) then--tuong duong
	Talk(1,FUNC_MAIN,RANDOM(15267,15268))
	return end
	if (w == 37) then--bien kinh
	Talk(1,FUNC_MAIN,14792)
	return end
	if (w == 80) then--duong chau
	Talk(1,FUNC_MAIN,15453)
	return end
	if (w == 176) then--lam an
	Talk(1,FUNC_MAIN,10831)
	return end
	Talk(1,FUNC_MAIN,12235)
end;

function chaohang()
	local MUA_BAOLIXI = "N�i n�y c� bao l� x� kh�ng?/xemhang"
	local OK_TRADE = "��i Kim Nguy�n B�o sang ti�n ��ng?/tiendong";
	local NOT_TRADE = "Nh�n ti�n gh� qua th�i/no";
	if(GetSex() == 0) then
	SayNew(10085,3,
		MUA_BAOLIXI,
		OK_TRADE,
		NOT_TRADE)
	else
	SayNew(10086,3,
		MUA_BAOLIXI,
		OK_TRADE,
		NOT_TRADE)
	end;
end;

function xemhang()
	SayNew(GetSex() == 0 and 10085 or 10086,3,
		"Ta mu�n ��i Ti�u H�ng Bao L� X�/doibaotieu",
		"Ta mu�n ��i ��i H�ng Bao L� X�/doibaodai",
		"Ta kh�ng c�n/no")
end;

function doibaotieu()
	if(GetCash() < 10000) then
	Talk(1,"","Ta c�n 10000 l��ng �� g�i bao l� x� ");
	return end;
	Pay(10000);
	local nNewItem=AddItemID(AddItem(0,6,14,0,0,5,0,0));
	Talk(1,"",format("%s nh�n ���c m�t %s ",GetSex() == 0 and "��i Hi�p" or "N� Hi�p", GetNameItem(nNewItem)));
end;

function doibaodai()
	if(GetCash() < 100000) then
	Talk(1,"","Ta c�n 100000 l��ng �� g�i bao l� x� ");
	return end;
	Pay(100000);
	local nNewItem=AddItemID(AddItem(0,6,13,0,0,5,0,0));
	Talk(1,"",format("%s nh�n ���c m�t %s ",GetSex() == 0 and "��i Hi�p" or "N� Hi�p", GetNameItem(nNewItem)));
end;

function tiendong()
	local nKNB = GetItemCount(0,4,343);
	if(nKNB < 1) then
		Talk(1,"",15290)
	return end
	local nNewItem = AddItemID(AddItem(0,4,417,0,0,5,0,0)) --tien dong 10 cai
	SetStackItem(nNewItem,10);
	DelItem(1,0,4,343)
	Msg2Player("B�n �� ��i ���c 10 ti�n ��ng.")
end;

function knb2van()
	local nKNB = GetItemCount(0,4,343);
	if(nKNB < 1) then
		Talk(1,"",15290)
	return end
	DelItem(1,0,4,343)
	Earn(2000000)
	Msg2Player("B�n �� ��i ���c 200 v�n ng�n l��ng.")
end;

function no()
end;
