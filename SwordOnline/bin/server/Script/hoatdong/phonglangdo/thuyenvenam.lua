function main()
SayNew("Ng��i mu�n ta ��a v� ��u?",4,
"B�n 1 - B� Nam /dichuyen",
"B�n 2 - B� Nam /dichuyen",
"B�n 3 - B� Nam /dichuyen",
"Tho�t./no")
end

function no()
end

function dichuyen(nsel)
i = nsel + 1

if i == 1 then
	if GetTask(534) == 100 then
		NewWorld(175,1166, 3038)
	else
		NewWorld(46,1166, 3038)
	end
elseif i == 2 then
	if GetTask(534) == 100 then
		NewWorld(175,1300, 2935)
	else
		NewWorld(46,1300, 2935)
	end
else
	if GetTask(534) == 100 then
		NewWorld(175,1544, 2837)
	else
		NewWorld(46,1544, 2837)
	end
end

SetTask(117, 10* 18)
Msg2Player("B�n �� ���c di chuy�n v� B� Nam, b�t t� 10 gi�y")

end