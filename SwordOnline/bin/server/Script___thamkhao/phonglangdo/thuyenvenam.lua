function main()
SayNew("Ng��i mu�n ta ��a v� ��u?",5,
"B�n 1 - B� Nam /dichuyen",
"B�n 2 - B� Nam /dichuyen",
"B�n 3 - B� Nam /dichuyen",
"V� Minh Nguy�t Tr�n /move_minhnguyet",
"Tho�t./no")
end

function move_minhnguyet()
SetFightState(0)
NewWorld(58 , 1599,3267)
Msg2Player("Ng�i y�n, ch�ng ta �i Minh Nguy�t Tr�n")
end

function dichuyen(nsel)
i = nsel + 1

SetTask(117, 10* 18)
if i == 1 then
NewWorld(46,1166, 3038)
elseif i == 2 then
NewWorld(46,1300, 2935)
else
NewWorld(46,1544, 2837)
end

Msg2Player("B�n �� ���c di chuy�n v� B� Nam, b�t t� 10 gi�y")

end