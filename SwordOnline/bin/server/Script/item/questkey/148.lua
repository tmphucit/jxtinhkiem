Include("\\script\\global\\sourcejx49.lua")

idxitem = BANHTHAPCAM

function main(idx)
if GetTask(Task_GH_BanhThapCam) >= GH_BanhThapCam then
Talk(1,"","B�n �� s� d�ng t�i �a "..GH_BanhThapCam.." s� l��ng B�nh Th�p C�m quy ��nh, kh�ng th� nh�n th�m !")
return
end


n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		SetTask(Task_GH_BanhThapCam, GetTask(Task_GH_BanhThapCam) + 1)
		AddOwnExp(Exp_BanhThapCam)
		SetTask(612,GetTask(612)+2)
		Msg2Player("S� d�ng: "..GetTask(Task_GH_BanhThapCam).." / "..GH_BanhThapCam.."")
		
		sxitem = RandomNew(1,Rate_Item_ThapCam)
		if sxitem == Rate_Item_ThapCam then
				nType = RandomNew(1,Max_Rate)
				for k=1,getn(MANG_ITEM) do
					if nType < MANG_ITEM[k][1] then
							AddEventItem(MANG_ITEM[k][2])
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c 1 "..MANG_ITEM[k][3].."")
							break
					end
				end
		end
		
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end






