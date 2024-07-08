function main()
SayNew("<color=green>Ng¹o V©n T«ng: <color>Chµo §¹i hiÖp <color=red>"..GetName().."<color> ®Ó xem cã g× cho b¹n nµo",4,
"NhiÖm vô chÝnh tuyÕn /nvct",
"NhiÖm vô trung lËp /nvtl",
"NhiÖm vô tµ ph¸i/nvtp",
"Ta sÏ quay l¹i sau ! /no")
end

function nvtp()
if GetLevel() >= 60 then
if GetTask(157) < 15 then
Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> B¹n ch­a hoµn thµnh nhiÖm vô trung lËp . ")
elseif GetTask(157) == 15 then
	SetTask(157,16)
	Msg2Player("NhiÖm Vô: §Õn Ba L¨ng HuyÖn t×m V©n Nhi ...")
	Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> §Õn Ba L¨ng HuyÒn t×m V©n Nhi")
elseif GetTask(157) == 16 then
Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> §Õn Ba L¨ng HuyÒn t×m V©n Nhi")
elseif GetTask(157) == 20 then
	SetTask(156,0)
	SetTask(157,21)
	Msg2Player("NhiÖm Vô: Tiªu diÖt H¹ HÇu Phôc t¹i Ch©n Nói Tr­êng B¹ch ")
	Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> Tiªu diÖt H¹ HÇu Phôc t¹i Ch©n Nói Tr­êng B¹ch 150/162") 
elseif GetTask(157) == 21 then
	if GetTask(156) == 1 then
		SetTask(156,0)
		SetTask(157,22)
		Msg2Player("NhiÖm Vô: T×m Tiªu S­ ë Ph­îng T­êng ")
		Talk(1,"","<color=green>Ng¹o V©n T«ng <color> §Õn Ph­îng T­êng t×m Tiªu S­ ...")
	else
	Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> Ch­a tiÖu diÖt h¾n th× ®õng cã gÆp ta ....") 
	end
elseif GetTask(157) == 22 then
	Talk(1,"","<color=green>Ng¹o V©n T«ng <color> Tiªu S­ ®ang ë Ph­îng T­êng 200/194 ")
