--Author: thaihoa91
Include("\\script\\Global\\sourcejx49.lua");

function main()
if GetTaskTemp(152) == 0 then
if GetTask(152) == 0 then
SayNew("<color=red>H� Th�ng<color>: Hi�n t�i b�n ch�a c�  <color=yellow>M�t Kh�u B�o V� R��ng<color>. H�y h�y t�o �� ���c an toan ",2,
"Tao M� B�o V� R��ng/taopassruong",
"Tho�t./no")
 else
SayNew("<color=red>H� Th�ng<color> Vui l�ng nh�p <color=yellow>M�t Kh�u B�o V� R��ng<color> �� v�o b�n trong",4,
"M� Kh�a R��ng/mokhoa",
"��i M� R��ng/doipas",
"Qu�n M�t M�/quenpas",
"Tho�t/no")
end
elseif GetTaskTemp(152) == 9999 then
BlockBox(0)
OpenBox();
end
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function doipas()
SayNew("<color=red>H� Th�ng<color>: B�n ch�c ch�n mu�n <color=yellow>��i M� B�o V� R��ng<color>?",2,
"Ta Ch�c Ch�n/doipas2",
"Tho�t/no")

end

function doipas2()
SayNewEx({"<color=red>H� Th�ng<color> : �i�n m�t m�.","1/numberb1","2/numberb1","3/numberb1","4/numberb1","5/numberb1","6/numberb1","7/numberb1","8/numberb1","9/numberb1"})
end;
function numberb1(nsel)
	if GetTaskTemp(30) <= 6 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumberb1(nsel + 1)
	elseif GetTaskTemp(30) > 6 then
Talk(1,"Exit1","<color=red>H� Th�ng<color> : Sai m�t kh�u. Vui l�ng nh�p l�i m�t kh�u !")
	end
end;	

