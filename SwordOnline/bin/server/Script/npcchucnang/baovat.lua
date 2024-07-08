Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\napcard\\napcard.lua");  
Include( "\\script\\global\\npcchucnang\\thoren.lua");


---------------------------------------------------B¶o VËt--------------------------------------------
function main()
--dofile("script/global/npcchucnang/baovat.lua")
ActiveBV()
end
--------------------------------------------------Quy §æi------------------------------------------------
function ActiveBV()
    Say("<color=green>Kú Tr©n C¸c TiÒn V¹n: <color> HELLO : "..GetName().." ", 10,
             "VËt PhÈm TÝnh N¨ng ho¹t ®éng/tinhnang",
             "Kú Tr©n DÞ B¶o/kytrandibao",
             "Liªn Quan Bang Héi/banghoi",
             "§¸ Kho¸ng Th¹ch/dakhoangthach",
             "T«i Muèn Mua ChiÕn M·/muachienma",
             "Mua 1 l­ît quay thî rÌn < 500 v¹n >/mualuotquay",
             "Tho¸t./no")
end


function mualuotquay()
if GetCash() >= 5000000 then
SetTask(TAK_QUAYHKMP,GetTask(TAK_QUAYHKMP) + 1)
Msg2Player("B¹n cã :<color=green> "..GetTask(TAK_QUAYHKMP).." <color>lÇn quay HKMP t¹i thî rÌn ba l¨ng");
Pay(5000000);
   return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua");
end


--------------------------------------------------T«i Muèn Mua ChiÕn M·------------------------------------------------------------------------------------
function muachienma()
	Say("Vâ L©m CTC", 10,
              "Phiªn Vò < 1000 v¹n >/phienvu",
              "B«n Tiªu < 700 v¹n >/bontieu",
              "Phi V©n < 600 v¹n >/phivan",
              "ChiÕu D¹ < 500 v¹n >/chieuda",
              "XÝch Thè < 400 v¹n >/xichtho",
              "§Ých L« < 300 v¹n >/dichlo",
              "¤ V©n §¹p TuyÕt < 200 v¹n >/ovandaptuyet",
              "TuyÖt ¶nh < 100 v¹n >/tuyetanh",
              "§ãng./no")
end

