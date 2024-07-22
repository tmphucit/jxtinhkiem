
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

MAX_TRUNGSINH = 11
function main()
vaochuyensinh()
end

function vaochuyensinh()
Say("B�n �� chuy�n sinh l�n: <color=green>"..GetTask(TASK_CHUYENSINH2).."<color>\n<color=green>Gi�i h�n chuy�n sinh hi�n t�i : "..MAX_TRUNGSINH.."\n<color=green>�i�u Ki�n ��ng C�p :<color><color=yellow> 200<color> \n<color=green>Ph� M�i L�n Tr�ng Sinh :<color><color=yellow> 100 V�n<color>",2,
"Chuy�n Sinh/trungsinh",
"K�t th�c ��i tho�i/no") 
end;

function trungsinh()
if GetTask(TASK_CHUYENSINH2) == 0 then
trungsinh1()
elseif GetTask(TASK_CHUYENSINH2) == 1 then
trungsinh2()
elseif GetTask(TASK_CHUYENSINH2) == 2 then
trungsinh3()
elseif GetTask(TASK_CHUYENSINH2) == 3 then
trungsinh4()
elseif GetTask(TASK_CHUYENSINH2) == 4 then
trungsinh5()
elseif GetTask(TASK_CHUYENSINH2) == 5 then
trungsinh6()
elseif GetTask(TASK_CHUYENSINH2) == 6 then
trungsinh7()
elseif GetTask(TASK_CHUYENSINH2) == 7 then
trungsinh8()
elseif GetTask(TASK_CHUYENSINH2) == 8 then
trungsinh9()
elseif GetTask(TASK_CHUYENSINH2) == 9 then
trungsinh10()
elseif GetTask(TASK_CHUYENSINH2) == 10 then
trungsinh11()
elseif GetTask(TASK_CHUYENSINH2) >= 11 then
 Talk(1,"","Ng��i �� tu th�nh ch�nh qu� kh�ng c�n ph�i ��n t�m ta n�a ! ")
else
Talk(1,"","��i hi�p ng�o ng� r�i ")
end
end


function trungsinh1()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu + 1)
AddMagic(1556,10);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh2()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu)
DelMagic(1556);
AddMagic(1557,11);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;


function trungsinh3()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 1)
DelMagic(1556);
DelMagic(1557);
AddMagic(1558,12);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;


function trungsinh4()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 2)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
AddMagic(1559,13);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh5()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 3)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
AddMagic(1560,14);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh6()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 4)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
AddMagic(1561,15);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh7()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 5)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
AddMagic(1562,16);
DelMagic(1563);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh8()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 6)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
AddMagic(1563,17);
DelMagic(1564);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh9()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 7)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
AddMagic(1564,18);
DelMagic(1565);
KickOutSelf()
end;

function trungsinh10()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 8)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
DelMagic(1564);
AddMagic(1565,20);
KickOutSelf()
end;


function trungsinh11()
        local lanthu = GetTask(TASK_CHUYENSINH2) 
        local lv = GetLevel();
        local sr = GetSeries()+1;
        local ts_money = 1000000
        local nPnt = RollbackSkill();
        local nPnt = ResetProp();

        if (GetLevel() < 200) then
	        Talk(1,"","Ng��i kh�ng �� �i�u ki�n �� Tr�ng Sinh ! \n Xin h�y quay v� ti�p t�c r�n luy�n r�i h�y ��n t�m ta.")
        return end
        if (GetCash() < ts_money) then
	        Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng cho l�n Tr�ng Sinh n�y")
        return end
	AddMagicPoint(nPnt);
	AddPropPoint(nPnt);
	AddProp(500);
	AddMagicPoint(100);
	SetLevel(10);
        Pay(ts_money);
