--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");
BASE_EXP=2000000
FACTOR_EXP=1500000
LOAITRAICAY = {
	{14,"B�"},
	{15, "B�n bon"},
	{16, "B��i"},
	{17, "Ch�m ch�m"},
	{18, "Chu�i"},
	{19, "��o"},
	{20, "D�u"},
	{21, "Kh�m"},
	{22, "D�a"},
	{23, "�u �� "},
	{24, "Kh� "},
	{25, "L� "},
	{26, "M�n"},
	{27, "M�ng c�t"},
	{28, "M�ng c�u"},
	{29, "Nh�n"},
	{30, "Cam"},
	{31, "T�o"},
	{32, "V�i"},
	{33, "Xo�i"},
};
function main(sel)
	local nTaskValue=GetTask(TASK_RESET4);
	if(SERVER_MODE == 1 or nTaskValue==999999999) then
	Talk(1,"",14661);
	return 1 end;
	SayNew(14661, 3,
	"Ta ��n giao �t tr�i c�y/ok_giao",
	"Ph�n th��ng n�p nhi�u/thuongnhieu",
	"Ta ch� gh� qua th�i/no");
end;

function ok_giao()
	GiveItemUI("Giao v�t ph�m","10 tr�i m�i lo�i, c�ng nhi�u ph�n th��ng c�ng l�n","kiemtra");
end;

function kiemtra()
	local TIndex, TGenre,TDetail,_,_,_,_,TStackNum = 0;
	for i = 0,5 do
		for j = 0, 3 do
		TIndex, TGenre,TDetail,_,_,_,_,TStackNum = FindItemEx(14,i,j);
		if (TIndex > 0 and TGenre == 2 and TStackNum>=10) then
			for i=1,getn(LOAITRAICAY) do
				if(TDetail==LOAITRAICAY[i][1]) then
					break;
					end;
			end;
			if(GetBit(GetTask(TASK_RESET4),i)==0) then
			SetTask(TASK_RESET4,SetBit(GetTask(TASK_RESET4),i,1));
			RemoveItem(TIndex,10)
			AddOwnExp(BASE_EXP);
			Msg2Player(format("B�n giao 10 %s nh�n ���c "..BASE_EXP.." �i�m kinh nghi�m kh�ng c�ng d�n",LOAITRAICAY[i][2]));
			end;
		end
		end
	end
	return 1;
end;

function thuongnhieu()
	local nTaskValue=GetTask(TASK_RESET4);
	if(nTaskValue==999999999) then
	return end;
	local nCount=0;
	for i=1,getn(LOAITRAICAY) do
		if(GetBit(GetTask(TASK_RESET4),i)==1) then
			nCount=nCount+1;
		end;
	end;
	if(nCount<2) then
	return end;
	local nAddExp=FACTOR_EXP*(nCount-1);
	AddOwnExp(nAddExp);
	Msg2Player("B�n nh�n ���c "..nAddExp.." kinh nghi�m kh�ng c�ng ��n");
	SetTask(TASK_RESET4,999999999);
end;