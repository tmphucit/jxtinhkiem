
idquestkey = 127
task = 130
exp = 2000
name = "Thuy�n R�ng"

function main(idx)
if GetTask(task) >= gioihan() then
Msg2Player("B�n �� v��t qu� gi�i h�n "..gioihan().."000 kinh nghi�m, kh�ng th� s� d�ng th�m.")
return
end


sl = GetItemCount(idquestkey)
checcktask = GetTask(task)
DelItemIdx(idx);
if GetItemCount(idquestkey) == (sl-1) then
	if GetTask(task) < gioihan() then		
		SetTask(task,GetTask(task)+exp)
		if GetTask(task) == (checcktask + exp) then
			for i=1,exp do AddOwnExp(1000) end
			Msg2Player("B�n nh�n ���c "..exp.."000 kinh nghi�m")			
			Msg2Player("Gi�i h�n: "..GetTask(task).."000 / "..gioihan().."000")
			vatphamcui()
			rdhk = random(1,100)
			if rdhk == 50 and GetTask(132) > 2 then
				hoangkim()
			end

			if GetTask(132) > 1 then
				sxvp = random(1,500)
				if sxvp == 250 then
					AddEventItem(random(28,31))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Thuy�n R�ng nh�n ���c <color=yellow>V�t Ph�m Qu� !")
				end
			end
			if GetTask(132) > 2 then
			if GetGlbMissionV(49) == 9999 then
				SetGlbMissionV(49,1000)
				if GetGlbMissionV(49) == 1000 then
					
						AddItem(0,10,5,5,0,0,0)
						Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Thuy�n R�ng nh�n ���c <color=yellow>Chi�u D� Ng�c S� T� !")
					
				end
			end
			end
			
			Talk(0,"")

		else
			Talk(1,"","Hack ha em ")
		end
	else
		Msg2Player("Gi�i h�n "..name.." �� ��t t�i �a : "..gioihan().."000 c�i ")
	end
else
	Talk(1,"","Hack ha em ")
end
end

function hoangkim()
i = random(1,9)
if i == 1 then
AddItem(0,6,2,1,0,0,0)
elseif i == 2 then
AddItem(0,5,4,1,0,0,0)
elseif i == 3 then
AddItem(0,9,2,1,0,0,0)
elseif i == 4 then
AddItem(0,7,14,1,0,0,0)
elseif i == 5 then
AddItem(0,2,29,1,0,0,0)
elseif i == 6 then
AddItem(0,8,2,1,0,0,0)
elseif i == 7 then
AddItem(0,4,2,1,0,0,0)
elseif i == 8 then
AddItem(0,3,1,1,0,0,0)
elseif i == 9 then
AddItem(0,3,2,1,0,0,0)
end
Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Thuy�n R�ng nh�n ���c <color=yellow>Trang b� Kim Phong !")
end


function vatphamcui()
sx3 = random(1,100)

if sx3 == 50 then
	AddEventItem(114)
	Msg2Player("B�n nh�n ���c 1 b�nh N� Nhi H�ng nh� ")
end

sx2 = random(1,100)
if (sx2 == 50) then
	AddEventItem(113)
	Msg2Player("B�n nh�n ���c 1 b�nh Ti�n Th�o L� nh� ")
end
end


function gioihan()
return GetTask(132)*500000 + 500000
end
