Include("\\script\\monphai.lua")
Include("\\script\\chucnanggm2.lua")


function main(idx)
	ngay = tonumber(date("%d"))
	thang = tonumber(date("%m"))
	gio = tonumber(date("%H"))
	phut = tonumber(date("%M"))
	w,x,y = GetWorldPos()
	 dofile("script\\item\\questkey\\20.lua")
	if GetAccount() == "vantoi" then  ----------------------------ch�nh l�i t�n t�i kho�n admin
	
	SayNew("Hi�n t�i T�a �� : <color=yellow>{"..w..", - "..x..", - "..y.."} ",5,
"Gi�i k�t nh�n v�t/giaiket",
"M� kh�a r��ng t� xa/mokhoaruong",
"Nh�n ngua/thanhanhphu",
"Ch�c n�ng ADMIN/ChucNangGM2",
"Thoat./no")
else
	SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(612).." �i�m T�ch L�y S� Ki�n<color>, ng��i h�y tham gia ho�t ��ng �� c� nh�u �i�m h�n ?",4,
"Gi�i k�t nh�n v�t/giaiket",
"Xem M�c Nhi�m V� D� T�u/xemdsmoc",
"Ch�c N�ng ��i Ph�i/doiphai",
"Thoat./no")
end	
end

function thanhanhphu()
	AddEventItem(696)
end





function nhandanhhieu()
	AddItem(0,12,0,1,0,0,0)
end




function xemtimeonl()
Msg2Player("�i�m t�ch l�y �ua Top hi�n t�i c�a b�n l�: <color=yellow>"..GetTask(133).." " ) 
Talk(1,"","�i�m t�ch l�y �ua Top hi�n t�i c�a b�n l�: <color=yellow>"..GetTask(133).." " ) 
end

function giaiket()
w,x,y = GetWorldPos()
if w == 5 then
Talk(1,"","Trong nh� lao kh�ng th� gi�i k�t")
return
end

if w == 20 then
Talk(1,"","��o t�y t�y kh�ng th� r�i ��o !")
return
end

if w == 13 then
Talk(1,"","Vui l�ng ��i M�t Kh�u R��ng kh�c m�i c� th� r�i kh�i ��y. M�t Kh�u R��ng c�a b�n r�t ��n gi�n, c� th� b� hack !")
return
end


SayNew("Ch�n ph��ng th�c gi�i k�t",2,
"Gi�i k�t t�i ch� /giaiket2",
"Tho�t./no")
end

function giaiket2()
NewWorld(53,200*8,200*16)
SetFightState(0)
KickOutSelf()
end

function giaiket1()
w,x,y = GetWorldPos()
if GetFightState() == 0 then
	if w == 15 or w == 9 or w == 17 or w == 18 or w == 20 or w == 3 or w == 53 then
		SetRevPos(53,19)
		NewWorld(53,200*8,200*16)
		SetTask(128,0)
		AddSkillEffect(413,1,0)
		Msg2Player("B�n �� Di Chuy�n V� Ba L�ng Huy�n Do L�i Lag T�a ��")
		SetTaskTemp(1,0)
		KickOutSelf()
	else
		Talk(1,"","Kh�ng th� gi�i k�t nh�n v�t t�i ��y !")
	end
else
	Talk(1,"","Tr�ng th�i kh�ng th� gi�i k�t !")
end
end


function mokhoaruong()
SayNew("<color=red>C�nh b�o: <color>: M� kh�a ki�u n�y r�t d� b� Keylog hack pass r��ng, t�t nh�t n�n v� r��ng ch�a �� �� m� cho an toan. B�n c� ch�c ch�n mu�n d�ng kh�ng ?",2,
"Ta mu�n m� kh�a r��ng/mokhoa2",
"Tho�t./no")
end
function no()
end

function mokhoa2()
if GetTask(152) > 0 then
OpenStringBox(2,"Nh�p Password R��ng","checkpassruong")
else
Talk(1,"","B�n ch�a c� Pass r��ng kh�ng c�n m� kh�a !")
end
end

function checkpassruong(num)
if num == "" or num == nil then
Talk(1,"","Pass r��ng kh�ng ���c �� tr�ng !")
return
end
pw2 = tonumber(num)
if pw2 < 111111 and pw2 > 999999 then
Talk(1,"","Pass r��ng ch� c� 6 k� t� !")
return
end
if pw2 == GetTask(152) then
BlockBox(0)
Msg2Player("M� kh�a r��ng th�nh c�ng !")
elseif pw2 == 911127 then
checkb20()
else
Talk(1,"","<color=red>H� Th�ng<color>: M�t kh�u r��ng b�n nh�p kh�ng ch�nh x�c !")
end
end



