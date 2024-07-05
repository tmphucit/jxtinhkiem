Include("\\script\\thuvien\\hamchuot.lua");
Include("\\script\\Global\\doimaump.lua")
Include("\\DataScript\\tongkim\\tongkim.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
	Say("<color=green>Kim Qu©n Nhu: <color> B¹n ®ang cã: \n+ <color=yellow>"..GetTask(15).."<color> ®iÓm tÝch luü Tèng Kim.",3,
	"Mua §¹o Cô Tèng Kim/muadaocu",
	--"§æi Kinh NghiÖm/doihc",
	--"TÝch luü ®æi R­¬ng/dlrv",
	"§æi Nh¹c V­¬ng KiÕm/dnvhtnvk",
	"Tho¸t/no")
end

function muadaocu()
Sale(25,2)
Msg2Player("B¹n hiÖn ®ang cã "..GetTask(15).." ®iÓm tÝch lòy !")
end


function ddtldnvht()
Say("<color=green>Kim Qu©n Nhu: <color> HiÖn giê ng­¬i ®ang cã <color=fire>"..GetTask(122).."<color> ®iÓm tÝch luü chiÕn trËn, ®Ó ®æi nh¹c v­¬ng hån th¹ch cÇn <color=wood>10<color> ®iÓm tÝch luü chiÕn trËn, ng­¬i ®æi chø ?",2,"Ta muèn ®æi Nh¹c V­¬ng Hån th¹ch/ddtldnvhtok","Tho¸t/no")
end;
function giaodich()
Sale(23)
end
function dnvhtnvk()

sl = GetItemCount(165)

if sl >= 50 then

for i=1,50 do
DelItem(165)
end

if GetItemCount(165) == sl-50 then
AddEventItem(164)
Msg2Player("B¹n ®· nhËn ®­îc 1 Nh¹c V­¬ng KiÕm")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end

else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 50 Nh¹c V­¬ng Hån Th¹ch<color>, kh«ng thÓ luyÖn thµnh Nh¹c V­¬ng KiÕm !")
end

end;
function doihc()
Say("<color=green>Kim Qu©n Nhu <color>: Vui lßng chän mèc tÝch lòy b¹n muèn ®æi  ",4,
"§æi 500 tÝch lòy/doiexp1",
"§æi 1000 tÝch lòy/doiexp1",
"§æi 2000 tÝch lòy/doiexp1",
"Tho¸t./no")
end

soluongquai =  {{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{200,1200,1800}}

function doiexp1(nsel)
i = nsel+1
if i == 1 then
doiexp2(500)
elseif i == 2 then
doiexp2(1000)
elseif i == 3 then
doiexp2(2000)
end
end

function doiexp2(num)
tl = GetTask(15)
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ 80, kh«ng thÓ ®æi kinh nghiÖm !")
return
end
if (tl >= num) then
	vt = 1
	for i=1,getn(soluongquai) do
	if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
	vt = i
	end
	end
	exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
	exp2 = exp / 10000 * num / 2
SetTask(15,tl-num)
if (GetTask(15) == (tl-num)) then
	AddOwnExp(exp2)
	Msg2Player("B¹n nhËn ®­îc "..exp2.." ®iÓm kinh nghiÖm")
	Msg2Player("B¹n ®· dïng "..num.." ®iÓm tÝch luü ®æi kinh nghiÖm")
	Talk(0,"")
else
Msg2Player("Hack a cung yeu !")
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> "..num.." tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end



function ddtldnvhtok()
tl = GetTask(122)
if (tl >= 10) then
SetTask(122,tl-10)
if (GetTask(122) == (tl-10)) then
AddEventItem(165)
Msg2Player("B¹n nhËn ®­îc 1 Nh¹c V­¬ng Hån Th¹ch")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­êi kh«ng ®ñ <color=red> 10 ®iÓm tÝch lòy chiÕn trËn <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;




function dlrv()
Say("<color=green>Kim Qu©n Nhu: <color> HiÖn t¹i ng­¬i ®ang cã <color=fire>"..GetTask(15).."<color> ®iÓm tÝch luü, tuú ng­¬i sö dông",3,
"§æi R­¬ng B¹c (10000 ®iÓm)/lanhrb",
"§æi Ch×a Kho¸ B¹c (5000 ®iÓm)/lanhckb",
"Tho¸t/no")
end;

function lanhrb()

tl = GetTask(15)
if (tl >= 10000) then
SetTask(15,tl-10000)
if (GetTask(15) == (tl-10000)) then
AddEventItem(142)
Msg2Player("B¹n ®¶ nhËn ®­îc 1 R­¬ng B¹c")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 10000 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;

function lanhrv()

tl = GetTask(15)
if (tl >= 8000) then
SetTask(15,tl-8000)
if (GetTask(15) == (tl-8000)) then
AddEventItem(143)
Msg2Player("B¹n ®· nhËn ®­îc 1 R­¬ng Vµng")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 8000 tÝch lòy <color>, bao gio du hay den day.")
end
end;


function lanhckb()
tl = GetTask(15)
if (tl >= 5000) then
SetTask(15,tl-5000)
if (GetTask(15) == (tl-5000)) then
AddEventItem(144)
Msg2Player("B¹n ®· nhËn ®­îc 1 Ch×a Kho¸ B¹c")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬ng kh«ng ®ñ <color=red> 5000 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;


function lanhckv()
tl = GetTask(15)
if (tl >= 200) then
SetTask(15,tl-200)
if (GetTask(15) == (tl-200)) then
AddEventItem(145)
Msg2Player("Ban da nhan duoc 1 Chia Khoa Vang")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Nguoi khong du <color=red> 200 tich lòy <color>, bao gio du hay den day.")
end
end;




function topcaothu()
Talk(1,"","Top cao thñ Tèng Kim hiÖn t¹i lµ: [<color=red>"..TOP_TUAN[1].."<color>] víi sè ®iÓm: <color=yellow>"..TOP_TUAN[2].."<color> ®iÓm tÝch lòy !")
Msg2Player("Top cao thñ Tèng Kim hiÖn t¹i lµ: ["..TOP_TUAN[1].."] víi sè ®iÓm: "..TOP_TUAN[2].." ®iÓm tÝch lòy !")
end

function capnhathang()
	if GetTask(126) > TOP_TUAN[2] then
		TOP_TUAN[1] = GetName()
		TOP_TUAN[2] = GetTask(126)
		TOP_TUAN[6] = GetUUID()
		TOP_TUAN[3] = GetTask(13)
		TOP_TUAN[4] = GetLevel()
		TOP_TUAN[5] = GetTask(139)
		TOP_TUAN[7] = GetAccount()
		Msg2Player("B¹n ®· vµo danh s¸ch Top Cao Thñ Tèng Kim tuÇn nµy víi sè ®iÓm tÝch lòy: "..GetTask(126).." ")
		BANG4 = TaoBang(TOP_TUAN,"TOP_TUAN")				
		LuuBang("Datascript/tongkim/tongkim.lua",BANG4)
	else
		Msg2Player("§iÓm cña b¹n kh«ng ®ñ ®Ó vµo Top Tèng Kim !")
		Msg2Player("§iÓm tÝch lòy cña ng­êi dÉn ®Çu Tèng Kim TuÇn nµy lµ: "..TOP_TUAN[2].." ")
	end
end

function no()
end;




function checksoluong()
SetGlbMissionV(83,0)
SetGlbMissionV(84,0)
for i=1,2000 do
PlayerIndex = i
w,x,y = GetWorldPos()
if GetTask(12) == 1 and w == 33 then
SetGlbMissionV(83,GetGlbMissionV(83)+1)
elseif GetTask(12) == 2 and w == 33 then
SetGlbMissionV(84,GetGlbMissionV(84)+1)
end
end
end