function main()
SayNew("<color=green>C�y Th�ng Gi�ng Sinh<color>:<enter><color=red>Mery Chrismas 2012 and Happy New Year 2013 !!!!!!<color> ",3,
"Treo Thi�p /treothiep",
"��i Ph�n Th��ng /doiqua",
"Tho�t./no")
end

function treothiep()
SayNew("<color=green>C�y Th�ng Gi�ng Sinh<color>:<enter>Thi�p Lo�i 1: "..GetTask(2).."\tThi�p Lo�i 2: "..GetTask(3).."\nThi�p Lo�i 3: "..GetTask(4).."\tThi�p Lo�i 4: "..GetTask(5).."\nThi�p Lo�i 5: "..GetTask(6).." ",6,
"Thi�p gi�ng sinh 1/treothiep2",
"Thi�p gi�ng sinh 2/treothiep2",
"Thi�p gi�ng sinh 3/treothiep2",
"Thi�p gi�ng sinh 4/treothiep2",
"Thi�p gi�ng sinh 5/treothiep2",
"Tho�t./no")
end

function treothiep2(nsel)
a = GetItemCount(190+nsel)
if GetItemCount(190+nsel) >= 1 then
	DelItem(190+nsel)
	SetTask(2+nsel,GetTask(2+nsel)+1)
	Msg2Player("S� l��ng Thi�p Gi�ng Sinh "..(nsel+1).." �� theo: "..GetTask(2+nsel).." ")
else
	Talk(1,"","B�n kh�ng mang theo <color=red>Thi�p Gi�ng Sinh "..(nsel+1).."<color> ")
end
end

function doiqua()
if GetTask(134) >= gioihan() then
Talk(1,"","Gi�i h�n s� d�ng �� �� 250 l�n !")
return
end
a = GetTask(2)
b = GetTask(3)
c = GetTask(4)
d = GetTask(5)
e = GetTask(6)
f = GetCash()
if GetTask(2) >= 1 and GetTask(3) >= 1 and GetTask(4) >= 1 and GetTask(5) >= 1 and GetTask(6) >= 1 and GetCash() >= 50000 then
	SetTask(2,GetTask(2)-1)
	SetTask(3,GetTask(3)-1)
	SetTask(4,GetTask(4)-1)
	SetTask(5,GetTask(5)-1)
	SetTask(6,GetTask(6)-1)
	Pay(50000)
	if GetTask(2) == a-1 and GetTask(3) == b-1 and GetTask(4) == c-1 and GetTask(5) == d-1 and GetTask(6) == e-1 and GetCash() == f-50000 then
		SetTask(134,GetTask(134)+1)
		for i=1,50 do AddOwnExp(100000) end
		Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m !")
		Msg2Player("Gi�i h�n s� d�ng: "..GetTask(134).."/"..gioihan().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Y�u c�u m�i lo�i thi�p �t nh�t 1 c�i v� 5 v�n l��ng !")
end

end

function no()
end

function gioihan()
if GetTask(132) == 5 then
return 100
else
return GetTask(132)*10 + 40
end
end
