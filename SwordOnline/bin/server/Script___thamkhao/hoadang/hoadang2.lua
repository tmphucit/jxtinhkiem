soluonghoadang = 50




function main()

SetTask(119,1) -- Trang thai dang hoa dang
SetFightState(0)

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))


if GetTask(120) ~= ngay then
SetTask(120,ngay)
SetTask(121,0)
end

tieptuc()
end

function tieptuc()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))

if gio == 9 or gio == 12 or gio == 15 or gio == 18 or gio == 21 then
	if phut <= 5 then
		if GetTask(121) <=  soluonghoadang then
		SayNew("<color=green>Hoa ��ng: <color> B�n �� tr� l�i c�u h�i th�: <color=red>"..GetTask(121).."<color> / "..soluonghoadang.." c�u.\nB�n c� mu�n ti�p t�c kh�ng ?",2,
		"Ti�p t�c /tieptuccauhoi",
		"Tho�t /no")
		else
			SetTask(119,1)
			SetFightState(1)
		Talk(1,"","<color=green>Hoa ��ng<color> Gi�i H�n Hoa ��ng <color=yellow>"..soluonghoadang.."<color> C�u")
		end
	else
	SetTask(119,1)
	SetFightState(1)
	Talk(1,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng �� h�t !!!")
	end
else
	SetTask(119,1)
	SetFightState(1)
Talk(2,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng 9 gi�, 12 gi�, 15 gi�, 18 gi�, 21 gi� ",
"Th�i gian m�i l�n �o�n hoa ��ng l� 5 ph�t. T�i �a "..soluonghoadang.." c�u 1 ng�y !")
end
end

function no()
SetFightState(1)
SetTask(119,0)
end

function tieptuccauhoi()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))
thoigian = gio*60*60 + phut * 60 + giay
if gio == 9 or gio == 12 or gio == 15 or gio == 18 or gio == 21 then
	if phut <= 5 then
		SetTask(121,GetTask(121)+1)
		if GetTask(121) <= soluonghoadang then
			sl = GetCash()
			tientru = tinhtien() / 4
			if GetLevel() < 80 then
				tientru = 0
			end
			if GetCash() > tientru then
				Pay(tientru)
				if GetCash() == (sl-tientru) then
				main1()				
				else
				Talk(1,"","Hack ha em")
				end			
			else
			Talk(1,"","<color=green>Hoa ��ng<color> B�n kh�ng mang �� <color=yellow>"..tientru.."<color> l��ng")
			end	
		else
		Talk(1,"","<color=green>Hoa ��ng<color> Gi�i h�n Hoa ��ng <color=yellow>"..soluonghoadang.."<color> c�u")
		end
	else
	Talk(1,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng �� h�t !!!")
	end
else
Talk(2,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng 9 gi�, 12 gi�, 15 gi�, 18 gi�, 21 gi� ",
"Th�i gian m�i l�n �o�n hoa ��ng l� 5 ph�t. T�i �a "..soluonghoadang.." c�u 1 ng�y !")
end
end

function main1()
i = random(1,getn(CAUHOI))
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


function checkmau(i)
if i == 1 then
return "[C�u h�i D�]"
elseif i == 2 then
return "[C�u h�i B�nh Th��ng]"
elseif i == 3 then
return "[C�u h�i Kh�]"
elseif i == 4 then
return "[C�u h�i ��c Bi�t]"
end
end


function tinhexp()
if GetLevel() < 10 then
return 30
elseif GetLevel() >= 10 and GetLevel() < 20 then
return 30
elseif GetLevel() >= 20 and GetLevel() < 40 then
return 30
elseif GetLevel() >= 40 and GetLevel() < 60 then
return 10
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 5
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 2
else
return 1
end
end

function tinhtien()
if GetLevel() < 10 then
return 200
elseif GetLevel() >= 10 and GetLevel() < 20 then
return 400
elseif GetLevel() >= 20 and GetLevel() < 30 then
return 800
elseif GetLevel() >= 30 and GetLevel() < 40 then
return 1000
elseif GetLevel() >= 40 and GetLevel() < 50 then
return 1200
elseif GetLevel() >= 50 and GetLevel() < 60 then
return 1400
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 1600
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 2000
elseif GetLevel() >= 80 and GetLevel() < 90 then
return 5000
elseif GetLevel() >= 90 and GetLevel() < 100 then
return 10000
else
return 12000
end
end

function dung()
if GetLevel() < 80 then
	expnhanduoc = 150000
		AddOwnExp(expnhanduoc)
	Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c "..expnhanduoc.." kinh nghi�m")
	tieptuc()
else
	s = random(1,1000)
	if s < 400 then
		expnhanduoc = 0
		--if GetLevel() < 80 then
		--		expnhanduoc = tinhexp() * GetLevelExp() / 100
		--else
				expnhanduoc = 250000
		--end
		
		AddOwnExp(expnhanduoc)
		Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
		Msg2Player("B�n nh�n ���c "..expnhanduoc.." kinh nghi�m")
	elseif s >= 400 and s < 800 then
		tiennhandc = tinhtien()
		Earn(tiennhandc)
		Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
		Msg2Player("B�n nh�n ���c "..tiennhandc.." l��ng")
	elseif s >= 800 and s < 980 then
		if GetLevel() < 80 then
			AddEventItem(173)
			Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
			Msg2Player("B�n nh�n ���c 1 binh Ph�c duy�n [Ti�u] ")
		else
			u = random(1,4)
			if u <= 3 then
				AddEventItem(173)
				Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
				Msg2Player("B�n nh�n ���c 1 binh Ph�c Duy�n [Ti�u] ")
			else
				AddEventItem(174)
				Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
				Msg2Player("B�n nh�n ���c 1 binh Phuc Duyen [Trung] ")
			end
			end
	elseif s >= 980 and s < 983 then
		if GetLevel() >= 80 then
			AddEventItem(113)
			Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
			Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� nh�")
		else
			tiennhandc = tinhtien()
				Earn(tiennhandc)
				Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
				Msg2Player("B�n nh�n ���c "..tiennhandc.." l��ng")
		end
	elseif s >= 983 and s < 1000 then
		if GetLevel() >= 80 then
			AddEventItem(114)
			Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
			Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng nh�")
		else
			tiennhandc = tinhtien()
				Earn(tiennhandc)
				Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
				Msg2Player("B�n nh�n ���c "..tiennhandc.." l��ng")
		end
	else
			if GetLevel() >= 80 then
				sxvip = random(28,31)
				AddEventItem(sxvip)
				Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� l�i Hoa ��ng nh�n ���c <color=yellow>V�t Ph�m Qu� ")
			else
				tiennhandc = tinhtien()
				Earn(tiennhandc)
				Msg2Player("<color=green>C�u h�i th� "..GetTask(121)..": Ch�c m�ng, n�n �� tr� l�i ch�nh x�c !!")
				Msg2Player("B�n nh�n ���c "..tiennhandc.." l��ng")
			end
	end
end
tieptuc()
end



function sai()
--if CAUHOI[i][6] == 3 then
--Pay(5000)
--Msg2Player("C�u h�i th� "..GetTask(121)..": B�n b� m�t 5000 l��ng do tr� l�i sai c�u h�i kh�")
--elseif CAUHOI[i][6] == 4 then
--Pay(10000)
--Msg2Player("C�u h�i th� "..GetTask(121)..": B�n b� m�t 1 v�n l��ng do tr� l�i sai c�u h�i ��c bi�t")
--else
Msg2Player("C�u h�i th� "..GetTask(121)..": Tr� l�i kh�ng ch�nh x�c")
--end 
tieptuc()
end

CAUHOI = {
{"1 Man Nh�t b�ng bao nhi�u Y�n?","10.000 Y�n","1.000 Y�n","100.000 Y�n","1000.000 Y�n",1},	
{"11 nh�n 11 b�ng m�y ?","121","122","142","118",1},	
{"112 c�ng 29 b�ng m�y?","141","151","121","114",1},	
{"14/02 l� ng�y g�?","Valentine L� T�nh Nh�n","Qu�c T� Thi�u Nhi","Ph� N� Vi�t Nam","L� Gi�ng Sinh",1},	
{"20/11 l� ng�y g�?","Nh� gi�o Vi�t Nam","Qu�c T� Ph� N�","L� T�nh Nh�n","L� Gi�ng Sinh",1},	
{"3 ng�y cu�i tu�n di�n ra m�y tr�n Li�n ��u ?","8","4","6","5",1},	
{"6 nh�n 6 b�ng m�y ?","36","12","42","18",1},	
{"99 c�ng 69 b�ng m�y?","168","151","121","114",1},	
{"Ba L�ng Huy�n �i Xa Phu t� ��u qua ?","T��ng D��ng","Ph��ng T��ng","��i L�","Th�ch C� Tr�n",1},	



{"Ai th�o �ng v�n b�t h� B�nh Ng� ��i C�o ?","Nguy�n Tr�i","Nguy�n Du","Ng� T�t T�","Tr�nh C�ng S�n",2},	
{"Al l� k� hi�u c�a nguy�n t� h�a h�c n�o? ","Nh�m","S�t ","K�m","V�ng ",2},	
{"Alijed Nobel l� ng��i s�ng l�p ra gi�i Nobel l� ng��i n��c n�o ?","Th�y �i�n","M�","Ph�p","�c",2},	
{" Vi�t Nam � m�i gi� th� m�y ","7 ","6 ","8 ","10 ",2},	
{"Ai l� ng��i d�i �� t� Hoa L� v� Th�ng Long n�m 1010?","L� Th�i T�","Tr�n Nh�n T�ng","L� ��i H�nh","Tr�n Qu�c To�n",2},	
{"Ai l� ng��i ng�ng cu�ng nh�t?","Tuy�n C� T�","Di�u Nh�","Huy�n Gi�c","���ng B�t Nhi�m",2},	
{"Ai l� ng��i t�m ra ch�u M�?  ","Columbo ","Napoleon ","Henry Co Dai ","Nicoladesi ",2},	
{"Ai l� ng��i theo Phan ��nh Ph�ng ��c s�ng ch�ng Ph�p?","Cao Thang","Vu Dinh Long","Pho Duc Phuong","Ly Quang Dieu",2},	
{"Ai l�nh ��o qu�n Lam S�n kh�i ngh�a d�nh th�ng l�i ?","L� L�i","Tr�n Qu�c To�n","V� Th� S�u","L� Th�i T�",2},	
{"�m ti�t ���c ph�t ra nh� b� ph�n g�?","Thanh qu�n","M�i","L��i","D� d�y",2},	
{"�m thanh c�a Ve S�u c�i ph�t ra t� ��u?","Kh�ng c� �m thanh","C�nh","B�ng","Ch�n",2},	
{"�m thanh kh�ng chuy�n ���c �i trong m�i tr��ng n�o?","Ch�n kh�ng","B�i","Gi�","M�a",2},	
{"B� Huy�n Thanh Quan t� c�nh ��o ngang v�o th�i gian n�o?","Chi�u","T�i","S�ng","Tr�a",2},	
{"B�c H� ��c b�n tuy�n ng�n ��c l�p khai sinh ra n��c Vi�t Nam l� b�n tuy�n ng�n th� m�y ?","3","1","4","2",2},	
{"B�c H� ph�t ��ng T�t Tr�ng C�y v�o n�m n�o ?","1960","1945","1922","1955",2},	
{"B�c H� qu� � ��u? ","Ngh� An ","Thanh H�a ","Quang Ng�i ","H�i An ",2},	
{"B�n �� Ba L�ng Huy�n c� th� �i ��n ��u ? ","��t Ma ���ng ","Ph��ng T��ng ","L�m An ","Chu Ti�n Tr�n ",2},	
{"B�ng tu�n ho�n h�a h�c c� bao nhi�u nguy�n t�? ","109 ","123 ","190 ","132 ",2},	
{"B�nh Tr�ng b�nh Gi�y �c l�m v�o d�p n�o trong n�m?","T�t Nguy�n ��n","T�t D��ng L�ch","T�t Thi�u Nhi","T�t Trung Thu",2},	


{"Ai kh�m ph� ra C�u D��ng Th�n C�ng?","Gi�c Vi�n","��t Ma","Huy�n Gi�c","Huy�n Nan",2}, 
{"Ai t�o ra ph�i Nga Mi?","Qu�ch T��ng","Tr��ng Tam Phong","�u D��ng Phong","Ho�ng D��c S�",2}, 	
{"Anh H�ng X� �i�u ph�t h�nh n�m n�o?","2003","2002","2004","2005",2}, 	
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c ��i T��ng ? ","10000 ","6000 ","3000 ","1500 ",2},	
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Hi�u �y ? ","1500 ","6000 ","10000 ","3000 ",2},	
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Ph� T��ng ? ","6000 ","3000 ","1500 ","10000 ",2},	
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Th�ng L�nh ? ","3000 ","6000 ","1500 ","10000 ",2},	
{"Bao nhi�u Nh�c V��ng H�n Th�ch ��i ���c Nh�c V��ng Ki�m ? ","50 vi�n ","30 vi�n ","20 vi�n ","40 vi�n ",2},	
{"Bao nhi�u S�t Th� L�nh m�i gh�p th�nh S�t Th� Gi�n ? ","5 c�i ","10 c�i ","15 c�i ","3 c�i ",2},	

{"B�ch V�n C� S� l� t�n hi�u c�a nh� th�?","Nguy�n B�nh Khi�m","Xu�n Di�u","H� Xu�n H��ng","Tr��ng H�n Si�u",1},	
{"B�n �ang tham gia ho�t ��ng g�?","Hoa ��ng","T�ng Kim","D� T�u","V�n Ti�u",1},	
{"B�n �� Ch�n N�i Tr��ng B�ch d�nh cho c�p �� bao nhi�u?","8x","7x","6x","5x",1},	
{"B�n �� ��t Ma ���ng d�nh cho c�p �� bao nhi�u?","1x","2x","3x","4x",1},	
{"B�n �� �i�m Th��ng S�n d�nh cho c�p �� bao nhi�u?","4x","2x","3x","1x",1},	
{"B�n �� Ho�nh S�n Ph�i d�nh cho c�p �� bao nhi�u?","6x","7x","8x","5x",1},	
{"B�n �� Kinh Ho�ng ��ng d�nh cho c�p �� bao nhi�u?","6x","7x","8x","5x",1},	
{"B�n �� Linh C�c ��ng d�nh cho c�p �� bao nhi�u?","6x","7x","8x","5x",1},	
{"B�n �� M�t Th�t Thi�u L�m d�nh cho c�p �� bao nhi�u?","5x","7x","6x","4x",1},	
{"B�n �� Nh�n Th�ch ��ng d�nh cho c�p �� bao nhi�u?","8x","7x","6x","5x",1},	
{"B�n �� Sa M�c ��a Bi�u d�nh cho c�p �� bao nhi�u?","8x","9x","5x","6x",1},	
{"B�n k�nh tr�i ��t l� bao nhi�u km?","6.378","6.783","6.873","6.387",2},	
{"B�ng ch� c�i c�a Vi�t Nam c� bao nhi�u ch� c�i? ","29 ","26 ","32 ","45 ",2},	
{"B�ng ch� c�i Ti�ng Vi�t c� bao nhi�u nguy�n �m?","12","19","22","10",1},	
{"B�nh P�a ��c s�n c�a ?","S�c Tr�ng","S�i G�n","H� N�i","�� N�ng",1},	
{"Bao gi� cho ��n th�ng ...., hoa g�o r�ng xu�ng b� gi� ��p ch�n","Ba","N�m","Hai","T�m",1},	
{"Bao nhi�u S�t Th� Gi�n m�i ��i ���c L�nh B�i V��t �i ? ","5 c�i ","10 c�i ","8 c�i ","15 c�i ",2},	
{"B� k�p 12x c�a C�i Bang t�n g�? ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","H�p Tinh Y�m ",2},	
{"B� k�p 12x c�a C�n L�n  t�n g�? ","L��ng Nghi Ch�n Kh�  ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch�  ","��o H� Thi�n ",2},	
{"B� k�p 12x c�a D��ng M�n t�n g�? ","M� �nh Tung ","Xu�t � B�t Nhi�m ","B� Nguy�t Ph�t Tr�n ","��o H� Thi�n ",2},	
{"B� k�p 12x c�a Nga Mi t�n g�? ","B� Nguy�t Ph�t Tr�n ","M� �nh Tung ","Xu�t � B�t Nhi�m ","��o H� Thi�n ",2},	
{"B� k�p 12x c�a Ng� ��c t�n g�? ","H�p Tinh Y�m ","Xu�t � B�t Nhi�m ","Ng� Tuy�t �n ","M� H�n �nh ",2},	
{"B� k�p 12x c�a Thi�n Nh�n  t�n g�? ","Ma �m Ph� Ph�ch ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ",2},	
{"B� k�p 12x c�a Thi�n V��ng t�n g� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ","M� �nh Tung ","B� Nguy�t Ph�t Tr�n ",2},	
{"B� k�p 12x c�a Thi�u L�m t�n g�? ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ","M� �nh Tung ",2},	
{"B� k�p 12x c�a Th�y Y�n t�n g�? ","Ng� Tuy�t �n ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ",2},	
{"B� k�p 12x c�a V� �ang t�n g�? ","Xu�t � B�t Nhi�m ","M� �nh Tung ","B� Nguy�t Ph�t Tr�n ","��o H�  Thi�n ",2},	
{"B� K�p 9x c�c ph�i c� t�t c� bao nhi�u cu�n? ","28 cu�n ","30 cu�n ","20 cu�n ","25 cu�n ",2},	
{"B� k�p n�m trong � Thi�n Ki�m t�n g�?","C�u �m Ch�n Kinh","C�u �m B�t Th�","��c C� Ch�n Kinh","��c C� C�u �m",2}, 	
{"Bi�u t��ng seagames 22 l� g�? ","Tr�u V�ng ","Nh�n S� ","Th�p ��i ","M�t Tr�i ",2},	
{"B�ng b�n l� m�n th� thao ph� bi�n nh�t c� ngu�n g�c t� n��c n�o ?","Anh","Ph�p","T�y Ban Nha","Th� Nh� K�",2},	
{"B� Tem B�u Ch�nh ��u ti�n Vi�t Nam in h�nh g� ?","Ch�n dung Ch� T�ch HCM","T��ng V� Nguy�n Gi�p","Bi�u T��ng Sao V�ng","Bi�u T��ng Phong Th�",2},	
{"Bukit T�mah l� ng�n n�i cao nh�t c�a Qu�c Gia ?","Singapore","Indonesia","Malaysia","Philipin",1},	
{"B�n b� l� ��c s�n c�a mi�n?","Trung","B�c","Nam","T�y",1},	
{"B�n M�c V�n Ninh l� ��c s�n c�a n�i n�o ?","Nha Trang","�� L�t","�� N�ng","Ki�n Giang",1},	
{"B�n Thang l� ��c s�n d�n t�c c�a n�i n�o ?","H� N�i","B�c Ninh","Nam ��nh","H�i Ph�ng",1},	
{"Ca kh�c 19 th�ng 8 l� t�c ph�m c�a ?","Xu�n Oanh","Mai H��ng","Thu Ho�i","�oan Trang",1},	
{"Ca kh�c Ch�c Ai �� S� v� l� ai h�t ?","S�n T�ng MTP","Nam T�ng S�n","Cao Th�i S�n","H� Quang Hi�u",1},	
{"Ca kh�c D��ng Nh� Ta �� do ai th� hi�n?","M� T�m","H� Ng�c H�","B�o Thy","B�ch Ph��ng",1},	
{"Ca kh�c ��a B� do bao nhi�u Ca S� Nh�c S� th� hi�n ?","60","50","70","40",1},	
{"Ca kh�c G�i anh xa nh� do ai th� hi�n?","B�ch Ph��ng","L��ng B�ch H�u","B�o Thy","��ng Nhi",1},	
{"Ca kh�c M�a �� l� ai h�t ?","Cao Trung","Tu�n H�ng","�an Tr��ng","Tr�nh ��nh Quang",1},	
{"Ca kh�c Pha L� T�m do ca s� n�o th� hi�n? ","Cao Th�i S�n ","Nam C��ng ","V�n Quang Long ","Nguy�n V� ",2},	
{"Ca kh�c Qu�c Ca do ai s�ng t�c ?","V�n Cao","Nam Cao","Phong Nh� ","Ho�i Linh",1},	
{"Ca kh�c T�nh Ca c�a Ho�ng Vi�t nh�c ��n m�a?","Xu�n","H�","Thu","��ng",1},	
{"Ca kh�c Th�m M�t L�n �au c�a nh�m nh�c n�o?","HKT","L� R�i","Titi","S�n T�ng",1},	
{"C�i g� c� th� c�t ���c Kim C��ng?","Kim C��ng","Th�p","Dao","K�o",1},	
{"C�ng l�n nh�t c�a ��ng Nam � l� c�ng n�o ?","Singapore","Japan","Korea","Taiwan",1},	
{"C�p Ti�u h�c g�m bao nhi�u l�p? ","5 l�p ","4 l�p ","3 l�p ","7 l�p ",2},	
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Bao tay - Ng�c b�i ","Bao tay - Nh�n tr�n ","Bao tay - Nh�n d��i ","Bao tay - D�y Chuy�n ",2},	
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Gi�y - Nh�n tr�n ","Gi�y - Nh�n d��i ","Gi�y - Ng�c b�i ","Gi�y - D�y chuy�n ",2},	
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","N�n - V� Kh� ","N�n - Bao tay ","N�n - �o ","N�n - Th�t l�ng ",3},	
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Th�t l�ng - Nh�n d��i ","Th�t L�ng - Nh�n tr�n ","Th�t l�ng - D�y Chuy�n ","Th�t L�ng - Ng�c B�i ",2},	
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Trang ph�c - D�y chuy�n ","Trang ph�c - Ng�c b�i ","Trang ph�c - Nh�n tr�n ","Trang ph�c - Nh�n d��ii ",2},	
{"C�u th� ��a B� ��o Nha gi�nh ch�c V� ��ch EURO 2016?","Eder","Renato Sanches","Nani","Cristiano Ronaldo",1},	
{"C� bao nhi�u v� th�n tr�n ��nh Olympus? ","12 ","10 ","11 ","8 ",2},	
{"C� t�t c� bao nhi�u lo�i trang b� c� hi�u �ng May M�n  ","3  ","5  ","4 ","2 ",2},	
{"Con ng��i ��u ti�n ��t ch�n l�n M�t Tr�ng n�m n�o?","1969","1696","1669","1966",1},	
{"Con S�n c� m�y c�i m�i ?","4","6","8","2",1},	
{"Con s�ng d�i th� 3 th� gi�i? ","Mississippi ","Ho�ng H� ","Tr��ng Giang ","Nil ",2},	
{"Con v�t n�o to nh�t th� gi�i? ","C� voi xanh ","Ch� voi con b�n ��n ","Baby Shark Todo Todo ","G�u Nga",2},	
{"C�n S�n - Ki�p B�c l� di t�ch l�ch s� c�a T�nh n�o?","H�i D��ng","H�ng Y�n","Nam ��nh","B�c Ninh",2},	
{"C�t ��n giao th�ng c� m�y m�u? ","3 ","4 ","5 ","2 ",1},	
{"C� b�p m�nh nh�t trong c� th� con ng��i l�?","C� b�ng","C� c�u vai","C� c�ng tay","C� b�p ��i",1},	
{"C� s� v�t ch�t ch� y�u c�a s� s�ng? ","Pr�t�in v� Axit Nucl�ic ","Pr�t�in ","Carbon Hydrat ","Axit Nucl�ic ",3},	
{"Cu l� k� hi�u c�a nguy�n t� h�a h�c n�o? ","��ng","S�t ","Nh�m","V�ng ",2},	
{"C�u c�u th� B�ng �� chuy�n nghi�p ng��i Anh l� ai?","David Beckham","Ronaldo","Lionel Messi","Ronaldinho",1},	
{"Ch�n �� �i�u c� bao nhi�u m�ng?","2","1","4","3",1},	
{"Ch�u l�c n�o m� c� c�c n��c h�u nh� tr�ng l�a? ","Ch�u Phi ","Ch�u �  ","Ch�u M�  ","Ch�u �u ",2},	
{"Chu Ch� Nh��c l� ch��ng m�n ��i th� m�y c�a ph�i Nga Mi?","4","3","5","2",3}, 	
{"Chu k� World Cup Bao nhi�u n�m? ","4 n�m ","5 n�m ","3 n�m ","6 n�m ",2},	
{"Ch�a Ba V�ng thu�c t�nh?","Qu�ng Ninh","H�i Ph�ng","H�ng Y�n","H�i D��ng",1},	
{"Ch�a B�i ��nh thu�c t�nh n�o ?","Ninh B�nh","H� T�nh","Nam ��nh","H� Nam",1},	
{"Ch�a M�t C�t ���c x�y d�ng t� th�i n�o?","L�","L�","Tr�n","Nguy�n",1},	
{"Ch� vi�t t�t B Trong Ng�n ng� l�p tr�nh l� g� ?  ","Basic ","Visual C++ ","Boland C ","Booleen ",2},	
{"Ch��ng M�n ph�i Th�y Y�n l� ai ?","Do�n H�m Y�n","Y�n Hi�u Tr�i","Chung Linh T�","Do�n Thanh V�n",1},	
{"Da ng��i g�m m�y l�p? ","3 l�p ","2 l�p ","4 l�p ","5 l�p ",3},	
{"D��c ph�m N� Nhi H�ng c� t�c d�ng g� ?","x2 Luy�n K� N�ng","x2 Kinh Nghi�m ","x2 D� t�u","x2 T�ng Kim",1},	
{"D��c ph�m Ti�n Th�o L� c� t�c d�ng g� ?","x2 Kinh Nghi�m ","x2 luy�n k� n�ng","x2 D� t�u","x2 T�ng Kim",1},	
{"��n B�u c�a Vi�t Nam xu�t hi�n v�o th�i gian n�o? ","Th� k� th� 7 ","Th� k� th� 5 ","Th� k� th� 8 ","Th� k� th� 6 ",2},	
{"��p �n n�o kh�c ho�n to�n v�i c�c ��p �n c�n l�i? ","Hoa h�ng ","Con ch� ","Con h� ","Con m�o ",2},	
{"��c s�n c�a H�i D��ng l� g�?","B�nh ��u Xanh","B�nh Gai Ninh Giang","B�nh C�m","B�nh Tr�ng",1},	
{"�� ��i m�u t�n c�n ch�n NPC n�o? ","H� tr� T�n Th� ","Nhi�p Th� Tr�n ","K� Tr�n C�c ","Xa Phu ",1},	
{"�� ��i t�n t�n bao nhi�u ti�n ��ng? ","100","200","50","60",1},	
{"��m th�ng N�m ch�a n�m �� s�ng, ng�y th�ng..... ch�a c��i �� t�i","M��i","S�u","Hai","B�n",1},	
{"�i h�i Gi�, v� nh� h�i....?","Tr�","V�","B�","B�",1},	
{"�i�m ti�m n�ng n�i c�ng t�ng g� ? ","N�i l�c ","Sinh kh� ","L�c tay ","Ch�nh x�c",2},	
{"�i�n t� th�ch h�p v�o ch� tr�ng : C� �� Sao....?","V�ng","Xanh","T�m","N�u",1},	
{"�� Ch�nh X�c t�i �a c�a V� Kh� l� bao nhi�u?","300","255","200","100",1},	
{"�� Long �ao ���c r�n t�? ","Huy�n Thi�t Tr�ng Ki�m","� Thi�n Ki�m","V� ��ch Th�n Ki�m","Kim X� Ki�m",2}, 	
{"��c C� C�u B�i s� d�ng m�n v� c�ng g�?","��c C� C�u Ki�m","��c C� B�t Th�","��c C� Ch�n Kinh","��c C� C�u �m",2}, 	
{"��i tuy�n B� ��o Nha v� ��ch EURO m�y l�n ?","1","2","4","3",1},	
{"��i tuy�n v� ��ch EURO 2004 l� ��i n�o?","Hy L�p","T�y Ban Nha","��c","B� ��o Nha",1},	
{"��i tuy�n v� ��ch EURO 2012 l� ��i n�o?","T�y Ban Nha","B� ��o Nh�","��c","Ph�p",1},	
{"��i tuy�n v� ��ch EURO 2016 l�?","B� ��o Nha","T�y Ban Nha","��c","Ph�p",1},	
{"��ng Ph��ng B�t B�i tu luy�n m�n ph�i v� c�ng n�o? ","Qu� Hoa B�o �i�n","Ng�c N� T�m Kinh","Ph�c Ma Tr��ng Ph�p","B�ch Bi�n Qu� �nh",3}, 	
{"Fe l� k� hi�u c�a nguy�n t� h�a h�c n�o? ","S�t ","��ng ","Nh�m","V�ng ",2},	
{"G�p NPC n�o �� ��i t�ch l�y T�ng Kim ?","Qu�n Nhu Quan","Hi�u Thu�c","T�p H�a","M� Binh Quan",1},	
{"G�p NPC n�o �� h� c�p trang b� ?","Th� R�n","Hi�u Thu�c","T�p H�a","B�n Ng�a",1},	
{"G�p NPC n�o �� h�y trang b� h�ng ?","Th� R�n","Hi�u Thu�c","T�p H�a","B�n Ng�a",1},	
{"G�p NPC n�o �� h�y trang b� kh�a v�nh vi�n ?","Th� R�n","Hi�u Thu�c","T�p H�a","B�n Ng�a",1},	
{"G�p NPC n�o �� mua T�ng Kim Chi�u Th� ?","T�p H�a","Hi�u Thu�c","Th� R�n","B�n Ng�a",1},	
{"G�p NPC n�o �� mua T�i d��c ph�m ?","Hi�u Thu�c","T�p H�a","Th� R�n","B�n Ng�a",1},	
{"G�p NPC n�o �� n�ng c�p trang b� ?","Th� R�n","Hi�u Thu�c","T�p H�a","B�n Ng�a",1},	
{"G�p NPC n�o �� nh�n nhi�m v� S�t Th�? ","Nhi�p Th� Tr�n ","H� Tr� T�n Th� ","���ng B�t Nhi�m ","Xa phu ",1},	
{"G�p NPC n�o �� tham gia T�ng Kim ?","M� Binh Quan","Hi�u Thu�c","T�p H�a","Qu�n Nhu Quan",1},	
{"G�p NPC n�o �� xem s� l��ng VLMT & TTK nh�n v�t �� s� d�ng?","V�n S� Th�ng","Hi�u Thu�c","T�p H�a","B�n Ng�a",1},	
{"Gi� tr� B�ng s�t n�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","200","50","100","150",1},	
{"Gi� tr� B�ng s�t ngo�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","100","200","50","150",1},	
{"Gi� tr� ��c s�t n�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","50","25","100","200",1},	
{"Gi� tr� ��c s�t ngo�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","50","200","100","150",1},	
{"Gi� tr� H�a  s�t ngo�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","100","200","50","150",1},	
{"Gi� tr� H�a s�t n�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","200","50","100","150",1},	
{"Gi� tr� Kh�ng B�ng t�i �a c�a trang b� xanh l� bao nhi�u?","25","22","15","19",1},	
{"Gi� tr� Kh�ng ��c t�i �a c�a trang b� xanh l� bao nhi�u?","25","22","15","19",1},	
{"Gi� tr� Kh�ng H�a t�i �a c�a trang b� xanh l� bao nhi�u?","25","22","15","19",1},	
{"Gi� tr� Kh�ng L�i t�i �a c�a trang b� xanh l� bao nhi�u?","30","22","15","25",1},	
{"Gi� tr� L�i s�t n�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","200","50","100","150",1},	
{"Gi� tr� L�i s�t ngo�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","100","200","50","150",1},	
{"Gi� tr� May m�n t�i �a c�a trang b� xanh l� bao nhi�u?","10%  ","20%  ","9%  ","30% ",1},	
{"Gi� tr� Ph�ng Th� V�t L� t�i �a c�a trang b� xanh l� bao nhi�u?","25","22","15","19",1},	
{"Gi� tr� S�t th��ng v�t l� n�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","200","50","100","150",1},	
{"Gi� tr� S�t th��ng v�t l� ngo�i c�ng t�i �a c�a V� kh� xanh l� bao nhi�u?","50","200","100","150",1},	
{"Gi�i ph�ng mi�n Nam l� ng��i n�o? ","30 th�ng 4 ","19 th�ng 5 ","2 th�ng 9 ","5 th�ng 7 ",1},	
{"H� N�i c� bao nhi�u ph� ph��ng ","36 ","42 ","37 ","63 ",2},	
{"H�ng H�ng Kh�ng n�o c� th�m 20kg h�nh l� k� g�i mi�n ph�?","VietnamAirline","Jetstar","Vietjet","T�t c� ph��ng �n tr�n",1},	
{"H�nh tinh n�o ko c� b�u kh� quy�n? ","Th�y tinh ","H�a tinh ","Kim tinh ","M�c tinh ",3},	
{"H�nh tinh n�o ko c� m�t tr�ng ","Kim tinh ","M�c tinh ","H�a tinh ","Th� tinh ",3},	
{"H�nh tinh to nh�t h� m�t tr�i?","Sao M�c","Sao H�a","Sao B�c ��u","Sao Kim",1},	
{"H� H�a g�m nh�ng m�n ph�i n�o ?","C�i Bang - Thi�n Nh�n","Nga Mi - Th�y Y�n","Thi�u L�m - Thi�n V��ng","V� �ang - C�n L�n",1},	
{"H� H�a t� k�ch thu�c t�nh �n 1 c�a Trang b� h� g� ?","Th�","H�a","Kim","M�c",1},	
{"H� Kim g�m nh�ng m�n ph�i n�o ?","Thi�u L�m - Thi�n V��ng","Nga Mi - Th�y Y�n","V� �ang - C�n L�n","C�i Bang - Thi�n Nh�n",1},	
{"H� Kim t� k�ch thu�c t�nh �n 1 c�a Trang b� h� g� ?","Th�y","H�a","Th�","M�c",1},	
{"H� M�c g�m nh�ng m�n ph�i n�o ?","���ng M�n - Ng� ��c","Nga Mi - Th�y Y�n","Thi�u L�m - Thi�n V��ng","C�i Bang - Thi�n Nh�n",1},	
{"H� M�c t� k�ch thu�c t�nh �n 1 c�a Trang b� h� g� ?","H�a","Th�y","Th�","M�c",1},	
{"H� n�o ch� c� nh�n v�t l� n�?","Th�y  ","H�a  ","Th�  ","M�c ",3},	
{"H� n�o ch� c� nh�n v�t nam?","Kim  ","Th�y  ","H�a  ","Th� ",3},	
{"H� Th� g�m nh�ng m�n ph�i n�o ?","V� �ang - C�n L�n","Nga Mi - Th�y Y�n","Thi�u L�m - Thi�n V��ng","C�i Bang - Thi�n Nh�n",1},	
{"H� Th� t� k�ch thu�c t�nh �n 1 c�a Trang b� h� g� ?","Kim","H�a","Th�","M�c",1},	
{"H� Th�y g�m nh�ng m�n ph�i n�o ?","Nga Mi - Th�y Y�n","V� �ang - C�n L�n","Thi�u L�m- Thi�n V��ng","C�i Bang - Thi�n Nh�n",1},	
{"H� Th�y t� k�ch thu�c t�nh �n 1 c�a Trang b� h� g� ?","M�c","H�a","Th�","Th�y",1},	
{"Hi�n t�i, ti�n Vi�t Nam c� m�nh gi� cao nh�t l� bao nhi�u?","500.000 ��ng","200.000 ��ng","100.000 ��ng","50.000 ��ng",1},	
{"Hi�n t��ng ���c t�o ra do s� t�n s�c �nh s�ng c�a m�t tr�i qua nh�ng gi�t m�a l� g�? ","C�u V�ng ","Kh�c x� ","H�p th� �nh s�ng ","Ph�t quang ",3},	
{"Hi�n t��ng n��c t� tr�i r�i xu�ng g�i l� g�? ","M�a ","Gi� ","B�c h�i ","Tri�u C��ng ",1},	
{"H� Ch� Minh vi�t b�n di ch�c ��u ti�n v�o n�m?","1965","1956","1966","1955",1},	
{"H�t N�i L�c ch� c� t�c d�ng v�i ?","Ngo�i C�ng","N�i C�ng","N�i C�ng v� Ngo�i C�ng","Kh�ng c� t�c d�ng trong server",1}, -- sai	
{"H�t Sinh L�c ch� c� t�c d�ng v�i ?","Ngo�i C�ng","N�i C�ng","N�i C�ng v� Ngo�i C�ng","Kh�ng c� t�c d�ng trong server",1}, -- sai	
{"Huy�n Gi�c l� boss Ho�ng Kim m�n ph�i g� ?","Thi�u L�m","Ng� ��c","C�n L�n","Thi�n Nh�n",1},	
{"Idol Vi�t Nam N�m 2011 l� ai? ","Uy�n Linh ","Mai H��ng ","��ng Khoa ","Ph��ng Vy ",2},	
{"Kinh �� ��u ti�n n��c V�n Lang n�m � ��u ?","Ph� Th�","Cao B�ng","B�c K�n","Y�n B�i",1},	
{"K� n�ng 1x h� tr� t�ng S�t Th��ng V�t L� cho c� 3 ���ng ngo�i c�ng c�a ���ng M�n t�n l� g� ?","���ng M�n �m Kh�","T�ch L�ch ��n","��a Di�m H�a","��c Th�ch C�t",1},	
{"K� n�ng 6x �ao c�a Thi�u L�m t�n g� ? ","Ma Ha V� L��ng ","Long Tr�o H� Tr�o ","Ho�nh T�o L�c H�p ","S� T� H�ng ",1},	
{"K� n�ng 6x h� tr� Nga mi ch��ng  ","Ph�t quang ph� chi�u  ","B�t di�t b�t tuy�t  ","Th�i song v�ng nguy�t  ","Nga mi ch��ng ph�p ",2},	
{"K� n�ng 6x h� tr� ng� ��c �ao  ","Chu c�p thanh minh  ","Ng� ��c �ao ph�p  ","Huy�t �ao ��c s�t  ","B�ch ��c xuy�n t�m ",2},	
{"K� n�ng 6x n�o h� tr� v� ki�m  ","Tam ho�nh thao nguy�t  ","V� ng� v� ki�m  ","N� l�i ch�  ","V� �ang quy�n ph�p ",2},	
{"K� n�ng 9x B�a c�a Ng� ��c t�n l� g�?","�o�n H�n H� C�t","V�n ��c Th�c T�m","Xuy�n Y Ph� Gi�p","C�u Thi�n Cu�ng L�i",1},	
{"K� n�ng 9x b�a c�a thi�n nh�n  ","Nhi�p h�n lo�n t�m  ","V�n long k�ch  ","Thi�n ma gi�i th�  ","Ma �m ph� ph�ch ",1},	
{"K� n�ng 9x c�a ���ng m�n phi �ao  ","Nhi�p h�n nguy�t �nh  ","T�n hoa ti�u  ","B�o v� l� hoa  ","Truy t�m ti�n ",1},	
{"K� n�ng 9x c�a n�i c�ng c�a c�n l�n   ","L�i ��ng c�u thi�n  ","L��ng nghi ch�n kh�  ","S��ng ng�o c�n l�n  ","Nh�t kh� tam thanh ",2},	
{"K� n�ng 9x c�a ng� ��c ch��ng  ","�m phong th�c c�t  ","�o�n c�n h� c�t  ","Ng� ��c ch��ng ph�p  ","B�ch ��c xuy�n t�m ",2},	
{"K� n�ng 9x �ao c�a C�n L�n t�n g�   ","Ng�o tuy�t ti�u phong  ","L�i ��ng c�u thi�n  ","S��ng ng�o c�n l�n  ","Cu�ng phong s�u �i�n ",2},	
{"K� n�ng 9x n�i c�ng C�i Bang t�n g� ? ","Phi Long T�i Thi�n ","�� C�u Tr�n ","Thi�n H� V� C�u ","Ti�u Di�u C�ng ",1},	
{"K� n�ng 9x n�i c�ng Nga Mi t�n g� ? ","Phong S��ng To�i �nh ","M�ng �i�p ","B�t Tuy�t B�t Di�t ","Ph�t T�m T� H�u ",1},	
{"K� n�ng 9x n�i c�ngc�a Th�y Y�n l� g� ?","B�ng T�m Ti�n T�","B�ng Tung V� �nh","B�ng C�t Tuy�t T�m","Tuy�t �nh",1},	
{"K� n�ng 9x ngo�i c�ng C�i Bang t�n g�  ? ","Thi�n H� V� C�u ","Phi Long T�i Thi�n ","Ho�t B�t L�u Th� ","Kh�ng Long H�u H�i ",1},	
{"K� n�ng 9x ngo�i c�ng c�a V� �ang l� g� ?","Nh�n Ki�m H�p Nh�t","Thi�n ��a V� C�c","Tam Ho�ng Thao Nguy�t","V� �ang Ki�m Ph�p",1},	
{"K� n�ng 9x ngo�i c�ng Nga Mi t�n g� ? ","Tam Nga T� Tuy�t ","Th�i Song V�ng Nguy�t ","B�t Tuy�t B�t Di�t ","L�u Th�y ",1},	
{"K� n�ng 9x ngo�i c�ng Th�y Y�n t�n g� ? ","B�ng Tung V� �nh ","Tuy�t �nh ","B�ng C�t Tuy�t T�m ","B�ng T�m Tr�i �nh ",1},	
{"K� n�ng 9x thi�u l�m �ao ph�p  ","V� t��ng tr�m  ","Ph� thi�n tr�m  ","��t Ma h� giang  ","Ho�nh t�o thi�n qu�n ",3},	
{"K� n�ng 9x Th��ng c�a Thi�n v��ng t�n g� ? ","Truy Tinh Tr�c Nguy�t ","Huy�t Chi�n B�t Ph��ng ","Kim Chung Tr�o ","Th�a Long Quy�t ",1},	
{"K� n�ng B�o V� L� Hoa y�u c�u v� kh� g�?","T� Ti�n","Ki�m","�ao","B�ng",1},	
{"K� n�ng B�ng Tung V� �nh y�u c�u v� kh� g�?","�ao","Ki�m","B�ng","T� Ti�n",1},	
{"K� n�ng b�a n�o c�a c�n l�n l�m gi�m t�c �� di chuy�n  ","K� b�n ph�  ","Thanh phong ph�  ","S��ng ng�o c�n l�n  ","M� tung �o �nh ",3},	
{"K� n�ng b�a t�ng kh�ng c�a c�n l�n  ","thi�n thanh ��a tr�c  ","S��ng ng�o c�n l�n  ","T�y ti�n t� c�tt  ","Thanh phong ph� ",1},	
{"K� n�ng Buff 100% tr�ng ��c Ng� ��c t�n g� ? ","Xuy�n T�m ��c Th�ch ","Ng� ��c K� Kinh ","B�ng Lam Huy�n Tinh ","Xuy�n Y Ph� Gi�p ",1},	
{"K� n�ng Buff b�a 9x C�n L�n t�n g� ? ","T�y Ti�n T� C�t ","Thi�n Thanh ��a Tr�c ","Thi�n T� T�n L�i ","K� B�n Ph� ",1},	
{"K� n�ng g�y cho�ng cho ��i ph��ng c�a c�n l�n l�  ","Kh� tam ph�  ","S��ng ng�o c�n l�n  ","K� b�n ph�  ","Thanh phong ph� ",3},	
{"K� n�ng gi�m hi�u �ng l�m ch�m, l�m cho�ng c�a C�n L�n l� g�?","M� Tung �o �nh","Kh� H�n Ng�o Tuy�t","B�c Minh ��o H�i","Th�c Ph��c Ch�",1},	
{"K� n�ng h� tr� c�a thi�u l�m quy�n  ","H�n long b�t v�  ","Kim cang ph�c ma  ","Ma ha v� l��ng  ","��t ma h� giang ",1},	
{"K� n�ng kh�ng ph�n ��n c�a c�n l�n c� t�n l�  ","Huy�n thi�n v� c�c  ","Thi�n thanh ��a tr�c  ","Thanh phong ph�  ","M� tung �o �nh ",3},	
{"K� n�ng kh�ng t�t c� Thi�u l�m t�n g� ? ","D�ch C�n Kinh ","Nh� Lai Thi�n �i�p ","La H�n Tr�n ","B�t ��ng Minh V��ng ",1},	
{"K� n�ng n�o h� tr� K� n�ng Thi�n ��a V� C�c ? ","V� Ng� V� Ki�m ","Tam Ho�n Th�o Nguy�t ","Ki�m Phi kinh Thi�n ","Nh�n Ki�m H�p Nh�t ",1},	
{"K� n�ng n�o sau d�y kh�ng ph�i l� b�a ch� c�a Thi�n nh�n  ","Ma di�m th�t s�t  ","�o �nh phi h�  ","Phi h�ng v� t�ch  ","Nhi�p h�n lo�n t�m ",3},	
{"K� n�ng n�o sau ��y kh�ng h� tr� cho ���ng m�n b�y  ","�m kh� ���ng m�n  ","��a di�m h�a  ","Xuy�n t�m th�ch  ","H�n b�ng th�ch ",3},	
{"K� n�ng n�o t�ng �� ch�nh x�c c�a v� �ang  ","Th�t tinh tr�n  ","Th� v�n tung  ","T�a v�ng v� ng�  ","Th�i c�c th�n c�ng ",1},	
{"K� n�ng Ng�o Tuy�t Ti�u Phong y�u c�u v� kh� g�?","�ao","Ki�m","B�ng","T� Ti�n",1},	
{"K� n�ng Tam Nga T� Tuy�t y�u c�u v� kh� g�?","Ki�m","B�ng","�ao","T� Ti�n",1},	
{"K� n�ng t�ng �� ch�nh x�c c�a Thi�n V��ng l� g�?","T�nh T�m Quy�t","Kim Chung Tr�o","�o�t H�n Th�ch","Thi�n V��ng Chi�n �",1},	
{"K� n�ng t�ng Kh�ng ��c c�a Ng� ��c t�n g� ?","T�p Nan D��c Kinh","Ng� ��c K� Kinh","X�ch Di�m Th�c Thi�n","B�ch ��c Xuy�n T�m",1},	
{"K� n�ng t�ng kh�ng t�t c� c�a Nga Mi  ","Ph� �� ch�ng sinh  ","L�u th�y  ","M�ng �i�p  ","T� h�ng ph� �� ",3},	
{"K� n�ng t�ng kh�ng t�t c� Thi�n V��ng t�n g� ? ","Kim Chung Tr�o ","Thi�n V��ng Chi�n Y ","Huy�t Chi�n B�t Ph��ng ","Th�a Long Quy�t ",1},	
{"K� n�ng t�ng t�c �� ch�y c�a C�i Bang l� g�?","Ho�t B�t L�u Th�","T�y �i�p Cu�ng V�","Ti�u Di�u C�ng","H�a Di�m Vi Di",1},	
{"K� n�ng t�ng t�c �� ch�y c�a C�n L�n c� t�n l� g�  ","Thanh phong ph�  ","K� b�n ph�  ","B�c Minh ��o H�i  ","Kh� h�n ng�o tuy�t ",3},	
{"K� n�ng t�ng t�c �� ch�y c�a Nga Mi c� t�n l� g�  ","L�u th�y  ","M�ng di�p  ","Ph�t t�m t� h�  ","Ph�t quang ph� chi�u ",1},	
{"K� n�ng t�ng t�c �� ch�y c�a V� �ang l� g�?","Th� V�n Tung","Th�t Tinh Tr�n","T�a Vong V� Ng�","Tam Ho�n Thao Nguy�t",1},	
{"K� n�ng Thi�n H� V� C�u y�u c�u v� kh� g�?","B�ng","Ki�m","�ao","T� Ti�n",1},	
{"K� n�ng tr�n ph�i C�i Bang t�n g� ? ","T�y �i�p Cu�ng V� ","Phi Long Tai Thien ","Hoa Diem Vi Di ","Hoat Bat Luu Thu ",1},	
{"K� n�ng tr�n ph�i c�a C�n L�n l�   ","S��ng Ng�o C�n L�n  ","Cu�ng Phong S�u �i�n  ","T�y Ti�n T� C�t  ","B�c minh ��a h�i ",1},	
{"K� n�ng tr�n ph�i c�a ���ng m�n t�n l� g�  ","T�m nh�n  ","�m kh� ���ng m�n  ","Thi�n la ��a v�ng  ","Truy t�m ti�n ",3},	
{"K� n�ng tr�n ph�i c�a Ng� ��c t�n l� g�  ","Ng� ��c k� kinh  ","Xuy�n t�m ��c th�ch  ","V� h�nh ��c  ","�o�n c�n h� c�t ",3},	
{"K� n�ng tr�n ph�i c�a thi�n v��ng t�n l� g�  ","Thi�n v��ng chi�n �  ","Kim chung tr�o  ","Truy phong quy�t  ","Truy tinh tr�c huy�t ",3},	
{"K� n�ng tr�n ph�i c�a thi�u l�m t�n l� g�  ","Nh� lai thi�n �i�p  ","D�ch ch�n kinh","Ph� thi�n tr�m  ","Truy tinh tr�c huy�t ",1},	
{"K� n�ng tr�n ph�i Nga Mi t�n g� ? ","Ph�t Ph�p V� Bi�n ","L�u Th�y ","Ph� �� Ch�ng Sinh ","Th�i Song V�ng Nguy�n ",1},	
{"K� n�ng tr�n phai Thi�n Nh�n t�n g� ? ","Thi�n Ma Gi�i Th� ","Phi H�ng V� T�ch ","B� T� Thanh Phong ","Ma Di�m Th�t S�t ",1},	
{"K� n�ng tr�n ph�i Th�y Y�n t�n g� ? ","B�ng C�t Tuy�t T�m ","Tuy�t �nh ","Bang Tung V� �nh ","Bang T�m Tr�i �nh ",1},	
{"K� n�ng V�n Long K�ch y�u c�u v� kh� g�?","Th��ng","Ki�m","�ao","T� Ti�n",1},	
{"K� n�ng V� T��ng Tr�m y�u c�u v� kh� g�?","�ao","Ki�m","T� Ti�n","B�ng",1},	
{"K� Tr�n C�c kh�ng b�n v�t ph�m n�o ? ","Ti�n Th�o L� ","N� Nhi H�ng ","Th�y Tinh ","B�n Nh��t T�m Kinh ",1},	
{"Khi�u Chi�n L�nh d�ng �� l�m g� ?","��u gi� tham gia C�ng Th�nh Chi�n","�i Phong L�ng ��","�i V��t �i","Tham gia T�ng Kim",1},	
{"Khinh Kh� C�u bay ���c nh� g� ?","Kh� n�ng","Kh� l�nh","Gi�","H�i n��c",1},	
{"Khu V�c ��ng Nam � c� bao nhi�u qu�c gia ","11 ","10 ","15 ","12 ",3},	
{"Lang Li�u l� con th� m�y c�a Vua H�ng?","18","11","16","14",1},	
{"L� h�i h�a trang Halloween l� ng�y bao nhi�u?","31-10","31-09","13-11","11-03",1},	
{"Lo�i chim n�o c� th� bay l�i v� ph�a sau? ","Chim Ru�i ","Chim S� ","Chim C�nh c�t ","Chim B� C�u ",2},	
{"Lo�i �� ���c h�nh th�nh t� x�c ��ng v�t? ","�� v�i ","�� tr�m t�ch ","�� Magma ","�� Catket ",2},	
{"Lo�i th� duy nh�t �� tr�ng? ","Th� m� v�t ","C� Voi xanh ","Chim k�nh k�nh ","Khi ��u ch� ",2},	
{"Lo�i V��n ng��i n�o c� quan h� g�n g�i v�i con ng��i nh�t? ","Tinh Tinh ","V��n ","���i ��i ","Kh� G�rila ",2},	
{"L�u Th�y l� K� n�ng c�a ph�i n�o","Nga Mi","V� �ang","Th�y Y�n","Thi�n V��ng",1},	
{"M�u t�n Ch�nh ph�i l� m�u g� ","Cam ","T�m ","Xanh ","�� ",1},	
{"M�u t�n Luy�n c�ng l� m�u g� ","Tr�ng ","Cam ","Xanh ","�� ",1},	
{"M�u t�n S�t Th� l� m�u g� ","�� ","Cam ","Xanh ","T�m ",1},	
{"M�u t�n T� ph�i l� m�u g� ","T�m ","Cam ","Xanh ","�� ",1},	
{"M�u t�n Trung l�p l� m�u g� ","Xanh ","Cam ","T�m ","�� ",1},	
{"May m�n ch� c� tr�n trang b� n�o  ","D�y chuy�n  ","�o  ","Th�t l�ng  ","Gi�y ",3},	
{"May m�n l� thu�c t�nh ch� c� tr�n trang b� h�  ","M�c  ","Th�y  ","H�a  ","Th� ",1},	
{"M�n ph�i n�o s� d�ng Sinh L�c �� thi tri�n v� c�ng?","Thi�n V��ng Bang","Thi�n Nh�n Gi�o","C�i Bang","Nga Mi",1},	
{"M�t m�t kh�i b�ng bao nhi�u l�t? ","1000 l�t ","100 l�t ","10 l�t ","10000 l�t ",1},	
{"M�t n�m c� bao nhi�u ng�y? ","365 ","366 ","367 ","360 ",2},	
{"M�t n�m c� nhi�u nh�t bao nhi�u ng�y Ch� Nh�t ","53 ","52 ","51 ","54 ",3},	
{"M�t ng�y 1 nh�n v�t �c nh�n t�i �a l� bao nhi�u Boss S�t Th� ?","8","16","7","6",1},	
{"M�t ng�y c� bao nhi�u gi�? ","24 ","12 ","26 ","29 ",1},	
{"M�t ng�y c� bao nhi�u th�i �i�m Tr� L�i Hoa ��ng ?","5","2","1","8",1},	
{"M�t ng�y c� th� l�m ���c t�i �a bao nhi�u nhi�m v� d� t�u  ","20  ","50  ","30  ","40 ",3},	
{"M�t ng�y c� th� s�n ���c bao nhi�u con boss s�t th�? ","8 ","9 ","18 ","16 ",2},	
{"M�t set An Bang g�m bao nhi�u m�n ?","4 m�n","10 m�n","6 m�n","9 m�n",1},	
{"M�t set ��nh Qu�c g�m bao nhi�u m�n ?","5 m�n","10 m�n","6 m�n","4 m�n",1},	
{"M�t set Hi�p C�t g�m bao nhi�u m�n ?","4 m�n","10 m�n","6 m�n","9 m�n",1},	
{"M�t set Kim Phong g�m bao nhi�u m�n ?","9 m�n","10 m�n","6 m�n","4 m�n",1},	
{"M�t set Nhu T�nh g�m bao nhi�u m�n ?","4 m�n","10 m�n","6 m�n","9 m�n",1},	
{"M�t set Thi�n Ho�ng g�m bao nhi�u m�n ?","9 m�n","10 m�n","6 m�n","4 m�n",1},	
{"N�i B� �en thu�c t�nh n�o? ","T�y Ninh ","��ng Nai ", "L�m ��ng ","Cao B�ng ",3},	
{"N� ho�ng �� duy nh�t c�a Trung Qu�c l� ai? ","V� T�c Thi�n ","D��ng Qu� Phi ","T� Nghi Th�i H�u ","L� Chi�u Qu�n  ",2},	
{"N��c �� ph�t minh ra m�n m� �n li�n? ","Nh�t B�n ","Trung Qu�c ","��i Loan ","Hy L�p ",2},	
{"N��c n�o l� qu� h��ng c�a �ng gi� tuy�t? ","Ph�n Lan ","Ba Lan ","Anh ","��c ",2},	
{"N��c ti�u th� m� �n li�n nhi�u nh�t th� gi�i? ","Trung Qu�c ","Nh�t B�n ","H�n Qu�c ","Vi�t Nam ",1},	
{"Ng�y 8 th�ng 3 l� ng�y g�? ","Qu�c T� Ph� N� ","Qu�c T� Thi�u Nhi ","Qu�c T� Lao ��ng ","Ph� N� Vi�t Nam ",1},	
{"Ng�y L� Gi�ng Sinh (Noel) l� ng�y n�o? ","24-12","20-12","14-12","19-12",1},	
{"Ng�y th��ng binh li�t s� l� ng�yn�o?","27-7","17-7","7-7","27-6",1},	
{"Ng�y truy�n th�ng c�a h�c sinh sinh vi�n l� ng�y n�o? ","9 th�ng 1 ","1 th�ng 6 ","16 th�ng 1 ","1 th�ng 9 ",2},	
{"Ngh� nghi�p ch�nh c�a ng��i Vi�t th�i Vua H�ng l� g� ?","S�n B�t","C�m ��","N�ng Nghi�p","L�m Nghi�p",1},	
{"Ng� h�nh c� bao nhi�u h�? ","5 ","6 ","4 ","7 ",1},	
{"Nguy�t Nha �ao l� �ao c�p m�y?","5","7","4","1",1},	
{"Ng�a B�n Ti�u c� m�u g�?","�en","Tr�ng","N�u","X�m",1},	
{"Ng�a n�o ch�y nhanh nh�t trong c�c l�ai sau: ","Chi�u D� ","� V�n ��p Tuy�t ","��ch L� ","Tuy�t �nh ",2},	
{"Ng�a n�o sinh l�c nhi�u nh�t trong c�c lo�i sau ?","X�ch Th�","Tuy�t �nh","� V�n ��p Tuy�t","��ch L�",1},	
{"Ng�a n�o trong d�y c� m�u n�u: ","��ch L� ","Chi�u D� ","� V�n ��p Tuy�t ","Tuy�t �nh ",2},	
{"Ng��i ���c m�nh danh l� B� Ch�a Th� N�m? ","H� Xu�n H��ng ","�o�n Th� �i�m ","Xu�n Qu�nh ","Nguy�n Th� Minh Khai ",2},	
{"Nh�n v�t nam ch�nh trong Anh h�ng x� �i�u l�?","Qu�ch T�nh","D��ng Qu�","Ti�u Phong","Ho�ng Dung",3}, 	
{"Nhi�m k� th� 58 c�a t�ng th�ng Hoa K� t�n g� ?","Donald Trump","Joe Biden","Barack Obama","W Bush",2},	
{"Nh�m nh�c HKT c� m�y th�nh vi�n?","3","5","2","6",1},	
{"Nh�m nh�c The Men c� m�y th�nh vi�n?","2","3","5","6",1},	
{"Nh�m nh�c Weboys c� m�y th�nh vi�n?","3","5","2","6",1},	
{"Option Ph�c H�i N�i L�c c� tr�n trang b� n�o?","Ng�c B�i","Nh�n","�o","�ai l�ng",1},	
{"Option Ph�c H�i Sinh L�c c� tr�n trang b� n�o?"," Bao tay","D�y chuy�n","V� kh� ","Ng�c b�i",1}, -- Thieu 1	
{"Option Ph�c H�i Th� L�c c� tr�n trang b� n�o?","D�y chuy�n","Gi�y","�ai l�ng","Bao tay",1},	
{"Ph�t Gi�o du nh�p v�o VI�t Nam v�o th�i gian n�o? ","Th� k� th� 2 ","��u c�ng nguy�n ","Th� k� th� 2 TCN ","Th� k� th� 3 ",2},	
{"Ph�m n�o t�t m� giao d�ch ? ","Ph�m O ","Ph�m P ","Ph�m R ","Ph�m V ",2},	
{"Phim t�t n�o b�t B�ng k� n�ng ? ","Ph�m F5 ","Ph�m F3 ","Ph�m F4 ","Ph�m F6 ",1},	
{"Ph�m t�t n�o b�t H�nh Trang ? ","Ph�m F4 ","Ph�m F3 ","Ph�m F5 ","Ph�m F2 ",1},	
{"Ph�m t�t n�o b�t H�o H�u ? ","Ph�m F6 ","Ph�m F3 ","Ph�m F4 ","Ph�m F5 ",1},	
{"Ph�m t�t n�o b�t H� Tr� Game ? ","Ph�m F1 ","Ph�m F2 ","Ph�m F3 ","Ph�m F4 ",1},	
{"Ph�m t�t n�o b�t nhanh Giao D�ch ? ","Ph�m O ","Ph�m P ","Ph�m K ","Ph�m L ",1},	
{"Phim t�t n�o b�t nhanh T� ��i ? ","Ph�m P ","Ph�m T ","Ph�m K ","Ph�m L ",1},	
{"Ph�ng th� v�y l� ch� c� tr�n trang b� h� g�  ","H�a  ","th�y  ","Th�  ","M�c ",3},	
{"Ph� �� Ch�ng Sinh kh�ng t�t c� t�i �a l� bao nhi�u?","40","30","25","35",1},	
{"Ph� xu�t hi�n ��u ti�n � ��u? ","Nam ��nh ","H� N�i ","S�i G�n ","Trung Qu�c ",2},	
{"Qu�n �o c� k�ch c� l�n nh�t l� Size n�o ?","XXM","XXL","M","L",1},	
{"Qu�c gi�o c�a Irac l� t�n gi�o n�o ","H�i gi�o ","Ph�t Gi�o ","Thi�n Ch�a Gi�o ","Tin l�nh ",3},	
{"Qu�c k� c�a c�c n��c ��ng Nam � c� m�u g� chung  ","�� ","V�ng ","Cam ","Tr�ng ",2},	
{"Qu�c K� c�a M� c� bao nhi�u ng�i sao? ","50 sao ","45 sao ","30 sao ","54 sao ",2},	
{"Qu�c kh�nh Vi�t Nam l� ng�y n�o? ","2 th�ng 9 ","19 th�ng 5 ","15 th�ng 9 ","9 th�ng 2 ",2},	
{"Qu�c t� thi�u nhi l� ng�y n�o? ","1 th�ng 6 ","1 th�ng 5 ","9 th�ng 1 ","12 th�ng 12 ",2},	
{"Qu� ��o di chuy�n c�a c�c h�nh tinh quanh m�t tr�i h�nh g�? ","Elip ","Tr�n ","Th�ng ","Parapol ",3},	
{"R�ch Gi� thu�c t�nh/th�nh ph� n�o ?","Ki�n Giang","H� Giang","B�c Giang","L�o Cai",1},	
{"R�t th�ng..... b� gi� ch�t c�ng?","Ba","Hai","M��i","Ch�n",1},	
{"Sao Thi�n V��ng quay quanh h� M�t Tr�i t�n kho�ng bao nhi�u l�u?","84 n�m","79 n�m","86 n�m","83 n�m",1},	
{"Sea Games 22 ���c t� ch�c t�i Vi�t Nam c� bao nhi�u m�n thi ��u? ","32 ","28 ","25 ","35 ",2},	
{"Sea Games ��u ti�n ���c t� ch�c v�o n�m n�o? ","1959 ","1955 ","1963 ","1967 ",3},	
{"Sinh nh�t B�c H� v�o ng�y n�o?","19-5","15-9","9-5","5-9",1},	
{"S� l��ng T�y T�y Kinh m� 1 nh�n v�t c� th� s� d�ng?","15","10","5","8",1},	
{"S� l��ng V� L�m M�t T�ch m� 1 nh�n v�t c� th� s� d�ng?","10","15","5","8",1},	
{"S� ph� c�a Ti�u Long N� t�n g�?","A Ho�n","��c C� C�u B�i","Lam Y Y","Thanh Tuy�t S� Th�i",3}, 	
{"S� T�ch S�n Tinh-Th�y Tinh x�y ra v�o ��i Vua th� m�y?","18","15","19","16",1},	
{"T�c gi� c�a b� Truy�n Tranh Th�m T� Conan l� ai ?","Gosho Aoyama","Rina Aozaka","Ria Sakurai","Hana Yumi",1},	
{"T�c ph�m Ch� Ph�o c�a Nam Cao ���c ��i t�n m�y l�n? ","3 ","2 ","4 ","5 ",1},	
{"T�ng 2 c�a K� n�ng 9x Nga mi ki�m t�n l� g�  ","Ng�c tuy�t t�y tr�n  ","Tam nga t� tuy�t  ","Phong s��ng t�i �nh  ","Ph� �� ch�ng sinh ",3},	
{"T�ng th� 2 c�a K� n�ng Nga Mi ch��ng t�n l�  ","Kim ��nh ph�t quang  ","Phong s��ng t�i �nh  ","Tam nga t� tuy�t  ","Ng�c tuy�t t�y tr�n ",3},	
{"T�y �i�m k� n�ng c�n v�t ph�m g�?","Lam-L�c-T� Th�y Tinh","T�-T�-Lam Th�y Tinh","L�c-T�-L�c Th�y Tinh","6 Tinh H�ng B�o Th�ch",1},	
{"T�y �i�m ti�m n�ng & k� n�ng c�n v�t ph�m g�?","Th�y Tinh & Tinh H�ng B�o Th�ch","3 T� Th�y Tinh","3 Kim Nguy�n Bao","6 Tinh H�ng B�o Th�ch",1},	
{"T�y �i�m ti�m n�ng c�n v�t ph�m g�?","6 Tinh H�ng B�o Th�ch","3 T� Th�y Tinh","3 Kim Nguy�n Bao","Th�y Tinh 3 Lo�i & THBT",1},	
{"T�n d�n gian c�a sao Kim l� g�? ","Sao Mai v� Sao H�m ","Sao Ch�c N� ", "Sao B�c ��u ","Sao Khu� ",1},	
{"T�n H� th�ng d�y n�i l�n nh�t th� gi�i? ","Himalaya ","Andes ","Tr��ng S�n ","Apls ",3},	
{"T�n NPC gia nh�p m�n ph�i C�i Bang ? ","�� T� C�i Bang ","C�i Bang Chi�u Sinh ","K� �n M�y  ","C�i Bang Tr��ng L�o ",2},	
{"T�n NPC gia nh�p m�n ph�i C�n L�n ? ","C�n L�n H� Ph�p ","C�n L�n La H�n ","C�n L�n Chi�u Sinh ","C�n L�n ��o S� ",2},	
{"T�n NPC gia nh�p m�n ph�i ���ng M�n ? ","���ng M�n Th� V� ","���ng Tam ","���ng B�t L�c","���ng Tam T�ng",2},	
{"T�n NPC gia nh�p m�n ph�i Nga Mi ? ","Nga Mi C�m Y Ni ","Nga Mi Chi�u Sinh ","Nga Mi Y Ni ","Nga Mi Ni C� ",2},	
{"T�n NPC gia nh�p m�n ph�i Ng� ��c ? ","Ng� ��c T�n Nh�n","Ng� ��c Chi�u Sinh","Lam Y Y","Ng� ��c H� Ph�p",2},	
{"T�n NPC gia nh�p m�n ph�i Thi�n Nh�n ? ","Thi�n Nh�n T� S�","Thi�n Nh�n Chi�u Sinh","Ho�ng Li�t","Thi�n Nh�n H� Ph�p",2},	
{"T�n NPC gia nh�p m�n ph�i Thi�n V��ng ? ","Thi�n V��ng T��ng L�nh ","Thi�n V��ng Chi�u Sinh ","Thi�n V��ng T��ng Qu�n ","���ng Thi�t T�m ",2},	
{"T�n NPC gia nh�p m�n ph�i Thi�u L�m ? ","Thi�u L�m La H�n ","Thi�u L�m ��t Ma ","Thi�u L�m Chi�u Sinh ","Thi�u L�m Tu Tr� ",2},	
{"T�n NPC gia nh�p m�n ph�i Th�y Y�n ? ","Th�y Y�n Hoa S� ","Th�y Y�n Hoa N� ","Th�y Y�n Hoa Lan ","Th�y Y�n Chi�u Sinh ",2},	
{"T�n NPC gia nh�p m�n ph�i V� �ang ? ","V� �ang ��o Nh�n ","Tr��ng Tam Phong ","Tr��ng Thi�t Tam ","V� �ang Chi�u Sinh ",2},	
{"T�ch c�a ba s� t� nhi�n ��u ti�n l� bao nhi�u? ","0 ","6 ","9 ","12 ",1},	
{"Ti�u Long N� ph�i g�?","C� M�","V� �ang","Nga Mi","Th�y Y�n",4}, 	
{"Ti�u Ng�o Giang H� ph�t h�nh n�m n�o?","2001","2002","2004","2005",4}, 	
{"T�nh n�o c� �i�n t�ch l�n nh�t Vi�t Nam? ","Ngh� An ","H� T�nh ","Ninh B�nh ","TP HCM  ",2},	
{"T�nh n�ng Phong L�ng �� c� m�y b�n? ","3","1 ","2","4 ",2},	
{"T�nh n�ng Phong L�ng �� �i m�t bao l�u ? ","40 ph�t","30 ph�t ","35 ph�t","45 ph�t ",2},	
{"T�nh n�ng T�ng Kim b�o danh tr��c bao nhi�u ph�t  ","15  ","45  ","30  ","60 ",1},	
{"T�nh n�ng T�ng Kim m�i tr�n k�o d�i bao nhi�u ph�t  ","60  ","45  ","30  ","15 ",1},	
{"T�nh n�ng V��t �i c� bao nhi�u �i ","18 ","15 ","16 ","17 ",2},	
{"T�nh n�ng V��t �i ��ng k� v�o ph�t bao nhi�u m�i gi�?","50 ","40","45","55",2},	
{"T�nh n�ng V��t �i gi�i h�n th�i gian ho�n th�nh l� bao nhi�u ph�t?","40 ","30","45","55",2},	
{"T�nh n�ng V��t �i m�t ng�y nh�n v�t �i ���c m�y l�n ? ","1 l�n ","2 l�n ","3 l�n ","4 l�n ",1},	
{"T�nh n�ng V��t �i y�u c�u t� ��i t�i thi�u bao nhi�u ng��i? ","6 ng��i ","7 ng��i ","8 ng��i ","5 ng��i ",2},	
{"T�c �� ��nh t�i �a c�a V� Kh� xanh l� bao nhi�u?","30%","40%","20%","36%",1},	
{"T�n Ng� Kh�ng trong phim T�y Du K� do ai ��ng vai?","L�c Ti�u Linh ��ng","H� Gia K�nh","Ph�m H�ng Li�n","Ch�u Du D�n",1},	
{"T�ng 3 g�c trong 1 Tam Gi�c bao nhi�u ��? ","180 ","120 ","270 ","90 ",2},	
{"T� vi�t t�c c�a ch� s� th�ng minh l� g�? ","IQ ","EQ ","GDP ","HP ",2},	
{"Th�nh ph� �� L�t thu�c t�nh th�nh n�o? ","L�m ��ng ","�� N�ng ","An Giang ","Kom Tum ",2},	
{"Th�nh Ph� �� N�ng thu�c Mi�n n�o?","Mi�n Trung","Mi�n B�c","Mi�n T�y","Mi�n Nam",1},	
{"Th�nh ph� ��ng d�n nh�t ��ng Nam �? ","Jakarta ","H� Ch� Minh ","Bangkok ","Phn�m P�nh ",2},	
{"Th�nh ph� ���c m�nh danh l� th�nh ph� hoa ph��ng ��? ","H�i Ph�ng ","H�i D��ng ","H�n Y�n ","H� Giang ",2},	
{"Th�ng B�m �� ��i Qu�t Mo l�y c�i g�? ","N�m X�i ","3 b� 9 tr�u ","B� g� lim ","Chim ��i m�i ",2},	
{"Th�t l�ng k�ch ���c thu�c t�nh c�a   ","�o  ","V� kh�  ","Gi�y  ","Ng�c b�i ",3},	
{"Th�n �i�u ��i Hi�p ph�t h�nh n�m n�o?","1995","1996","2004","2005",3}, 	
{"Theo ti�u thuy�t ki�m hi�p c�a Kim Dung, ai l� �ng t� c�a Th�i C�c Quy�n v� Th�i C�c Ki�m?","Tr��ng Tam Phong","V��ng Tr�ng D��ng","H�ng Th�t C�ng","Do�n Ch� B�nh",3}, 	
{"Th� r�n c�n v�t ph�m g� �� h� c�p trang b�?","L�c Th�y Tinh","Lam Th�y Tinh","T� Th�y Tinh","Kim Nguy�n B�o",1},	
{"Th� r�n c�n v�t ph�m g� �� n�ng c�p trang b�?","T� Th�y Tinh","Lam Th�y Tinh","L�c Th�y Tinh","Kim Nguy�n B�o",1},	
{"Th� r�n c�n v�t ph�m g� �� s�a c�p trang b� h�ng?","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Kim Nguy�n B�o",1},	
{"Th�i gian cho�ng c� tr�n trang b� h�  ","Th�y  ","H�a  ","Th�  ","M�c ",4},	
{"Th�i gian l�m ch�m l� hi�u �ng c� tr�n trang b� h�  ","H�a  ","M�c  ","Th�y  ","Th� ",4},	
{"Th�i gian tr�ng ��c l� hi�u �ng c� tr�n trang b� h�  ","Th�  ","M�c  ","H�a  ","Th�y ",2},	
{"Th� �� n�o l�u ��i nh�t ��ng Nam �? ","H� N�i ","Bangkok ","Vi�ng Ch�n ","Phn�m P�nh ",2},	
{"Thu�t ng� T�n Gi�o c� ngu�n g�c t� ��u? ","Ph��ng T�y ","Vi�t Nam ","Trung Qu�c ","T�t c� ��u sai ",2},	
{"Th�y �i�n n�i ti�ng v� th� lo�i nh�c n�o? ","Nh�c Pop ","Nh�c Dance ","Nh�c Jazz ","C� �i�n ",4},	
{"Th�y Ki�u Trong Truy�n Ki�u c�a Nguy�n Du mang h� g� ","V��ng ","Tr�n ","Nguy�n ","Mai ",4},	
{"Thuy�n Phong L�ng �� kh�i h�nh v�o ph�t th� m�y?","10","20","15","25",1},	
{"Tr� nhi�m v� boss s�t th� s� d��c bao nhi�u �i�m danh v�ng  ","2  ","1  ","3  ","4 ",2},	
{"Trang b� �o ��nh Qu�c c� th�i gian ph�c h�i t�i �a bao nhi�u? ","50  ","49  ","47  ","40 ",2},	
{"Trang b� �o Hi�p C�t c� th�i gian ph�c h�i t�i �a bao nhi�u? ","50  ","49  ","47  ","40 ",2},	
{"Trang b� �o Nhu T�nh c� th�i gian ph�c h�i t�i �a bao nhi�u? ","0  ","49  ","47  ","40 ",2},	
{"Trang b� D�y chuy�n k�ch ���c thu�c t�nh �n cho trang bi n�o ? ","V� kh� ","�o ","Th�t L�ng ","Gi�y ",2},	
{"Trang b� ���ng Ngh� Gi�p y�u c�u s�c m�nh bao nhi�u?","260","210","165","110",1},	
{"Trang b� Gi�y c� th� k�ch ���c thu�c t�nh �n c�a  ","Ng�c b�i  ","Nh�n tr�n  ","Th�t l�ng  ","�o ",4},	
{"Trang b� Ng�c B�i Hi�p C�t kh�ng t�t c� t�i �a l� bao nhi�u?","5","3","2","6",1},	
{"Trang b� Ng�c B�i Nhu T�nh PTVL T�i �a l� bao nhi�u?","25","23","22","26",1},	
{"Trang b� Nh�n H�i Lam B�o Th�ch Gi�i Ch� l� trang b� c�p m�y?","7","10","8","9",3},	
{"Trang b� Nh�n Hi�p C�t t�ng S�c M�nh t�i �a l� bao nhi�u?","24","22","23","20",1},	
{"Trang b� Nh�n Ho�ng Ng�c Gi�i Ch� l� trang b� c�p m�y?","1","2","3","4",1},	
{"Trang b� Nh�n Lam B�o Th�ch Gi�i Ch� l� trang b� c�p m�y?","9","7","8","10",4},	
{"Trang b� Nh�n Ph� Th�y Gi�i Ch� l� trang b� c�p m�y?","4","5","6","7",1},	
{"Trang b� Nh�n Ph� Dung Th�ch Gi�i Ch� l� trang b� c�p m�y?","3","1","2","4",1},	
{"Trang b� Nh�n To�n Th�ch Gi�i Ch� l� trang b� c�p m�y?","10","7","8","9",1},	
{"Trang b� Nh�n T� M�u L�c Gi�i Ch� l� trang b� c�p m�y?","6","7","8","9",1},	
{"Trang b� Nh�n Th�y L�u Th�ch Gi�i Ch� l� trang b� c�p m�y?","5","7","8","6",1},	
{"Trang b� Nhu T�nh C�n Qu�c Ngh� Th��ng c� Kh�ng ��c kho�ng bao nhi�u? - Theo TKH ","15 - 25 ","15 - 20 ","20 - 25 ","20 - 30 ",4},	
{"Trang b� Th��ng c�p 10 c� t�n g�i l� g� ?","Ph� Thi�n K�ch","Ho�n T� Th��ng","Thi�t Th��ng","C�u Li�m Th��ng",1},	
{"Trang b� th��ng n�o kh�ng ph�n bi�t nam v� n�  ","Th�t l�ng  ","�o  ","N�n  ","Bao tay ",3},	
{"Trang b� V� Kh� k�ch d��c thu�c t�nh �n cho trang b� n�o ? ","Gi�y ","N�n ","�o ","Th�t L�ng ",2},	
{"Trang b� xanh �o c� th�i gian ph�c h�i t�i �a bao nhi�u? ","40  ","49  ","47  ","50 ",2},	
{"Trang b� xanh D�y chuy�n c� ch� s� kh�ng t�t c� t�i �a bao nhi�u?","20","18","15","16",1},	
{"Tr�ng nguy�n cu�i c�ng trong l�ch s� n��c Vi�t Nam l� ai? ","Tr�nh Tu� ","Tr�ng Qu�nh ","Nguy�n ��ng T�o ","Tr�n T�t V�n ",2},	
{"Tri�u ��i nh� Nguy�n b�t ��u t� n�m n�o? ","1802 ","1790 ","1845 ","1900 ",2},	
{"Trong L�c ��nh K�, Vi Ti�u B�o c� bao nhi�u b� v�?","7","6","5","8",3}, 	
{"Trong cu�c lu�n ki�m l�n th� nh�t di�n ra tr�n ��nh Hoa S�n, ai l� ng��i ���c coi l� m�nh nh�t �� gi� C�u �m Ch�n Kinh?","V��ng Tr�ng D��ng","Tr��ng Tam Phong","�u D��ng Phong","Ho�ng D��c S�",3}, 	
{"Trong t�c ph�m Tam Qu�c Ch�, ng��i �c m�nh danh l� Ph�ng S� l� ai ?","B�ng Th�ng","Quan V�","L�u B�","Tr��ng Phi",2},	
{"Trong truy�n Thi�n long b�t b�, cha c�a M� Dung Ph�c l� ai?","M� Dung B�c","M� Dung C�u","M� Dung Kh�ng","M� Dung Ph�c",3}, 	
{"Trung h�c g�m bao nhi�u l�p? ","7 l�p ","4 l�p ","3 l�p ","5 l�p ",2},	
{"Truy�n thuy�n n�o thu�c th�i k� �u L�c? ","An D��ng V��ng ","Th�nh Gi�ng ","S�n Tinh Th�y Tinh ","L�c Long Qu�n v� �u C� ",3},	
{"V�n L� Tr��ng Th�nh ���c x�y d�ng b�i bao nhi�u % d�n s� Trung Qu�c?","70%","90%","20%","50%",4},	
{"V�n L� Tr��ng Th�nh l� di s�n V�n H�a c�a qu�c gia n�o? ","Trung Qu�c ","Nga ","Vi�t Nam ","H�ng K�ng ",4},	
{"V�t ph�m n�o t�ng 1 �i�m k� n�ng khi s� d�ng?","V� L�m M�t T�ch","T�y T�y Kinh","B�n Nh��c T�m Kinh","Thi�t La H�n",1},	
{"V�t ph�m n�o t�ng 5 �i�m ti�m n�ng khi s� d�ng?","T�y T�y Kinh","V� L�m M�t T�ch","Thi�t La H�n","B�n Nh��c T�m Kinh",1},	
{"V�t ph�m n�o t�y h�t �i�m kinh nghi�m �m?","B�n Nh��c T�m Kinh","Thi�t La H�n","V� L�m M�t T�ch","T�y T�y Kinh",1},	
{"V� vua ph�t h�nh ti�n gi�y ��u ti�n c�a Vi�t Nam ","H� Qu� Ly ","L� C�ng U�n ","L� ��i H�nh ","Mai Th�c Loan ",4},	
{"V� vua Trung Hoa n�o c� tu�i th� cao nh�t? ","C�n Long ","Khang Hy ","T�n Th�y Ho�ng ","V� T�c Thi�n ",2},	
{"Vi�t Nam c� bao nhi�u khu b�o t�n thi�n nhi�n ?","61","71","91","41",1},	
{"Vi�t Nam c� bao nhi�u t�nh th�nh? ","64 ","54 ","45 ","65 ",2},	
{"Vi�t Nam c� m�y di s�n V�n H�a Th� Gi�i? ","7 ","8 ","6 ","5 ",3},	
{"Vi�t Nam v� ��ch AFF cup n�m n�o ?","2008","2001","2011","2005",1},	
{"V�nh H� Long - Qu�ng Ninh ���c Unesco c�ng nh�n l� Di S�n Thi�n Nhi�n Th� Gi�i v�o n�m n�o ?","1994","1990","2005","2010",2},	
{"VIP l� t� vi�t t�c c�a t� n�o? ","Very Important Person ","Very Improve People ","Value In Public ","m�t t� kh�c ",3},	
{"V� L�m c� bao nhi�u m�n ph�i ? ","10 ph�i ","11 ph�i ","12 ph�i ","8 ph�i ",2},	
{"V� L�m Li�n ��u Qu�n Qu�n l� danh hi�u c�a Li�n ��u h�ng m�y ?","1","4","3","2",1},	
{"V� L�m H�i �c - Ph�t S�n c� bao nhi�u Th�nh Th� v� Th�n ?","3 Th�nh 3 Th�n","2 Th�nh 3 Th�n","3 Th�nh 2 Th�n","2 Th�nh 2 Th�n",1},	
{"V� L�m H�i �c - Ph�t S�n khai m� AlphaTest v�o ng�y n�o ?","11.08.2021","21.08.2021","24.08.2021","25.08.2021",1},	
{"V� L�m H�i �c - Ph�t S�n Open v�o ng�y n�o?","21.08.2021","25.08.2021","11.08.2021","17.04.2021",1},	
{"V� M�c di th� ���c c�t gi�u � ��u? ","�� Long �ao","� Thi�n Ki�m","Huy�n Thi�t Tr�ng Ki�m","Kim X� Ki�m",3}, 	
{"Worl Cup 1986 �c t� ch�c t�i ?","Mexico","Iran","Campuchia","Malaysia",1},	
{"World Cup 2014 ���c t� ch�c � ��u? ","Brazil ","Ph�p ","H�n Qu�c ","M� ",3},	
{"Xe m�y Atila l� c�a h�ng n�o?","SYM","Yamaha","Suzuky","Piaggio",1},	
{"Xe m�y Sirius l� c�a h�ng n�o?","Yamaha","Honda","Suzuky","Piaggio",1},	
{"Xe m�y Wave Alpha l� c�a h�ng n�o?","Honda","Yamaha","Suzuky","Piaggio",1},	
{"X��ng n�o nh� nh�t trong c� th� ng��i ","X��ng tai trong ","X��ng c�t ","X��ng s�ng m�i ","X��ng v�nh tai ",4}, 	
{"� Thi�n Ki�m ���c r�n t�? ","Qu�n T� & Th�c N� Ki�m","Huy�n Thi�t Tr�ng Ki�m","V� ��ch Th�n Ki�m","Kim X� Ki�m",4}, 	
{"Zn l� k� hi�u c�a nguy�n t� h�a h�c n�o? ","K�m","S�t ","Nh�m","V�ng ",2},	
}