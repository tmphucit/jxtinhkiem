Include("\\script\\listtoado\\toadohoadang3.txt")
Include("\\script\\listtoado\\quahuyhoang.txt")
Include("\\script\\listtoado\\bosscovid.txt")
Include("\\script\\listtoado\\bosstieu.txt")
Include("\\script\\listtoado\\bossdai.txt")
Include("\\script\\lib\\thuvien.lua")

soluong = 0
soluong_max = 50

ksk = {}
klt = {}
mangxh = {}
bientam = {}
mangxoaboss = {}
manghuyhoang = {}
mangbosskylan = {}
manghoadang = {}


function RunTimer()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
idxtemp = PlayerIndex


if mod(phut,15) == 0 then
 Msg2SubWorld("<color=yellow>[Th�ng B�o] BQT V� L�m T�nh Duy�n kh�ng ch�t v� h� tr� trong game")
 Msg2SubWorld("<color=green>- Gh�p Th�n M� t�i th� r�n")
 Msg2SubWorld("<color=green>- C�p nh�t th�m v�t ph�m K� Tr�n C�c")
 Msg2SubWorld("<color=green>- T�ng t� l� �� xanh khi s� d�ng QHT v� TSBL")
 Msg2SubWorld("<color=green>- Nh�n 2 kinh nghi�m luy�n c�ng cho c�p d��i 100")
end

print("So luong Acc cung online hien tai la: "..GetPlayerCount().." !");

--XepHangDuaTop()
NhatQuaHuyHoang()
NhatQuaHoangKim()
--NhatHoaDangMoi()
BossTruYeu()
ThongBaoHoaDang()
--CayBachQua()
--BossKyLan()
BossTieuHoangKim()
BossHoangKim()
--addnpcevent()
timruongvang()
--BossQuocKhanh()
-- BossTrungThu()
--BossPhuNuVietNam()
--BossNhaGiaoVietNam()
-- BossTetNguyenDan()
VuotAi()
PhongLangDo()
LoiDaiHonChien()
--KickViSonDao()
BossVoLamHoiUc()



PlayerIndex = idxtemp
--XepHangDuaTop()
end


function BossVoLamHoiUc()
if (gio == 13 or gio == 21) and phut == 00 then
			bosshk1 = AddNpc(random(1034,1038),95,SubWorldID2Idx(53),1547*32,3272*32)
			SetNpcScript(bosshk1, "\\script\\boss\\bossvolamtinhkiem.lua")
			SetNpcName(bosshk1, "M�y Ch� Ph��ng T��ng")
			Msg2SubWorld("Boss <color=yellow>M�y Ch� Ph��ng T��ng <color>�� xu�t hi�n t�i <color=green>Ba L�ng Huy�n [193/204]<color> nhanh ch�ng ti�u di�t <enter>x�c xu�t ra Ng�a 8x v� r�t nhi�u item gi� tr�")
			AddGlobalCountNews("Boss <color=yellow>M�y Ch� Ph��ng T��ng <color>�� xu�t hi�n t�i <color=green>Ba L�ng Huy�n [193/204]<color> nhanh ch�ng ti�u di�t <enter>x�c xu�t ra Ng�a 8x v� r�t nhi�u item gi� tr�",1)	
end
end


function VuotAi()
if  mod(gio,2) == 1 then
	if phut == 50 then
		AddGlobalCountNews("Th�i gian b�o danh v��t �i b�t ��u !!!",1)
	elseif phut > 50 then
			thongbaova()
	elseif phut < 50 and phut > 45 then
		tgva = 50-phut
		AddGlobalCountNews("S� ki�n v��t �i b�t ��u sau "..tgva.." ph�t n�a",1)
	end
else
	if phut == 0 then
		chiendauva()
	elseif phut == 40 then
		vuotaitime()
		AddGlobalCountNews("S� ki�n v��t �i k�t th�c !!!!!!",1)
	end	
end



end
function BossNhaGiaoVietNam()
if (gio == 11 or gio == 19) and phut == 30 then
	Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss Gi�c D�t �� xu�t hi�n t�i Vi S�n ��o v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.")

	bosshk1 = AddNpc(random(1861,1865),95,SubWorldID2Idx(226),1456*32,2935*32)
	SetNpcScript(bosshk1, "\\script\\event\\nhagiao\\bossgiacdot.lua")
	SetNpcName(bosshk1, "Boss Gi�c D�t")
	bosshk1 = AddNpc(random(1861,1865),95,SubWorldID2Idx(24),1455*32,2563*32)
	SetNpcScript(bosshk1, "\\script\\event\\nhagiao\\bossgiacdot.lua")
	SetNpcName(bosshk1, "Boss Gi�c D�t")
	if SubWorldID2Idx(58) ~= -1 then
		AddGlobalCountNews("Boss Gi�c D�t �� xu�t hi�n t�i Vi S�n ��o v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.",1)
	end
end
end

function BossPhuNuVietNam()
if (gio == 11 or gio == 19) and phut == 30 then
	Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss K� Bi�n Th�i �� xu�t hi�n t�i Hoa S�n v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.")

	bosshk1 = AddNpc(random(1861,1865),95,SubWorldID2Idx(226),1456*32,2935*32)
	SetNpcScript(bosshk1, "\\script\\event\\phunu\\bosskebienthai.lua")
	bosshk1 = AddNpc(random(1861,1865),95,SubWorldID2Idx(2),2515*32,3485*32)
	SetNpcScript(bosshk1, "\\script\\event\\phunu\\bosskebienthai.lua")
	if SubWorldID2Idx(58) ~= -1 then
		AddGlobalCountNews("Boss K� Bi�n Th�i �� xu�t hi�n t�i Hoa S�n v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.",1)
	end
end
end
function BossTrungThu()
if (gio == 11 or gio == 21) and phut == 0 then
	if SubWorldID2Idx(2) ~= -1 then
		for i=1,getn(BOSSCOVID) do
			bosshk1 = AddNpc(random(1883,1887),95,SubWorldID2Idx(BOSSCOVID[i][1]),BOSSCOVID[i][2],BOSSCOVID[i][3])
			SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bossconlan_hoason.lua")
		end
		SetGlbMissionV(44, GetGlbMissionV(44) + getn(BOSSCOVID))
		AddGlobalCountNews("Boss Con L�n �� xu�t hi�n t�i Hoa S�n, giang h� l�i m�t phen �� m�u.",3)
	end
	Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss Con L�n �� xu�t hi�n t�i Hoa S�n, giang h� l�i m�t phen �� m�u.")
end


