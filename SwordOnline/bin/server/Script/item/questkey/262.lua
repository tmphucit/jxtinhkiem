Include("\\script\\global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

idxitem = THUYENRONGLON

function main(idx)
-- if GetLevel() < 200 then
	-- Talk(1,"","Event h�t h�n s� d�ng kh�ng th� s� d�ng !")
	-- return
	-- end
-- if GetLevel() >= 125 then
	-- Talk(1,"","Ng��i �at c�p 125 kh�ng th� s� d�ng !")
	-- return
	-- end
	
if GetTask(Task_GH_THUYENRONGLON) >= GH_BanhThapCam then
Talk(1,"","B�n �� s� d�ng t�i �a "..GH_BanhThapCam.." s� l��ng Thuy�n R�ng Truy�n Th�ng (��c bi�t), kh�ng th� nh�n th�m !")
	return
	end


n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		SetTask(Task_GH_THUYENRONGLON, GetTask(Task_GH_THUYENRONGLON) + 1)
		AddOwnExp(Exp_BanhThapCam)
		-- SetTask(612,GetTask(612)+2)
		-- SetTask(716,GetTask(716)+1)
		Msg2Player("S� d�ng: "..GetTask(Task_GH_THUYENRONGLON).." / "..GH_BanhThapCam.."")
		
		sxitem = RandomNew(1,Rate_Item_ThapCam)
		if sxitem == Rate_Item_ThapCam then
				nType = RandomNew(1,Max_Rate)
				for k=1,getn(MANG_ITEM) do
					if nType < MANG_ITEM[k][1] then
							AddEventItem(MANG_ITEM[k][2])
							Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().."<color> s� d�ng Thuy�n R�ng Truy�n Th�ng (��c bi�t) nh�n ���c <color=yellow>1 "..MANG_ITEM[k][3].."")
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






