---------------------------------------------------------
----Author: DNTmaster
---------------------------------------------------------
Include("\\Script\\global\\serverlib.lua");
Include("\\Script\\Global\\tientrang.lua");
Include("\\Script\\global\\sourcejx49.lua");

KNBTOSETPASS = 0	--So KNB can dung de dat pass ruong

can="Thoat./Exit1"

function passruongac()
OpenBox()
end;

function lapmaruong()
if GetTask(30) > 1 then
Msg2Player("Ban da co ma ruong roi khong the lap duoc. Hay xoa ma ruong de co the lap lai ma moi...")
else
SayEx({"<color="..colorS()..">Bao Ruong<color> :Server Ho Tro Lam Pass Ruong Mien Phi","Vang ta muon lap ma ruong./lapmaruong1","Quay lai./main",can})
end
end;

function lapmaruong1()
SayEx({"<color="..colorS()..">Bao Ruong<color> : dien mat ma.","1/number","2/number","3/number","4/number","5/number","6/number","7/number","8/number","9/number"})
end;

function number(nsel)
	if GetTaskTemp(30) <= 4 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumber(nsel + 1)
	elseif GetTaskTemp(30) > 4 then
	Msg2Player("Thoat nhan vat de co the lap lai mat ma...")
	end
end;

function callnumber(id)
	if GetTaskTemp(30) == 1 then
		SetTask(30,1000*id)
		Talk(1,"conti","<color="..colorS()..">Bao Ruong<color> : Ban da chon so "..id.." vao bo nho.")
	elseif GetTaskTemp(30) == 2 then
		SetTask(30,GetTask(30) + (100*id))
		Talk(1,"conti","<color="..colorS()..">Bao Ruong<color> : Ban da chon so "..id.." vao bo nho.")
	elseif GetTaskTemp(30) == 3 then
		SetTask(30,GetTask(30) + (10*id))
		Talk(1,"conti","<color="..colorS()..">Bao Ruong<color> : Ban da chon so "..id.." vao bo nho.")
	elseif GetTaskTemp(30) == 4 then
		SetTask(30,GetTask(30) + id)
		if GetTask(30) == 1111 or GetTask(30) == 1234 or GetTask(30) < 1000 then
		SetTask(30,0)
		Talk(1,"","Pass ruong Qua Don Gian. Tao Lai Di")
		else
		Talk(2,"Exit1","<color="..colorS()..">Bao Ruong<color> : Ban da chon so "..id.." vao bo nho.","<color="..colorS()..">Bao Ruong<color> : Mat ma ruong cua ban la "..GetTask(30)..".")
		end
	end
end;

function conti()
		SayEx({"<color="..colorS()..">Bao Ruong<color> : dien mat ma.","1/number","2/number","3/number","4/number","5/number","6/number","7/number","8/number","9/number"})
end;

function conti2()
		SayEx({"<color="..colorS()..">Bao Ruong<color> : dien mat ma.","1/number1","2/number1","3/number1","4/number1","5/number1","6/number1","7/number1","8/number1","9/number1"})
end;

function conti3()
		SayEx({"<color="..colorS()..">Bao Ruong<color> : dien mat ma.","1/number2","2/number2","3/number2","4/number2","5/number2","6/number2","7/number2","8/number2","9/number2"})
end;


function moruong()
if GetTask(30) > 1 then
	mokhoaruong()
else
	OpenBox();
end
end;

function damo()
OpenBox();
end;

function mokhoaruong()
SayEx({"<color="..colorS()..">Bao Ruong<color> : dien mat ma.","1/number1","2/number1","3/number1","4/number1","5/number1","6/number1","7/number1","8/number1","9/number1"})
end;
function number1(nsel)
	if GetTaskTemp(30) <= 4 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumber1(nsel + 1)
	elseif GetTaskTemp(30) > 4 then
	Msg2Player("Thoat nhan vat de co the nhap lai mat ma...")
	end
end;	

function callnumber1(id)
	if GetTaskTemp(30) == 1 then
		SetTaskTemp(202,1000*id)
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		conti2()
	elseif GetTaskTemp(30) == 2 then
		SetTaskTemp(202,GetTaskTemp(202) + (100*id))
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		conti2()
	elseif GetTaskTemp(30) == 3 then
		SetTaskTemp(202,GetTaskTemp(202) + (10*id))
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		conti2()
	elseif GetTaskTemp(30) == 4 then
		SetTaskTemp(202,GetTaskTemp(202) + id)
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		check20()
	end
end;

function check20()
	if GetTaskTemp(202) == GetTask(30) then
		Exit1()
		damo()
	else
		Talk(1,"Exit1","<color="..colorS()..">Bao Ruong<color> : Ban da dien sai mat ma.Xin hay nhap lai chinh xac...")
	end
end;

function Exit1()
SetTaskTemp(30,0)
end;
	
function xoamaruong()
if GetTask(30) > 1 then
SayEx({"<color="..colorS()..">Bao Ruong<color> : Day dien mat ma ruong de xoa mat ma...","Dien mat ma vao./conti3",can})
else
Msg2Player("Ban chua lap ma ruong nen khong the xoa ma ruong...")
end
end;


function number2(nsel)
	if GetTaskTemp(30) <= 4 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumber2(nsel + 1)
	elseif GetTaskTemp(30) > 4 then
	Msg2Player("Thoat nhan vat de co the nhap lai mat ma...")
	end
end;	

function callnumber2(id)
	if GetTaskTemp(30) == 1 then
		SetTaskTemp(302,1000*id)
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		conti3()
	elseif GetTaskTemp(30) == 2 then
		SetTaskTemp(302,GetTaskTemp(302) + (100*id))
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		conti3()
	elseif GetTaskTemp(30) == 3 then
		SetTaskTemp(302,GetTaskTemp(302) + (10*id))
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		conti3()
	elseif GetTaskTemp(30) == 4 then
		SetTaskTemp(302,GetTaskTemp(302) + id)
		Msg2Player("Ban da chon so "..id.." vao bo nho.")
		Exit1()
		clear20()
	end
end;

function clear20()
	if GetTaskTemp(302) == GetTask(30) or GetTaskTemp(302) == 1991 then
		SetTask(30,0)
		SetTaskTemp(302,0)
		Msg2Player("Ban da xoa thanh cong ma ruong")
	else
		Talk(1,"Exit1","<color="..colorS()..">Bao Ruong<color> : Ban da dien sai mat ma.Xin hay nhap lai chinh xac...")
	end
end;
	
	
