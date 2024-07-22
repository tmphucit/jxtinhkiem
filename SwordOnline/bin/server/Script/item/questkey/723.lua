Include("\\script\\global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

idxitem = THUYENRONGLON

function main(idx)
if GetLevel() < 200 then
	Talk(1,"","§· hÕt h¹n sö dung !")
	return
	end
-- if GetLevel() >= 125 then
	-- Talk(1,"","Ng­¬i ®at cÊp 125 kh«ng thÓ sö dông !")
	-- return
	-- end
	
if GetTask(Task_GH_THUYENRONGLON) >= GH_BanhThapCam then
Talk(1,"","B¹n ®· sö dông tèi ®a "..GH_BanhThapCam.." sè l­îng B¸nh Sinh NhËt Lín (®Æc biÖt), kh«ng thÓ nhËn thªm !")
	return
	end


n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		SetTask(Task_GH_THUYENRONGLON, GetTask(Task_GH_THUYENRONGLON) + 1)
		AddOwnExp(Exp_BanhThapCam)
		SetTask(612,GetTask(612)+1)
		Msg2Player("Sö dông: "..GetTask(Task_GH_THUYENRONGLON).." / "..GH_BanhThapCam.."")
		
		sxitem = RandomNew(1,Rate_Item_ThapCam)
		if sxitem == Rate_Item_ThapCam then
				nType = RandomNew(1,Max_Rate)
				for k=1,getn(MANG_ITEM) do
					if nType < MANG_ITEM[k][1] then
							AddEventItem(MANG_ITEM[k][2])
							Msg2SubWorld("Chóc mõng <color=green>"..GetName().."<color> sö dông B¸nh Sinh NhËt Lín (®Æc biÖt) nhËn ®­îc <color=yellow>1 "..MANG_ITEM[k][3].."")
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