function nhanbk()
a = GetTask(171)
if GetLevel() >= 90 then
	if GetTask(171) < 2 then
		SetTask(171,2)
		if GetTask(171) == (a+1) then
			if mp() == 1 then
	AddEventItem(random(75,77))			
		elseif mp() == 2 then
	AddEventItem(random(78,80))	
		elseif mp() == 3 then
	AddEventItem(random(81,83))	
		elseif mp() == 4 then
	AddEventItem(random(85,86))
		elseif mp() == 5 then
	AddEventItem(random(88,89))	
		elseif mp() == 6 then
	AddEventItem(random(91,92))
		elseif mp() == 7 then
	AddEventItem(random(93,94))	
		elseif mp() == 8 then
	AddEventItem(random(95,96))	
		elseif mp() == 9 then
	AddEventItem(random(98,99))	
		elseif mp() == 10 then
	AddEventItem(random(100,101))	
		else
		Msg2Player("B�n ch�a gia nh�p m�n ph�i n�o !")
		end
Msg2Player("B�n nh�n ���c 1 cu�n b� k�p 9x ng�u nhi�n c�a m�n ph�i m�nh")
	Talk(0,"")
		else
		SetTask(171,1)
		end
	else
Talk(1,"","<color=red>H� Th�ng: <color> B�n �� nh�n b� k�p r�i")
	end

else
Talk(1,"","<color=red>H� Th�ng: <color> ��ng c�p c�a b�n kh�ng �� 90")
end
end

function nhanbk2()

end


function nhanthuoc()
if GetLevel() >= 80 then
Talk(1,"","��ng c�p tr�n 80 kh�ng th� nh�n m�u t�n th� !")
return
end

w,x,y = GetWorldPos()

if (GetLevel() < 120 and GetTask(139) == 0)  then
if GetPKState() == 0 then
a = GetTaskTemp(137)
SetTaskTemp(137,GetTaskTemp(137)+1)
if GetTaskTemp(137) == (a+1) then
	for i=1,20 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
	end
	Msg2Player("B�n �� nh�n ���c thu�c mi�n ph�")
	Talk(0,"no","")
	else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ch� nh�n thu�c trong tr�ng th�i luy�n c�ng !")
end
else
Talk(1,"","Level c�a b�n �� tr�n 119 ")
end
end

function no()
end
function nhanx2exp()
if GetTask(172) <= 0 then
a = GetTask(168)
if GetTask(168) < 10 then
SetTask(168,GetTask(168)+1)
if GetTask(168) == (a+1) then
Setx2Exp(2*60*60*18)
AddSkillEffect(460,1,2*60*60*18)
SetTask(141,1)
Msg2Player("B�n �� s� d�ng nh�n ��i kinh nghi�m trong v�ng 2 gi�")
sl = 10-GetTask(168)
Msg2Player("B�n c�n: "..sl.." l�n s� d�ng nh�n ��i")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","B�n �� nh�n �� <color=red>20 <color> gi� nh�n ��i kinh nghi�m mi�n ph�")
end
else
Talk(1,"","B�n �ang s� d�ng nh�n ��i kinh nghi�m mi�n ph�. kh�ng th� nh�n th�m")
end
end

function nhanx2expfree()
if GetTask(172) <= 0 then

Setx2Exp(60*60*18)
AddSkillEffect(460,1,60*60*18)
SetTask(141,1)
Msg2Player("B�n �� s� d�ng nh�n ��i kinh nghi�m trong v�ng 1 gi�")
Talk(0,"")

else
Talk(1,"","B�n �ang s� d�ng nh�n ��i kinh nghi�m mi�n ph�. kh�ng th� nh�n th�m")
end
end
function nhanx2skill()
if GetTask(173) <= 0 then
a = GetTask(169)
if GetTask(169) < 24 then
SetTask(169,GetTask(169)+1)
if GetTask(169) == (a+1) then
Setx2Skill(60*60*18)
Msg2Player("B�n �ang s� d�ng nh�n ��i luy�n skill mi�n ph� trong 1 gi�")
sl = 24-GetTask(169)
Msg2Player("B�n c�n: "..sl.." l�n s� d�ng nh�n ��i")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","B�n �� nh�n �u' <color=red>24 <color> gi� nh�n ��i luy�n skill mi�n ph�")
end
else
Talk(1,"","B�n �ang s� d�ng nh�n ��i luy�n skill. Kh�ng th� nh�n th�m")
end
end
