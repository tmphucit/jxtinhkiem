nv = 157
sl = 156

function main()
Say("<color=green>Long Ngò <color>: Chµo <color=red>"..GetName().."<color>, chóng ta h·y b¾t ®Çu vµo nh÷ng thö th¸ch míi nµo!",4,
"NhiÖm vô Long Ngò /nvtanthu",
"NhiÖm vô Hoµng kim /nvhk",
"Häc kü n¨ng Khing C«ng/hockc",
"Tho¸t./no")
end
function hockc()
n = GetCash()
if GetCash() >= 10000 then
Pay(10000)
	if GetCash() == (n-10000) then
	AddMagic(210,1)
	else
	Talk(1,"","Hack ha em")
	end
else
Talk(1,"","<color=green>Long Ngò <color>: B¹n kh«ng mang ®ñ <color=yellow> 1 v¹n<color> l­îng")
end
end
function nvtanthu()
if GetTask(nv) == 0 then
Say("<color=green>Long Ngò <color>: Chµo <color=red>"..GetName().."<color>, chóng ta h·y b¾t ®Çu vµo nh÷ng thö th¸ch míi nµo!",2,
"NhËn nhiÖm vô /nhnv",
"Tho¸t./no")
elseif GetTask(nv) == 1 then
	if GetTask(sl) >= 3 then
	SetTask(nv,2)
	SetTask(sl,0)
	Talk(2,"","<color=green>Long Ngò <color>: Chóc Mõng ! B¹n ®· hoµn thµnh nhiÖm vô !",
	"<color=green>Long Ngò <color>: H·y ®Õn D­îc §iÕm ë Thµnh §« mua 1 b×nh Ngò Hoa T¸n ®em vÒ cho ta !")
	else
	Talk(1,"","<color=green>Long Ngò <color>: Tiªu diÖt NhÝm ë Ba L¨ng HuyÖn: <color=red>223/213, 219/182, 178/207<color>")
	end
elseif GetTask(nv) == 2 then
	item = GetItemCount(18)
	if GetItemCount(18) >= 1 then
		DelItem(18)
		if GetItemCount(18) == (item-1) then
		SetTask(nv,3)
		Talk(2,"","<color=green>Long Ngò <color>: Chóc Mõng ! B¹n ®· hoµn thµnh nhiÖm vô !",
		"<color=green>Long Ngò <color>: Ra ngoµi tiªu diÖt 200 con qu¸i råi quay l¹i gÆp ta !!!")
		else
		Talk(1,"","Hack ha em")
		end

	else
	Talk(1,"","<color=green>Long Ngò <color>: h·y ®Õn D­îc §iÕm ë Thµnh §« mua 1 b×nh Ngò Hoa T¸n ®em vÒ cho ta !")
	end
elseif GetTask(nv) == 3 then
	item = GetTask(sl)
	if GetTask(sl) >= 200 then
	SetTask(sl,GetTask(sl)-200)
		if GetTask(sl) == (item-200) then	
		SetTask(nv,4)
		SetTask(sl,0)
		Talk(1,"","<color=red>Long Ngò <color>:Xin Chóc Mõng! B¹n ®· hoµn thµnh nhiÖm vò Long Ngò")
		for k=1,25 do AddOwnExp(2500) end
		Earn(30000)
		Talk(0,"no","")
		Msg2Player("B¹n nhËn ®­îc 62.500 kinh nghiÖm")
		Msg2Player("B¹n nhËn ®­îc 3 v¹n l­îng")
		else
		Talk(1,"","Hack ha em")
		end
	else
	Talk(1,"","<color=green>Long Ngò :<color> B¹n ®· tiªu diÖt <color=red>"..GetTask(sl).."<color>/200 qu¸i vËt ngoµi Ba L¨ng HuyÖn")
	end	
elseif GetTask(nv) == 4 then
Talk(1,"","<color=green>Long Ngò :<color> B¹n ®· hoµn thµnh nhiÖm vô Long Ngò")
end
end
function nvhk()
if GetLevel() >= 30 then
if GetTask(nv) == 4 then
 	Talk(1,"","<color=green>Long Ngò <color>: §Õn Thµnh §« 394/323 t×m <color=red> Lý M¹c SÇu ")	
elseif GetTask(nv) < 4 then
Talk(1,"","<color=green>Long Ngò <color>: B¹n ch­a hoµn thµnh nhiÖm vô Long Ngò !!")
else
Talk(1,"","<color=green>Long Ngò <color>: B¹n ®ang lµm nhiÖm vô hoµng kim !!")
end
else
	Talk(1,"","<color=green>Long Ngò <color>: §¹t ®¼ng cÊp <color=red>30<color> råi quay l¹i gÆp ta !")
end
end
function nhnv()
if GetLevel() >= 20 then
SetTask(nv,1)
Talk(1,"","<color=green>Long Ngò <color>: H·y ra ngoµi Ba L¨ng HuyÖn t×m 3 thñ cÊp <color=red>NhÝm<color> vÒ cho ta !")
else
	Talk(1,"","<color=green>Long Ngò <color>: §¹t ®¼ng cÊp <color=red>20<color> råi quay l¹i gÆp ta !")
end
end



function no()
Msg2Player("HÑn gÆp l¹i b¹n !!!")
end
