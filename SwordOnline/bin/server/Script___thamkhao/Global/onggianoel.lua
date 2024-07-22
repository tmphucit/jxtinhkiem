function main()
SayNew("<color=green>C©y Th«ng Gi¸ng Sinh<color>:<enter><color=red>Mery Chrismas 2012 and Happy New Year 2013 !!!!!!<color> ",3,
"Treo ThiÖp /treothiep",
"§æi PhÇn Th­êng /doiqua",
"Tho¸t./no")
end

function treothiep()
SayNew("<color=green>C©y Th«ng Gi¸ng Sinh<color>:<enter>ThiÖp Lo¹i 1: "..GetTask(2).."\tThiÖp Lo¹i 2: "..GetTask(3).."\nThiÖp Lo¹i 3: "..GetTask(4).."\tThiÖp Lo¹i 4: "..GetTask(5).."\nThiÖp Lo¹i 5: "..GetTask(6).." ",6,
"ThiÖp gi¸ng sinh 1/treothiep2",
"ThiÖp gi¸ng sinh 2/treothiep2",
"ThiÖp gi¸ng sinh 3/treothiep2",
"ThiÖp gi¸ng sinh 4/treothiep2",
"ThiÖp gi¸ng sinh 5/treothiep2",
"Tho¸t./no")
end

function treothiep2(nsel)
a = GetItemCount(190+nsel)
if GetItemCount(190+nsel) >= 1 then
	DelItem(190+nsel)
	SetTask(2+nsel,GetTask(2+nsel)+1)
	Msg2Player("Sè l­îng ThiÖp Gi¸ng Sinh "..(nsel+1).." ®· theo: "..GetTask(2+nsel).." ")
else
	Talk(1,"","B¹n kh«ng mang theo <color=red>ThiÖp Gi¸ng Sinh "..(nsel+1).."<color> ")
end
end

function doiqua()
if GetTask(134) >= gioihan() then
Talk(1,"","Giíi h¹n sö dông ®· ®ñ 250 lÇn !")
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
		Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm !")
		Msg2Player("Giíi h¹n sö dông: "..GetTask(134).."/"..gioihan().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Yªu cÇu mçi lo¹i thiÖp Ýt nhÊt 1 c¸i vµ 5 v¹n l­îng !")
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