if (gio == 11 or gio == 21) and phut == 15 then -- Con Nghe
		if SubWorldID2Idx(2) ~= -1 then
					bosshk1 = AddNpc(random(1888,1892),95,SubWorldID2Idx(2),2494*32,3625*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bossconnghe_hoason.lua")
					bosshk1 = AddNpc(random(1888,1892),95,SubWorldID2Idx(2),2398*32,3610*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bossconnghe_hoason.lua")			
					bosshk1 = AddNpc(random(1888,1892),95,SubWorldID2Idx(226),1498*32,2989*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bossconnghe_banto.lua")
					bosshk1 = AddNpc(random(1888,1892),95,SubWorldID2Idx(226),1530*32,2954*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bossconnghe_banto.lua")
					bosshk1 = AddNpc(random(1888,1892),95,SubWorldID2Idx(226),1455*32,2935*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bossconnghe_banto.lua")
			AddGlobalCountNews("Boss Con Ngh� �� xu�t hi�n t�i Hoa S�n v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.",3)
		end
		Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss Con Ngh� �� xu�t hi�n t�i Hoa S�n v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.")
end


if (gio == 11 or gio == 21) and phut == 30 then  -- Ti Huu
		if SubWorldID2Idx(2) ~= -1 then
		
					bosshk1 = AddNpc(random(1893,1897),95,SubWorldID2Idx(2),2514*32,3483*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bosstyhuu_hoason.lua")
					bosshk1 = AddNpc(random(1893,1897),95,SubWorldID2Idx(226),1480*32,2972*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bosstyhuu_banto.lua")
					bosshk1 = AddNpc(random(1893,1897),95,SubWorldID2Idx(226),1515*32,3008*32)
					SetNpcScript(bosshk1, "\\script\\event\\trungthu\\bosstyhuu_banto.lua")
			AddGlobalCountNews("Boss T� H�u �� xu�t hi�n t�i Hoa S�n v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.",3)
		end
		Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss T� H�u �� xu�t hi�n t�i Hoa S�n v� Hoa S�n Ph�i, giang h� l�i m�t phen �� m�u.")
end
end

function BossTetNguyenDan()

if (gio == 11 or gio == 19) and phut == 35 then
	if SubWorldID2Idx(104) ~= -1 then
		for i=1,getn(BOSSCOVID) do
			bosshk1 = AddNpc(random(1908,1912),95,SubWorldID2Idx(BOSSCOVID[i][1]),BOSSCOVID[i][2],BOSSCOVID[i][3])
			SetNpcScript(bosshk1, "\\script\\event\\tetnguyendan\\caudan.lua")
		end
		SetGlbMissionV(44, GetGlbMissionV(44) + getn(BOSSCOVID))
		AddGlobalCountNews("Boss C�u D�n �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch, giang h� l�i m�t phen �� m�u.",3)
	end
	Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss C�u D�n �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch, giang h� l�i m�t phen �� m�u.")
end

end
function BossQuocKhanh()


if (gio == 10 or gio == 19) and phut == 0 then
	if SubWorldID2Idx(2) ~= -1 then
		for i=1,getn(BOSSCOVID) do
			bosshk1 = AddNpc(random(1866,1870),95,SubWorldID2Idx(BOSSCOVID[i][1]),BOSSCOVID[i][2],BOSSCOVID[i][3])
			SetNpcScript(bosshk1, "\\script\\event\\quockhanh\\bosstieu.lua")
		end
		SetGlbMissionV(44, GetGlbMissionV(44) + getn(BOSSCOVID))
		AddGlobalCountNews("Boss Gi�c Ng�ai X�m �� xu�t hi�n t�i Hoa S�n, giang h� l�i m�t phen �� m�u.",3)
	end
	Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss Gi�c Ng�ai X�m �� xu�t hi�n t�i Hoa S�n, giang h� l�i m�t phen �� m�u.")
end


if (gio == 10 or gio == 19) and phut == 15 then
		if SubWorldID2Idx(2) ~= -1 then
			for i=1,5 do
					vitri = RandomNew(1,getn(BOSSCOVID))
					bosshk1 = AddNpc(random(1861,1865),95,SubWorldID2Idx(BOSSCOVID[vitri][1]),BOSSCOVID[vitri][2],BOSSCOVID[vitri][3])
					SetNpcScript(bosshk1, "\\script\\event\\quockhanh\\bossdai.lua")
			end
			AddGlobalCountNews("Boss Th� L�nh Ng�ai X�m �� xu�t hi�n t�i Hoa S�n, giang h� l�i m�t phen �� m�u.",3)
		end
		Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss Th� L�nh Gi�c Ng�ai X�m �� xu�t hi�n t�i Hoa S�n, giang h� l�i m�t phen �� m�u.")
end
end

function SuKien3004()
if ngay == 30 and thang == 4 then
	if gio >= 17 and gio < 21 and phut == 30 then
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Tham gia tr� l�i c�u h�i Hoa ��ng s� di�n ra v�o 21h15 - 21h30 t�i nay t�i ��nh Hoa S�n. H�y chu�n b� t�nh th�n nh�n ph�n th��ng c�a s� ki�n nh� !")
	elseif gio == 21 and phut < 15 then
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Tham gia tr� l�i c�u h�i Hoa ��ng s� di�n ra v�o 21h15 - 21h30 t�i nay t�i ��nh Hoa S�n. H�y chu�n b� t�nh th�n nh�n ph�n th��ng c�a s� ki�n nh� !")
	elseif gio == 21 and phut < 30 then
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Tham gia tr� l�i c�u h�i Hoa ��ng s� di�n ra v�o 21h15 - 21h30 t�i nay t�i ��nh Hoa S�n. H�y chu�n b� t�nh th�n nh�n ph�n th��ng c�a s� ki�n nh� !")
	end
	
	if gio < 19 and mod(phut,14) == 0 then
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Boss V� L�m H�i �c s� xu�t hi�n v�o 19h00 t�i nay. H�y ��n Hoa S�n �� tham gia ho�t ��ng")
	elseif gio == 19 and phut == 0 then
	
		bosshk1 = AddNpc(random(1034,1038),95,SubWorldID2Idx(2),2518*32,3479*32)
		SetNpcScript(bosshk1, "\\script\\event\\bossvolamtinhkiem.lua")
		SetNpcName(bosshk1, "V� L�m H�i �c")
	
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Boss V� L�m H�i �c �� xu�t hi�n t�i Hoa S�n 314/217. H�y nhanh ch�n ti�u di�t n�o .....")	
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Boss V� L�m H�i �c �� xu�t hi�n t�i Hoa S�n 314/217. H�y nhanh ch�n ti�u di�t n�o .....")	
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Boss V� L�m H�i �c �� xu�t hi�n t�i Hoa S�n 314/217. H�y nhanh ch�n ti�u di�t n�o .....")	
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Boss V� L�m H�i �c �� xu�t hi�n t�i Hoa S�n 314/217. H�y nhanh ch�n ti�u di�t n�o .....")	
		Msg2SubWorld("<color=green>S� Ki�n: <color=red>Boss V� L�m H�i �c �� xu�t hi�n t�i Hoa S�n 314/217. H�y nhanh ch�n ti�u di�t n�o .....")	
	end
end
end

function CayBachQua()
if (gio == 8 or gio == 10 or gio == 14 or gio == 16 or gio == 20 or gio == 22) and phut == 15 then
		for i=1,50 do
			sl = getn(BOSSQK)
			vtmap = RandomNew(1,sl)
			baoruong = AddNpc(923,99,SubWorldID2Idx(BOSSQK[vtmap][1]),BOSSQK[vtmap][2],BOSSQK[vtmap][3])
			SetNpcScript(baoruong, "\\script\\sukien\\eventtet\\caybachqua.lua");	
		end
		Msg2SubWorld("<color=green>C�y B�ch Qu� �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch, h�y nhanh ch�n l�n h�i n�o....")
		Msg2SubWorld("<color=green>C�y B�ch Qu� �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch, h�y nhanh ch�n l�n h�i n�o....")
		Msg2SubWorld("<color=green>C�y B�ch Qu� �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch, h�y nhanh ch�n l�n h�i n�o....")
		
		SetGlbMissionV(42 , GetGlbMissionV(42) + 50)
end
end

function BossKyLan()
if (gio == 9 or gio == 12 or gio == 16 or gio == 21) and phut == 0 then
	for i=1,20 do
		vt = RandomNew(1,getn(BOSSQK))
		satthu=AddNpc(random(339,343),99,SubWorldID2Idx(BOSSQK[vt][1]),BOSSQK[vt][2],BOSSQK[vt][3])
		SetNpcScript(satthu, "\\script\\boss\\bosseventvang.lua");
		mangbosskylan[getn(mangbosskylan)+1] = satthu
	end
	SetGlbMissionV(42, GetGlbMissionV(42) + 20)
	Msg2SubWorld("<color=pink>Boss K� L�n V�ng �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch, c�c nh�n s� h�y nhanh ch�n �i ti�u di�t n�o")
end


if (gio == 9 or gio == 12 or gio == 16 or gio == 21) and phut == 30 then
	if getn(mangbosskylan) > 0 then
		for i=1,getn(mangbosskylan) do
			HideNpc(mangbosskylan[i], 999999999)
		end
		SetGlbMissionV(42,0)
		Msg2SubWorld("Boss K� L�n V�ng �� bi�n m�t !")
		
		bosshk1 = AddNpc(random(344,348),95,SubWorldID2Idx(109),1549*32,3286*32)
		SetNpcScript(bosshk1, "\\script\\boss\\bosseventdo.lua")
		Msg2SubWorld("<color=green>Boss K� L�n �� �� xu�t hi�n t�i Sa M�c S�n ��ng 1. Giang h� l�i 1 phen d�y s�ng.")
		
	end
end
end

function timruongvang()
if gio == 14 then
	if  mod(phut,5) == 0 then
		sl = getn(ruongvang)
		vtmap = RandomNew(1,sl)
		baoruong = AddNpc(619,99,SubWorldID2Idx(ruongvang[vtmap][1]),ruongvang[vtmap][2]*32,ruongvang[vtmap][3]*32)
		SetNpcScript(baoruong, "\\script\\global\\baoruong.lua");
		Msg2SubWorld("<color=yellow>[S� Ki�n] <color=red>R��ng v�ng �� xu�t hi�n � <color=green>Vi S�n ��o<color=red>, c�c v� ��i hi�p h�y nhanh ch�n t�m ki�m �� gi�nh ���c ph�n th��ng qu� gi� !")

		sl = getn(MiniPD)
		vtmap = RandomNew(1,sl)
		baoruong = AddNpc(619,99,SubWorldID2Idx(MiniPD[vtmap][1]),MiniPD[vtmap][2],MiniPD[vtmap][3])
		SetNpcScript(baoruong, "\\script\\global\\baoruong.lua");
		Msg2SubWorld("<color=yellow>[S� Ki�n] <color=red>R��ng v�ng �� xu�t hi�n � <color=green>Ba L�ng Huy�n<color=red>, c�c v� ��i hi�p h�y nhanh ch�n t�m ki�m �� gi�nh ���c ph�n th��ng qu� gi� !")
	end
end
end

function BossTruYeu()
if phut == 30 then
	vtmap = gio - 10
	if (vtmap > 0 and vtmap <= getn(toadotruyeu)) then
		baoruong = AddNpc(random(962,966),99,SubWorldID2Idx(toadotruyeu[vtmap][1]),toadotruyeu[vtmap][2]*32,toadotruyeu[vtmap][3]*32)
		SetNpcScript(baoruong, "\\script\\boss\\bosstruyeu.lua");
		Msg2SubWorld("<color=yellow>[S� Ki�n] <color=red>Boss Tr� Y�u �� xu�t hi�n t�i <color=yellow>"..toadotruyeu[vtmap][4].." "..floor(toadotruyeu[vtmap][2]/8).." / "..floor(toadotruyeu[vtmap][3]/16)..". <color=red>C�c v� ��i hi�p h�y nhanh tay tr� h�i cho d�n n�o !")
	end
elseif phut >= 25 and phut < 30 then
	vtmap = gio - 10
	if (vtmap > 0 and vtmap <= getn(toadotruyeu)) then
			Msg2SubWorld("<color=yellow>[S� Ki�n] <color=red>Boss Tr� Y�u s� xu�t hi�n t�i <color=yellow>"..toadotruyeu[vtmap][4].." "..floor(toadotruyeu[vtmap][2]/8).." / "..floor(toadotruyeu[vtmap][3]/16)..". <color=red> trong "..(30-phut).." ph�t n�a, c�c v� ��i hi�p h�y nhanh ch�n di chuy�n !")
	end
end
end
function timQuaHoangKim()
if gio == 14 then
	if (phut == 0 or phut == 10 or phut == 20 or phut == 30 or phut == 40 or phut == 50) then
		for t=1,4 do
			vtmap = RandomNew(1,sl)
			baoruong = AddNpc(921,99,SubWorldID2Idx(ruongvang[vtmap][1]),ruongvang[vtmap][2]*32,ruongvang[vtmap][3]*32)
			SetNpcScript(baoruong, "\\script\\huyhoang\\cayhoangkim.lua");
			Msg2SubWorld("<color=yellow>[S� Ki�n] <color=red>C�y Ho�ng Kim �� xu�t hi�n t�i Vi S�n ��o. C�c v� nh�n s� hay nhanh ch�n t�m ki�m. S� l��ng: 4 C�y.")
		end
	elseif (phut == 9 or phut == 19 or phut == 29 or phut == 39 or phut == 49 or phut == 59) then	
		idxplayer = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetTaskTemp(1) == 32154678 then
				SetTaskTemp(1,0)
				AddEventItem(265)
				Msg2SubWorld("<color=yellow>[S� Ki�n] Th�i gian th� th�ch Qu� Ho�ng Kim �� k�t th�c. ��i hi�p <color=green>"..GetName().." <color=red>nh�n ���c 1 Qu� Ho�ng Kim")
			end
		end
		PlayerIndex = idxplayer
	end
end
end

MangHD = {
"��ng c�p cho ph�p �� s�t l�: 120",
"R�a PK b�ng c�ch Ng�i T� ho�c d�ng X� L�i Kim ��n",
"Kh�ng m� kh�a r��ng kh�ng th�: di chuy�n v�t ph�m, b�t �� s�t, giao d�ch.",
"Auto Play kh�ng ��nh l� do Kho�ng C�ch c�a Auto l�n h�n Ph�m Vi T�n C�ng c�a chi�u th�c.",
"Team 7,8 ng��i luy�n c�ng kinh nghi�m s� nhi�u h�n Team 3 ng��i v� �t h�n Team 2 ng��i",
"Th�n m� Phi�n V� ch� c� th� thu ph�c t�i c�c s� ki�n l�n c�a Server. Tuy nhi�n, Ng�a s� kh�ng c� d�ng Kh�ng T�t C�",
"Nh�c V��ng Ki�m s� k�t h�p t� 50 Nh�c V��ng H�n Th�ch. V�t ph�m c� th� t�i T�ng Kim v� K� Tr�n C�c",
"H� Tr� T�n Th� c� nh�n V� kh� c�p 10 Tr�ng v� h�y Trang b� kh�a v�nh vi�n t�i Th� R�n",
"�� xanh Max Option ch� c� th� t�m duy nh�t t�i Boss Ho�ng Kim",
"C�c trang b� qu� c�c b�n ph�i ��nh l�i �� tr�nh b� m�t khi c� hacker x�m nh�p",
}
function NhatQuaHoangKim()

if (gio == 10 and phut == 46) or (gio == 19 and phut == 40 ) then
manghuyhoang = {}
cayhk=AddNpc(921,95,SubWorldID2Idx(109),1552*32,3285*32)
SetNpcScript(cayhk, "\\script\\huyhoang\\cayhuyhoang.lua");
SetNpcName(cayhk, "C�y Ho�ng Kim ��i");
manghuyhoang[getn(manghuyhoang)+1] = cayhk
Msg2SubWorld("<color=green>[S� Ki�n] <color=red>C�y Ho�ng Kim ��i xu�t hi�n t�i Sa M�c S�n ��ng 1 [194/205], giang h� l�i d�y s�ng.")
AddGlobalCountNews("Nghe ��n m�t lo�i c�y qu� hi�m �� xu�t hi�n t�i <color=red>Sa M�c S�n ��ng 1 [194/205]<color>, giang h� l�i m�t phen d�y s�ng kh�ng bi�t th�c h� th� n�o",3)
 --Phuc Nguu SOn  223 212
elseif (gio == 10 and ((phut >= 47 and phut < 55))) or (gio == 19 and ((phut >= 41 and phut < 50)))  then
Msg2SubWorld("<color=green>[S� Ki�n] <color=red>C�y Ho�ng Kim ��i xu�t hi�n t�i Sa M�c S�n ��ng 1 [194/205], giang h� l�i d�y s�ng.")
AddGlobalCountNews("Nghe ��n m�t lo�i c�y qu� hi�m �� xu�t hi�n t�i <color=red>Sa M�c S�n ��ng 1 [194/205]<color>, giang h� l�i m�t phen d�y s�ng kh�ng bi�t th�c h� th� n�o",3)
 --Phuc Nguu SOn  223 212
elseif (gio == 10 and phut == 55) or (gio == 19 and phut == 50)  then
for i=1,getn(manghuyhoang) do
DelNpc(manghuyhoang[i])
end
Msg2SubWorld("C�y Ho�ng Kim ��i �� ch�n, h�y nhanh tay �� nh�t qu�. C�ng hi�u c�a lo�i Qu� Ho�ng Kim ��i n�y c� th� c�i t� h�i sinh.")
bossbang=AddNpc(922,95,SubWorldID2Idx(109),1552*32,3285*32)
SetNpcScript(bossbang, "\\script\\huyhoang\\cayhoangkim.lua");
SetNpcName(bossbang, "Qu� Ho�ng Kim ��i")

end
end
function NhatQuaHuyHoang()
---- QUA HUY HOANG


if (gio == 13 or gio == 19) then
	if  (phut == 0 or phut == 10 or phut == 20) then
		if SubWorldID2Idx(226) ~= -1 then
			manghuyhoang = {}
			for i=1,getn(toadohh) do
				if (toadohh[i][1] == 226) then
					if i == 1 then
						cayhk=AddNpc(921,95,SubWorldID2Idx(toadohh[i][1]),toadohh[i][2],toadohh[i][3])
						SetNpcScript(cayhk, "\\script\\huyhoang\\cayhuyhoang.lua");
						SetNpcName(cayhk, "C�y Ho�ng Kim");
						manghuyhoang[getn(manghuyhoang)+1] = cayhk
					else
						cayhk=AddNpc(919,95,SubWorldID2Idx(toadohh[i][1]),toadohh[i][2],toadohh[i][3])
						SetNpcScript(cayhk, "\\script\\huyhoang\\cayhuyhoang.lua");
						SetNpcName(cayhk, "C�y Huy Ho�ng");
						manghuyhoang[getn(manghuyhoang)+1] = cayhk
					end
				end
			end
			AddGlobalCountNews("Nghe ��n m�t lo�i c�y qu� hi�m �� xu�t hi�n t�i <color=red>Hoa S�n Ph�i<color>, giang h� l�i m�t phen d�y s�ng kh�ng bi�t th�c h� th� n�o",3)
		end
		Msg2SubWorld("<color=green>[S� Ki�n] <color=red>C�y Huy Ho�ng xu�t hi�n t�i Hoa S�n Ph�i, giang h� l�i d�y s�ng.")
	elseif (phut >= 1 and phut < 5) or (phut >= 11 and phut < 15) or (phut >= 21 and phut < 25)  then
		Msg2SubWorld("<color=green>[S� Ki�n] <color=red>C�y Huy Ho�ng xu�t hi�n t�i Hoa S�n Ph�i, giang h� l�i d�y s�ng.")
		if SubWorldID2Idx(2) ~= -1 then
			AddGlobalCountNews("Nghe ��n m�t lo�i c�y qu� hi�m �� xu�t hi�n t�i <color=red>Hoa S�n Ph�i<color>, giang h� l�i m�t phen d�y s�ng kh�ng bi�t th�c h� th� n�o",3)
		end
	elseif (phut == 5 or phut == 15 or phut == 25) then
		if SubWorldID2Idx(226) ~= -1 then
			if getn(manghuyhoang) > 0 then
				for i=1,getn(manghuyhoang) do
				DelNpc(manghuyhoang[i])
				end
			end
			for i=1,getn(toadohh) do
				if (toadohh[i][1] == 226) then
					if i == 1 then
						bossbang=AddNpc(922,95,SubWorldID2Idx(toadohh[i][1]),toadohh[i][2],toadohh[i][3])
						SetNpcSeries(bossbang, RandomNew(0,4))
						SetNpcScript(bossbang, "\\script\\huyhoang\\quahoangkim.lua");
						SetNpcName(bossbang, "Qu� Ho�ng Kim")
					else
						bossbang=AddNpc(920,95,SubWorldID2Idx(toadohh[i][1]),toadohh[i][2],toadohh[i][3])
						SetNpcScript(bossbang, "\\script\\huyhoang\\quahuyhoang.lua");
						SetNpcName(bossbang, "Qu� Huy Ho�ng")
					end
				end
			end
		end
		Msg2SubWorld("C�y Huy Ho�ng �� ch�n, h�y nhanh tay �� nh�t qu�. C�ng hi�u c�a lo�i Qu� Huy Ho�ng n�y c� th� c�i t� h�i sinh.")
	end
end
end


function NhatHoaDangMoi()
if (gio == 9 or gio == 11 or gio == 14 or gio == 18 or gio == 21) and (phut == 0 or phut == 5 or phut == 10 or phut == 15 or phut == 20 or phut == 25 or phut == 30) then

if SubWorldID2Idx(2) ~= -1 then
		for i=1,getn(toadohoadang) do	
				cayhk=AddNpc(1045,95,SubWorldID2Idx(toadohoadang[i][1]),toadohoadang[i][2],toadohoadang[i][3])
				SetNpcScript(cayhk, "\\script\\hoadang\\hoadang3.lua");
				SetNpcName(cayhk, "Hoa ��ng");
		end
		SetGlbMissionV(43, GetGlbMissionV(43) + getn(toadohoadang))
	AddGlobalCountNews("Nghe ��n m�t lo�i c�y qu� hi�m �� xu�t hi�n t�i <color=red>Hoa S�n<color>, giang h� l�i m�t phen d�y s�ng kh�ng bi�t th�c h� th� n�o",3)
end
Msg2SubWorld("<color=green>[S� Ki�n] <color=red>C�y Hoa ��ng �� xu�t hi�n r�t nhi�u tr�n Hoa S�n, c�c b�n h�y nhanh ch�n l�n nh�t n�o.")
Msg2SubWorld("S� l��ng c�y hoa ��ng hi�n t�i: <color=yellow>"..getn(toadohoadang).." c�y")
end

 end


function KickViSonDao()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if gio == 22 and phut == 59 then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 24 then
				SetPKState(1)
				BlockPKState(1)
				SetTempRevPos(24,1395*32,2783*32)
				SetFightState(0)
				NewWorld(24,1395,2783)
		end
	end
	PlayerIndex = idxplayer
end
end

TimeThongBao = 0
STTThongBao = 1
function XepHangDuaTop()
if phut == 0 then
mangtam_duatop = {}
for p=1,40 do 
	mangtam_duatop[getn(mangtam_duatop) + 1] = {"",0,0}
end
for k=1,GetCountPlayerMax() do
PlayerIndex = k
	if GetLevel() > 1 then
		vt = check_min_mangtam_duatop_duatop()
		if GetLevel() > mangtam_duatop[vt][2] then
			mangtam_duatop[vt][1] = GetName()
			mangtam_duatop[vt][2] = GetLevel()
			mangtam_duatop[vt][3] = GetExp()
		elseif GetLevel() == mangtam_duatop[vt][2] then
			if GetExp() > mangtam_duatop[vt][3] then
				mangtam_duatop[vt][1] = GetName()
				mangtam_duatop[vt][2] = GetLevel()
				mangtam_duatop[vt][3] = GetExp()
			end
		end
	end
end

PlayerIndex = idx
SapXepHangDuaTop()

if STTThongBao == 1 then
TimeThongBao = RandomNew(1,15)
STTThongBao = 2
elseif STTThongBao == 2 then
TimeThongBao = RandomNew(16,30)
STTThongBao = 3
elseif STTThongBao == 3 then
TimeThongBao = RandomNew(31,45)
STTThongBao = 4
elseif STTThongBao == 4 then
TimeThongBao = RandomNew(46,59)
STTThongBao = 1
end
end


if phut == 0 and getn(mangtam_duatop) > 0 then
Msg2SubWorld("<color=yellow>Danh s�ch Top Cao Th�: ")
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LichSuDuaTop.txt", "a");	
if LoginLog then
for u=1,getn(mangtam_duatop) do
	Msg2SubWorld(""..u..". ["..mangtam_duatop[u][1].."] - Lvl: "..mangtam_duatop[u][2].." - Exp: "..mangtam_duatop[u][3].."")
	write(LoginLog,""..mangtam_duatop[u][1].." - "..mangtam_duatop[u][2].." - "..mangtam_duatop[u][3].." - Time: "..thoigian.."\n");
end
end


closefile(LoginLog)
end
end

mangtam_duatop = {}

function check_min_mangtam_duatop_duatop()
nlevel = mangtam_duatop[1][2]
nexp = mangtam_duatop[1][3]
vt_min = 1
for i=2,getn(mangtam_duatop) do
	if nlevel > mangtam_duatop[i][2] then	
		nlevel = mangtam_duatop[i][2]
		nexp = mangtam_duatop[i][3]
		vt_min = i
	elseif nlevel == mangtam_duatop[i][2] then
		if nexp > mangtam_duatop[i][3] then
			nlevel = mangtam_duatop[i][2]
			nexp = mangtam_duatop[i][3]
			vt_min = i
		end	 
	end
end
return vt_min
end

tam_duatop = {"",0,0}
function SapXepHangDuaTop()
for i=1,getn(mangtam_duatop) do
	for j=1,getn(mangtam_duatop) do
		if mangtam_duatop[i][2] > mangtam_duatop[j][2] then
			tam_duatop = mangtam_duatop[i]
			mangtam_duatop[i] = mangtam_duatop[j]
			mangtam_duatop[j] = tam_duatop
		elseif mangtam_duatop[i][2] == mangtam_duatop[j][2] then
			if mangtam_duatop[i][3] > mangtam_duatop[j][3] then
				tam_duatop = mangtam_duatop[i]
				mangtam_duatop[i] = mangtam_duatop[j]
				mangtam_duatop[j] = tam_duatop
			end
		end
	end
end

end

function PhongLangDo()
if (SubWorldID2Idx(46) == -1) then
return
end

if gio == 22 and phut == 40 then
	satthu=AddNpc(random(1029,1033),99,SubWorldID2Idx(46),1201*32,2773*32)
	SetNpcScript(satthu, "\\script\\boss\\bossphonglangdo.lua");
	Msg2SubWorld("<color=green>[S� Ki�n] <color=yellow>Boss Phong L�ng �� ��o T�c �� xu�t hi�n t�i �� xu�t hi�n t�i Phong L�ng �� 150/173, c�c v� anh h�ng h�y ti�u di�t n�o !")
	AddGlobalCountNews("Boss Phong L�ng �� ��o T�c �� xu�t hi�n t�i �� xu�t hi�n t�i Phong L�ng �� 150/173, c�c v� anh h�ng h�y ti�u di�t n�o ",1)
end


if gio == 14 or gio == 22 then
if phut < 10 then
	AddGlobalCountNews("<color=green>[S� Ki�n]<color=red> Phong L�ng �� s� b�t ��u trong "..(9-phut).." ph�t n�a, m�i ng��i h�y nhanh chanh ��n Xa Phu - Th�nh Th� �� di chuy�n",1)
end

if phut >= 10 and phut < 40 then
	idxp = PlayerIndex
	for p=1,GetCountPlayerMax() do
		PlayerIndex = p
		w,x,y = GetWorldPos()
	if w == 47 or w == 48 or w == 49 then
			if GetFightState() == 0 then
				SetFightState(1)
				Msg2Player("Chuy�n �i �� b�t ��u, th�i gian �� c�p b�n Phong L�ng �� b� B�c l� 30 ph�t !")
				Msg2Player("H�y c�n th�n tr�n tr��ng �i c� th� s� c� Th�y T�c ho�nh h�nh.... ")
			end
		end	
	end
	PlayerIndex = idxp
elseif phut >= 40 then
	if GetGlbMissionV(15) > 0 then
	SetGlbMissionV(15,1)
	end
	if GetGlbMissionV(16) > 0 then
	SetGlbMissionV(16,1)
	end
	if GetGlbMissionV(17) > 0 then
	SetGlbMissionV(17,1)
	end

	idxp = PlayerIndex
	for p=1,GetCountPlayerMax() do
		PlayerIndex = p
		w,x,y = GetWorldPos()
		if w == 47 then
			SetFightState(1)
			SetCreateTeam(1);
			SetLogoutRV(1);
			NewWorld(46,1145,2963)	-- Map : Phong Lang do
		
		
			if ngay ~= GetTask(355) then
				SetTask(355, ngay)
				for k=357,361 do SetTask(k, 0) end
			end
			nvbang =  5
			if GetTaskTemp(36) == nvbang then
				SetTask(356+nvbang, 1)
				Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
			end
		elseif w == 48 then
			SetFightState(1)
			SetCreateTeam(1);
			SetLogoutRV(1);
			NewWorld(46,1328,2862)	-- Map : Phong Lang do

			if ngay ~= GetTask(355) then
				SetTask(355, ngay)
				for k=357,361 do SetTask(k, 0) end
			end
			nvbang =  5
			if GetTaskTemp(36) == nvbang then
				SetTask(356+nvbang, 1)
				Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
			end
		elseif w == 49 then
			SetFightState(0)
			SetCreateTeam(1);
			SetLogoutRV(0);
			NewWorld(53,1600,3200)
			
			if ngay ~= GetTask(355) then
				SetTask(355, ngay)
				for k=357,361 do SetTask(k, 0) end
			end
			nvbang =  5
			if GetTaskTemp(36) == nvbang then
				SetTask(356+nvbang, 1)
				Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
			end
		end	
	end	
	PlayerIndex = idxp
end
end
end

function LoiDaiHonChien()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))


if SubWorldID2Idx(58) == -1 then
return
end

-- LOI DAI HON CHIEN
if gio == 19 and ngay == 1 then
if phut >= 25 and phut < 35 then
	Msg2SubWorld("Hi�n �ang trong th�i gian b�o danh <color=yellow>Phong V�n Lo�n Chi�n<color=red>. H�y ��n <color=green>Minh Nguy�t Tr�n 198/203 g�p Phong V�n Lo�n Chi�n <color=red>�� ��ng k� tham gia. Th�i gian c�n l�i: <color=pink>"..(35 - phut).." ph�t!")
	AddGlobalCountNews("Hi�n �ang trong th�i gian b�o danh <color=yellow>Phong V�n Lo�n Chi�n<color>. H�y ��n <color=green>Minh Nguy�t Tr�n 198/203<color> g�p Phong V�n Lo�n Chi�n �� ��ng k� tham gia. Th�i gian c�n l�i: "..(35 - phut).." ph�t!",1)

end

if phut == 35 then
Msg2SubWorld("<color=yellow>Tr�n thi ��u Phong V�n Lo�n Chi�n b�t ��u.")
idxtemp = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 179 then		
			SetFightState(1)
			SetPKState(2)
			BlockPKState(1)
			AddOwnExp(20000000)
			Msg2Player("B�n nh�n ���c 20.000.000 kinh nghi�m")
	end
end
PlayerIndex = idxtemp
end

if phut == 55 then
Msg2SubWorld("<color=yellow>Tr�n thi ��u Phong V�n Lo�n Chi�n k�t th�c.")
idxtemp = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 179 then
			Msg2SubWorld(""..GetName().."	 - ��nh b�i: <color=yellow>"..GetTask(943).."")			
			SetDeathScript("");
			SetCurCamp(GetCamp())
			SetFightState(0)
			BlockPKState(0)
		    SetPunish(0);
			SetCreateTeam(1);
			NewWorld(58,1591, 3253)
	end
end
PlayerIndex = idxtemp
end

end
end

function ThongBaoHoaDang()
if gio == 8 or gio == 11 or gio == 14 or gio == 17 or gio == 20 then
	if (phut >= 55) then
		Msg2SubWorld("<color=green>S� Ki�n:<color=red>C�y Hoa ��ng s� b�t ��u sau "..(60 - phut).." ph�t n�a !")
		Msg2SubWorld("<color=green>H�y nhanh ch�n ��n Ba L�ng Huy�n, Long M�n Tr�n, Th�ch C� Tr�n �� tham gia")
	end
end
end


function backup_xephangduatopngay()



 if phut == 0 or phut == 30 then
idx = PlayerIndex
	for j=1,GetCountPlayerMax() do
		PlayerIndex = j
			vt = check_min()
			check = check_ten(GetName())
			if check == 0 then
				if GetTask(133) > dstop[vt][2] then
					dstop[vt][1] = GetName()
					dstop[vt][2] = GetTask(133)
				end
			else
				dstop[check][2] = GetTask(133)
			end
	end
PlayerIndex = idx
Msg2SubWorld("<color=yellow>Danh Sach Top:")
for i=1,getn(dstop) do
	Msg2SubWorld(""..dstop[i][1].." - �i�m: "..dstop[i][2].."")
end
BANGI = TaoBang(dstop,"dstop")
LuuBang("script/admin/danhsachtop.lua",BANGI)
end


if gio == 23 and phut == 59 then
idx = PlayerIndex
	for j=1,GetCountPlayerMax() do
		PlayerIndex = j
			vt = check_min()
			check = check_ten(GetName())
			if check == 0 then
				if GetTask(133) > dstop[vt][2] then
					dstop[vt][1] = GetName()
					dstop[vt][2] = GetTask(133)
				end
			else
				dstop[check][2] = GetTask(133)
			end
	end
PlayerIndex = idx
Msg2SubWorld("Danh s�ch top c�o th� ng�y "..ngay.."/"..thang..": ")
for i=1,getn(dstop) do
	Msg2SubWorld(""..dstop[i][1].." - �i�m: "..dstop[i][2].."")
end
Msg2SubWorld("<color=pink>T� 17h00 - 24h00 ng�y "..(ngay+1).."/"..thang..", ��n L� Quan �� nh�n Kim Nguy�n B�o, n�u kh�ng nh�n s� b� m�t")

BANGI = TaoBang(dstop,"dstop")
LuuBang("script/admin/danhsachtop2.lua",BANGI)

dstop = {{"",0},{"",0},{"",0}}
end

end
function check_min()
min = dstop[1][2]
vtmin = 1
for i=2,getn(dstop) do
	if min > dstop[i][2] then
		min = dstop[i][2]
		vtmin = i
	end
end
return vtmin
end


function check_ten(name)
for i=1,getn(dstop) do
	if dstop[i][1] == name then
		return i
	end
end
return 0
end


function checkmp()
	if GetFaction() == "Thieu Lam Phai" then
	return "TL"
	elseif GetFaction() == "Thien Vuong Bang" then
	return "TVB"
	elseif GetFaction() == "Duong Mon" then
	return "DM"
	elseif GetFaction() == "Ngu Doc Giao" then
	return "ND"
	elseif GetFaction() == "Nga My Phai" then
	return "NM"
	elseif GetFaction() == "Thuy Yen Mon" then
	return "TY"
	elseif GetFaction() == "Cai Bang" then
	return "CB"
	elseif GetFaction() == "Thien Nhan Giao" then
	return "TN"
	elseif GetFaction() == "Vo Dang Phai" then
	return "VD"
	elseif GetFaction() == "Con Lon Phai" then
	return "CL"
	else
	return 0
	end
end;



function checkmap(vt)
if vt == 1 then
	return random(1,129)
elseif vt == 2 then
	return random(130,223)
elseif vt == 3 then
	return random(224,304)
elseif vt == 4 then
	return random(305,433)
elseif vt == 5 then
	return random(434,473)
elseif vt == 6 then
	return random(474,587)
elseif vt == 7 then
	return random(588,621) -- add them
elseif vt == 8 then
	return random(622,652)
elseif vt == 9 then
	return random(653,655)
elseif vt == 10 then
	return random(656,664)
elseif vt == 11 then
	return random(665,683)
else
	return 1
end
end

function inlogbaoruong(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/ToaDoRuongVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogspam(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/InLogAutoSpam.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
	

function checkkhuvuc(id)
if id == 53 or id == 66 or id == 3 then
return "Khu V�c Th�n L�ng"
elseif id == 15 or id == 17 or id == 18 or id == 9 then
return "Khu V�c Th�nh Th�"
elseif id == 2 or id == 8 or id == 100 or id == 101 or id == 187 then
return "Khu V�c Luy�n C�ng 1x - 5x"
else
return "Map L�i"
end
end

function inloglixi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logBaoLiXi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function checknhonhat()
max = TOP_TUAN[1][2]
point_max = 1
for i=1,getn(TOP_TUAN) do 
if max < TOP_TUAN[i][2] then
	max = TOP_TUAN[i][2]
	point_max = i
end
end
return point_max
end

function checkhang2(num)
if num == 1 then
max = TOP_TUAN[2][2]
point_max = 2
else
max = TOP_TUAN[1][2]
point_max = 1
end


for i=1,getn(TOP_TUAN) do 
if max < TOP_TUAN[i][2] and i ~= num then
	max = TOP_TUAN[i][2]
	point_max = i
end
end
return point_max
end

function checkhang3(num,num2)
point = 0
for i=1,3 do
if i ~= num and i ~= num2 then
point = i
break;
end
end
return point
end

function tinhdiem()
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTaskTemp(149) == 1 then
dem = dem + 1
end
end
return dem
end


bosshkmp = {
{643,"V��ng T� "},
{644,"Huy�n Gi�c ��i S� "},
{646,"B�ch Doanh Doanh"},
{645,"���ng B�t Nhi�m"},
{647,"Thanh Tuy�t S� Th�i"},
{648,"Y�n Hi�u Th�i"},
{649,"H� Nh�n Ng� "},
{639,"Ho�ng Li�t"},
{637,"��o Thanh Ch�n Nh�n"},
{651,"Tuy�n C� T� "},
}

Mang_Map_BossHKMP ={
{ --1
		{226,47328,99232},
		{226,49824,97024},
		{226,49344,94336},
		{226,47872,95616},
		{226,46592,93984},
		{226,48704,92992},
		{226,49920,90944},
		{226,45792,95904},
		{226,44448,97216},
		{226,45376,98240},
		{226,43328,98080},
		{226,42496,99424},
		{226,43392,100064},
},
{ --2
		{2,80448,111584},
		{2,79104,114528},
		{2,77696,115456},
		{2,76608,115616},
		{2,77120,118624},
		{2,79904,116000},
		{2,80608,119392},
		{2,77408,122912},
		{2,80800,124288},
		{2,80096,124544},
		{2,82464,128320},
		{2,83424,126848},
		{2,78368,129184},
		{2,75904,129248},
}, 
{ -- 3
		{110,59872,106240},
		{110,60928,104320},
		{110,56960,101568},
		{110,58368,104192},
		{110,56288,105408},
		{110,54752,103744},
		{110,55552,103104},
		{110,54464,101344},
		{110,52896,102144},
		{110,51936,103296},
		{110,54752,107104},
},
{ -- 4
		{111,52096,104960},
		{111,50784,106496},
		{111,51520,108192},
		{111,47968,108672},
		{111,44672,106400},
		{111,45984,105088},
		{111,43456,104128},
		{111,44384,102144},
		{111,48032,100608},
		{111,50848,100256},
		{111,52192,101952},
		{111,53344,100800},
		{111,52192,98720},
		{111,52992,97568},
},
{ -- 5
		{161,67840,142528},
		{161,69984,142432},
		{161,70816,144608},
		{161,71776,145344},
		{161,71936,147744},
		{161,69952,149664},
		{161,67360,150816},
		{161,66496,147936},
		{161,60928,149856},
		{161,59648,147328},
		{161,58016,141056},
		{161,59360,140224},
		{161,62176,137792},
		{161,61760,133760},
		{161,66048,137120},
		{161,69312,140576},
		{161,70688,141216},
},
{
		{21,40416,98912},
		{21,40864,96064},
		{21,40896,93856},
		{21,41376,91200},
		{21,40192,84864},
		{21,41632,83584},
		{21,42592,85184},
		{21,43680,88192},
		{21,44896,90560},
		{21,47360,94176},
		{21,48480,98592},
		{21,48928,100160},
		{21,49632,93088},
		{21,49696,90176},
		{21,49536,88448},
},
{
		{11,55072,112096},
		{11,45600,108928},
		{11,42560,105888},
		{11,45728,95520},
		{11,53472,95424},
		{11,55072,95552},
		{11,55552,96256},
},
{
		{15,55808,113600},
		{15,54368,113632},
		{15,52960,113408},
		{15,50880,112544},
		{15,45920,110624},
		{15,44832,110272},
		{15,43264,110016},
		{15,42720,106400},
		{15,43104,104096},
		{15,42432,100288},
		{15,45856,100064},
		{15,46240,95744},
		{15,48704,93856},
		{15,52224,98368},
		{15,54752,99456},
		{15,56192,100160},
		{15,57216,102688},
		{15,57280,104224},
		{15,56064,105920},
		{15,55040,107200},
},
{
		{160,52544,97440},
		{160,51872,96000},
		{160,55232,96768},
		{160,57344,98848},
		{160,58176,99136},
		{160,57824,101344},
		{160,57248,103776},
		{160,57344,106976},
		{160,56096,107776},
		{160,55232,108928},
		{160,53952,109408},
		{160,53568,108000},
		{160,53216,106624},
		{160,52896,105184},
		{160,51072,107680},
		{160,51520,109088},
		{160,48800,111008},
		{160,48928,103584},
		{160,47424,98464},
		{160,51616,96864},
},
{
		{46,36064,99680},
		{46,39456,99616},
		{46,39744,97632},
		{46,40448,96544},
		{46,41760,95488},
		{46,41856,98912},
		{46,42272,100704},
		{46,44736,101696},
		{46,46368,101440},
		{46,47872,100192},
		{46,46368,99296},
		{46,44864,99392},
		{46,46112,97824},
		{46,46176,95424},
		{46,43552,96288},
		{46,43968,94944},
		{46,45120,94464},
		{46,47168,93952},
		{46,48416,94944},
		{46,49600,93312},
		{46,49696,95552},
		{46,49280,98944},
		{46,48576,97632},
		{46,48288,96096},
},
}



function BossHoangKim()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))


mangboss = LISTBOSSDAI[ngay]
if getn(mangboss) < 5 then
Msg2SubWorld("L�i danh s�ch kh�ng �� 5 ph�n t� ")
return
end

-- if gio == 21 and phut == 15 then
for t=1,4 do 
	i = mangboss[t]
	vitriboss = RandomNew(1,getn(Mang_Map_BossHKMP[i]))
	bosshk1 = AddNpc(bosshkmp[i][1],95,SubWorldID2Idx(Mang_Map_BossHKMP[i][vitriboss][1]),Mang_Map_BossHKMP[i][vitriboss][2],Mang_Map_BossHKMP[i][vitriboss][3])
	SetNpcScript(bosshk1, "\\script\\boss\\bosshoangkim.lua")
	-- Msg2SubWorld("Boss Ho�ng Kim - "..bosshkmp[i][2].." �� xu�t hi�n t�i <color=green>"..checktenmap(Mang_Map_BossHKMP[i][vitriboss][1]).."")
	Msg2SubWorld("Boss Ho�ng Kim - "..bosshkmp[i][2].." �� xu�t hi�n t�i <color=green>"..checktenmap(Mang_Map_BossHKMP[i][vitriboss][1]).." t�a �� "..floor(Mang_Map_BossHKMP[i][vitriboss][2]/8/32).."/"..floor(Mang_Map_BossHKMP[i][vitriboss][3]/16/32).."")
-- end
end
end


function thongbaova()
w,x,y = GetWorldPos();
	a = 60 - phut
	for o=1,GetCountPlayerMax() do
	PlayerIndex = o
	if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
	Msg2Player("S� ki�n vu�t �i c�n: "..a.." ph�t n�a s� b�t ��u !")
	end	
	end
end


function checktenmap(id)
w = id
if w == 53 then
return "Ba L�ng Huy�n"
elseif w == 70 then
return "V� L�ng S�n"
elseif w == 74 then
return "Mi�u L�nh"
elseif w == 54 then
return "Nam Nh�c Tr�n"
elseif w == 11 then
return "��i L� "
elseif w == 18 then
return "Th�nh �� "
elseif w == 16 then
return "D��ng Ch�u"
elseif w == 15 then
return "T��ng D��ng"
elseif w == 9 then
return "Bi�n Kinh"
elseif w == 17 then
return "Ph��ng T��ng"
elseif w == 3 then
return "Chu Ti�n Tr�n"
elseif w == 8 then
return "Ph�c Ng�u S�n ��ng"
elseif w == 91 then
return "K� Qu�n ��ng"
elseif w == 41 then
return " Ph�c Ng�u S�n T�y"
elseif w == 50 then
return "Thi�n T�m ��ng"
elseif w == 78 then
return "T��ng D��ng M�t ��o"
elseif w == 21 then
return "M�n B�c Th�o Nguy�n"
elseif w == 102 then
return "L�m Du Quan"
elseif w == 104 then
return "Ch�n N�i Tr��ng B�ch"
elseif w == 105 then
return "Tr��ng B�ch S�n"
elseif w == 38 then
return "Thi�t Th�p T�ng 1"
elseif w == 39 then
return "Thi�t Th�p T�ng 2"
elseif w == 92 then
return "Th�c C��ng S�n"
elseif w == 56 then
return "N�i Th�t ��ng"
elseif w == 57 then
return "Th�t S�t ��ng"
elseif w == 13 then
return "Ki�m C�c T�y B�c"
elseif w == 14 then
return "Kim Quang ��ng"
elseif w == 62 then
return "T�a V�n ��ng"
elseif w == 63 then
return "Kinh Ho�ng ��ng"
elseif w == 64 then
return "D��ng Trung ��ng"
elseif w == 65 then
return "C� D��ng ��ng"
elseif w == 79 then
return "M�c Cao Qu�t"
elseif w == 66 then
return "Giang T�n Th�n"
elseif w == 46 then
return "Phong L�ng ��"
elseif w == 67 then
return "Thanh Th�nh S�n"
elseif w == 68 then
return "B�ch V�n ��ng"
elseif w == 73 then
return "Ph�c L�u ��ng"
elseif w == 76 then
return "��o Hoa Nguy�n"
elseif w == 2 then
return "Hoa S�n"
elseif w == 109 then
return "Sa M�c 1"
elseif w == 110 then
return "Sa M�c 2"
elseif w == 226 then
return "Hoa S�n Ph�i"
elseif w == 161 then
return "Long M�n Tr�n"
elseif w == 160 then
return "Th�ch C� Tr�n"
elseif w == 111 then
return "Sa M�c 3"
else
return "Ch�a ��t T�n"
end
end

function chiendauva()
w,x,y = GetWorldPos();
idxp = PlayerIndex
for i = 1,GetCountPlayerMax() do
PlayerIndex = i
if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
SetFightState(1)
Msg2Player("S� ki�n V��t �i b�t ��u. Nh�m c�a b�n c� 45 ph�t �� v��t qua !")
end
end
PlayerIndex = idxp
end

function vuotaitime()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

SetGlbMissionV(38,0)
SetGlbMissionV(34,0)
SetGlbMissionV(30,0)
SetGlbMissionV(26,0)
idxp = PlayerIndex
for q = 1,GetCountPlayerMax() do
PlayerIndex = q
if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
SetTaskTemp(25,0)
SetTaskTemp(26,0)
SetTaskTemp(27,0)
SetTaskTemp(28,0)
SetDeathScript("");
SetFightState(0);
SetPunish(0)
Msg2Player("S� ki�n V��t �i k�t th�c, B�n �� qu� 40 ph�t nh�ng v�n to�n m�ng. Tuy nhi�n, v�n kh�ng �� �� chi�n th�ng !")
KickOutSelf()
end
end
PlayerIndex = idxp
end


Include("\\Script\\global\\sourcejx49.lua");
function BossTieuHoangKim()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

-- if (gio == 10 or gio == 21) and phut == 0 then
Msg2SubWorld("<color=yellow>[S� Ki�n] <color=red>Boss Ti�u Ho�ng Kim �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch v� Hoa S�n. H�y nhanh ch�n �i ti�u di�t n�o!!!!!! ")
soluonghoason = 0
soluongtruongbach = 0
for i=653,661 do
	k = 0
	if gio == 10 then
		k = Boss10H[ngay][i - 652]
	elseif gio == 21 then
		k = Boss23H[ngay][i - 652]
	end
	
	if k == 0 then
	break
	end
	wmap = BossTieuHK[k][1]
	if wmap == 2 then
	soluonghoason = soluonghoason + 1
	else
	soluongtruongbach = soluongtruongbach + 1
	end
	tdx = BossTieuHK[k][2]
	tdy = BossTieuHK[k][3]
	bossthk = AddNpc(i,95,SubWorldID2Idx(wmap),tdx,tdy)
	SetNpcScript(bossthk, "\\script\\bosstieuhk.lua")
--	Msg2SubWorld("[Test] Toa do boss tieu: "..wmap.." "..floor(tdx/8/32).." / "..floor(tdy/16/32).."")
end


AddGlobalCountNews("Boss Ti�u Ho�ng Kim �� xu�t hi�n t�i Ch�n N�i Tr��ng B�ch - <color=yellow>SL: "..soluongtruongbach.."<color>  v� Hoa S�n <color=yellow>"..soluonghoason.." <color>. H�y nhanh ch�n �i ti�u di�t n�o!!!!!!",2)
-- end
end



function tenboss(i)
if i == 637 then
return "��o Thanh Ch�n Nh�n"
elseif i == 638 then
return "C� B�ch"
elseif i == 639 then
return "Ho�ng Li�t"
elseif i == 640 then
return "�o�n M�c Du�"
elseif i == 641 then
return "Chung Linh T�"
elseif i == 642 then
return "H� Linh Phi�u"
elseif i == 643 then
return "V��ng T�"
elseif i == 644 then
return "Huy�n Gi�c ��i S�"
elseif i == 645 then
return "���ng B�t Nhi�m"
elseif i == 646 then
return "B�ch Doanh Doanh"
elseif i == 647 then
return "Thanh Tuy�t S� Th�i"
elseif i == 648 then
return "Y�n Hi�u Th�i"
elseif i == 649 then
return "H� Nh�n Ng�"
elseif i == 650 then
return "��n T� Nam"
elseif i == 651 then
return "Tuy�n C� T�"
elseif i == 652 then
return "H�n M�ng"
end
end
function addbosshk_backup()
for i=637,652 do
k = random(1,getn(mangtoado))
tenmap = mangtoado[k][2]
wmap = mangtoado[k][1]
tdx = random(mangtoado[k][3],mangtoado[k][4])
tdy = random(mangtoado[k][5],mangtoado[k][6])
bossthk9 = AddNpc(i,95,SubWorldID2Idx(wmap),tdx*8*32,tdy*16*32)
SetNpcScript(bossthk9, "\\script\\boss\\bosshkdie.lua")
Msg2SubWorld("Boss "..tenboss(i).." Xu�t Hi�n � "..tenmap.." "..tdx.."/"..tdy.."")
end
end

mangtoado = {
{53,"Ba L�ng Huy�n",177,192,203,208},
{53,"Ba L�ng Huy�n",174,233,183,188},
{53,"Ba L�ng Huy�n",212,223,188,195},
{53,"Ba L�ng Huy�n",212,216,200,214},
{2,"Hoa S�n",292,327,218,254},
{8,"Ph�c Ng�u S�n",203,206,216,220},
{8,"Ph�c Ng�u S�n",206,214,215,218},
{8,"Ph�c Ng�u S�n",212,223,219,230},
{8,"Ph�c Ng�u S�n",223,242,226,230},
{100,"Tuy�t B�o ��ng",198,202,204,207},
{100,"Tuy�t B�o ��ng",199,204,200,203},
{101,"D��c Vu�ng ��ng",197,221,125,144},
{187,"T�n L�ng",177,208,199,221},
{75,"Xi V�u ��ng",197,235,187,209},
{102,"L�m Du Quan",204,250,201,224},
{103,"Phong V� ��o",148,195,151,190},
{104,"Ch�n N�i Tr��ng B�ch",142,197,143,196}
}

bosskylan = {}
dscauthu = {}
bossvltk = 0

function addnpcevent()


--if (gio == 19 or gio == 12) and phut == 40 then

--	satthu=AddNpc(random(1029,1033),99,SubWorldID2Idx(46),1201*32,2773*32)
--	SetNpcScript(satthu, "\\script\\boss\\bossphonglangdo.lua");
--	mangxoaboss[getn(mangxoaboss) + 1] = satthu
--	Msg2SubWorld("Boss Phong L�ng �� ��o T�c �� xu�t hi�n t�i �� xu�t hi�n t�i Phong L�ng �� 150/173, c�c v� anh h�ng h�y ti�u di�t n�o !")
--	AddGlobalCountNews("Boss Phong L�ng �� ��o T�c �� xu�t hi�n t�i �� xu�t hi�n t�i Phong L�ng �� 150/173, c�c v� anh h�ng h�y ti�u di�t n�o ",1)

--end


if (gio == 21 or gio == 23) and (phut == 0 or phut == 30) then
	for i=1,getn(BossNgoaiXam) do
		satthu=AddNpc(random(1604,1608),99,SubWorldID2Idx(BossNgoaiXam[i][1]),BossNgoaiXam[i][2],BossNgoaiXam[i][3])
		SetNpcScript(satthu, "\\script\\event\\bossgiacngoaixam.lua");
	end
	SetGlbMissionV(42, GetGlbMissionV(42) + getn(BossNgoaiXam))
	Msg2SubWorld("<color=pink>Boss Gi�c Ngo�i X�m �� xu�t hi�n t�i Hoa S�n, c�c nh�n s� h�y nhanh ch�n �i ti�u di�t n�o")
end

if (gio == 21  and ngay == 21 and thang == 4) then
	if phut < 5 then
		Msg2SubWorld("<color=green>[S� Ki�n] <color=red>Boss V� L�m H�i �c s�p xu�t hi�n t�i Bi�n Kinh 196/202, c�c v� anh h�ng h�y ti�u di�t n�o !")
		AddGlobalCountNews("Boss V� L�m H�i �c s�p xu�t hi�n t�i Bi�n Kinh 196/202, c�c v� anh h�ng ra tay ti�u di�t n�o ",1)
	elseif phut == 5 then
		bossvltk=AddNpc(random(1034,1038),99,SubWorldID2Idx(9),196*8*32,202*16*32)
		SetNpcScript(bossvltk, "\\script\\boss\\bossvolamtinhkiem.lua");
		SetNpcName(bossvltk, "V� L�m H�i �c")
		Msg2SubWorld("<color=green>[S� Ki�n] <color=red>Boss V� L�m H�i �c �� xu�t hi�n t�i Bi�n Kinh 196/202, c�c v� anh h�ng h�y ti�u di�t n�o !")
		AddGlobalCountNews("Boss V� L�m H�i �c �� xu�t hi�n t�i Bi�n Kinh 196/202, c�c v� anh h�ng ra tay ti�u di�t n�o ",1)
	end
end

end


toadokylan = {
{1558,3245},
{1557,3258},
{1569,3270},
{1582,3265},
{1590,3254},
{1576,3231},
{1572,3244},
}

toadotruyeu = {
{53,1759,3213,"Ba L�ng Huy�n"},
{3,1520,2985,"Chu Ti�n Tr�n"},
{66,3616,6028,"Giang T�n Th�n"},
{54,1493,3197,"Nam Nh�c Tr�n"},
{56,1654,3145,"N�i Th�t ��ng"},
{67,2526,4200,"Thanh Th�nh S�n"},
{70,1799,3150,"V� L�ng S�n"},
{57,1547,3212,"Th�t S�t ��ng"},
{68,1794,3147,"B�ch V�n ��ng"},
{2,2495,3633,"Hoa S�n"},
{11,1806,3322,"��i L� "},
{17,1791,3432,"Ph��ng T��ng"},
{18,3380,4878,"Th�nh �� "},
}

BossNgoaiXam = {
{2,83456,116832},
{2,82464,119520},
{2,82752,122912},
{2,81888,120960},
{2,80608,119168},
{2,80608,116448},
{2,80736,114368},
{2,81248,111968},
{2,80192,111008},
{2,79456,113216},
{2,78528,114880},
{2,77472,112992},
{2,78016,110368},
{2,76544,112320},
{2,76288,115264},
{2,75040,111872},
{2,76352,118464},
{2,74368,121344},
{2,75104,124480},
{2,77856,123584},
{2,80000,123072},
{2,80512,127200},
{2,78688,129472},
{2,76864,127360},
{2,75808,128992},
{2,76128,126528},
{2,74560,127488},
{2,81184,129344},
{2,83744,126912},
{2,81824,121888},

}
