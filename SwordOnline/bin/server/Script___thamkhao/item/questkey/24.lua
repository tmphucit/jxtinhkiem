-- LAM RANDOM TOA DO
function main(idx)
w,x,y = GetWorldPos()

if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp 80 míi ®­îc sö dông Tèng Kim Chiªu Th­ ")
return
end

if w >= 116 and w <= 134 then
Msg2Player("Kh«ng thÓ sö dông Tèng Kim Chiªu Th­ trong L·nh §Þa Bang Héi !")
return
end

if GetPKState() ~= 0 then
Talk(1,"","VËt phÈm chØ sö dông trong tr¹ng th¸i luyÖn c«ng !")
return
end

if check_accept_map() == 1 then
Msg2Player("Kh«ng thÓ sö dông Tèng Kim Chiªu Th­ trong b¶n ®å nµy !")
return
end
DelItemIdx(idx);
if check_accept_map() == 0 then
	SayNew("<color=red>HÖ Thèng: <color> §©y lµ giÊy phÐp th«ng hµnh gióp ng­¬i ®Õn chiÕn tr­êng nhanh nhÊt, ng­êi muèn vµo bªn nµo ?",3,
	"Vµo Bªn Tèng /vaotong",
	"Vao Bªn Kim/vaokim",
	"Ta sÏ sö dông sau /no")
else
	Talk(1,"","Hack ha em")
end


end;


function no()
end

function vaotong()
SetTask(128,0) -- Xoa Tham gia TK

SetPunish(0)
SetFightState(0)
SetDeathScript("");
DelMagic(413)
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(1)
Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Tèng !")
BlockPKState(0)
NewWorld(60,1528,3195)
end

function vaokim()
SetTask(128,0) -- Xoa Tham gia TK

SetPunish(0)
SetFightState(0)
SetDeathScript("");
DelMagic(413)
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(2)
Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Kim !")
BlockPKState(0)
NewWorld(60,1593,3075)
end

function check_accept_map()
w,x,y = GetWorldPos()
for i=1,getn(checkmap) do
	if w == checkmap[i] then
	return 1
	end
end
return 0
end


checkmap = {
26, -- vuot ai
27, -- vuot ai 2
28, -- vuot ai 3
29, -- vuot ai 4
33, --  TK cuu sat
20, -- Dao tay tuy
25, -- nha lao
45, -- loi dai
5, -- nha lao
42, -- lien dau ht
43, -- lien dau
34, -- cong
35, -- thu
36, -- cong thanh
47, -- ben thuyen 1
48, --ben thuyen 2
49, --ben thuyen 3
60, -- Diem bao danh tong kim
61, -- TK BOss
}