SetTask(TASK_CHUYENSINH2,GetTask(TASK_CHUYENSINH2) + 1)
AddTranslife(lanthu - 9)
DelMagic(1556);
DelMagic(1557);
DelMagic(1558);
DelMagic(1559);
DelMagic(1560);
DelMagic(1561);
DelMagic(1562);
DelMagic(1563);
AddMagic(1564,18);
DelMagic(1565);
KickOutSelf()
end;


---------------------------------------------------------------------------------------------------------------------------------------
function no()
end;

function nhanthuong1()
Say("H� Tr� T�n Th�, V� L�m CTC", 10,	
"Th��ng Chuy�n sinh 1/nt1",
"Th��ng Chuy�n sinh 2/nt2",
"Th��ng Chuy�n sinh 3/nt3",
"Th��ng Chuy�n sinh 4/nt4",
"Th��ng Chuy�n sinh 5/nt5",
"Tho�t./no")
end

--========================================================================================================--

function nt1()
if GetTask(TASK_NHANCS) >= 1 then
 Talk(1,"","V�ng S�ng Kh�ng ph� h�p v�i b�n n�a")
elseif GetTask(TASK_CHUYENSINH2) == 1 then
SetTask(TASK_NHANCS, GetTask(TASK_NHANCS) + 1)
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
Talk(1,"","B�n nh�n ���c 3 vi�n th�y tinh")
Msg2Player("<color=green>B�n nh�n ���c 3 vi�n th�y tinh");
else
Talk(1,"","<bclr=blue>��i Hi�p Ng�o � !") 
end
end

function nt2()
if GetTask(TASK_NHANCS) >= 2 then
 Talk(1,"","V�ng S�ng Kh�ng ph� h�p v�i b�n n�a")
elseif GetTask(TASK_CHUYENSINH2) == 2 then
SetTask(TASK_NHANCS, GetTask(TASK_NHANCS) + 1)
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
Talk(1,"","B�n nh�n ���c 4 vi�n th�y tinh")
Msg2Player("<color=green>B�n nh�n ���c 4 vi�n th�y tinh");
else
Talk(1,"","<bclr=blue>��i Hi�p Ng�o � !") 
end
end

function nt3()
if GetTask(TASK_NHANCS) >= 3 then
 Talk(1,"","V�ng S�ng Kh�ng ph� h�p v�i b�n n�a")
elseif GetTask(TASK_CHUYENSINH2) == 3 then
SetTask(TASK_NHANCS, GetTask(TASK_NHANCS) + 1)
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
Talk(1,"","B�n nh�n ���c 5 vi�n th�y tinh")
Msg2Player("<color=green>B�n nh�n ���c 5 vi�n th�y tinh");
else
Talk(1,"","<bclr=blue>��i Hi�p Ng�o � !") 
end
end

function nt4()
if GetTask(TASK_NHANCS) >= 4 then
 Talk(1,"","V�ng S�ng Kh�ng ph� h�p v�i b�n n�a")
elseif GetTask(TASK_CHUYENSINH2) == 4 then
SetTask(TASK_NHANCS, GetTask(TASK_NHANCS) + 1)
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
Talk(1,"","B�n nh�n ���c 6 vi�n th�y tinh")
Msg2Player("<color=green>B�n nh�n ���c 6 vi�n th�y tinh");
else
Talk(1,"","<bclr=blue>��i Hi�p Ng�o � !") 
end
end

function nt5()
if GetTask(TASK_NHANCS) >= 5 then
 Talk(1,"","V�ng S�ng Kh�ng ph� h�p v�i b�n n�a")
elseif GetTask(TASK_CHUYENSINH2) == 5 then
SetTask(TASK_NHANCS, GetTask(TASK_NHANCS) + 1)
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
Talk(1,"","B�n nh�n ���c 10 vi�n th�y tinh")
Msg2Player("<color=green>B�n nh�n ���c 10 vi�n th�y tinh");
else
Talk(1,"","<bclr=blue>��i Hi�p Ng�o � !") 
end
end
---------------------------------------------------------------------------------------------------------------------------------------












































