task = 954
itemidx = 142
function main(idx)
n = GetItemCount(itemidx)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� s� d�ng l�ng ��n!")
	return
end

if GetTask(task) >= gh then
Talk(1,"","Hi�n t�i �� ��t gi�i h�n s� d�ng L�ng ��n Trung Thu, kh�ng th� s� d�ng th�m") 
return
end
	
			if GetItemCount(itemidx) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(itemidx) == (n-1) then
						SetTask(task, GetTask(task) + 500)
						AddOwnExp(500000)
						Msg2Player("Gi�i h�n: "..GetTask(task).."000 / "..gh.."000")
						banhtrungthu = RandomNew(1,100)
						if banhtrungthu < 5 then
								itemname = AddEventItem(148)
								Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(itemname).."")
						end
						XacSuatVatPham()
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

function XacSuatVatPham()
sx = RandomNew(1,60)
if sx == 50 then
			sx2 = RandomNew(1,200)
			if sx2 < 100 then
					idxitem = AddEventItem(random(173,174))
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			elseif sx2 < 130 then
					idxitem = AddEventItem(114)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 150 then
					idxitem = AddEventItem(113)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			elseif sx2 < 170 then
					idxitem = AddEventItem(118)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			elseif sx2 < 180 then		
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
						idxitem = AddItem(0,5,4,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then		
						idxitem = AddItem(0,4,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
						idxitem = AddItem(0,7,14,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
						idxitem = AddItem(0,9,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
						idxitem = AddItem(0,2,29,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
						idxitem = AddItem(0,3,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
						idxitem = AddItem(0,6,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
						idxitem = AddItem(0,8,2,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
						idxitem = AddItem(0,3,1,2,0,0,0)
						Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
					end				
			elseif sx2 < 190 then
					idxitem = AddEventItem(117)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 195 then
					idxitem = AddEventItem(115)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")				
			elseif sx2 < 198 then
					idxitem = AddEventItem(119)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")				
			elseif sx2 < 200 then
					idxitem = AddEventItem(16)
					Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			else
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L�ng ��n Tr�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end

function gioihan()
if GetTask(955) == 0 then
return 500000
elseif GetTask(955) == 1 then
return 1000000
elseif GetTask(955) == 2 then
return 1500000
else
return 0
end
end