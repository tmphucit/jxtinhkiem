--hoangnhk
Include("\\script\\feature\\thongthuong\\tnduongchau.lua");

NEED_ROOM_EMPTY = "Qu� kh�ch h�y s�p x�p l�i h�nh trang."
ABOUT_FUYUAN = "Li�n quan ph�c duy�n/timhieu";
NOT_TRADE = "R�i kh�i/no";
function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 78) then--tuong duong
	SayNew(12409,3,
		"Giao d�ch/tuongduongsale",
		"Mua m�t n� gi�ng sinh/chr_buy",
		NOT_TRADE)
	return end
	if (w == 80) then--duong chau
	tnduongchau();
	return end
	if (w == 176) then--lam an
	SayNew(10852,3,
		"Mua v�t qu� T�y v�c/lamansale",
		--"Mua m�t n� gi�ng sinh/chr_buy",
		NOT_TRADE)
	return end
	SayNew(12409,2,
		--"Mua m�t n� gi�ng sinh/chr_buy",
		NOT_TRADE)
end;

function lamansale()
	SayNew(10095,3,
		"Mua B�ng T�m V� c�c t� [30 ti�n ��ng]/bangtam",
		"Mua Nam Minh Chi Tinh [25 ti�n ��ng]/namminh",
		NOT_TRADE)
end;

function bangtam()
	if(CheckRoom(1,1) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	if(GetItemCount(0,4,417) < 30) then	--tien dong
		Talk(1,"",10248)
	return end;
	AddItemID(AddItem(0,4,415,0,0,5,0,0))
	DelItem(30,0,4,417);
end;

function namminh()
	if(CheckRoom(1,1) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	if(GetItemCount(0,4,417) < 25) then	--tien dong
		Talk(1,"",10248)
	return end;
	AddItemID(AddItem(0,4,416,0,0,5,0,0))
	DelItem(25,0,4,417);
end;

function tuongduongsale()
	Sale(94,2)
end;

function chr_buy()
	local Yr,Mth,Dy,Hr,Mn,Se = GetTime();
	if(Mth == 12 and (Dy >= 23 and Dy<=26)) then
	SayNew("L� gi�ng sinh, ta c� hai b�o v�t cho ng��i, �� l� <color=red>�ng gi� N�en<color> v� <color=red>Thi�n s� gi�ng sinh<color>. N�u nh� mu�n mua 1 trong s� �� th� <color=red>399 v�n l��ng<color>, Mua c�ng l�c c� hai th� ch� c�n <color=red>688 v�n l��ng<color>. C�n do d� g� n�a ",4,"Mua m�t n� �ng gi� N� en (399 v�n) /mask","Mua m�t n� Thi�n s� gi�ng sinh(399 v�n) /mask","Mua c� hai(688 v�n) /mask_all","�� ta suy ngh�/no")
	else
		Talk(1,"","M�i n�m, t� ng�y <color=Yellow>23 ��n ng�y 26 th�ng 12<color> ta b�n c�c lo�i m�t n� gi�ng sinh, ng��i c� th� t�y � ��n mua");
	end;
end

function mask_all()
	if (GetCash() >= 6880000) then
		Pay(6880000)
		AddItemID(AddItem(0,0,11,70,0,0,0,0))
		AddItemID(AddItem(0,0,11,71,0,0,0,0))
		Msg2Player("Ng��i nh�n ���c 1 m�t n� ")
	else
		SayNew("Qu�n mang ti�n �? Kh�ng sao, ta � ��y ��i ng��i. Nh� quay l�i nhanh m�t ch�t",1,"���c !/no")
	end
end


function mask(msel)
	on_Pay = 3990000
	if (GetCash() >= 3990000) then
		Pay(3990000)
		if (msel == 0) then
			AddItemID(AddItem(0,0,11,70,0,0,0,0))
			Msg2Player("Ng��i nh�n ���c 1 m�t n� �ng gi� N� en")
		else
			AddItemID(AddItem(0,0,11,71,0,0,0,0))
			Msg2Player("Ng��i nh�n ���c 1 m�t n� Thi�n s� gi�ng sinh")
		end
	else
		SayNew("Qu�n mang ti�n �? Kh�ng sao, ta � ��y ��i ng��i. Nh� quay l�i nhanh m�t ch�t",1,"���c !/no")
	end
end

function timhieu()
end;

function no()
end;
