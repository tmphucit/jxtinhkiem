--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");
END_TALK = "K�t th�c ��i tho�i/no";
RESET_TALK = "��i hi�p s� ���c x�a c�i ��t m�t m� v�o ng�y <color=Yellow>%s<color> n�u sau 24h ng�y <color=Yellow>%s<color> kh�ng x�c nh�n th� ��ng k� x�a c�i ��t m�t m� s� b� h�y b� ";
function main(NpcIndex)
	if(SERVER_MODE == 1) then
	Talk(1,"",SERVER_NOTICE)
	return end
	local LEQUAN_ANSWER = {};
	tinsert(LEQUAN_ANSWER,"X�a c�i ��t m�t m�/xoamakhoa");
	--if(GetLocalDate("%w")==1) then-- thu2 hang tuan
	tinsert(LEQUAN_ANSWER,"H�y ��o c� kh�a v�nh vi�n/huyvp");
	--end;
	tinsert(LEQUAN_ANSWER,END_TALK);
	SayNew("LINK:<npc>",0, 11316,getn(LEQUAN_ANSWER),
		LEQUAN_ANSWER)	
end

function huyvp()
	if(GetLockState()==1) then
		Msg2Player("B�n ph�i m� kh�a b�o v� tr��c, m�i c� th� h�y trang b�");
	end;
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m", "huyvp1", "onCancel" )
end

function huyvp1()
	local count,nFIndex,nFGenre = 0;
	for i = 0,5 do
		for j = 0, 9 do
		nFIndex,nFGenre = FindItemEx(14,i,j);
		if (nFIndex > 0 and nFGenre==0 and GetLockItem(nFIndex) == -2) then--trang bi, khoa vinh vien
			RemoveItem(nFIndex, 1)
			count=count+1;
		end
		end
	end
	if count>0 then
		Msg2Player(format("��i hi�p v�a h�y th�nh c�ng %d v�t ph�m",count));
	end
	return 1;
end

function xoamakhoa()
	local nTaskValue = GetTask(TASK_THOIGIAN7);
	if (GetNumber(4,nTaskValue, 2) > 0) then
	SayNew("��i hi�p t�m ta c� vi�c g�?", 3,
	"Xem th�i gian ho�n th�nh x�a c�i ��t m�t m�/ktthoigian",
	"H�y x�a c�i ��t m�t m�/huyxoa",
		END_TALK)	
	else
	SayNew("��i hi�p t�m ta c� vi�c g�?", 2,
	"��ng k� x�a c�i ��t m�t m�/xnxoa",
		END_TALK)	
	end
end

function xnxoa()
	local nValue = GetCurServerSec()+7*24*60*60;
	SetTask(TASK_THOIGIAN7, nValue);
	local szMsg = GetTimeDate("%Y-%m-%d %H:%M:%S", nValue);
	Talk(1, "", format(RESET_TALK, szMsg, szMsg));
end

function ktthoigian()
	local nValue = GetTask(TASK_THOIGIAN7);
	local szMsg = GetTimeDate("%Y-%m-%d %H:%M:%S", nValue);
	Talk(1, "", format(RESET_TALK, szMsg, szMsg));
end

function huyxoa()
	SetTask(TASK_THOIGIAN7,0);
	Msg2Player("H�y b� x�a c�i ��t m�t m�");
end

function no()
end;
