Include("\\script\\admin\\monphai.lua")
Include("\\script\\admin\\shopktc.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\Script\\Global\\sourcejx49.lua")
Include("\\script\\codeevent.lua")
Include("\\script\\codenew.lua")
Include("\\script\\npcchucnang\\hotrotanthu.lua")
Include("\\script\\npcchucnang\\trogiup.lua")

Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

-----------------------------------------------------�� FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------

function main()
 dofile("script\\npcchucnang\\lequan.lua")
	SayNew("<color=green>L� Quan<color>:ta l� ph� tr�ch h� tr� c�c ��i hi�p b�n t�u giang h�..",8,	
			"Event Ng��i Tuy�t/NewTrungThu_Main",
			"B�n Item C�n Thi�t /cacgoinapthe",		
			"Nh�n Th��ng M�c VIP /nhanquavip",
		              "Nh�n Giftcode New/nhandenhotronew",    
			"Shop �i�m S� Ki�n/shopdiemsukien",
			"Shop �i�m T�ch L�y N�p/shopdiemnapgame",      
			"�i�m S� Ki�n ��i l�y v�t ph�m./doidiemsukien",     	
			"Tho�t./no")
                           end


