Include("\\script\\source.lua")

function main(idx)
sl = GetItemCount(122)
DelItemIdx(idx);
if GetItemCount(122) == (sl-1) then
	sx = random(1,5)
	if sx == 1 then	
		AddEventItem(140)
		Msg2Player("B�n nh�n ���c 1 Ba L� Con C�c")
	elseif sx == 2 then
		AddEventItem(136)
		Msg2Player("B�n nh�n ���c 1 Chi�c M� Chi�n S� ")
	elseif sx == 3 then
		AddEventItem(137)
		Msg2Player("B�n nh�n ���c 1 ��i Gi�y B� ��i")
	elseif sx == 4 then
		AddEventItem(138)
		Msg2Player("B�n nh�n ���c 1 T�m �o Chi�n S� ")
	else
		AddEventItem(139)
		Msg2Player("B�n nh�n ���c 1 Chi�c V�ng Tr��ng S�n")
	end
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end

