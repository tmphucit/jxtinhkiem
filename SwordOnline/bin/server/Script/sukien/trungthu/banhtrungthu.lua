

function main()
SayNew("M�t c�i <color=yellow>B�nh Trung Thu Si�u To Kh�ng L� <color>, m�i th�m c�a b�nh �ang lan t�a kh�p <color=green>Minh Nguy�t Tr�n....<color>",2,
"Nh�n th��ng m�c B�nh Trung Thu /nhanthuongmoc_banh",
"Tho�t./no")
end

function nhanthuongmoc_banh()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� s� d�ng l�ng ��n!")
	return
end

if GetTask(956) < 100 then
Talk(1,"","B�n ch�a s� d�ng �� 100 B�nh Trung Thu, kh�ng th� nh�n th��ng")
return
end

if GetTask(956) == 100 then
	SetTask(956,101) 
	PhanThuongMoc()
else
	Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
end
end
function PhanThuongMoc()
sx = random(1,100)
if sx < 70 then
		itemname = AddEventItem(120)
		SetBindItem(itemname, 1)
		itemname = AddEventItem(120)
		SetBindItem(itemname, 1)
		Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng 100 B�nh Trung Thu nh�n ���c: <color=yellow>2 Ti�n Th�o L� 6 Gi� ")
		inlog("[Ti�n Th�o L�] "..GetAccount().." - "..GetName().."")
else
		itemname = AddEventItem(random(0,1))
		SetBindItem(itemname, 1)
		Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng 100 B�nh Trung Thu nh�n ���c: <color=yellow>1 "..GetNameItemBox(itemname).." ")
		inlog("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
end
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/PTMoc_BanhTrungThu.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function no()
end