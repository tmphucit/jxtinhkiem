

function main(idx)
DelItemIdx(idx);
end
function main_(idx)
ngay = tonumber(date("%d"))

tinhtoan = GetTask(913) - mod(GetTask(913),1000)
if tinhtoan ~= ngay*1000 then
	SetTask(913, ngay * 1000)
end

if mod(GetTask(913),1000) >= 10 then
Talk(1,"","Ng��i �� ��t gi�i h�n s� d�ng H�ng Bao trong ng�y !")
return
end


n = GetItemCount(662)
			if GetItemCount(662) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(662) == (n-1) then
						SetTask(913, GetTask(913) + 1)
						Msg2Player("Gi�i h�n s� d�ng H�ng Bao trong ng�y: "..mod(GetTask(913),1000).." / 10 l�n !")
						sx = RandomNew(1,100)
						if sx < 90 then
								AddOwnExp(500000)
								Msg2Player("B�n nh�n ���c 500.000 kinh nghi�m !")
						else
							sx2 = RandomNew(1,100)
							if sx2 < 60 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							elseif sx2 < 80 then
									idxitem = AddEventItem(random(115,120))
									Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							elseif sx2 < 90 then		
									idxitem = AddEventItem(random(28,31))
									Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng H�ng Bao nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif sx2 < 92 then
									idxitem = AddEventItem(2)
									Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Thi�p Tri �n Ng��i L�nh nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
							else
									idxitem = AddEventItem(random(75,102))
									Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							end
						end
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

