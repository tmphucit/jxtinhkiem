Include("\\script\\lib\\thuvien.lua")
Include("\\\script\\hoatdong\\tongkim\\tong\\baodanhtong.lua")
Include("\\\script\\hoatdong\\tongkim\\kim\\baodanhkim.lua")
Include("\\\script\\hoatdong\\tongkim\\danhsach.lua")

DANH_SACH = {}

function main_()
Talk(1,"","Hi÷n Æang Æua TOP vui lﬂng quay lπi sau !")
end


function main(idx)
if GetNpcName(idx) == "TËng MÈ Binh" then
baodanhtong_main()
elseif GetNpcName(idx) == "Kim MÈ Binh" then
baodanhkim_main()
else
Talk(1,"","LÁi NPC: ["..GetNpcName(idx).."], vui lﬂng b∏o Admin Æ” sˆa !")
end
end

function tongkim_checkname()
if getn(DANH_SACH) == 0 then
return 0
end

for i=1,getn(DANH_SACH) do
	if DANH_SACH[i][2] == GetName() then
		return i
	end
end
return 0
end

function tongkim_checkphe(phe)
for i=1,getn(DANH_SACH) do
	if split_new(DANH_SACH[i][4]) == split_new(GetIP()) then
		if phe ~= DANH_SACH[i][3] then
			return 1
		end
	end
end
return 0
end

function tongkim_checksoluong()
num = 0
for i=1,getn(DANH_SACH) do
	if split_new(DANH_SACH[i][4]) == split_new(GetIP()) and GetName() ~= DANH_SACH[i][2] then
		num = num + 1
	end
end
return num
end

function split_new(str)
	splitor=" :"
	local strArray={}
	local strStart=1
	local splitorLen = strlen(splitor)
	local index=strfind(str,splitor,strStart)
	if(index==nil) then
		strArray[1]=str
		return strArray[1]
	end
	local i=1
	while index do
		strArray[i]=strsub(str,strStart,index-1)
		i=i+1
		strStart=index+splitorLen
		index = strfind(str,splitor,strStart)
	end
	strArray[i]=strsub(str,strStart,strlen(str))
	return strArray[1]
end

function KhoiTaoDanhSach(phe)
DANH_SACH[getn(DANH_SACH)+1] = {GetAccount(),GetName(),phe,GetIP()}
--Msg2Player("Kh·i tπo: "..GetName().." - "..phe.." - "..GetIP().."")
--SaveBang()
end

function SaveBang()
		BANGI = TaoBang(DANH_SACH,"DANH_SACH")
		LuuBang("script/hoatdong/tongkim/danhsach.lua",BANGI)
end