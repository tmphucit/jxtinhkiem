function main(idx)
SetPKState(1)
h,m,s = GetTimeNew()
Talk(1,"","Thêi gian kÕt qu¶ cßn l¹i lµ: "..(14-m).." phót "..(59-s).." gi©y ! ")
	if h == 19 and m < 15 then
		Msg2Player("Thêi gian kÕt qu¶ cßn l¹i lµ: "..(14-m).." phót "..(59-s).." gi©y !")	
	elseif h == 19 and m >= 15 and m < 20 then
		DelNpc(idx)	
		w,x,y = GetWorldPos();
		quyhuyhoang = AddNpc(920,95,SubWorldID2Idx(w),x*32,y*32)
		SetNpcScript(quyhuyhoang, "\\script\\huyhoang\\quahuyhoang.lua");
		SetNpcName(quyhuyhoang,"Qu¶ Huy Hoµng ")
	else
			DelNpc(idx)	
	end

end