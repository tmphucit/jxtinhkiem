Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\napcard\\napcard.lua");  
Include( "\\script\\global\\npcchucnang\\thoren.lua");


---------------------------------------------------B�o V�t--------------------------------------------
function main()
--dofile("script/global/npcchucnang/baovat.lua")
ActiveBV()
end
--------------------------------------------------Quy ��i------------------------------------------------
function ActiveBV()
    Say("<color=green>K� Tr�n C�c Ti�n V�n: <color> HELLO : "..GetName().." ", 10,
             "V�t Ph�m T�nh N�ng ho�t ��ng/tinhnang",
             "K� Tr�n D� B�o/kytrandibao",
             "Li�n Quan Bang H�i/banghoi",
             "�� Kho�ng Th�ch/dakhoangthach",
             "T�i Mu�n Mua Chi�n M�/muachienma",
             "Mua 1 l��t quay th� r�n < 500 v�n >/mualuotquay",
             "Tho�t./no")
end


function mualuotquay()
if GetCash() >= 5000000 then
SetTask(TAK_QUAYHKMP,GetTask(TAK_QUAYHKMP) + 1)
Msg2Player("B�n c� :<color=green> "..GetTask(TAK_QUAYHKMP).." <color>l�n quay HKMP t�i th� r�n ba l�ng");
Pay(5000000);
   return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua");
end


--------------------------------------------------T�i Mu�n Mua Chi�n M�------------------------------------------------------------------------------------
function muachienma()
	Say("V� L�m CTC", 10,
              "Phi�n V� < 1000 v�n >/phienvu",
              "B�n Ti�u < 700 v�n >/bontieu",
              "Phi V�n < 600 v�n >/phivan",
              "Chi�u D� < 500 v�n >/chieuda",
              "X�ch Th� < 400 v�n >/xichtho",
              "��ch L� < 300 v�n >/dichlo",
              "� V�n ��p Tuy�t < 200 v�n >/ovandaptuyet",
              "Tuy�t �nh < 100 v�n >/tuyetanh",
              "��ng./no")
end