function phienvu()
if GetCash() >= 10000000 then
AddItemID(AddItem(0,0,10,7,1,5,0)); --phien vò
Pay(10000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa Phiªn Vò.");
   return end
Talk(1,"","B¹n kh«ng ®ñ 1000 v¹n ®Ó mua");
end

function bontieu()
if GetCash() >= 7000000 then
AddItemID(AddItem(0,0,10,6,1,5,0)); ---bon tieu
Pay(7000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 700 v¹n ®Ó mua");
end

function phivan()
if GetCash() >= 6000000 then
AddItemID(AddItem(0,0,10,8,1,5,0)); --phi van
Pay(6000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 600 v¹n ®Ó mua");
end

function chieuda()
if GetCash() >= 5000000 then
AddItemID(AddItem(0,0,10,5,5,5,0)); ---chieu da
Pay(5000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua");
end

function xichtho()
if GetCash() >= 4000000 then
AddItemID(AddItem(0,0,10,5,2,5,0)); --xich tho
Pay(4000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 400 v¹n ®Ó mua");
end

function dichlo()
if GetCash() >= 3000000 then
AddItemID(AddItem(0,0,10,5,4,5,0)); ---dich lo
Pay(3000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 300 v¹n ®Ó mua");
end

function ovandaptuyet()
if GetCash() >= 2000000 then
AddItemID(AddItem(0,0,10,5,1,5,0)); --o van dap tuyet 
Pay(2000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 200 v¹n ®Ó mua");
end

function tuyetanh()
if GetCash() >= 1000000 then
AddItemID(AddItem(0,0,10,5,3,5,0)); --tuyet anh
Pay(1000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa.");
return end
Talk(1,"","B¹n kh«ng ®ñ 100 v¹n ®Ó mua");
end

---------------------------------------------------------Kú Tr©n DÞ B¶o-----------------------------------------------------------------------------
function kytrandibao()
	Say("Vâ L©m CTC", 10,
              "§¹i Thµnh BK 90 < 500 v¹n >/daithanh90",
              "§¹i Thµnh BK 120 < 1000 v¹n >/bikiep120",
              "Tiªn Th¶o Lé §Æc BiÖt < 100 v¹n >/tienthaolodb",
              "Tiªn Th¶o Lé < 10 v¹n >/tienthaolo",
              "QuÕ Hoa Töu < 20 v¹n >/quehoatuu",
              "Thiªn S¬n B¶o Lé < 10 v¹n >/thiensonbaolo",
              "X¸ Lîi T©m Kinh < 10 v¹n >/xaloitamkinh",
              "Bµn Nh­îc T©m Kinh < 10 v¹n >/bannhuoctamkinh",
              "§ãng./no")
end

function daithanh90()
if GetCash() >= 5000000 then
AddItemID(AddItem(0,6,2433,0,0,5,0,0));  ----®¹i thµnh 9x
Pay(5000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ®¹i thµnh 9x")
return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua");
end


function bannhuoctamkinh()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,12,0,0,5,0,0))  ----Bµn Nh­îc T©m Kinh
Pay(100000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 Bµn Nh­îc T©m Kinh")
return end
Talk(1,"","B¹n kh«ng ®ñ 10 v¹n ®Ó mua");
end


function xaloitamkinh()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,2629,0,0,5,0,0));  ----X¸ Lîi Kim §¬n
Pay(100000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 X¸ Lîi Kim §¬n");
return end
Talk(1,"","B¹n kh«ng ®ñ 10 v¹n ®Ó mua");
end


function thiensonbaolo()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,72,0,0,5,0,0));  ----Thiªn s¬n B¶o Lé
Pay(100000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 Thiªn s¬n B¶o Lé");
return end
Talk(1,"","B¹n kh«ng ®ñ 10 v¹n ®Ó mua");
end


function quehoatuu()
if GetCash() >= 200000 then
AddItemID(AddItem(0,6,124,0,0,5,0,0));  ----QuÕ Hoa Töu
Pay(200000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 QuÕ Hoa Töu");
return end
Talk(1,"","B¹n kh«ng ®ñ 20 v¹n ®Ó mua");
end


function tienthaolo()
if GetCash() >= 100000 then
AddItemID(AddItem(0,6,71,0,0,5,0,0));  ----tien thao lo
Pay(100000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 tien thao lo");
return end
Talk(1,"","B¹n kh«ng ®ñ 10 v¹n ®Ó mua");
end


function tienthaolodb()
if GetCash() >= 1000000 then
AddItemID(AddItem(0,6,1182,0,0,5,0,0));  ----tien thao lo db
Pay(1000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 tien thao lo db");
        return end
Talk(1,"","B¹n kh«ng ®ñ 100 v¹n ®Ó mua");
      end

function bikiep120()
if GetCash() >= 10000000 then
AddItemID(AddItem(0,6,2434,0,0,5,0,0))  ----®¹i thµnh 120x
Pay(10000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ®¹i thµnh 120x");
            return end
Talk(1,"","B¹n kh«ng ®ñ 1000 v¹n ®Ó mua")
       end


-----------------------------------------------------§¸ Kho¸ng Th¹ch------------------------------------------------------------------------------
function dakhoangthach()
	Say("Vâ L©m CTC", 10,
              "Thñy Tinh < 50 v¹n >/thuytinh",
              "Tinh Hång B¶o Th¹ch < 70 v¹n >/tinhhongbaothach",
              "§ãng./no")
end
function thuytinh()
	Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
             "Tö Thñy Tinh/tuthuytinh",
             "Lam Thñy Tinh/lamthuytinh",
             "Lôc Thñy Tinh/lucthuytinh",
             "Tho¸t./no")
end
-------===========================-----------------
function tuthuytinh()
	Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
             "Mua 1 viªn Tö < 50 v¹n >/tuthuytinh1",
             "Mua 5 viªn Tö < 250 v¹n >/tuthuytinh2",
             "Mua 10 viªn Tö < 500 v¹n >/tuthuytinh3",
    "Tho¸t./no")
end
function lamthuytinh()
	Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
             "Mua 1 viªn Lam < 50 v¹n >/lamthuytinh1",
             "Mua 5 viªn Lam < 250 v¹n >/lamthuytinh2",
             "Mua 10 viªn Lam < 500 v¹n >/lamthuytinh3",
    "Tho¸t./no")
end
function lucthuytinh()
	Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
             "Mua 1 viªn Lôc < 50 v¹n >/lucthuytinh1",
             "Mua 5 viªn Lôc < 250 v¹n >/lucthuytinh2",
             "Mua 10 viªn Lôc < 500 v¹n >/lucthuytinh3",
    "Tho¸t./no")
end
function tinhhongbaothach()
	Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
             "Mua 1 viªn THBT < 50 v¹n >/thbt1",
             "Mua 5 viªn THBT < 250 v¹n >/thbt2",
             "Mua 10 viªn THBT < 500 v¹n >/thbt3",
    "Tho¸t./no")
end
------------------------------------------------------------------------------
function tuthuytinh1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
Pay(500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 Tö Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 50 v¹n ®Ó mua")
       end

function tuthuytinh2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
AddItemID(AddItem(0,4,239,0,0,0,0,0)) 
Pay(2500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 5 Tö Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 250 v¹n ®Ó mua")
       end

function tuthuytinh3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
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
Msg2Player("<color=green>B¹n nhËn ®­îc 10 Tö Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua")
       end
-------------------------------------------------------------------------
function lamthuytinh1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
Pay(500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 Lam Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 50 v¹n ®Ó mua")
       end

function lamthuytinh2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
AddItemID(AddItem(0,4,238,0,0,0,0,0)) 
Pay(2500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 5 Lam Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 250 v¹n ®Ó mua")
       end

function lamthuytinh3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
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
Msg2Player("<color=green>B¹n nhËn ®­îc 10 Lam Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua")
       end
-------------------------------------------------------------------------
function lucthuytinh1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
Pay(500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 Lôc Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 50 v¹n ®Ó mua")
       end

function lucthuytinh2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
AddItemID(AddItem(0,4,240,0,0,0,0,0)) 
Pay(2500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 5 Lôc Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 250 v¹n ®Ó mua")
       end

function lucthuytinh3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
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
Msg2Player("<color=green>B¹n nhËn ®­îc 10 Lôc Thuû Tinh");
            return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua")
       end
---------------
function thbt1()
if GetCash() >= 500000 then
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
Pay(500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 THBT");
            return end
Talk(1,"","B¹n kh«ng ®ñ 50 v¹n ®Ó mua")
       end

function thbt2()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
if GetCash() >= 2500000 then
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
AddItemID(AddItem(0,4,353,0,0,5,0,0)); 
Pay(2500000);
Msg2Player("<color=green>B¹n nhËn ®­îc 5 THBT");
            return end
Talk(1,"","B¹n kh«ng ®ñ 250 v¹n ®Ó mua")
       end

function thbt3()
if (CheckRoom(3,3) == 0) then Talk(1,"","R­¬ng ph¶i ®Ó trèng 3x3 ") return end
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
Msg2Player("<color=green>B¹n nhËn ®­îc 10 THBT");
            return end
Talk(1,"","B¹n kh«ng ®ñ 500 v¹n ®Ó mua")
       end
------------------------------------------------------Liªn Quan Bang Héi---------------------------------------------------------------------------------

function banghoi()
	Say("Vâ L©m CTC", 10,
              "Nh¹c V­¬ng KiÕm < 10.000 v¹n >/nhacvuongkiem",
              "§ãng./no")
end

function nhacvuongkiem()
if GetCash() >= 100000000 then
AddItemID(AddItem(0,4,195,0,0,5,0,0))  ----nh¹c v­¬ng kiÕm
 Pay(100000000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 nh¹c v­¬ng kiÕm.");
return end
Talk(1,"","B¹n kh«ng ®ñ 10.000 v¹n ®Ó mua");
end
--------------------------------------------------------VËt PhÈm TÝnh N¨ng ho¹t ®éng---------------------------------------------------------------------------------
function tinhnang()
	Say(" Vâ L©m CTC", 10,
              "LÖnh Bµi Long L¨ng §é < 5 v¹n >/lenhbaiphonglang",
              "§ãng./no")
end

function lenhbaiphonglang()
if GetCash() >= 50000 then
AddItemID(AddItem(0,4,489,0,0,5,0,0));  ----lÖnh bµi phong l¨ng ®é
 Pay(50000);
Msg2Player("<color=green>B¹n nhËn ®­îc 1 lÖnh bµi PLD.");
return end
Talk(1,"","B¹n kh«ng ®ñ 5 v¹n ®Ó mua");
end
	
----------------------------------------------KÕt Thóc-----------------------------------------------------
function no()
end;
