elseif GetTask(157) == 23 then
if CheckFreeBoxItem(4,364,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

	SetTask(157,24)
	if GetTask(157) == 24 then
		Talk(1,"","<color=green>Ng¹o V©n T«ng <color> NhiÖm vô ChÝnh TuyÕn - Tµ Ph¸i hoµn thµnh ")
		
		for k=1,10 do AddOwnExp(50000) end
		Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm")
		kimphong3()
		SetTask(157,25)
		TayKyNang()
		Talk(0,"")

	end
else
Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> Ta kh«ng cã viÖc g× ®Ó thö th¸ch nhµ ng­¬i ...")
end
else
	Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: §¹t ®¼ng cÊp <color=red>60<color> råi quay l¹i gÆp ta !")
end
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end


function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end
function no()
Msg2Player("H·y vÒ luyÖn tËp khi nµo s½n sµng th× ®Õn gÆp ta !")
end
function nvct()
if GetLevel() >= 40 then
if GetTask(157) == 6 then
	SetTask(157,7)
	if GetTask(157) == 7 then
	SetTask(156,0)
	Msg2Player("NhiÖm Vô: §Õn Hoa S¬n tiªu diÖt 100 con NhÝm vµ 1 con NhÝm Chóa ")
	Talk(2,"","B¹n ®· nhËn NhiÖm vô ChÝnh TuyÕn !",
	"§Õn Hoa S¬n tiªu diÖt 100 con NhÝm vµ 1 Con NhÝm Chóa")	
	else
	Talk(1,"","Hack ha em")
	end
elseif GetTask(157) == 7 then
	a = GetTask(156)
	if GetTask(156) == 101 then
		SetTask(156,GetTask(156)-101)		
		if GetTask(156) == (a-101) then
		SetTask(156,0)
		SetTask(157,8)
		Msg2Player("NhiÖm Vô: §Õn T­¬ng D­¬ng t×m ¡n Mµy. Giao cho h¾n 5 v¹n l­îng ®Ó kiÕm ®iÓm tÝch ®øc ")
		Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> §Õn Thµnh §« t×m ¡n Mµy ®Ó kiÕm chót tÝch ®øc ")
		else
		Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","§Õn Hoa S¬n tiªu diÖt 100 con NhÝm. Sau ®ã ®¸nh b¹i 1 con NhÝm Chóa ....")
	end
elseif GetTask(157) == 8 then
if CheckFreeBoxItem(4,364,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end
	if GetTask(156) == 1 then
		SetTask(156,0)
		if GetTask(156) == 0 then
			SetTask(157,9)
			if GetTask(157) == 9 then
			
			for k=1,10 do AddOwnExp(50000) end
			Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm")
			kimphong()
			Talk(0,"")
			else
			Talk(1,"","hack he em")
			end	
		else
		Talk(1,"","hack he em")
		end
	else
	Talk(1,"","<color=green>Ng¹o V©n T«ng: <color> H·y ®Õn T­¬ng D­¬ng t×m ¡n Mµy ®i ! ")
	end		
elseif GetTask(157) == 9 then
	Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: B¹n ®· hoµn thµnh nhiÖm vô chÝnh tuyÕn ")
else
Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: ThÕ gian cßn rÊt nhiÒu thö th¸ch mµ con ng­êi ch­a v­ît qua hÕt !")
end
else
	Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: §¹t ®¼ng cÊp <color=red>40<color> råi quay l¹i gÆp ta !")
end
end
function nvtl()
if GetLevel() >= 50 then
if GetTask(157) < 9 then
Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: NhiÖm vô chÝnh tuyÕn ch­a hoµn thµnh !")
elseif GetTask(157) == 9 then
Msg2Player("NhiÖm Vô: §Õn T­¬ng D­¬ng t×m Phã Nam B¨ng. ")
Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: H·y ®Õn T­¬ng D­¬ng t×m Phã Nam B¨ng. Cã thÓ gióp Ých cho ng­¬i ®ã ...")
elseif GetTask(157) == 14 then
if CheckFreeBoxItem(4,364,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

	SetTask(157,15)
	if GetTask(157) == 15 then
	
		for k=1,10 do AddOwnExp(50000) end
		Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm")
		kimphong2()
		Talk(1,"no","NhiÖm vô hoµn thµnh !")

		
	end
elseif GetTask(157) == 15 then
	Talk(1,"","NhiÖm vô ®· hoµn thµnh")	
else
Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: ThÕ gian cßn rÊt nhiÒu thö th¸ch mµ con ng­êi ch­a v­ît qua hÕt !")
end
else
	Talk(1,"","<color=green>Ng¹o V©n T«ng <color>: §¹t ®¼ng cÊp <color=red>50<color> råi quay l¹i gÆp ta !")
end
end



				
			
				
		
function kimphong2()
--sx = random(1,3)
--if sx == 1 then
	idx = AddItem(0,6,2,1,0,0,0)
	SetTimeItem(idx,550324);
--elseif sx == 2 then
	idx = AddItem(0,8,2,1,0,0,0)
	SetTimeItem(idx,550324);
--elseif sx == 3 then
	idx = AddItem(0,9,2,1,0,0,0)
	SetTimeItem(idx,550324);
--end
Talk(0,"")
end

function kimphong()
--sx = random(1,3)
--if sx == 1 then
	idx = AddItem(0,2,29,1,0,0,0)	
	SetTimeItem(idx,550324);	
--elseif sx == 2 then
	idx = AddItem(0,7,14,1,0,0,0)
	SetTimeItem(idx,550324);
--elseif sx == 3 then
	idx = AddItem(0,5,4,1,0,0,0)
	SetTimeItem(idx,550324);
--end	
Talk(0,"")
end
function kimphong3()
--sx = random(1,3)
--if sx == 1 then
	idx = AddItem(0,4,2,1,0,0,0)
	SetTimeItem(idx,550324);
--elseif sx == 2 then
	idx = AddItem(0,3,2,1,0,0,0)
	SetTimeItem(idx,550324);
--elseif sx == 3 then
	idx = AddItem(0,3,1,1,0,0,0)
	SetTimeItem(idx,550324);
--end
Talk(0,"")
end


