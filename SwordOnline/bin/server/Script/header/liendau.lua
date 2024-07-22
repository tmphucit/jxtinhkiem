MAP_LIENDAU= {
397,
399,
401,
403,
405,
407,
409,
411,
413,
415,
535,
536,
537,
538,
541,
543,
545,
547,
549,
551,
553,
555,
557,
559
};

LIENDAU_THANG = 10
LIENDAU_HOA = 4
LIENDAU_MAX = 48
LIENDAU_MSGBOCUOC = "Ch�c m�ng! ��i th� b� cu�c, b�n �� gi�nh th�ng l�i!"
LIENDAU_MSGWIN = "Ch�c m�ng! B�n �� to�n th�ng tr�n n�y!"
LIENDAU_MSGWINTIME = "Th�i gian thi ��u �� h�t! Ph�n th�ng nghi�ng v� ph�a b�n!"
LIENDAU_MSGSAME = "H�t th�i gian! Tr�n n�y h�a!"

function kiemtra()
	SayNew(10046,3,
	"Ki�m tra chi�n ��i c�a m�nh/xemminh",
	"Xem 10 chi�n ��i d�n ��u/top10",
	"Tho�t/no")
end;

function xemminh()
	local nTaskValue = GetTask(TASK_LIENDAU)
	if(nTaskValue < 1) then
		Talk(1,"",10038)
	return end;
	showthanhtich(nTaskValue-1)
end;

function top10()
	local nGroup = GetDataInt(1);
	if(nGroup == 0) then
	Talk(1,"",10055)
	return end
	local strTab = {};
	local count = 1;
	local nameid,nValue1,nPoint,nTime,nRank,Name1,Name2;
	for i=1,10 do
	nGroup = GetDataInt(i)
	if(nGroup > 0) then
	nameid,nValue1,nPoint,nTime,nRank,Name1,Name2 = GetDataGr(nGroup-1);
	strTab[count] = format("H�ng th� %d %s/seltop",i,Name1);
	count = count +1;
	end
	end
	if(count == 1) then
	return end
	strTab[count] = "��ng/no"
	SayNew(10080, count,strTab)
	
end;

function seltop(sel)
	local nSel = sel + 1
	local nGroup = GetDataInt(nSel)
	showthanhtich(nGroup-1)
end;

function showthanhtich(nGroup)
	local nameid,nValue1,nPoint,nTime,nRank,Name1,Name2 = GetDataGr(nGroup);
	if(nameid == 0) then
	return end;
	
	local nThang = GetNumber(3,nValue1,1);
	local nHoa = GetNumber(3,nValue1,2);
	local nThua = GetNumber(3,nValue1,3);
	local nTotal = nThang+nHoa+nThua
	local nRate;
	if(nTotal > 0) then
		nRate = floor(nThang*100/nTotal);
	else
		nRate = 0;
	end
	local szNo = format("%d",nRank);
	if(szNo == "0") then
	szNo = "?";
	end
	local str = format(
	"<color=Gold><npc><color>:\nV� l�m li�n ��u chi�n ��i <color=Yellow>%s<color>\nTh�nh vi�n ��i chi�n ��u: <color=cyan>%s %s<color>\n�� tham gia %d tr�n ��u: <color=Green>th�ng %d tr�n<color>, <color=Yellow>h�a %d tr�n<color>, <color=Red>th�t b�i %d tr�n<color>\nT� l� th�ng: <color=Yellow>%d%%<color>\n�i�m th��ng: <color=Yellow>%d<color>\nTh�i gian tham gia chi�n ��u: <color=Yellow>%d gi�y<color>\nX�p h�ng th�: <color=Green>%s<color>",
	Name1,Name1,Name2,nTotal,nThang,nHoa,nThua,nRate,nPoint,nTime,szNo);
	SayNew("LINK:<npc>",0,str,1,"K�t th�c ��i tho�i/no");
end;

function nhom()
	Talk(1,"",10020)
end;

function hotro()
	SayNew("Lo�i h�nh thi ��u l�n n�y l� <color=red>��n ��u t� do<color>.",2,
	"Ti�p t�c t�m hi�u/tieptuchd",
	"Ta r� r�i/no")
end;

function tieptuchd()
	Talk(4,"endhd",10015,10016,10017,10018)
end;

function endhd()
	SayNew(10019,1,
	"Ta �� r� r�i/no")
end;