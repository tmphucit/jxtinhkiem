-- LAM RANDOM TOA DO
function main1(idx)
Talk(1,"","T�nh n�ng �ang c�p nh�t !")
end

function main(idx)
w,x,y = GetWorldPos()

if GetTask(131) == 10000 then
Talk(1,"","Kh�ng th� s� d�ng cho nh�n v�t �ua Top !")
return
end

if w >= 116 and w <= 134 then
Msg2Player("Kh�ng th� s� d�ng T�ng Kim Chi�u Th� trong L�nh ��a Bang H�i !")
return
end

if GetPKState() ~= 0 then
Talk(1,"","V�t ph�m ch� s� d�ng trong tr�ng th�i luy�n c�ng !")
return
end

if check_accept_map() == 1 then
Msg2Player("Kh�ng th� s� d�ng T�ng Kim Chi�u Th� trong b�n �� n�y !")
return
end
DelItemIdx(idx);
if check_accept_map() == 0 then
	SayNew("<color=red>H� Th�ng: <color> ��y l� gi�y ph�p th�ng h�nh gi�p ng��i ��n chi�n tr��ng nhanh nh�t, ng��i mu�n v�o b�n n�o ?",3,
	"V�o B�n T�ng /vaotong",
	"Vao B�n Kim/vaokim",
	"Ta s� s� d�ng sau /no")
else
	Talk(1,"","Hack ha em")
end


end;


function no()
end

function vaotong()

SetTask(12,0) -- Reset Tong Kim
SetTask(19,0) -- Reset Danh Hieu
SetTask(128,0) -- Xoa Tham gia TK
SetTask(40,0)
-- Reset Task Xep Hang
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)

SetPunish(0)
SetFightState(0)
SetDeathScript("");
DelMagic(413)
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(1)
Msg2Player("B�n �� v�o khu v�c b�o danh phe T�ng !")
BlockPKState(0)
NewWorld(60,1528,3195)
end

function vaokim()

SetTask(12,0) -- Reset Tong Kim
SetTask(19,0) -- Reset Danh Hieu
SetTask(128,0) -- Xoa Tham gia TK
SetTask(40,0)
-- Reset Task Xep Hang
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)

SetPunish(0)
SetFightState(0)
SetDeathScript("");
DelMagic(413)
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(2)
Msg2Player("B�n �� v�o khu v�c b�o danh phe Kim !")
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