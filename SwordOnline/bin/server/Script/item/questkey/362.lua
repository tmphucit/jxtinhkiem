Include("\\script\\global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

idxitem = THUYENRONGNHO

function main(idx)
-- if GetLevel() < 70 then
	Talk(1,"","Event h�t h�n s� d�ng kh�ng th� s� d�ng !")
	-- return
	-- end
-- if GetLevel() >= 125 then
	-- Talk(1,"","Ng��i �at c�p 125 kh�ng th� s� d�ng !")
	-- return
	-- end	
-- if GetTask(Task_GH_THUYENRONGNHO) >= GH_BanhDauXanh then
	-- Talk(1,"","B�n �� s� d�ng t�i �a "..GH_BanhDauXanh.." s� l��ng Huy Ch��ng Chi�n C�ng (th��ng), kh�ng th� nh�n th�m !")
	-- return
	-- end


-- n = GetItemCount(idxitem)
-- if GetItemCount(idxitem) >= 1 then
	-- DelItemIdx(idx);
	-- if GetItemCount(idxitem) == (n-1) then
		-- SetTask(Task_GH_THUYENRONGNHO, GetTask(Task_GH_THUYENRONGNHO) + 1)
		-- AddOwnExp(Exp_BanhDauXanh)
		-- SetTask(612,GetTask(612)+1)
		-- SetTask(715,GetTask(715)+1)
		-- Msg2Player("S� d�ng: "..GetTask(Task_GH_THUYENRONGNHO).." / "..GH_BanhDauXanh.."")
	
	-- sxitem = RandomNew(1,Rate_Item_EventThuong)
		-- if sxitem == Rate_Item_EventThuong then
				-- nType = RandomNew(1,Max_RateThuong)
				-- for k=1,getn(MANG_ITEMEVENTTHUONG) do
					-- if nType < MANG_ITEMEVENTTHUONG[k][1] then
							-- AddEventItem(MANG_ITEMEVENTTHUONG[k][2])
							-- Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().."<color> s� d�ng M�m B�c Ng� Qu� (th��ng) nh�n ���c <color=yellow>1 "..MANG_ITEMEVENTTHUONG[k][3].."")
							-- break
					-- end
				-- end
		-- end
		-- Talk(0,"")
	-- else
		-- Talk(1,"","Hack Ha Em")
	-- end
-- end

end