function phienvu()
if GetCash() >= 10000000 then
AddItemID(AddItem(0,0,10,7,1,5,0)); --phien v�
Pay(10000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a Phi�n V�.");
   return end
Talk(1,"","B�n kh�ng �� 1000 v�n �� mua");
end

function bontieu()
if GetCash() >= 7000000 then
AddItemID(AddItem(0,0,10,6,1,5,0)); ---bon tieu
Pay(7000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 700 v�n �� mua");
end

function phivan()
if GetCash() >= 6000000 then
AddItemID(AddItem(0,0,10,8,1,5,0)); --phi van
Pay(6000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 600 v�n �� mua");
end

function chieuda()
if GetCash() >= 5000000 then
AddItemID(AddItem(0,0,10,5,5,5,0)); ---chieu da
Pay(5000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua");
end

function xichtho()
if GetCash() >= 4000000 then
AddItemID(AddItem(0,0,10,5,2,5,0)); --xich tho
Pay(4000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 400 v�n �� mua");
end

function dichlo()
if GetCash() >= 3000000 then
AddItemID(AddItem(0,0,10,5,4,5,0)); ---dich lo
Pay(3000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 300 v�n �� mua");
end

function ovandaptuyet()
if GetCash() >= 2000000 then
AddItemID(AddItem(0,0,10,5,1,5,0)); --o van dap tuyet 
Pay(2000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 200 v�n �� mua");
end

function tuyetanh()
if GetCash() >= 1000000 then
AddItemID(AddItem(0,0,10,5,3,5,0)); --tuyet anh
Pay(1000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ng�a.");
return end
Talk(1,"","B�n kh�ng �� 100 v�n �� mua");
end

---------------------------------------------------------K� Tr�n D� B�o-----------------------------------------------------------------------------
function kytrandibao()
	Say("V� L�m CTC", 10,
              "��i Th�nh BK 90 < 500 v�n >/daithanh90",
              "��i Th�nh BK 120 < 1000 v�n >/bikiep120",
              "Ti�n Th�o L� ��c Bi�t < 100 v�n >/tienthaolodb",
              "Ti�n Th�o L� < 10 v�n >/tienthaolo",
              "Qu� Hoa T�u < 20 v�n >/quehoatuu",
              "Thi�n S�n B�o L� < 10 v�n >/thiensonbaolo",
              "X� L�i T�m Kinh < 10 v�n >/xaloitamkinh",
              "B�n Nh��c T�m Kinh < 10 v�n >/bannhuoctamkinh",
              "��ng./no")
end

function daithanh90()
if GetCash() >= 5000000 then
AddItemID(AddItem(0,6,2433,0,0,5,0,0));  ----��i th�nh 9x
Pay(5000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ��i th�nh 9x")
return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua");
end


function bannhuoctamkinh()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,12,0,0,5,0,0))  ----B�n Nh��c T�m Kinh
Pay(100000);
Msg2Player("<color=green>B�n nh�n ���c 1 B�n Nh��c T�m Kinh")
return end
Talk(1,"","B�n kh�ng �� 10 v�n �� mua");
end


function xaloitamkinh()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,2629,0,0,5,0,0));  ----X� L�i Kim ��n
Pay(100000);
Msg2Player("<color=green>B�n nh�n ���c 1 X� L�i Kim ��n");
return end
Talk(1,"","B�n kh�ng �� 10 v�n �� mua");
end


function thiensonbaolo()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,72,0,0,5,0,0));  ----Thi�n s�n B�o L�
Pay(100000);
Msg2Player("<color=green>B�n nh�n ���c 1 Thi�n s�n B�o L�");
return end
Talk(1,"","B�n kh�ng �� 10 v�n �� mua");
end


function quehoatuu()
if GetCash() >= 200000 then
AddItemID(AddItem(0,6,124,0,0,5,0,0));  ----Qu� Hoa T�u
Pay(200000);
Msg2Player("<color=green>B�n nh�n ���c 1 Qu� Hoa T�u");
return end
Talk(1,"","B�n kh�ng �� 20 v�n �� mua");
end


function tienthaolo()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,71,0,0,5,0,0));  ----tien thao lo
Pay(100000);
Msg2Player("<color=green>B�n nh�n ���c 1 tien thao lo");
return end
Talk(1,"","B�n kh�ng �� 10 v�n �� mua");
end


function tienthaolodb()
if GetCash() >= 1000000 then
AddItemID(AddItem(0,6,1182,0,0,5,0,0));  ----tien thao lo db
Pay(1000000);
Msg2Player("<color=green>B�n nh�n ���c 1 tien thao lo db");
        return end
Talk(1,"","B�n kh�ng �� 100 v�n �� mua");
      end

function bikiep120()
if GetCash() >= 10000000 then
AddItemID(AddItem(0,6,2434,0,0,5,0,0))  ----��i th�nh 120x
Pay(10000000);
Msg2Player("<color=green>B�n nh�n ���c 1 ��i th�nh 120x");
            return end
Talk(1,"","B�n kh�ng �� 1000 v�n �� mua")
       end


-----------------------------------------------------�� Kho�ng Th�ch------------------------------------------------------------------------------
function dakhoangthach()
	Say("V� L�m CTC", 10,
              "Th�y Tinh < 50 v�n >/thuytinh",
              "Tinh H�ng B�o Th�ch < 70 v�n >/tinhhongbaothach",
              "��ng./no")
end
function thuytinh()
	Say("H� Tr� T�n Th�, V� L�m CTC", 10,
             "T� Th�y Tinh/tuthuytinh",
             "Lam Th�y Tinh/lamthuytinh",
             "L�c Th�y Tinh/lucthuytinh",
             "Tho�t./no")
end
-------===========================-----------------
function tuthuytinh()
	Say("H� Tr� T�n Th�, V� L�m CTC", 10,
             "Mua 1 vi�n T� < 50 v�n >/tuthuytinh1",
             "Mua 5 vi�n T� < 250 v�n >/tuthuytinh2",
             "Mua 10 vi�n T� < 500 v�n >/tuthuytinh3",
    "Tho�t./no")
end
function lamthuytinh()
	Say("H� Tr� T�n Th�, V� L�m CTC", 10,
             "Mua 1 vi�n Lam < 50 v�n >/lamthuytinh1",
             "Mua 5 vi�n Lam < 250 v�n >/lamthuytinh2",
             "Mua 10 vi�n Lam < 500 v�n >/lamthuytinh3",
    "Tho�t./no")
end
function lucthuytinh()
	Say("H� Tr� T�n Th�, V� L�m CTC", 10,
             "Mua 1 vi�n L�c < 50 v�n >/lucthuytinh1",
             "Mua 5 vi�n L�c < 250 v�n >/lucthuytinh2",
             "Mua 10 vi�n L�c < 500 v�n >/lucthuytinh3",
    "Tho�t./no")
end
function tinhhongbaothach()
	Say("H� Tr� T�n Th�, V� L�m CTC", 10,
             "Mua 1 vi�n THBT < 50 v�n >/thbt1",
             "Mua 5 vi�n THBT < 250 v�n >/thbt2",
             "Mua 10 vi�n THBT < 500 v�n >/thbt3",
    "Tho�t./no")
end
------------------------------------------------------------------------------
function tuthuytinh1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
Pay(500000);
Msg2Player("<color=green>B�n nh�n ���c 1 T� Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 50 v�n �� mua")
       end

function tuthuytinh2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
Pay(2500000);
Msg2Player("<color=green>B�n nh�n ���c 5 T� Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 250 v�n �� mua")
       end

function tuthuytinh3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 5000000 then
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
Pay(5000000);
Msg2Player("<color=green>B�n nh�n ���c 10 T� Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua")
       end
-------------------------------------------------------------------------
function lamthuytinh1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
Pay(500000);
Msg2Player("<color=green>B�n nh�n ���c 1 Lam Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 50 v�n �� mua")
       end

function lamthuytinh2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
Pay(2500000);
Msg2Player("<color=green>B�n nh�n ���c 5 Lam Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 250 v�n �� mua")
       end

function lamthuytinh3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 5000000 then
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
Pay(5000000);
Msg2Player("<color=green>B�n nh�n ���c 10 Lam Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua")
       end
-------------------------------------------------------------------------
function lucthuytinh1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
Pay(500000);
Msg2Player("<color=green>B�n nh�n ���c 1 L�c Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 50 v�n �� mua")
       end

function lucthuytinh2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
Pay(2500000);
Msg2Player("<color=green>B�n nh�n ���c 5 L�c Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 250 v�n �� mua")
       end

function lucthuytinh3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 5000000 then
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
Pay(5000000);
Msg2Player("<color=green>B�n nh�n ���c 10 L�c Thu� Tinh");
            return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua")
       end
---------------
function thbt1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
Pay(500000);
Msg2Player("<color=green>B�n nh�n ���c 1 THBT");
            return end
Talk(1,"","B�n kh�ng �� 50 v�n �� mua")
       end

function thbt2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
Pay(2500000);
Msg2Player("<color=green>B�n nh�n ���c 5 THBT");
            return end
Talk(1,"","B�n kh�ng �� 250 v�n �� mua")
       end

function thbt3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R��ng ph�i �� tr�ng 3x3 ") return end
if GetCash() >= 5000000 then
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
Pay(5000000);
Msg2Player("<color=green>B�n nh�n ���c 10 THBT");
            return end
Talk(1,"","B�n kh�ng �� 500 v�n �� mua")
       end
------------------------------------------------------Li�n Quan Bang H�i---------------------------------------------------------------------------------

function banghoi()
	Say("V� L�m CTC", 10,
              "Nh�c V��ng Ki�m < 10.000 v�n >/nhacvuongkiem",
              "��ng./no")
end

function nhacvuongkiem()
if GetCash() >= 100000000 then
AddItemID(AddItem(0,4,195,0,0,5,0,0))  ----nh�c v��ng ki�m
 Pay(100000000);
Msg2Player("<color=green>B�n nh�n ���c 1 nh�c v��ng ki�m.");
return end
Talk(1,"","B�n kh�ng �� 10.000 v�n �� mua");
end
--------------------------------------------------------V�t Ph�m T�nh N�ng ho�t ��ng---------------------------------------------------------------------------------
function tinhnang()
	Say(" V� L�m CTC", 10,
              "L�nh B�i Long L�ng �� < 5 v�n >/lenhbaiphonglang",
              "��ng./no")
end

function lenhbaiphonglang()
if GetCash() >= 50000 then
AddItemID(AddItem(0,4,489,0,0,5,0,0));  ----l�nh b�i phong l�ng ��
 Pay(50000);
Msg2Player("<color=green>B�n nh�n ���c 1 l�nh b�i PLD.");
return end
Talk(1,"","B�n kh�ng �� 5 v�n �� mua");
end
	
----------------------------------------------K�t Th�c-----------------------------------------------------
function no()
end;
