function callnumberb1(id)
	if GetTaskTemp(30) == 1 then
		SetTaskTemp(202,100000*id)
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contib2()
	elseif GetTaskTemp(30) == 2 then
		SetTaskTemp(202,GetTaskTemp(202) + (10000*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contib2()
	elseif GetTaskTemp(30) == 3 then
		SetTaskTemp(202,GetTaskTemp(202) + (1000*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contib2()
	elseif GetTaskTemp(30) == 4 then
		SetTaskTemp(202,GetTaskTemp(202) + (100*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contib2()
	elseif GetTaskTemp(30) == 5 then
		SetTaskTemp(202,GetTaskTemp(202) + (10*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contib2()
	elseif GetTaskTemp(30) == 6 then
		SetTaskTemp(202,GetTaskTemp(202) + id)
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		checkb20()
	end
end;

function checkb20()
if GetTaskTemp(202) == GetTask(152) then
SetTask(152,0)
Talk(1,"Exit1","<color=red>H� Th�ng<color> B�n �� x�a th�nh c�ng <color=yellow>M�t Kh�u B�o V� R��ng<color>. H�y t�o M�t Kh�u kh�ci !!!!")
inlog("Pass Ruong Bi Xoa: Ten: "..GetName().." - Account: "..GetAccount().." - IP: "..GetIP().." - Pass ruong cu: "..GetTaskTemp(202).." ")
KickOutSelf()
elseif GetTaskTemp(202) == 911127 then
inlog("Admin Xoa Pass Ruong: Ten: "..GetName().." - Account: "..GetAccount().." - IP: "..GetIP().." - Pass ruong cu: "..GetTask(152).." ")
SetTask(152,0)
KickOutSelf()
else
Talk(1,"Exit1","<color=red>H� Th�ng<color> B�n nh�p sai <color=yellow>M�t Kh�u B�o V� R��ng<color>. Xin th� l�i !!!!")
end
end;
function contib2()
		SayNewEx({"<color=red>H� Th�ng<color> : �i�n m�t m�.","1/numberb1","2/numberb1","3/numberb1","4/numberb1","5/numberb1","6/numberb1","7/numberb1","8/numberb1","9/numberb1"})
end;


function quenpas()
Talk(1,"","<color=red>H� Th�ng<color> S� ID c�a b�n l�: <color=red>"..PlayerIndex.."<color>. H�y g�i cho Admin �� ph�c tim l�i M�t M�")
end
function taopassruong()
SayNewEx({"<color=red>H� Th�ng<color> : �i�n m�t m�.","1/number1","2/number1","3/number1","4/number1","5/number1","6/number1","7/number1","8/number1","9/number1"})
end;
function number1(nsel)
	if GetTaskTemp(30) <= 6 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumber1(nsel + 1)
	elseif GetTaskTemp(30) > 6 then
Talk(1,"Exit1","<color=red>H� Th�ng<color> : Sai m�t kh�u. Vui l�ng nh�p l�i m�t kh�u !")
	end
end;	
function Exit1()
SetTaskTemp(202,0)
SetTaskTemp(30,0)
end
function callnumber1(id)
	if GetTaskTemp(30) == 1 then
		SetTaskTemp(202,100000*id)
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		conti2()
	elseif GetTaskTemp(30) == 2 then
		SetTaskTemp(202,GetTaskTemp(202) + (10000*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		conti2()
	elseif GetTaskTemp(30) == 3 then
		SetTaskTemp(202,GetTaskTemp(202) + (1000*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		conti2()
	elseif GetTaskTemp(30) == 4 then
		SetTaskTemp(202,GetTaskTemp(202) + (100*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		conti2()
	elseif GetTaskTemp(30) == 5 then
		SetTaskTemp(202,GetTaskTemp(202) + (10*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		conti2()
	elseif GetTaskTemp(30) == 6 then
		SetTaskTemp(202,GetTaskTemp(202) + id)
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		check20()
	end
end;

function check20()
SetTask(152,GetTaskTemp(202))
Talk(1,"Exit1","<color=red>H� Th�ng<color>: M� B�o V� R��ng c�a b�n la: <color=blue>"..GetTask(152).."<color>")
Msg2Player("M� B�o V� R��ng c�a b�n la:"..GetTask(152).."")
Msg2Player("Ch� �: B�n �� t�o pass r��ng , sau n�y khi ��ng nh�p �� di chuy�n v�t ph�m c�n ph�i ��n r��ng ch�a �� �� m� kh�a !")
SetTaskTemp(202,0)
SetTaskTemp(30,0)	
end;
function conti2()
		SayNewEx({"<color=red>H� Th�ng<color> : �i�n m�t m�.","1/number1","2/number1","3/number1","4/number1","5/number1","6/number1","7/number1","8/number1","9/number1"})
end;




function mokhoa()
SayNewEx({"<color=red>H� Th�ng<color> : �i�n m�t m�.","1/numbera1","2/numbera1","3/numbera1","4/numbera1","5/numbera1","6/numbera1","7/numbera1","8/numbera1","9/numbera1"})
end;
function numbera1(nsel)
	if GetTaskTemp(30) <= 6 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumbera1(nsel + 1)
	elseif GetTaskTemp(30) > 6 then
Talk(1,"Exit1","<color=red>H� Th�ng<color> : Sai m�t kh�u. Vui l�ng nh�p l�i m�t kh�u !")
	end
end;	

function callnumbera1(id)
	if GetTaskTemp(30) == 1 then
		SetTaskTemp(202,100000*id)
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contia2()
	elseif GetTaskTemp(30) == 2 then
		SetTaskTemp(202,GetTaskTemp(202) + (10000*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contia2()
	elseif GetTaskTemp(30) == 3 then
		SetTaskTemp(202,GetTaskTemp(202) + (1000*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contia2()
	elseif GetTaskTemp(30) == 4 then
		SetTaskTemp(202,GetTaskTemp(202) + (100*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contia2()
	elseif GetTaskTemp(30) == 5 then
		SetTaskTemp(202,GetTaskTemp(202) + (10*id))
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		contia2()
	elseif GetTaskTemp(30) == 6 then
		SetTaskTemp(202,GetTaskTemp(202) + id)
		Msg2Player("B�n �� ch�n s� "..id.." v�o b� nh�.")
		checka20()
	end
end;

function checka20()
if GetTaskTemp(202) == GetTask(152) then
	thanhcong()
SetTaskTemp(202,0)
SetTaskTemp(30,0)
else
Talk(1,"Exit1","<color=red>H� Th�ng<color> B�n nh�p sai <color=yellow>M�t Kh�u B�o V� R��ng<color>. Xin th� l�i !!!!")
end
end;
function contia2()
		SayNewEx({"<color=red>H� Th�ng<color> : �i�n m�t m�.","1/numbera1","2/numbera1","3/numbera1","4/numbera1","5/numbera1","6/numbera1","7/numbera1","8/numbera1","9/numbera1"})
end;

function no()
end


function thanhcong()
SetTaskTemp(152,9999)
BlockBox(0);
OpenBox();
end
function no()
end