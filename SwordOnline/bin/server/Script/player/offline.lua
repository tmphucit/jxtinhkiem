




Include("\\script\\global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");


function main()
w,x,y = GetWorldPos();
dofile("script/player/offline.lua");
if(GetFightState() == 1) then
          Talk(1,"","Tr�ng th�i kh�ng ���c b�o v�, kh�ng th� th�c hi�n.")
	return end

if w == 53  then
UythacOff()  ---uythac

		
    else
		Talk(1,"","Ch� ���c �y th�c � Ba L�ng Huy�n 123 !")
	end

end
-----------------------------------------------------------------------------

function begin_onlinecommission2()
if GetLevel() < 10 then
	Talk(1,"","��ng c�p nh� h�n 10 kh�ng th� U� Th�c")
	return 0;	
end
Talk(1,"","Ng��i �ang trong tr�ng th�i U� th�c Online")
end

function end_onlinecommission2()
if GetLevel() < 10 then
	Talk(1,"","��ng c�p nh� h�n 10 kh�ng th� U� Th�c")
	return 0;	
end
Talk(1,"","Ng��i �� ng�ng U� th�c Online")
end

function offlineaward2()
if GetLevel() < 10 then
	Talk(1,"","��ng c�p nh� h�n 10 kh�ng th� U� Th�c")
	return 0;	
end
Talk(1,"","T�nh n�ng �ang �u�c ho�n thi�n")
end

function UyThacBanHang()
if GetLevel() < 10 then
	Talk(1,"","��ng c�p nh� h�n 10 kh�ng th� U� Th�c")
	return 0;	
end

UythacOff()  ---uythac
end

function kethtuc()
end
