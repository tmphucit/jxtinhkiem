taskevent = 914
function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if GetTask(taskevent) >= 10 then
Talk(1,"","B¹n ®· tr¶ lêi hÕt toµn bé c©u hái cña sù kiÖn nµy !")
return
end

if ngay == 30 and thang == 04 and gio == 21 and phut >= 15 and phut <= 30 then
		SayNew("<color=green>Sù KiÖn 30/04: <color> B¹n ®· tr¶ lêi c©u hái thø: <color=red>"..GetTask(taskevent).."<color> / 10 c©u.\nB¹n cã muèn tham gia kh«ng ?",2,
		"Tham gia tr¶ lêi c©u hái /cauhoi",
		"Tho¸t /no")
else
	Talk(1,"","Thêi gian ho¹t ®éng sù kiÖn Chµo Mõng ChiÕn Th¾ng 30/04 diÔn ra duy nhÊt 1 lÇn tõ 21h15 - 21h30 ngµy 30/04/2021")
end

end

function cauhoi()
SetTask(taskevent, GetTask(taskevent) + 1)
if GetTask(taskevent) > getn(CAUHOI) then
Talk(1,"","B¹n ®· tr¶ lêi hÕt toµn bé c©u hái cña sù kiÖn nµy !")
return
end

i = GetTask(taskevent)
a = random(1,4)
if a == 1 then
SayNew("<color=green>Hoa §¨ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][2].."/dung",
"B. "..CAUHOI[i][3].."/sai",
"C. "..CAUHOI[i][4].."/sai",
"D. "..CAUHOI[i][5].."/sai")
elseif a == 2 then
SayNew("<color=green>Hoa §¨ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][5].."/sai",
"B. "..CAUHOI[i][2].."/dung",
"C. "..CAUHOI[i][3].."/sai",
"D. "..CAUHOI[i][4].."/sai")
elseif a == 3 then
SayNew("<color=green>Hoa §¨ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][4].."/sai",
"B. "..CAUHOI[i][5].."/sai",
"C. "..CAUHOI[i][2].."/dung",
"D. "..CAUHOI[i][3].."/sai")
elseif a == 4 then
SayNew("<color=green>Hoa §¨ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][3].."/sai",
"B. "..CAUHOI[i][4].."/sai",
"C. "..CAUHOI[i][5].."/sai",
"D. "..CAUHOI[i][2].."/dung")
end 
end


function dung()
Msg2Player("C©u hái thø "..GetTask(taskevent)..": Tr¶ lêi chİnh x¸c")

AddOwnExp(1000000)



if GetLevel() < 90 then
		idxitem = AddEventItem(random(173,175))
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
else

		if GetGlbMissionV(37) == 123 then
			SetGlbMissionV(37, 0)
			idxitem = AddEventItem(random(0,1))
			Msg2SubWorld("Chóc mõng "..GetName().." tham gia sù kiÖn Hoa §¨ng nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).." ")
			return
		elseif GetGlbMissionV(37) == 456 then
			SetGlbMissionV(37, 0)
			idxitem = AddEventItem(random(651,654))
			Msg2SubWorld("Chóc mõng "..GetName().." tham gia sù kiÖn Hoa §¨ng nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).." ")
			return
		end						
								
		vp = RandomNew(1,100)
		if vp < 50 then
				idxitem = AddEventItem(random(173,175))
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		elseif vp < 80 then
			aa = random(115,120)
			idxitem = AddEventItem(aa)
			if aa == 120 or aa == 116 then
				Msg2SubWorld("Chóc mõng "..GetName().." tham gia sù kiÖn Hoa §¨ng nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).." ")
			else
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).." ")
			end
		elseif vp < 95 then
			idxitem = AddEventItem(random(28,31))
			Msg2SubWorld("Chóc mõng "..GetName().." tham gia sù kiÖn Hoa §¨ng nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
		else
			idxitem = AddEventItem(random(75,102))
			Msg2SubWorld("Chóc mõng "..GetName().." tham gia sù kiÖn Hoa §¨ng nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
		end
end


cauhoi()
end


function sai()
Msg2Player("C©u hái thø "..GetTask(taskevent)..": Tr¶ lêi kh«ng chİnh x¸c")
cauhoi()
end

CAUHOI = {
{"Ngµy 30/04 Lµ ngµy g×?","Ngµy gi¶i phãng miÒn Nam","Ngµy quèc kh¸nh ViÖt Nam","Ngµy quèc tÕ Lao §éng","Ngµy gi¶i phãng miÒn B¾c"},
{"Sù kiÖn 30/04 chÊm døt ®iÒu g×?","ChiÕn tranh ViÖt Nam", "ChiÕn tranh thÕ giíi","ChiÕn tranh MiÒn Nam","ChiÕn tranh MiÒn B¾c"},
{"ChiÕc xe t¨ng ®Çu tiªn hót ®æ cæng m· hiÖu bao nhiªu?","M· HiÖu 390","M· hiÖu 696","M· HiÖu 843","M· HiÖu 630"},
{"Xe t¨ng hót ®æ cæng cña Dinh thù nµo?","Dinh §éc LËp","Dinh Thèng NhÊt","Dinh Winchester","Dinh CËu Phó Quèc"},
{"M· hiÖu cña xe t¨ng cßn l¹i tiÕn vµo Dinh §éc LËp?","M· HiÖu 843","M· hiÖu 696","M· HiÖu 390","M· HiÖu 630"}, 
{"Ai lµ ng­êi c¾m cê ViÖt Nam trªn Dinh §éc LËp?","Bïi Quang ThËn","Bïi ThŞ Xu©n","Bïi TiÕn Dòng","Bïi Anh TuÊn"},
{"Ai lµ ng­êi chØ huy chiÕn dŞch nµy?","Vâ Nguyªn Gi¸p","B¸c Hå ","TrÇn Quèc To¶n","Lª Th¸nh T«n"},
{"Ai chØ huy xe t¨ng m· hiÖu 390?","Vò §¨ng Toµn","Vâ Nguyªn Gi¸p","Bïi Quang ThËn","NguyÔn V¨n TËp"},
{"Tªn chiÕn dŞch nµy lµ g×?","ChiÕn dŞch Hå Chİ Minh","ChiÕn dŞch Thèng NhÊt §Êt N­íc","ChiÕn dŞch Hµ Néi","ChiÕn dŞch Mïa Xu©n 1975"},
{"Vâ Nguyªn Gi¸p lµ thµnh viªn cña §¶ng nµo?","§¶ng Céng S¶n","§¶ng Céng Hßa","§¶ng D©n Chñ ","§¶ng Thèng NhÊt"},
}
