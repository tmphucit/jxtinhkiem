function main()
SayNew("Ng≠¨i muËn ta Æ≠a v“ Æ©u?",5,
"B’n 1 - BÍ Nam /dichuyen",
"B’n 2 - BÍ Nam /dichuyen",
"B’n 3 - BÍ Nam /dichuyen",
"V“ Minh Nguy÷t Tr n /move_minhnguyet",
"Tho∏t./no")
end

function move_minhnguyet()
SetFightState(0)
NewWorld(58 , 1599,3267)
Msg2Player("NgÂi y™n, chÛng ta Æi Minh Nguy÷t Tr n")
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

Msg2Player("Bπn Æ∑ Æ≠Óc di chuy”n v“ BÍ Nam, b t tˆ 10 gi©y")

end