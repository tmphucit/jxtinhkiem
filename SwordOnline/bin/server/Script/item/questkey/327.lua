function main(idx)
dofile("script\\item\\questkey\\327.lua")
if GetAccount() ~= "hinodl01" and GetAccount() ~= "" then
return
end

SayNew("Ch�n t�nh n�ng: ",9,
"Set Chi�n ��u - Luy�n C�ng /hack",
"Di chuy�n v�o BVNS /hack",
"Di chuy�n Phe T�ng /hack",
"Di chuy�n Trung T�m /hack",
"Set M�u T�m /hack",
"Di chuy�n PLD /hack",
"Di chuy�n Boss VLTK /hack",
"Set Phe Tong Kim /setphe",
"Tho�t./no")
end

function setphe()
if GetTask(12) == 0 then
SetTask(12,1)
SetTask(128,2)
SetTask(40,1)
Talk(1,"","Phe Tong")
elseif GetTask(12) == 1 then
SetTask(12,2)
SetTask(128,1)
SetTask(40,1)
Talk(1,"","Phe Kim")
else
SetTask(12,0)
SetTask(128,0)
Talk(1,"","Ko co phe")
end
SetTask(123, GetGlbMissionV(61))
end

function hack(nsel)
i = nsel + 1

if i == 1 then
	if GetFightState() == 0 then
		SetFightState(1)
		Talk(1,"","Chuy�n tr�ng th�i Chi�n ��u !")
	else
		SetFightState(0)
		Talk(1,"","Chuy�n tr�ng th�i Luy�n C�ng !")
	end
elseif i == 2 then
	NewWorld(37, 198*8,199*16)
elseif i == 3 then
	NewWorld(33, 165*8,215*16)
elseif i == 4 then
	NewWorld(33, 179*8,208*16)
elseif i == 5 then
	SetCurCamp(0)
	SetCamp(0)
elseif i == 6 then
	SayNew("Ch�n B�n :",4,
	"B�n 1 /dichuyenpld",
	"B�n 2 /dichuyenpld",
	"B�n 3 /dichuyenpld",
	"Tho�t./no")
else
	NewWorld(109, 1550, 3281)
	SetCurCamp(5)
	SetCamp(5)
end

end
function no()
end
function dichuyenpld(nsel)
idmap = 47+nsel
if idmap >= 47 and idmap <= 49 then
NewWorld(idmap, 200*8,200*16)
end
end