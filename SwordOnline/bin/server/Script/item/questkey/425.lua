function main(idx)
sl = GetItemCount(425)

if GetTask(465) >= gioihan() then
	Talk(1,"","B�n �� s� d�ng v��t qu� s� l��ng Gi�i H�n S� Ki�n: <color=yellow>"..GetTask(465).."000000 / "..gioihan().."000000")
return
end

DelItemIdx(idx);
if GetItemCount(425) == sl -1 then
		AddOwnExp(6000000)
		SetTask(465, GetTask(465) + 6)
		Msg2Player("Gi�i h�n: "..GetTask(465).."000000 / "..gioihan().."000000") 
		
		vatpham = random(1,100)
		if vatpham == 50 then
			sx = random(1,10)
			if sx == 1 then
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 2 then
				idxitem = AddEventItem(random(414,415))
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 3 then
				idxitem = AddEventItem(random(406,407))
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(random(173,175))
				Msg2Player("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			end
		end
		
		hoangkim =  random(1,200)
		if hoangkim == 100 then
			sx = random(1,12)
			if sx == 1 then
				idxitem = AddItem(0,4,3,random(1,7),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			elseif sx == 2 then
				idxitem = AddItem(0,3,3,random(1,7),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			elseif sx == 3 then
				idxitem = AddItem(0,3,4,random(1,7),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			elseif sx == 4 then
				idxitem = AddItem(0,9,3,random(1,7),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			elseif sx == 5 then
				idxitem = AddItem(0,10,5,5,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			elseif sx == 6 then
				idxitem = AddEventItem(411)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(random(39,43))
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			end
		end
		
		lbgoiboss = random(1,80)
		if lbgoiboss == 40 then
			idxitem = AddEventItem(129)
			Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ng��i Tuy�t Th��ng may m�n nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end

end

function gioihan()
if GetTask(466) == 1 then
return 6000
elseif GetTask(466) == 2 then
return 100000
else
return 3000
end
end