taskevent = 914
function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if GetTask(taskevent) >= 10 then
Talk(1,"","B�n �� tr� l�i h�t to�n b� c�u h�i c�a s� ki�n n�y !")
return
end

if ngay == 30 and thang == 04 and gio == 21 and phut >= 15 and phut <= 30 then
		SayNew("<color=green>S� Ki�n 30/04: <color> B�n �� tr� l�i c�u h�i th�: <color=red>"..GetTask(taskevent).."<color> / 10 c�u.\nB�n c� mu�n tham gia kh�ng ?",2,
		"Tham gia tr� l�i c�u h�i /cauhoi",
		"Tho�t /no")
else
	Talk(1,"","Th�i gian ho�t ��ng s� ki�n Ch�o M�ng Chi�n Th�ng 30/04 di�n ra duy nh�t 1 l�n t� 21h15 - 21h30 ng�y 30/04/2021")
end

end

function cauhoi()
SetTask(taskevent, GetTask(taskevent) + 1)
if GetTask(taskevent) > getn(CAUHOI) then
Talk(1,"","B�n �� tr� l�i h�t to�n b� c�u h�i c�a s� ki�n n�y !")
return
end

i = GetTask(taskevent)
a = random(1,4)
if a == 1 then
SayNew("<color=green>Hoa ��ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][2].."/dung",
"B. "..CAUHOI[i][3].."/sai",
"C. "..CAUHOI[i][4].."/sai",
"D. "..CAUHOI[i][5].."/sai")
elseif a == 2 then
SayNew("<color=green>Hoa ��ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][5].."/sai",
"B. "..CAUHOI[i][2].."/dung",
"C. "..CAUHOI[i][3].."/sai",
"D. "..CAUHOI[i][4].."/sai")
elseif a == 3 then
SayNew("<color=green>Hoa ��ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][4].."/sai",
"B. "..CAUHOI[i][5].."/sai",
"C. "..CAUHOI[i][2].."/dung",
"D. "..CAUHOI[i][3].."/sai")
elseif a == 4 then
SayNew("<color=green>Hoa ��ng<color>: "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][3].."/sai",
"B. "..CAUHOI[i][4].."/sai",
"C. "..CAUHOI[i][5].."/sai",
"D. "..CAUHOI[i][2].."/dung")
end 
end


function dung()
Msg2Player("C�u h�i th� "..GetTask(taskevent)..": Tr� l�i ch�nh x�c")

AddOwnExp(1000000)



if GetLevel() < 90 then
		idxitem = AddEventItem(random(173,175))
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
else

		if GetGlbMissionV(37) == 123 then
			SetGlbMissionV(37, 0)
			idxitem = AddEventItem(random(0,1))
			Msg2SubWorld("Ch�c m�ng "..GetName().." tham gia s� ki�n Hoa ��ng nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).." ")
			return
		elseif GetGlbMissionV(37) == 456 then
			SetGlbMissionV(37, 0)
			idxitem = AddEventItem(random(651,654))
			Msg2SubWorld("Ch�c m�ng "..GetName().." tham gia s� ki�n Hoa ��ng nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).." ")
			return
		end						
								
		vp = RandomNew(1,100)
		if vp < 50 then
				idxitem = AddEventItem(random(173,175))
				Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		elseif vp < 80 then
			aa = random(115,120)
			idxitem = AddEventItem(aa)
			if aa == 120 or aa == 116 then
				Msg2SubWorld("Ch�c m�ng "..GetName().." tham gia s� ki�n Hoa ��ng nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).." ")
			else
				Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).." ")
			end
		elseif vp < 95 then
			idxitem = AddEventItem(random(28,31))
			Msg2SubWorld("Ch�c m�ng "..GetName().." tham gia s� ki�n Hoa ��ng nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
		else
			idxitem = AddEventItem(random(75,102))
			Msg2SubWorld("Ch�c m�ng "..GetName().." tham gia s� ki�n Hoa ��ng nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
		end
end


cauhoi()
end


function sai()
Msg2Player("C�u h�i th� "..GetTask(taskevent)..": Tr� l�i kh�ng ch�nh x�c")
cauhoi()
end

CAUHOI = {
{"Ng�y 30/04 L� ng�y g�?","Ng�y gi�i ph�ng mi�n Nam","Ng�y qu�c kh�nh Vi�t Nam","Ng�y qu�c t� Lao ��ng","Ng�y gi�i ph�ng mi�n B�c"},
{"S� ki�n 30/04 ch�m d�t �i�u g�?","Chi�n tranh Vi�t Nam", "Chi�n tranh th� gi�i","Chi�n tranh Mi�n Nam","Chi�n tranh Mi�n B�c"},
{"Chi�c xe t�ng ��u ti�n h�t �� c�ng m� hi�u bao nhi�u?","M� Hi�u 390","M� hi�u 696","M� Hi�u 843","M� Hi�u 630"},
{"Xe t�ng h�t �� c�ng c�a Dinh th� n�o?","Dinh ��c L�p","Dinh Th�ng Nh�t","Dinh Winchester","Dinh C�u Ph� Qu�c"},
{"M� hi�u c�a xe t�ng c�n l�i ti�n v�o Dinh ��c L�p?","M� Hi�u 843","M� hi�u 696","M� Hi�u 390","M� Hi�u 630"}, 
{"Ai l� ng��i c�m c� Vi�t Nam tr�n Dinh ��c L�p?","B�i Quang Th�n","B�i Th� Xu�n","B�i Ti�n D�ng","B�i Anh Tu�n"},
{"Ai l� ng��i ch� huy chi�n d�ch n�y?","V� Nguy�n Gi�p","B�c H� ","Tr�n Qu�c To�n","L� Th�nh T�n"},
{"Ai ch� huy xe t�ng m� hi�u 390?","V� ��ng To�n","V� Nguy�n Gi�p","B�i Quang Th�n","Nguy�n V�n T�p"},
{"T�n chi�n d�ch n�y l� g�?","Chi�n d�ch H� Ch� Minh","Chi�n d�ch Th�ng Nh�t ��t N��c","Chi�n d�ch H� N�i","Chi�n d�ch M�a Xu�n 1975"},
{"V� Nguy�n Gi�p l� th�nh vi�n c�a ��ng n�o?","��ng C�ng S�n","��ng C�ng H�a","��ng D�n Ch� ","��ng Th�ng Nh�t"},
}
