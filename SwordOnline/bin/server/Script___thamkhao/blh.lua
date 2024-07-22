Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\trap\\addtrap.lua")
Include("\\script\\pass\\addquai\\visondao.lua")

function AddNhiemVuTanThu()
luuqui=AddNpc(1566,95,SubWorldID2Idx(3),1677*32,3164*32)
SetNpcScript(luuqui, "\\script\\nhiemvutanthu\\luuqui.lua");
lucdau=AddNpc(1567,95,SubWorldID2Idx(92),1762*32,2991*32)
SetNpcScript(lucdau, "\\script\\nhiemvutanthu\\lucdau.lua");
lucdau=AddNpc(1567,95,SubWorldID2Idx(92),1774*32,2992*32)
SetNpcScript(lucdau, "\\script\\nhiemvutanthu\\lucdau.lua");
lucdau=AddNpc(1567,95,SubWorldID2Idx(92),1775*32,3015*32)
SetNpcScript(lucdau, "\\script\\nhiemvutanthu\\lucdau.lua");
lucdau=AddNpc(1567,95,SubWorldID2Idx(92),1755*32,3011*32)
SetNpcScript(lucdau, "\\script\\nhiemvutanthu\\lucdau.lua");
lucdau=AddNpc(1567,95,SubWorldID2Idx(92),1765*32,2999*32)
SetNpcScript(lucdau, "\\script\\nhiemvutanthu\\lucdau.lua");
lacthi=AddNpc(1568,95,SubWorldID2Idx(56),1566*32,3145*32)
SetNpcScript(lacthi, "\\script\\nhiemvutanthu\\lacthi.lua");
batgia=AddNpc(1569,95,SubWorldID2Idx(3),1575*32,3184*32)
SetNpcScript(batgia, "\\script\\nhiemvutanthu\\batgia.lua");
datru=AddNpc(1570,95,SubWorldID2Idx(57),1508*32,3187*32)
SetNpcScript(datru, "\\script\\nhiemvutanthu\\datru.lua");
didoa=AddNpc(1571,95,SubWorldID2Idx(66),3520*32,6166*32)
SetNpcScript(didoa, "\\script\\nhiemvutanthu\\didoa.lua");
duahau=AddNpc(1572,95,SubWorldID2Idx(67),2516*32,4248*32)
SetNpcScript(duahau, "\\script\\nhiemvutanthu\\duahau.lua");
ducphuc=AddNpc(1573,95,SubWorldID2Idx(66),3503*32,6150*32)
SetNpcScript(ducphuc, "\\script\\nhiemvutanthu\\ducphuc.lua");
phalang=AddNpc(1574,95,SubWorldID2Idx(68),1865*32,3279*32)
SetNpcScript(phalang, "\\script\\nhiemvutanthu\\phalang.lua");
tadong=AddNpc(1575,95,SubWorldID2Idx(66),3444*32,6228*32)
SetNpcScript(tadong, "\\script\\nhiemvutanthu\\tadong.lua");
baoruong=AddNpc(1576,95,SubWorldID2Idx(73),1506*32,2839*32)
SetNpcScript(baoruong, "\\script\\nhiemvutanthu\\baoruong.lua");
baoruong=AddNpc(1576,95,SubWorldID2Idx(73),1541*32,2881*32)
SetNpcScript(baoruong, "\\script\\nhiemvutanthu\\baoruong.lua");
baoruong=AddNpc(1576,95,SubWorldID2Idx(73),1480*32,2926*32)
SetNpcScript(baoruong, "\\script\\nhiemvutanthu\\baoruong.lua");
tamnuong=AddNpc(1577,95,SubWorldID2Idx(53),1573*32,3196*32)
SetNpcScript(tamnuong, "\\script\\nhiemvutanthu\\tamnuong.lua");
thachbao=AddNpc(1578,95,SubWorldID2Idx(54),1634*32,3171*32)
SetNpcScript(thachbao, "\\script\\nhiemvutanthu\\thachbao.lua");
truongcanh=AddNpc(1579,95,SubWorldID2Idx(53),1635*32,3217*32)
SetNpcScript(truongcanh, "\\script\\nhiemvutanthu\\truongcanh.lua");
caytamthao=AddNpc(1580,95,SubWorldID2Idx(70),1660*32,3162*32)
SetNpcScript(caytamthao, "\\script\\nhiemvutanthu\\caytamthao.lua");
caytamthao=AddNpc(1580,95,SubWorldID2Idx(70),1651*32,3167*32)
SetNpcScript(caytamthao, "\\script\\nhiemvutanthu\\caytamthao.lua");
caytamthao=AddNpc(1580,95,SubWorldID2Idx(70),1658*32,3180*32)
SetNpcScript(caytamthao, "\\script\\nhiemvutanthu\\caytamthao.lua");
caytamthao=AddNpc(1580,95,SubWorldID2Idx(70),1667*32,3181*32)
SetNpcScript(caytamthao, "\\script\\nhiemvutanthu\\caytamthao.lua");
caytamthao=AddNpc(1580,95,SubWorldID2Idx(70),1657*32,3202*32)
SetNpcScript(caytamthao, "\\script\\nhiemvutanthu\\caytamthao.lua");
tulang=AddNpc(1581,95,SubWorldID2Idx(74),1946*32,3230*32)
SetNpcScript(tulang, "\\script\\nhiemvutanthu\\tulang.lua");
end

function addnpcblh()
AddFullTrap()
--AddNpcNVMonPhai()
AddNhiemVuKhinhCong()
AddNhiemVuTanThu()
--AddNpcGiaoDichVien()
--AddNpcKhuVucBang()
--AddTrapCTC()
--AddNpcViSonDao()
AddNpcHoangKim()
AddNpcDaiHoiAnhHung()
AddNpcPhongLangDo()
MapBaLangHuyen()
MapChuTienTran()
MapGiangTanThon()	
--MapDaiLy()
--MapThanhDo()
--MapDuongChau()
MapBienKinh()
MapTuongDuong()
MapPhuongTuong()
AddTrapDaoTayTuy()

		
-- Ba Lang Huyen
	vansuthong=AddNpc(1000,95,SubWorldID2Idx(54),1561*32,3086*32)
	SetNpcScript(vansuthong, "\\script\\global\\vansuthong.lua");
	
-- Hoa Son
	xaphu=AddNpc(235,95,SubWorldID2Idx(2),2617*32,3562*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	AddNPCEx(837,50,27,194,201,4,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6) -- thu


	xaphu=AddNpc(235,95,SubWorldID2Idx(27),1580*32,3223*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua")
	tientrang=AddNpc(772,95,SubWorldID2Idx(27),1574*32,3228*32)
	SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
	lequan=AddNpc(216,95,SubWorldID2Idx(27),1569*32,3234*32)
	SetNpcScript(lequan, "\\script\\global\\lequan.lua");
	
	
	lequan=AddNpc(216,95,SubWorldID2Idx(20),1607*32,3123*32)
	SetNpcScript(lequan, "\\script\\global\\lequan.lua");
	tientrang=AddNpc(772,95,SubWorldID2Idx(20),1619*32,3199*32)
	SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
	
-- Nam Nhac Tran
	--xaphu=AddNpc(235,95,SubWorldID2Idx(54),1592*32,3093*32)
	--SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	--congbinhtu=AddNpc(998,95,SubWorldID2Idx(54),1673*32,3144*32)
	--SetNpcScript(congbinhtu, "\\script\\loidaihonchien\\quanlythidau.lua");
	--SetNpcName(congbinhtu, "Qu¶n L?L«i §µi")
	--npckiemsoat=AddNpc(998,95,SubWorldID2Idx(59),1607*32,3235*32)
	--SetNpcScript(npckiemsoat, "\\script\\loidaihonchien\\kiemsoat.lua");
	--SetNpcName(npckiemsoat, "NPC KiÓm So¸t")
	--ruong=AddNpc(620,95,SubWorldID2Idx(54),3449*32,6172*32)
	--SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
-- End

-- Dao Hoa Nguyen
	xaphu=AddNpc(235,95,SubWorldID2Idx(76),1593*32,3175*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	SetNpcName(xaphu,"DÞch Tr¹m - §µo Hoa Nguyªn")
-- End Dao Hoa Nguyen

-- Nha Lao
AddNPCEx(668,1,5,203,200,8,6,"\\script\\cacsukien\\help\\nhamon.lua",6) -- Nha Lao
AddNPCEx(516,1,5,203,200, 5,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	 -- Nha Lao
-- End


---- EVENT 30/4
--	megia=AddNpc(1602,95,SubWorldID2Idx(66),3521*32,6209*32)
--	SetNpcScript(megia, "\\script\\event\\megia.lua");
--	nguoilinh=AddNpc(1603,95,SubWorldID2Idx(17),1583*32,3190*32)
--	SetNpcScript(nguoilinh, "\\script\\event\\nguoilinh.lua");
--	nguoilinh=AddNpc(1603,95,SubWorldID2Idx(15),1585*32,3223*32)
--	SetNpcScript(nguoilinh, "\\script\\event\\nguoilinh.lua");
--	nguoilinh=AddNpc(1603,95,SubWorldID2Idx(9),1748*32,3066*32)
--	SetNpcScript(nguoilinh, "\\script\\event\\nguoilinh.lua");
--	nguoilinh=AddNpc(1045,95,SubWorldID2Idx(2),2593*32,3506*32)
--	SetNpcScript(nguoilinh, "\\script\\event\\cayhoadang.lua");
--	nguoilinh=AddNpc(1045,95,SubWorldID2Idx(2),2611*32,3506*32)
--	SetNpcScript(nguoilinh, "\\script\\event\\cayhoadang.lua");
--	nguoilinh=AddNpc(1045,95,SubWorldID2Idx(2),2629*32,3501*32)
--	SetNpcScript(nguoilinh, "\\script\\event\\cayhoadang.lua");

-- LOI DAI CONG BINH TU
	congbinhtu=AddNpc(998,95,SubWorldID2Idx(15),1701*32,3241*32)
	SetNpcScript(congbinhtu, "\\script\\loidai\\sugiald.lua");
	xaphu=AddNpc(237,95,SubWorldID2Idx(209),1578*32,3198*32)
	SetNpcScript(xaphu, "\\script\\loidai\\xaphu.lua");
end

function MapBienKinh()

	bienkinh = SubWorldID2Idx(9)
	AddNPCEx(203,1,9,222,193, 3,2,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Bien Kinh
	AddNPCEx(219,1,9,223,194, 4,0,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Bien Kinh
	thorencaocap=AddNpc(198,95,SubWorldID2Idx(9),1712*32,3102*32)
	SetNpcScript(thorencaocap, "\\script\\cacsukien\\help\\thoren.lua");
	SetNpcName(thorencaocap, "Th?RÌn Cao CÊp")

	AddNPCEx(198,1,9,218,190, 2,7,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Bien Kinh
	AddNPCEx(197,1,9,214,189, 2,3,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Bien Kinh
	AddNPCEx(516,1,9,201,188, 2,1,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
	AddNPCEx(516,1,9,211,200, 6,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
	AddNPCEx(516,1,9,231,185, 4,2,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
	AddNPCEx(516,1,9,215,192, 4,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
	AddNPCEx(237,1,9,199,187, 3,3,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
	AddNPCEx(237,1,9,233,182, 3,5,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
	AddNPCEx(237,1,9,204,198, 4,6,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
	AddNPCEx(237,1,9,213,201, 2,3,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
	
	thanbi=AddNpc(967,95,bienkinh,1816*32,3085*32)
	SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");
	datau=AddNpc(665,95,bienkinh,1676*32,3075*32)
	SetNpcScript(datau, "\\script\\datau\\npcdatau.lua");
	pttt=AddNpc(216,95,bienkinh,1774*32,3041*32)
	SetNpcScript(pttt, "\\script\\global\\lequan.lua");
	nhamon=AddNpc(669,95,bienkinh,1789*32,3034*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
--	nhadich=AddNpc(671,95,bienkinh,1782*32,3038*32)
--	SetNpcScript(nhadich, "\\script\\admin\\banghoi\\banghoi.lua");
	banghoi = AddNpc(775,95,bienkinh,1742*32,3000*32)
	SetNpcScript(banghoi, "\\script\\hoatdong\\congthanh\\npccongthanh.lua");
	tientrang=AddNpc(772,95,bienkinh,1678*32,3132*32)
	SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
	ptntt=AddNpc(173,95,bienkinh,1696*32,3006*32)
	SetNpcScript(ptntt, "\\script\\nvsatthu\\sugiasatthu.lua");
	ptva=AddNpc(243,95,bienkinh,1624*32,3125*32)
	SetNpcScript(ptva, "\\script\\vuotai\\sugia3.lua");
	-- End Bien Kinh
end
function MapLongTuyenThon()
-- Long Tuyen Thon	
	xaphu=AddNpc(235,95,SubWorldID2Idx(4),1637*32,3196*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	xaphu=AddNpc(235,95,SubWorldID2Idx(4),1601*32,3206*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	ruong=AddNpc(620,95,SubWorldID2Idx(4),1607*32,3197*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	duocdiem=AddNpc(203,95,SubWorldID2Idx(4),1572*32,3255*32)
	SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");
	hotro=AddNpc(675,95,SubWorldID2Idx(4),1617*32,3210*32)
	SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
	
	mp7=AddNpc(174,95,SubWorldID2Idx(4),1621*32,3190*32)
	mp8=AddNpc(188,95,SubWorldID2Idx(4),1625*32,3194*32)
	mp9=AddNpc(528,95,SubWorldID2Idx(4),1629*32,3197*32)
	mp1=AddNpc(189,95,SubWorldID2Idx(4),1632*32,3201*32)
	mp2=AddNpc(184,95,SubWorldID2Idx(4),1637*32,3206*32)
	mp3=AddNpc(186,95,SubWorldID2Idx(4),1616*32,3196*32)
	mp4=AddNpc(177,95,SubWorldID2Idx(4),1620*32,3200*32)
	mp5=AddNpc(527,95,SubWorldID2Idx(4),1623*32,3203*32)
	mp6=AddNpc(171,95,SubWorldID2Idx(4),1627*32,3207*32)
	mp10=AddNpc(181,95,SubWorldID2Idx(4),1631*32,3211*32)
	SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
	SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");
	SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
	SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
	SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
	SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
	SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
	SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
	SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
	SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");
	
	
	
end
function AddNpcPhongLangDo()
AddNPCEx(740,1,46,143,188, 5,8,"\\script\\phonglangdo\\thuyenphu.lua",6)	-- Map : Phong Lang do
AddNPCEx(740,99,46,159,181, 10,7,"\\script\\phonglangdo\\thuyenphu1.lua",5)	-- Map : Phong Lang do
AddNPCEx(740,99,46,192,175, 7,8,"\\script\\phonglangdo\\thuyenphu2.lua",5)	-- Map : Phong Lang do
xaphupld=AddNpc(740,95,SubWorldID2Idx(46),1207*32,2791*32)
SetNpcScript(xaphupld, "\\script\\phonglangdo\\thuyenvenam.lua");	
bosspld=AddNpc(1003,95,SubWorldID2Idx(53),1625*32,3191*32)
SetNpcScript(bosspld, "\\script\\boss\\bossphonglangdo.lua");
SetNpcName(bosspld,"Qu¶n Lý Phong L¨ng §é ")
end
function MapBaLangHuyen()

-- Ba Lang Huyen
	mp1=AddNpc(189,95,SubWorldID2Idx(53),1615*32,3171*32)
	mp2=AddNpc(184,95,SubWorldID2Idx(53),1612*32,3174*32)
	mp3=AddNpc(186,95,SubWorldID2Idx(53),1620*32,3165*32)
	mp4=AddNpc(177,95,SubWorldID2Idx(53),1625*32,3167*32)
	mp5=AddNpc(527,95,SubWorldID2Idx(53),1639*32,3187*32)
	mp6=AddNpc(171,95,SubWorldID2Idx(53),1637*32,3189*32)
	mp7=AddNpc(174,95,SubWorldID2Idx(53),1635*32,3191*32)
	mp8=AddNpc(188,95,SubWorldID2Idx(53),1633*32,3193*32)
	mp9=AddNpc(528,95,SubWorldID2Idx(53),1631*32,3195*32)
	mp10=AddNpc(181,95,SubWorldID2Idx(53),1618*32,3168*32)
	SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
	SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");	
	SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
	SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
	SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
	SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
	SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
	SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
	SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
	SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");	
	AddNPCEx(203,1,53,199,200,4,8,"\\script\\cacsukien\\help\\duocdiem.lua",6) --Ngo Than Y
	AddNPCEx(219,1,53,199,198,10,3,"\\script\\cacsukien\\help\\taphoatl.lua",6) --Chu tiem tap hoa
	AddNPCEx(198,1,53,198,197,2,1,"\\script\\cacsukien\\help\\thoren.lua",6) --Tho ren
	ruong=AddNpc(620,95,SubWorldID2Idx(53),1612*32,3168*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	xaphu=AddNpc(235,95,SubWorldID2Idx(53),1578*32,3235*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	hotro=AddNpc(675,95,SubWorldID2Idx(53),1628*32,3178*32)
	SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
	longngu=AddNpc(65,95,SubWorldID2Idx(53),1603*32,3122*32)
	SetNpcScript(longngu, "\\script\\nvhoangkim\\longngu.lua");
	lequan=AddNpc(216,95,SubWorldID2Idx(53),1590*32,3218*32)
	SetNpcScript(lequan, "\\script\\global\\lequan.lua");
	lequan=AddNpc(216,95,SubWorldID2Idx(20),1615*32,3197*32)
	SetNpcScript(lequan, "\\script\\global\\lequan.lua");
	datau=AddNpc(665,95,SubWorldID2Idx(53),1616*32,3200*32)
	SetNpcScript(datau, "\\script\\datau\\npcdatau.lua");
	khuvucbang=AddNpc(996,95,SubWorldID2Idx(53),1505*32,3170*32)
	SetNpcScript(khuvucbang, "\\script\\hoatdong\\congthanh\\npcbanghoi.lua");	
	
--	bosspld=AddNpc(1003,95,SubWorldID2Idx(53),1579*32,3250*32)
--	SetNpcScript(bosspld, "\\script\\boss\\bosshk1.lua");
--	SetNpcName(bosspld,"Quan Ly Boss ")

khuvucbang=AddNpc(996,95,SubWorldID2Idx(53),1627*32,3184*32)
SetNpcScript(khuvucbang, "\\script\\admin\\banghoi\\banghoi.lua");
SetNpcName(khuvucbang,"Qu¶n Lý L·nh §Þa")
--thantai=AddNpc(744,95,SubWorldID2Idx(18),3121*32,5052*32)
--SetNpcScript(thantai, "\\script\\global\\thantai.lua");
cs=AddNpc(666,95,SubWorldID2Idx(53),1623*32,3180*32)
SetNpcScript(cs, "\\script\\chuyensinh\\chuyensinhtkh.lua");
bosscs2=AddNpc(random(690,694),95,SubWorldID2Idx(53),1516*32,3304*32)
SetNpcScript(bosscs2, "\\script\\chuyensinh\\bossdie2.lua");
bosscs2=AddNpc(random(695,699),95,SubWorldID2Idx(53),1760*32,3207*32)
--SetNpcScript(bosscs2, "\\script\\chuyensinh\\bossdie2.lua");
--thantai=AddNpc(744,95,SubWorldID2Idx(3),1645*32,3143*32)
--SetNpcScript(thantai, "\\script\\global\\thantai.lua");
--SetNpcName(thantai, "§¹i ThÇn Tµi")
--absg=AddNpc(81,95,SubWorldID2Idx(53),1629*32,3169*32)
--SetNpcScript(absg, "\\script\\cacsukien\\help\\anbang.lua");
--vosu=AddNpc(80,95,SubWorldID2Idx(53),1609*32,3195*32)
--SetNpcScript(vosu, "\\script\\sudo\\quanlysudo.lua");
--SetNpcName(vosu, "V?S?")
--dqsg=AddNpc(82,95,SubWorldID2Idx(53),1635*32,3176*32)
--SetNpcScript(dqsg, "\\script\\cacsukien\\help\\dinhquoc.lua");
--AddNPCEx(773,1,53,202,199,4,4,"\\script\\liendau\\sugiald.lua",6) -- Su Gia Lien Dau

end
function AddNpcLienDau()
AddNPCEx(773,1,42,189,190,0,0,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
AddNPCEx(773,1,42,188,188,3,8,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
AddNPCEx(773,1,42,186,189,1,2,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
AddNPCEx(773,1,42,186,190,1,0,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
AddNPCEx(203,1,42,193,192,2,1,"\\script\\cacsukien\\help\\duocdiem.lua",6) --Ngo Than Y
AddNPCEx(237,1,42,182,188, 1,7,"\\script\\hoatdong\\liendau\\xaphu.lua",6)
AddNPCEx(837,50,42,195,191,3,0,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
end
function MapGiangTanThon()

-- Giang Tan Thon
	npcmapindex = SubWorldID2Idx(66)
	xaphu=AddNpc(235,95,SubWorldID2Idx(66),3458*32,6111*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	ruong=AddNpc(620,95,SubWorldID2Idx(66),3449*32,6172*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ruong=AddNpc(620,95,SubWorldID2Idx(66),3393*32,6275*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ruong=AddNpc(620,95,SubWorldID2Idx(66),3550*32,6218*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	taphoatl=AddNpc(219,95,SubWorldID2Idx(66),3372*32,6253*32)
	SetNpcScript(taphoatl, "\\script\\cacsukien\\help\\taphoatl.lua");
	thoren=AddNpc(198,95,SubWorldID2Idx(66),3440*32,6221*32)
	SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
	duocdiem=AddNpc(203,95,SubWorldID2Idx(66),3464*32,6167*32)
	SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");
	mp7=AddNpc(174,95,SubWorldID2Idx(66),3552*32,6232*32)
	mp8=AddNpc(188,95,SubWorldID2Idx(66),3548*32,6228*32)
	mp9=AddNpc(528,95,SubWorldID2Idx(66),3540*32,6219*32)
	mp1=AddNpc(189,95,SubWorldID2Idx(66),3543*32,6222*32)
	mp2=AddNpc(184,95,SubWorldID2Idx(66),3558*32,6226*32)
	mp3=AddNpc(186,95,SubWorldID2Idx(66),3568*32,6214*32)
	mp4=AddNpc(177,95,SubWorldID2Idx(66),3573*32,6210*32)
	mp5=AddNpc(527,95,SubWorldID2Idx(66),3569*32,6206*32)
	mp6=AddNpc(171,95,SubWorldID2Idx(66),3564*32,6200*32)
	SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
	SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");
	SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
	SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
	SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
	SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
	SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
	SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
	SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
	mp10=AddNpc(181,95,SubWorldID2Idx(66),3561*32,6197*32)
	SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");
	hotro=AddNpc(675,95,npcmapindex,3545*32,6192*32)
	SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
	datau=AddNpc(665,95,npcmapindex,3511*32,6158*32)
	SetNpcScript(datau, "\\script\\datau\\npcdatau.lua");
	
for i=-5,5 do
AddTrap(66,(3594-i)*32,(6232+i)*32,"\\script\\trap\\giangtan\\3584.lua")
AddTrap(66,(3594-i+1)*32,(6232+i)*32,"\\script\\trap\\giangtan\\3584.lua")
end
for i=-10,10 do
AddTrap(66,(3433-i)*32,(6087+i)*32,"\\script\\trap\\giangtan\\12452054.lua")
AddTrap(66,(3433-i+1)*32,(6087+i)*32,"\\script\\trap\\giangtan\\12452054.lua")
end

for i=-5,5 do
AddTrap(66,(3408-i)*32,(6264+i)*32,"\\script\\trap\\giangtan\\12779733.lua")
AddTrap(66,(3408-i+1)*32,(6264+i)*32,"\\script\\trap\\giangtan\\12779733.lua")
end

for i=-5,5 do
AddTrap(66,(3447-i)*32,(6240+i)*32,"\\script\\trap\\giangtan\\12779735.lua")
AddTrap(66,(3447-i+1)*32,(6240+i)*32,"\\script\\trap\\giangtan\\12779735.lua")
end

for i=-5,5 do
AddTrap(66,(3488+i)*32,(6247+i)*32,"\\script\\trap\\giangtan\\12779737.lua")
AddTrap(66,(3488+i+1)*32,(6247+i)*32,"\\script\\trap\\giangtan\\12779737.lua")
end

end
function MapChuTienTran()

-- Chu Tien Tran
	npcmapindex = SubWorldID2Idx(3)
	xaphu=AddNpc(235,95,npcmapindex,1676*32,3108*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	xaphu=AddNpc(235,95,npcmapindex,1615*32,3097*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	xaphu=AddNpc(235,95,npcmapindex,1600*32,3173*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	xaphu=AddNpc(235,95,npcmapindex,1716*32,3215*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	ruong=AddNpc(620,95,npcmapindex,1702*32,3194*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ruong=AddNpc(620,95,npcmapindex,1636*32,3203*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ruong=AddNpc(620,95,npcmapindex,1702*32,3194*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	taphoatl=AddNpc(219,95,npcmapindex,1641*32,3129*32)
	SetNpcScript(taphoatl, "\\script\\cacsukien\\help\\taphoatl.lua");
	thoren=AddNpc(198,95,npcmapindex,1662*32,3151*32)
	SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
	duocdiem=AddNpc(203,95,npcmapindex,1659*32,3123*32)
	SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");
	mp7=AddNpc(174,95,npcmapindex,1602*32,3114*32)
	mp8=AddNpc(188,95,npcmapindex,1605*32,3117*32)
	mp9=AddNpc(528,95,npcmapindex,1608*32,3120*32)
	mp1=AddNpc(189,95,npcmapindex,1611*32,3123*32)
	mp2=AddNpc(184,95,npcmapindex,1614*32,3126*32)
	mp3=AddNpc(186,95,npcmapindex,1617*32,3129*32)
	mp4=AddNpc(177,95,npcmapindex,1620*32,3132*32)
	mp5=AddNpc(527,95,npcmapindex,1623*32,3135*32)
	mp6=AddNpc(171,95,npcmapindex,1626*32,3138*32)
	mp10=AddNpc(181,95,npcmapindex,1599*32,3111*32)
	SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
	SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");	
	SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
	SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
	SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
	SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
	SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
	SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
	SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
	SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");

	hotro=AddNpc(675,95,npcmapindex,1617*32,3171*32)
	SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
	lequan=AddNpc(665,95,npcmapindex,1642*32,3161*32)
	SetNpcScript(lequan, "\\script\\datau\\npcdatau.lua");
--	tdva=AddNpc(243,95,npcmapindex,1644*32,3143*32)
--	SetNpcScript(tdva, "\\script\\vuotai\\sugiaall.lua"); 
	
--End Chu Tien Tran
end

function AddTrapDaoTayTuy()

for i=-5,5 do
AddTrap(20,(1588+i)*32,(3227+i)*32,"\\script\\trap\\daotaytuy\\cong6h.lua") -- 1584 3231
AddTrap(20,(1588+i+1)*32,(3227+i)*32,"\\script\\trap\\daotaytuy\\cong6h.lua") -- 1591 3223
end


for i=-10,10 do
AddTrap(20,(1650-i)*32,(3235+i)*32,"\\script\\trap\\daotaytuy\\cong3h.lua") -- 1654 3238
AddTrap(20,(1650-i+1)*32,(3235+i)*32,"\\script\\trap\\daotaytuy\\cong3h.lua") -- 1647 3230
end

for i=-5,5 do
AddTrap(20,(1648+i)*32,(3178+i)*32,"\\script\\trap\\daotaytuy\\cong12h.lua") -- 1651 3174
AddTrap(20,(1648+i+1)*32,(3178+i)*32,"\\script\\trap\\daotaytuy\\cong12h.lua") -- 1644 3183
end

for i=-15,15 do
AddTrap(20,(1593-i)*32,(3175+i)*32,"\\script\\trap\\daotaytuy\\cong9h.lua") -- 1588 3171
AddTrap(20,(1593-i+1)*32,(3175+i)*32,"\\script\\trap\\daotaytuy\\cong9h.lua") -- 1597 3180
end

end

function AddNpcDaiHoiAnhHung()
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1778*32,3170*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 1")
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1778*32,3329*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 1")	
	
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1867*32,3185*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 2")		
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1857*32,3348*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 2")		
	
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1861*32,3522*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 3")			
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1771*32,3580*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 3")			

	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1871*32,3699*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 4")			
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1780*32,3691*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 4")			
	
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1680*32,3563*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 5")				
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1573*32,3547*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 5")			

	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1582*32,3708*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 6")		
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1692*32,3712*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 6")		
	
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1678*32,3377*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 7")		
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1577*32,3353*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 7")		

	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1681*32,3180*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 8")
	khuvuc1=AddNpc(773,95,SubWorldID2Idx(106),1584*32,3202*32)
	SetNpcScript(khuvuc1, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(khuvuc1,"KiÓm So¸t Khu Vùc 8")

	AddNpcDaiHoiAnhHung1()
end
function AddNpcDaiHoiAnhHung1()
	daihoianhhung=AddNpc(773,95,SubWorldID2Idx(66),3524*32,6117*32)
	SetNpcScript(daihoianhhung, "\\script\\daihoianhhung\\sugia.lua");	
	SetNpcName(daihoianhhung,"Sø Gi¶ Anh Hïng")
	
	daihoianhhung=AddNpc(203,95,SubWorldID2Idx(106),216*8*32,217*16*32)
	SetNpcScript(daihoianhhung, "\\script\\daihoianhhung\\duocdiem.lua");	
	daihoianhhung=AddNpc(516,95,SubWorldID2Idx(106),1736*32,3487*32)
	SetNpcScript(daihoianhhung, "\\script\\daihoianhhung\\ruongchuado.lua");	
	
	
	-- Khu Vuc Cho
	for i=-5,5 do
		AddTrap(106,(1704-i)*32,(3412+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_1.lua") 
		AddTrap(106,(1704-i+1)*32,(3412+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_1.lua") -- 1707 3416
	end
	for i=-5,5 do
		AddTrap(106,(1755+i)*32,(3412+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_2.lua") 
		AddTrap(106,(1755+i+1)*32,(3412+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_2.lua") -- 1751 3415
	end
	for i=-5,5 do
		AddTrap(106,(1765-i)*32,(3504+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_3.lua") 
		AddTrap(106,(1765-i+1)*32,(3504+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_3.lua") -- 1762 3499
	end
	for i=-5,5 do
		AddTrap(106,(1702+i)*32,(3485+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_4.lua") 
		AddTrap(106,(1702+i+1)*32,(3485+i)*32,"\\script\\daihoianhhung\\trap\\khuvuccho_4.lua") -- 1707 3481
	end
	-- KHu Vuc CHien Dau 1
	for i=-5,5 do
		AddTrap(106,(1765+i)*32,(3400+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc1_1.lua") 
		AddTrap(106,(1765+i+1)*32,(3400+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc1_1.lua") -- SetPosU(1770,3396)
	end
	for i=-5,5 do
		AddTrap(106,(1732+i)*32,(3264+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc1_2.lua") 
		AddTrap(106,(1732+i+1)*32,(3264+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc1_2.lua") -- SetPosU(1736,3261)
	end	
	for i=-25,25 do
		AddTrap(106,(1809)*32,(3336+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc1_3.lua") 
		AddTrap(106,(1809+1)*32,(3336+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc1_3.lua") -- SetPosU(1802,3336)
	end	
	-- NPC 1781 3252
	
	-- Khu Vuc Chien Dau 2
	for i=-25,25 do
		AddTrap(106,(1825)*32,(3345+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc2_1.lua") 
		AddTrap(106,(1825+1)*32,(3345+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc2_1.lua") -- SetPosU(1832,3345)
	end	
	for i=-5,5 do
		AddTrap(106,(1848+i)*32,(3438+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc2_2.lua") 
		AddTrap(106,(1848+i+1)*32,(3438+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc2_2.lua") -- SetPosU(1851,3434)
	end	
	
	-- Khu Vuc Chien Dau 3
	for i=-5,5 do
		AddTrap(106,(1830+i)*32,(3455+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc3_1.lua") 
		AddTrap(106,(1830+i+1)*32,(3455+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc3_1.lua") -- SetPosU(1825,3463)
	end	
	for i=-5,5 do
		AddTrap(106,(1774-i)*32,(3511+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc3_2.lua") 
		AddTrap(106,(1774-i+1)*32,(3511+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc3_2.lua") -- SetPosU(1776,3514)
	end		
	for i=-35,35 do
		AddTrap(106,(1799+i)*32,(3626)*32,"\\script\\daihoianhhung\\trap\\khuvuc3_3.lua") 
		AddTrap(106,(1799+i)*32,(3626+1)*32,"\\script\\daihoianhhung\\trap\\khuvuc3_3.lua") -- SetPosU(1798,3612)
	end		
	
	-- Khu Vuc Chien Dau 4
	for i=-35,35 do
		AddTrap(106,(1798+i)*32,(3629)*32,"\\script\\daihoianhhung\\trap\\khuvuc4_1.lua") 
		AddTrap(106,(1798+i)*32,(3629+1)*32,"\\script\\daihoianhhung\\trap\\khuvuc4_1.lua") -- SetPosU(1797,3639)
	end		
	for i=-5,5 do
		AddTrap(106,(1731-i)*32,(3635+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc4_2.lua") 
		AddTrap(106,(1731-i+1)*32,(3635+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc4_2.lua") -- SetPosU(1733,3637)
	end		
	
	-- Khu Vuc Chien Dau 5
	for i=-5,5 do
		AddTrap(106,(1722-i)*32,(3625+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_1.lua") 
		AddTrap(106,(1722-i+1)*32,(3625+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_1.lua") -- SetPosU(1719,3623)
	end		
	for i=-5,5 do
		AddTrap(106,(1698+i)*32,(3490+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_2.lua") 
		AddTrap(106,(1698+i+1)*32,(3490+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_2.lua") -- SetPosU(1696,3492)
	end			
	for i=-5,5 do
		AddTrap(106,(1649+i)*32,(3441+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_3.lua") 
		AddTrap(106,(1649+i+1)*32,(3441+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_3.lua") -- SetPosU(1647,3443)
	end		
	for i=-35,35 do
		AddTrap(106,(1625+i)*32,(3632)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_4.lua") 
		AddTrap(106,(1625+i)*32,(3632+1)*32,"\\script\\daihoianhhung\\trap\\khuvuc5_4.lua") -- SetPosU(1625,3626)
	end			
	
	-- Khu Vuc Chien Dau 6
	for i=-35,35 do
		AddTrap(106,(1625+i)*32,(3632)*32,"\\script\\daihoianhhung\\trap\\khuvuc6_1.lua") 
		AddTrap(106,(1625+i)*32,(3632+1)*32,"\\script\\daihoianhhung\\trap\\khuvuc6_1.lua") -- SetPosU(1623,3665)
	end		
	
	-- Khu Vuc 7
	for i=-5,5 do
		AddTrap(106,(1655+i)*32,(3436+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc7_1.lua") 
		AddTrap(106,(1655+i+1)*32,(3436+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc7_1.lua") -- SetPosU(1657,3432)
	end		
	for i=-5,5 do
		AddTrap(106,(1697-i)*32,(3405+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc7_2.lua") 
		AddTrap(106,(1697-i+1)*32,(3405+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc7_2.lua") -- SetPosU(1695,3402)
	end			
	for i=-35,35 do
		AddTrap(106,(1636+i)*32,(3284)*32,"\\script\\daihoianhhung\\trap\\khuvuc7_3.lua") 
		AddTrap(106,(1636+i)*32,(3284+1)*32,"\\script\\daihoianhhung\\trap\\khuvuc7_3.lua") -- SetPosU(1636,3291)
	end			
			
	-- Khu Vuc Chien Dau 8
	for i=-35,35 do
		AddTrap(106,(1637+i)*32,(3245)*32,"\\script\\daihoianhhung\\trap\\khuvuc8_1.lua") 
		AddTrap(106,(1637+i)*32,(3245+1)*32,"\\script\\daihoianhhung\\trap\\khuvuc8_1.lua") -- SetPosU(1636,3239)
	end		
	for i=-5,5 do
		AddTrap(106,(1723+i)*32,(3273+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc8_2.lua") 
		AddTrap(106,(1723+i+1)*32,(3273+i)*32,"\\script\\daihoianhhung\\trap\\khuvuc8_2.lua") -- SetPosU(1720,3278)
	end			
	
	
	
	
end

function MapDuongChau()
AddNPCEx(203,1,16,221,192, 8,5,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Duong Chau
AddNPCEx(219,1,16,212,188, 4,6,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Duong Chau
AddNPCEx(198,1,16,211,197, 1,8,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Duong Chau
AddNPCEx(197,1,16,206,198, 2,5,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,202,198, 7,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,232,189, 7,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,213,201, 6,9,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(237,1,16,198,199, 8,9,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau


	xaphu=AddNpc(237,95,SubWorldID2Idx(16),1677*32,2994*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");	

AddNPCEx(516,1,16,207,186, 4,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau

AddNPCEx(237,1,16,228,191, 8,2,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau
AddNPCEx(237,1,16,215,200, 3,4,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau	

duongchau = SubWorldID2Idx(16)

	nhamon=AddNpc(516,95,duongchau,1763*32,3017*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");


	nhamon=AddNpc(669,95,duongchau,1777*32,3018*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
	tdtt=AddNpc(772,95,duongchau,1757*32,3013*32)
	SetNpcScript(tdtt, "\\script\\global\\tientrang.lua");
	tdntt=AddNpc(173,95,duongchau,1752*32,3019*32)
	SetNpcScript(tdntt, "\\script\\nvsatthu\\sugiasatthu.lua");
	
	
	SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");
	pttt=AddNpc(216,95,duongchau,1779*32,3047*32)
	SetNpcScript(pttt, "\\script\\global\\lequan.lua");
	tddatau=AddNpc(665,95,duongchau,1773*32,3054*32)
	SetNpcScript(tddatau, "\\script\\datau\\npcdatau.lua");	

	
for i=-5,5 do
AddTrap(16,(1876+i)*32,(3018+i)*32,"\\script\\trap\\duongchau\\cong12h.lua")
AddTrap(16,(1876+i+1)*32,(3018+i)*32,"\\script\\trap\\duongchau\\cong12h.lua")
end

for i=-5,5 do
AddTrap(16,(1742-i)*32,(3254+i)*32,"\\script\\trap\\duongchau\\cong3h.lua")
AddTrap(16,(1742-i+1)*32,(3254+i)*32,"\\script\\trap\\duongchau\\cong3h.lua")
end

for i=-5,5 do
AddTrap(16,(1574+i)*32,(3236+i)*32,"\\script\\trap\\duongchau\\cong6h.lua")
AddTrap(16,(1574+i+1)*32,(3236+i)*32,"\\script\\trap\\duongchau\\cong6h.lua")
end

for i=-5,5 do
AddTrap(16,(1645-i)*32,(2992+i)*32,"\\script\\trap\\duongchau\\cong9h.lua")
AddTrap(16,(1645-i+1)*32,(2992+i)*32,"\\script\\trap\\duongchau\\cong9h.lua")
end
end

function MapDaiLy()
daily = SubWorldID2Idx(11)
	duocdiem=AddNpc(203,95,daily,1503*32,3214*32)
	SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");
	taphoa=AddNpc(219,95,daily,1536*32,3201*32)
	SetNpcScript(taphoa, "\\script\\cacsukien\\help\\taphoatl.lua");
	thoren=AddNpc(198,95,daily,1556*32,3258*32)
	SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
	banngua=AddNpc(197,95,daily,1645*32,3142*32)
	SetNpcScript(banngua, "\\script\\cacsukien\\help\\banngua.lua");
	ruong=AddNpc(516,95,daily,1629*32,3158*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ruong=AddNpc(516,95,daily,1580*32,3132*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	xaphu=AddNpc(237,95,daily,1671*32,3121*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");	
	xaphu=AddNpc(237,95,daily,1697*32,3275*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");	
	xaphu=AddNpc(237,95,daily,1466*32,3272*32)
	SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");	
	

	--chusongbac=AddNpc(220,95,daily,1570*32,3210*32)
	--SetNpcScript(chusongbac, "\\script\\songbac\\chusongbac.lua");
	--baoke=AddNpc(221,95,daily,1574*32,3214*32)
	--SetNpcScript(baoke, "\\script\\songbac\\baoke.lua");	
	--baoke=AddNpc(222,95,daily,1564*32,3204*32)
	--SetNpcScript(baoke, "\\script\\songbac\\baoke.lua");
	
	
--khuvucbang=AddNpc(773,95,SubWorldID2Idx(53),1605*32,3210*32)
--SetNpcScript(khuvucbang, "\\script\\chuyenserver\\sugiachuyenserver.lua");
--SetNpcName(khuvucbang, "TuyÖt T×nh KiÕm")
--khuvucbang=AddNpc(773,95,SubWorldID2Idx(53),1608*32,3214*32)
--SetNpcScript(khuvucbang, "\\script\\chuyenserverhc\\sugiachuyenserver.lua");
--SetNpcName(khuvucbang, "Su Gia Huyet Chien")




	nhamon=AddNpc(669,95,daily,1597*32,3130*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
	tdtt=AddNpc(772,95,daily,1574*32,3138*32)
	SetNpcScript(tdtt, "\\script\\global\\tientrang.lua");
	tdntt=AddNpc(173,95,daily,1586*32,3134*32)
	SetNpcScript(tdntt, "\\script\\nvsatthu\\sugiasatthu.lua");
	
	thanbi=AddNpc(967,95,daily,1594*32,3143*32)
	SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");
	pttt=AddNpc(216,95,daily,1598*32,3147*32)
	SetNpcScript(pttt, "\\script\\global\\lequan.lua");
	tddatau=AddNpc(665,95,daily,1599*32,3176*32)
	SetNpcScript(tddatau, "\\script\\datau\\npcdatau.lua");	
	
	for i=-5,5 do
	AddTrap(11,(1686+i)*32,(3113+i)*32,"\\script\\trap\\daily\\cong12h.lua") -- 1684 3115
	AddTrap(11,(1686+i+1)*32,(3113+i)*32,"\\script\\trap\\daily\\cong12h.lua") -- 1688 3110
	end
	
	for i=-5,5 do
	AddTrap(11,(1722-i)*32,(3311+i)*32,"\\script\\trap\\daily\\cong3h.lua") -- 1720 3308
	AddTrap(11,(1722-i+1)*32,(3311+i)*32,"\\script\\trap\\daily\\cong3h.lua") -- 1725 3316
	end
	
	for i=-5,5 do
	AddTrap(11,(1442+i)*32,(3308+i)*32,"\\script\\trap\\daily\\cong6h.lua") -- 1445 3306
	AddTrap(11,(1442+i+1)*32,(3308+i)*32,"\\script\\trap\\daily\\cong6h.lua") -- 1439 3314
	end
	
end


function MapPhuongTuong()
phuongtuong = SubWorldID2Idx(17)


	tdxaphu=AddNpc(237,95,SubWorldID2Idx(17),1558*32,3107*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua")
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(17),1646*32,3271*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(17),1530*32,3236*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(17),1647*32,3165*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(17),1633*32,3260*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(17),1661*32,3149*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(17),1571*32,3118*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(17),1544*32,3217*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(17),1588*32,3174*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(203,95,SubWorldID2Idx(17),1604*32,3192*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\duocdiem.lua");
	nhamon=AddNpc(219,95,SubWorldID2Idx(17),1560*32,3204*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\taphoatl.lua");
	nhamon=AddNpc(198,95,SubWorldID2Idx(17),1625*32,3191*32)
	SetNpcScript(nhamon,"\\script\\cacsukien\\help\\thoren.lua");
	nhamon=AddNpc(197,95,SubWorldID2Idx(17),1651*32,3204*32)
	SetNpcScript(nhamon,"\\script\\cacsukien\\help\\banngua.lua");

	tddatau=AddNpc(665,95,SubWorldID2Idx(17),1589*32,3207*32)
	SetNpcScript(tddatau, "\\script\\datau\\npcdatau.lua");	
	pttt=AddNpc(216,95,phuongtuong,1582*32,3130*32)
	SetNpcScript(pttt, "\\script\\global\\lequan.lua");
	nhamon=AddNpc(669,95,SubWorldID2Idx(17),1576*32,3183*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua")
	tientrang=AddNpc(772,95,phuongtuong,1550*32,3241*32)
	SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
	ptntt=AddNpc(173,95,phuongtuong,1634*32,3119*32)
	SetNpcScript(ptntt, "\\script\\nvsatthu\\sugiasatthu.lua");
	thanbi=AddNpc(967,95,phuongtuong,1646*32,3219*32)
	SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");
	ntva=AddNpc(243,95,SubWorldID2Idx(17),1504*32,3185*32)
	SetNpcScript(ntva, "\\script\\vuotai\\sugia2.lua");
	--nhadich=AddNpc(671,95,SubWorldID2Idx(17),1580*32,3179*32)
	--SetNpcScript(nhadich, "\\script\\admin\\banghoi\\banghoi.lua");
	banghoi = AddNpc(775,95,SubWorldID2Idx(17),1643*32,3288*32)
	SetNpcScript(banghoi, "\\script\\hoatdong\\congthanh\\npccongthanh.lua");
	
	
end


function MapTuongDuong()
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(15),1697*32,3226*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(15),1512*32,3139*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(15),1431*32,3218*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(15),1590*32,3370*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(15),1687*32,3235*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(15),1481*32,3165*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(15),1452*32,3261*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(15),1577*32,3340*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	nhamon=AddNpc(516,95,SubWorldID2Idx(15),1562*32,3226*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\ruongchuado.lua");
	
	nhamon=AddNpc(669,95,SubWorldID2Idx(15),1592*32,3206*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua")
	nhamon=AddNpc(203,95,SubWorldID2Idx(15),1617*32,3250*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\duocdiem.lua");
	nhamon=AddNpc(219,95,SubWorldID2Idx(15),1629*32,3262*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\taphoatl.lua");
	nhamon=AddNpc(198,95,SubWorldID2Idx(15),1549*32,3216*32)
	SetNpcScript(nhamon,"\\script\\cacsukien\\help\\thoren.lua");
	nhamon=AddNpc(197,95,SubWorldID2Idx(15),1568*32,3194*32)
	SetNpcScript(nhamon,"\\script\\cacsukien\\help\\banngua.lua");
	tddatau=AddNpc(665,95,SubWorldID2Idx(15),1593*32,3285*32)
	SetNpcScript(tddatau, "\\script\\datau\\npcdatau.lua");	


	pttt=AddNpc(216,95,SubWorldID2Idx(15),1536*32,3243*32)
	SetNpcScript(pttt, "\\script\\global\\lequan.lua");
	nhamon=AddNpc(669,95,SubWorldID2Idx(15),1576*32,3184*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
	tientrang=AddNpc(772,95,SubWorldID2Idx(15),1606*32,3299*32)
	SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
	ptntt=AddNpc(173,95,SubWorldID2Idx(15),1524*32,3218*32)
	SetNpcScript(ptntt, "\\script\\nvsatthu\\sugiasatthu.lua");
	thanbi=AddNpc(967,95,SubWorldID2Idx(15),1551*32,3179*32)
	SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");
	banghoi = AddNpc(775,95,SubWorldID2Idx(15),1531*32,3092*32)
	SetNpcScript(banghoi, "\\script\\hoatdong\\congthanh\\npccongthanh.lua");
	ntva=AddNpc(243,95,SubWorldID2Idx(15),1530*32,3310*32)
	SetNpcScript(ntva, "\\script\\vuotai\\sugia.lua");
	chusongbac=AddNpc(220,95,SubWorldID2Idx(15),1462*32,3235*32)
	SetNpcScript(chusongbac, "\\script\\songbac\\chusongbac.lua");
	baoke=AddNpc(221,95,SubWorldID2Idx(15),1464*32,3240*32)
	SetNpcScript(baoke, "\\script\\songbac\\baoke.lua");	
	baoke=AddNpc(222,95,SubWorldID2Idx(15),1458*32,3230*32)
	SetNpcScript(baoke, "\\script\\songbac\\baoke.lua");
	
end


function MapThanhDo()

thanhdo = SubWorldID2Idx(18)
-- Thanh Do
AddNPCEx(203,1,18,392,320, 3,6,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Thanh Do
AddNPCEx(219,1,18,386,321, 6,1,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Thanh Do
AddNPCEx(198,1,18,388,319, 4,9,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Thanh Do
AddNPCEx(197,1,18,395,318, 4,4,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,381,311, 4,2,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,404,314, 7,1,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,393,317, 8,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,397,323, 6,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(237,1,18,378,310, 3,1,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Thanh Do
AddNPCEx(237,1,18,399,324, 3,4,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Thanh Do
AddNPCEx(237,1,18,376,318, 4,5,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,375,319, 2,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
	nhamon=AddNpc(669,95,SubWorldID2Idx(18),3150*32,5050*32)
	SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
	tdxaphu=AddNpc(237,95,SubWorldID2Idx(18),3266*32,5000*32)
	SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");

	SetNpcScript(tdtt, "\\script\\global\\tientrang.lua");
	tdntt=AddNpc(173,95,thanhdo,3148*32,5065*32)
	SetNpcScript(tdntt, "\\script\\nvsatthu\\sugiasatthu.lua");
	--tdva=AddNpc(243,95,thanhdo,3151*32,5068*32)
	--SetNpcScript(tdva, "\\script\\vuotai\\sugia3.lua"); -- VUOT AI THANH DO
	thanbi=AddNpc(967,95,thanhdo,3144*32,5060*32)
	SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");
	pttt=AddNpc(216,95,thanhdo,3137*32,5053*32)
	SetNpcScript(pttt, "\\script\\global\\lequan.lua");
	tddatau=AddNpc(665,95,thanhdo,3157*32,5084*32)
	SetNpcScript(tddatau, "\\script\\datau\\npcdatau.lua");	
-- End Thanh Do
end


function AddNpcNVMonPhai()
-- NV Mon Phai
dieptiepmy=AddNpc(968,95,SubWorldID2Idx(2),2438*32,3452*32)
SetNpcScript(dieptiepmy, "\\script\\nvmonphai\\dieptiepmy.lua");
truongdaubuu=AddNpc(969,95,SubWorldID2Idx(68),1703*32,3227*32)
SetNpcScript(truongdaubuu, "\\script\\nvmonphai\\truongdaubuu.lua");
truongdaubuu=AddNpc(969,95,SubWorldID2Idx(68),1760*32,3075*32)
SetNpcScript(truongdaubuu, "\\script\\nvmonphai\\truongdaubuu.lua");
truongdaubuu=AddNpc(969,95,SubWorldID2Idx(68),1760*32,3311*32)
SetNpcScript(truongdaubuu, "\\script\\nvmonphai\\truongdaubuu.lua");

tongvienthanh=AddNpc(970,95,SubWorldID2Idx(15),1534*32,3095*32)
SetNpcScript(tongvienthanh, "\\script\\nvmonphai\\tongvienthanh.lua");
huyetmaho=AddNpc(971,95,SubWorldID2Idx(74),2059*32,3457*32)
SetNpcScript(huyetmaho, "\\script\\nvmonphai\\huyetmaho.lua");
huyetmaho=AddNpc(971,95,SubWorldID2Idx(74),2133*32,3527*32)
SetNpcScript(huyetmaho, "\\script\\nvmonphai\\huyetmaho.lua");
huyetmaho=AddNpc(971,95,SubWorldID2Idx(74),1895*32,3445*32)
SetNpcScript(huyetmaho, "\\script\\nvmonphai\\huyetmaho.lua");

tkkq=AddNpc(972,95,SubWorldID2Idx(41),1971*32,2890*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");
tkkq=AddNpc(972,95,SubWorldID2Idx(41),2162*32,2939*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");
tkkq=AddNpc(972,95,SubWorldID2Idx(41),1979*32,3096*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");

tuongquan=AddNpc(973,95,SubWorldID2Idx(9),1736*32,2948*32)
SetNpcScript(tuongquan, "\\script\\nvmonphai\\tieutuongquan.lua");
daisu=AddNpc(974,95,SubWorldID2Idx(17),1682*32,3193*32)
SetNpcScript(daisu, "\\script\\nvmonphai\\tuchungdaisu.lua");
thanhkhon=AddNpc(975,95,SubWorldID2Idx(14),1641*32,3053*32)
SetNpcScript(thanhkhon, "\\script\\nvmonphai\\thanhkhon.lua");
thanhkhon=AddNpc(975,95,SubWorldID2Idx(14),1436*32,2978*32)
SetNpcScript(thanhkhon, "\\script\\nvmonphai\\thanhkhon.lua");

daiquan=AddNpc(976,95,SubWorldID2Idx(66),3548*32,6122*32)
SetNpcScript(daiquan, "\\script\\nvmonphai\\thanhdaiquan.lua");
toto=AddNpc(977,95,SubWorldID2Idx(3),1736*32,2887*32)
SetNpcScript(toto, "\\script\\nvmonphai\\lieutoto.lua");
baba=AddNpc(978,95,SubWorldID2Idx(53),1631*32,3245*32)
SetNpcScript(baba, "\\script\\nvmonphai\\trubaba.lua");

baba=AddNpc(71,95,SubWorldID2Idx(15),1486*32,3267*32)
SetNpcScript(baba, "\\script\\nvhoangkim\\anmay.lua");

tuthanh=AddNpc(979,95,SubWorldID2Idx(9),1586*32,3058*32)
SetNpcScript(tuthanh, "\\script\\nvmonphai\\chuctuthanh.lua");

hamotuyet=AddNpc(980,95,SubWorldID2Idx(15),1529*32,3309*32)
SetNpcScript(hamotuyet, "\\script\\nvmonphai\\hamotuyet.lua");
dichhaonhien=AddNpc(random(981,985),95,SubWorldID2Idx(102),1638*32,3759*32)
SetNpcScript(dichhaonhien, "\\script\\nvmonphai\\dichhaonhien.lua");
codutau=AddNpc(986,95,SubWorldID2Idx(66),3835*32,6145*32)
SetNpcScript(codutau, "\\script\\nvmonphai\\codutau.lua");
volamminhchu=AddNpc(987,95,SubWorldID2Idx(17),1612*32,3037*32)
SetNpcScript(volamminhchu, "\\script\\nvmonphai\\volamminhchu.lua");
taohung=AddNpc(random(988,992),95,SubWorldID2Idx(104),1345*32,2284*32)
SetNpcScript(taohung, "\\script\\nvmonphai\\taohung.lua");
-- End Mon Phai
end

function AddNhiemVuKhinhCong()


	vosu=AddNpc(1564,95,SubWorldID2Idx(53),1521*32,2898*32)
	SetNpcScript(vosu, "\\script\\nhiemvukhinhcong\\vosu.lua");
	vosu=AddNpc(1565,95,SubWorldID2Idx(53),1526*32,2896*32)
	SetNpcScript(vosu, "\\script\\nhiemvukhinhcong\\congaivosu.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1545*32,2929*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1550*32,2934*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1551*32,2942*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1542*32,2943*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1531*32,2941*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1520*32,2940*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1548*32,2951*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	cocgo=AddNpc(1561,95,SubWorldID2Idx(53),1541*32,2950*32)
	SetNpcScript(cocgo, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	
	mocnhan=AddNpc(1562,95,SubWorldID2Idx(66),3547*32,6014*32)
	SetNpcScript(mocnhan, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	mocnhan=AddNpc(1562,95,SubWorldID2Idx(66),3559*32,6013*32)
	SetNpcScript(mocnhan, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	mocnhan=AddNpc(1562,95,SubWorldID2Idx(66),3570*32,6013*32)
	SetNpcScript(mocnhan, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	mocnhan=AddNpc(1562,95,SubWorldID2Idx(66),3575*32,6023*32)
	SetNpcScript(mocnhan, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	mocnhan=AddNpc(1562,95,SubWorldID2Idx(66),3566*32,6025*32)
	SetNpcScript(mocnhan, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	mocnhan=AddNpc(1562,95,SubWorldID2Idx(66),3552*32,6030*32)
	SetNpcScript(mocnhan, "\\script\\nhiemvukhinhcong\\cocgo.lua");

	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1731*32,3116*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1738*32,3123*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1749*32,3133*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1755*32,3139*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1763*32,3147*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1727*32,3114*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");
	baocat=AddNpc(1563,95,SubWorldID2Idx(3),1715*32,3101*32)
	SetNpcScript(baocat, "\\script\\nhiemvukhinhcong\\cocgo.lua");	
end
function AddNpcGiaoDichVien()
for i=1,getn(TDGD) do
	songbac=AddNpc(217,95,SubWorldID2Idx(TDGD[i][1]),TDGD[i][2]*32,TDGD[i][3]*32)
	SetNpcScript(songbac, "\\script\\chuyenserver\\sugiachuyenserver.lua");
	SetNpcName(songbac,"S?Gi?ChuyÓn Server")
end
end

function AddNpcViSonDao()
visondao = SubWorldID2Idx(24)
ruong=AddNpc(620,95,visondao,1419*32,2798*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
thoren=AddNpc(198,95,visondao,1380*32,2804*32)
SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
duocdiem=AddNpc(203,95,visondao,1403*32,2828*32)
SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");

tt=AddNpc(670,95,visondao,1402*32,2772*32)
SetNpcScript(tt, "\\script\\visondao\\quanlyvsd.lua");
SetNpcName(tt,"Qu¶n L?Vi S¬n §¶o")


for i=-5,5 do
AddTrap(24,(1388+i)*32,(2765-i)*32,"\\script\\trap\\visondao\\1388.lua")
AddTrap(24,(1388+i+1)*32,(2765-i)*32,"\\script\\trap\\visondao\\1388.lua")
end

for i=-5,5 do
AddTrap(24,(1419+i)*32,(2759+i)*32,"\\script\\trap\\visondao\\1488.lua")
AddTrap(24,(1419+i+1)*32,(2759+i)*32,"\\script\\trap\\visondao\\1488.lua")
end
end
function AddNpcKhuVucBang()
-- KHU VUC BANG HOI
idxquanlykhuvuc = 235


	ruong=AddNpc(620,95,SubWorldID2Idx(125),1678*32,3231*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	
min = 116
max = 116
for i=min,max do
	khuvucbang=AddNpc(996,95,SubWorldID2Idx(i),1670*32,3239*32)
	SetNpcScript(khuvucbang, "\\script\\admin\\banghoi\\banghoi.lua");
	SetNpcName(khuvucbang,"Qu¶n L?L·nh §Þa")

	taphoatl=AddNpc(219,95,SubWorldID2Idx(i),1636*32,3274*32)
	SetNpcScript(taphoatl, "\\script\\khuvucbang\\taphoatl.lua");	
	SetNpcName(taphoatl,"T¹p Hãa L·nh §Þa")

	thoren=AddNpc(198,95,SubWorldID2Idx(i),1630*32,3279*32)
	SetNpcScript(thoren, "\\script\\khuvucbang\\thoren.lua");
	SetNpcName(thoren,"Th?RÌn L·nh §Þa")

	xaphu=AddNpc(235,95,SubWorldID2Idx(i),1725*32,3315*32)
	SetNpcScript(xaphu, "\\script\\khuvucbang\\xaphu.lua");
	SetNpcName(xaphu,"Xa Phu L·nh §Þa")

	khuvucbang=AddNpc(997,95,SubWorldID2Idx(i),1608*32,3201*32)
	SetNpcScript(khuvucbang, "\\script\\khuvucbang\\quanlythidau.lua");
	SetNpcName(khuvucbang,"Qu¶n L?Thi §Êu")

	ruong=AddNpc(620,95,SubWorldID2Idx(i),1678*32,3231*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1520*32,3159*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1522*32,3190*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1532*32,3205*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1552*32,3198*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1553*32,3168*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1568*32,3171*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1533*32,3178*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1542*32,3190*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1546*32,3174*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1560*32,3182*32)


	-- 1520,3159
	-- 1522, 3190
	-- 1532,3205
	-- 1552,3198
	-- 1553,3168
	-- 1568,3171

for k=-5,5 do
AddTrap(i,(1589+k)*32,(3225+k)*32,"\\script\\khuvucbang\\trapchan1.lua")
AddTrap(i,(1589+k+1)*32,(3225+k)*32,"\\script\\khuvucbang\\trapchan1.lua")
end
for k=-5,5 do
AddTrap(i,(1631+k)*32,(3183+k)*32,"\\script\\khuvucbang\\trapchan2.lua")
AddTrap(i,(1631+k+1)*32,(3183+k)*32,"\\script\\khuvucbang\\trapchan2.lua")
end

for k=-5,5 do
AddTrap(i,(1576+k)*32,(3238+k)*32,"\\script\\khuvucbang\\trapra1.lua")
AddTrap(i,(1576+k+1)*32,(3238+k)*32,"\\script\\khuvucbang\\trapra1.lua")
end
for k=-5,5 do
AddTrap(i,(1589+k)*32,(3182-k)*32,"\\script\\khuvucbang\\trapravo.lua")
AddTrap(i,(1589+k+1)*32,(3182-k)*32,"\\script\\khuvucbang\\trapravo.lua")
end


for k=-5,5 do
AddTrap(i,(1642+k)*32,(3171+k)*32,"\\script\\khuvucbang\\trapra2.lua")
AddTrap(i,(1642+k+1)*32,(3171+k)*32,"\\script\\khuvucbang\\trapra2.lua")
end


end

end

function AddTrapCTC()

ctc = SubWorldID2Idx(36)
--- CONG THANh
AddNPCEx(767,50,34,202,198,4,0,"\\script\\hoatdong\\congthanh\\duocdiem.lua",6)
AddNPCEx(766,50,35,197,200,8,4,"\\script\\hoatdong\\congthanh\\duocdiem.lua",6)
AddNPCEx(766,50,36,195,202,8,4,"\\script\\hoatdong\\congthanh\\duocdiem.lua",6) -- Thu
AddNPCEx(766,50,36,194,201,7,6,"\\script\\hoatdong\\congthanh\\duocdiem.lua",6) -- thu
AddNPCEx(766,50,36,239,223,6,1,"\\script\\hoatdong\\congthanh\\duocdiem.lua",6)
AddNPCEx(766,50,36,240,223,7,6,"\\script\\hoatdong\\congthanh\\duocdiem.lua",6)


AddNPCEx(237,50,34,205,199,0,5,"\\script\\hoatdong\\congthanh\\xaphu.lua",6)
AddNPCEx(237,50,35,192,201,4,4,"\\script\\hoatdong\\congthanh\\xaphu.lua",6)


AddNPCEx(837,50,34,201,200,0,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
AddNPCEx(837,50,35,199,201,1,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
AddNPCEx(837,50,36,235,224,6,2,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
AddNPCEx(837,50,36,192,202,4,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6) -- thu

for j=-5,5 do
AddTrap(36,(1594-j)*32,(3472+j)*32,"\\script\\hoatdong\\congthanh\\trap_matdao.lua")
AddTrap(36,(1593+j)*32,(3465-j)*32,"\\script\\hoatdong\\congthanh\\trap_matdao.lua")
AddTrap(36,(1589-j)*32,(3465+j)*32,"\\script\\hoatdong\\congthanh\\trap_matdao.lua")
AddTrap(36,(1589+j)*32,(3472-j)*32,"\\script\\hoatdong\\congthanh\\trap_matdao.lua")

end
for j=-5,5 do
AddTrap(36,(1526-j)*32,(3202+j)*32,"\\script\\hoatdong\\congthanh\\trap_vaothu.lua")
AddTrap(36,(1526-j+1)*32,(3202+j)*32,"\\script\\hoatdong\\congthanh\\trap_vaothu.lua")
end
for j=-5,5 do
AddTrap(36,(1908-j)*32,(3619+j)*32,"\\script\\hoatdong\\congthanh\\trap_vaocong.lua")
AddTrap(36,(1908-j+1)*32,(3619+j)*32,"\\script\\hoatdong\\congthanh\\trap_vaocong.lua")
end

for j=-5,5 do
AddTrap(34,(1580-j)*32,(3156+j)*32,"\\script\\hoatdong\\congthanh\\trap_racong.lua")
AddTrap(34,(1580-j+1)*32,(3156+j)*32,"\\script\\hoatdong\\congthanh\\trap_racong.lua")
end

for j=-5,5 do
AddTrap(35,(1575-j)*32,(3254+j)*32,"\\script\\hoatdong\\congthanh\\trap_rathu.lua")
AddTrap(35,(1575-j+1)*32,(3254+j)*32,"\\script\\hoatdong\\congthanh\\trap_rathu.lua")
end
for j=-5,5 do
AddTrap(35,(1596-j)*32,(3234+j)*32,"\\script\\hoatdong\\congthanh\\trap_rathu1.lua")
AddTrap(35,(1596-j+1)*32,(3234+j)*32,"\\script\\hoatdong\\congthanh\\trap_rathu1.lua")
end

for i=-5,5 do
AddTrap(36,(1798-i)*32,(3499+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1798-i+1)*32,(3499+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
end
for i=-5,5 do
AddTrap(36,(1813-i)*32,(3484+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1813-i+1)*32,(3484+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
end

for i=-5,5 do
AddTrap(36,(1863-i)*32,(3564+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\21.lua")
AddTrap(36,(1863-i+1)*32,(3564+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\21.lua")
end

for i=-5,5 do
AddTrap(36,(1878-i)*32,(3550+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\22.lua")
AddTrap(36,(1878-i+1)*32,(3550+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\22.lua")
end

for i=-5,5 do
AddTrap(36,(1866-i)*32,(3412+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1866-i+1)*32,(3412+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
end


for i=-5,5 do
AddTrap(36,(1905-i)*32,(3549+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\31.lua")
AddTrap(36,(1905-i+1)*32,(3549+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\31.lua")
end



for i=-5,5 do
AddTrap(36,(1735-i)*32,(3540+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1735-i+1)*32,(3540+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\2.lua")
end
for i=-5,5 do
AddTrap(36,(1861-i)*32,(3595+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\11.lua")
AddTrap(36,(1861-i+1)*32,(3595+i)*32,"\\script\\hoatdong\\congthanh\\trap\\cong\\11.lua")
end


for i=-10,10 do
AddTrap(36,(1622-i)*32,(3296+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\1.lua")
AddTrap(36,(1622-i+1)*32,(3296+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\1.lua")
end
for i=-5,5 do
AddTrap(36,(1674-i)*32,(3245+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\1.lua")
AddTrap(36,(1674-i+1)*32,(3245+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\1.lua")
end
for i=-5,5 do
AddTrap(36,(1544-i)*32,(3368+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\1.lua")
AddTrap(36,(1544-i+1)*32,(3368+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\1.lua")
end
for i=-5,5 do
AddTrap(36,(1576-i)*32,(3251+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\21.lua")
AddTrap(36,(1576-i+1)*32,(3251+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\21.lua")
end
for i=-5,5 do
AddTrap(36,(1561-i)*32,(3266+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\22.lua")
AddTrap(36,(1561-i+1)*32,(3266+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\22.lua")
end
for i=-5,5 do
AddTrap(36,(1538-i)*32,(3275+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\11.lua")
AddTrap(36,(1538-i+1)*32,(3275+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\11.lua")
end
for i=-5,5 do
AddTrap(36,(1581-i)*32,(3228+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\31.lua")
AddTrap(36,(1581-i+1)*32,(3228+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\31.lua")
end

for i=-5,5 do
AddTrap(36,(1592-i)*32,(3204+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\31.lua")
AddTrap(36,(1592-i+1)*32,(3204+i)*32,"\\script\\hoatdong\\congthanh\\trap\\thu\\31.lua")
end

SetGlbMissionV(51,9999)
SetGlbMissionV(52,9999)
SetGlbMissionV(53,9999)

cong11 =  AddNpc(780,95,ctc,1663*32,3473*32)
SetNpcScript(cong11, "\\script\\hoatdong\\congthanh\\cong1.lua");
cong21 = AddNpc(780,95,ctc,1729*32,3410*32)
SetNpcScript(cong21, "\\script\\hoatdong\\congthanh\\cong2.lua");
cong31 = AddNpc(780,95,ctc,1796*32+24,3343*32+4)
SetNpcScript(cong31, "\\script\\hoatdong\\congthanh\\cong3.lua");


-- Tru Giua
cs1=AddNpc(785,95,ctc,1634*32,3347*32)
cs1=AddNpc(784,95,ctc,1639*32,3352*32)
cs1=AddNpc(785,95,ctc,1644*32,3357*32)
cs1=AddNpc(784,95,ctc,1649*32,3362*32)
cs1=AddNpc(785,95,ctc,1654*32,3367*32)
cs1=AddNpc(784,95,ctc,1655*32,3325*32)
cs1=AddNpc(785,95,ctc,1660*32,3330*32)
cs1=AddNpc(784,95,ctc,1665*32,3335*32)
cs1=AddNpc(785,95,ctc,1670*32,3340*32)
cs1=AddNpc(784,95,ctc,1675*32,3345*32)

-- Tru phai
cs1=AddNpc(785,95,ctc,1701*32,3280*32)
cs1=AddNpc(784,95,ctc,1706*32,3285*32)
cs1=AddNpc(785,95,ctc,1711*32,3290*32)
cs1=AddNpc(784,95,ctc,1716*32,3295*32)
cs1=AddNpc(785,95,ctc,1721*32,3300*32)
cs1=AddNpc(784,95,ctc,1723*32,3258*32)
cs1=AddNpc(785,95,ctc,1728*32,3263*32)
cs1=AddNpc(784,95,ctc,1733*32,3268*32)
cs1=AddNpc(785,95,ctc,1738*32,3273*32)
cs1=AddNpc(784,95,ctc,1743*32,3278*32)

-- Tru trai
cs1=AddNpc(785,95,ctc,1569*32,3412*32)
cs1=AddNpc(784,95,ctc,1574*32,3417*32)
cs1=AddNpc(785,95,ctc,1579*32,3422*32)
cs1=AddNpc(784,95,ctc,1584*32,3427*32)
cs1=AddNpc(785,95,ctc,1589*32,3432*32)
cs1=AddNpc(784,95,ctc,1590*32,3389*32)
cs1=AddNpc(785,95,ctc,1595*32,3394*32)
cs1=AddNpc(784,95,ctc,1600*32,3399*32)
cs1=AddNpc(785,95,ctc,1605*32,3404*32)
cs1=AddNpc(784,95,ctc,1610*32,3409*32)

-- KV Cong 1
AddNpc(782,95,ctc,1666*32,3477*32)
AddNpc(783,95,ctc,1675*32,3485*32)
cs1=AddNpc(784,95,ctc,1675*32,3468*32)
cs1=AddNpc(785,95,ctc,1678*32,3471*32)
cs1=AddNpc(784,95,ctc,1681*32,3474*32)
cs1=AddNpc(785,95,ctc,1684*32,3477*32)
cs1=AddNpc(784,95,ctc,1687*32,3480*32)
cs1=AddNpc(785,95,ctc,1690*32,3483*32)

cs1=AddNpc(785,95,ctc,1658*32,3487*32)
cs1=AddNpc(784,95,ctc,1661*32,3490*32)
cs1=AddNpc(785,95,ctc,1664*32,3493*32)
cs1=AddNpc(784,95,ctc,1667*32,3496*32)
cs1=AddNpc(785,95,ctc,1670*32,3499*32)
cs1=AddNpc(784,95,ctc,1673*32,3502*32)


-- KV Cong 2
for i=-5,5 do
AddTrap(36,(1661-i)*32,(3473+i)*32,"\\script\\hoatdong\\congthanh\\trap_cua1.lua")
AddTrap(36,(1661-i+1)*32,(3473+i)*32,"\\script\\hoatdong\\congthanh\\trap_cua1.lua")
end
for i=-5,5 do
AddTrap(36,(1727-i)*32,(3409+i)*32,"\\script\\hoatdong\\congthanh\\trap_cua2.lua")
AddTrap(36,(1727-i+1)*32,(3409+i)*32,"\\script\\hoatdong\\congthanh\\trap_cua2.lua")
end
for i=-5,5 do
AddTrap(36,(1795-i)*32,(3342+i)*32,"\\script\\hoatdong\\congthanh\\trap_cua3.lua")
AddTrap(36,(1795-i+1)*32,(3342+i)*32,"\\script\\hoatdong\\congthanh\\trap_cua3.lua")
end
AddNpc(782,95,ctc,1732*32,3414*32)
AddNpc(783,95,ctc,1741*32,3421*32)
cs1=AddNpc(784,95,ctc,1741*32,3405*32)
cs1=AddNpc(785,95,ctc,1744*32,3408*32)
cs1=AddNpc(784,95,ctc,1747*32,3411*32)
cs1=AddNpc(785,95,ctc,1750*32,3415*32)
cs1=AddNpc(784,95,ctc,1753*32,3417*32)
cs1=AddNpc(784,95,ctc,1756*32,3420*32)
cs1=AddNpc(785,95,ctc,1724*32,3422*32)
cs1=AddNpc(784,95,ctc,1727*32,3425*32)
cs1=AddNpc(785,95,ctc,1730*32,3428*32)
cs1=AddNpc(784,95,ctc,1733*32,3431*32)
cs1=AddNpc(785,95,ctc,1736*32,3434*32)
cs1=AddNpc(784,95,ctc,1739*32,3437*32)

-- KV Cong 3
--cong3 = 
AddNpc(782,95,ctc,1799*32,3347*32)
AddNpc(783,95,ctc,1808*32,3355*32)
cs1=AddNpc(784,95,ctc,1808*32,3338*32)
cs1=AddNpc(785,95,ctc,1812*32,3341*32)
cs1=AddNpc(784,95,ctc,1815*32,3344*32)
cs1=AddNpc(785,95,ctc,1818*32,3347*32)
cs1=AddNpc(784,95,ctc,1821*32,3350*32)
cs1=AddNpc(785,95,ctc,1824*32,3353*32)
cs1=AddNpc(785,95,ctc,1791*32,3357*32)
cs1=AddNpc(784,95,ctc,1794*32,3360*32)
cs1=AddNpc(785,95,ctc,1797*32,3363*32)
cs1=AddNpc(784,95,ctc,1800*32,3366*32)
cs1=AddNpc(785,95,ctc,1803*32,3369*32)
cs1=AddNpc(784,95,ctc,1806*32,3372*32)
end

function AddNpcHoangKim()
-- Nhiem Vu Hoang Kim
	baba=AddNpc(71,95,SubWorldID2Idx(15),1486*32,3267*32)
SetNpcScript(baba, "\\script\\nvhoangkim\\anmay.lua");
	AddNPCEx(66,50,53,223,213,8,6,"\\script\\nvhoangkim\\nhim.lua",5)
	AddNPCEx(66,50,53,219,182,8,6,"\\script\\nvhoangkim\\nhim.lua",5) 
	AddNPCEx(66,50,53,178,207,8,6,"\\script\\nvhoangkim\\nhim.lua",5) 
	--AddNPCEx(67,1,18,395,324,8,6,"\\script\\nvhoangkim\\macsau.lua",6) -- trong thanh
	macsau=AddNpc(67,1,SubWorldID2Idx(9),1704*32,3162*32)
	SetNpcScript(macsau, "\\script\\nvhoangkim\\macsau.lua");
	--AddNPCEx(68,50,18,412,303,8,6,"\\script\\nvhoangkim\\lymacsau.lua",5)  -- ngoai thanh
	macsau=AddNpc(68,50,SubWorldID2Idx(9),1859*32,3515*32)
	SetNpcScript(macsau, "\\script\\nvhoangkim\\lymacsau.lua");
	AddNPCEx(69,50,17,198,206,8,6,"\\script\\nvhoangkim\\vantong.lua",6) 
	AddNPCEx(70,50,2,325,219,8,6,"\\script\\nvhoangkim\\nhimchua.lua",5) 
	--AddNPCEx(71,50,18,383,322,8,6,"\\script\\nvhoangkim\\anmay.lua",6) 
	AddNPCEx(72,50,53,188,198,8,6,"\\script\\nvhoangkim\\namvan.lua",6) 
	AddNPCEx(73,50,15,191,201,8,6,"\\script\\nvhoangkim\\nambang.lua",6) 
	AddNPCEx(74,50,102,226,221,8,6,"\\script\\nvhoangkim\\ninhtuongquan.lua",5) 
	--AddNPCEx(75,50,75,223,202,8,6,"\\script\\nvhoangkim\\luuthientruong.lua",5) 
	macsau=AddNpc(75,50,SubWorldID2Idx(91),1672*32,2959*32)
	SetNpcScript(macsau, "\\script\\nvhoangkim\\luuthientruong.lua");
	AddNPCEx(76,50,53,200,195,8,6,"\\script\\nvhoangkim\\vannhi.lua",6) 
	AddNPCEx(77,50,17,203,191,8,6,"\\script\\nvhoangkim\\congcong.lua",6) 
	AddNPCEx(78,90,8,226,205,8,6,"\\script\\nvhoangkim\\tieukynhi.lua",5) 
	AddNPCEx(79,90,104,150,162,8,6,"\\script\\nvhoangkim\\hahauphuc.lua",5) 
	--AddNPCEx(80,50,18,376,316,8,6,"\\script\\nvhoangkim\\tieusu.lua",6) 
	macsau=AddNpc(80,50,SubWorldID2Idx(9),1608*32,3110*32)
	SetNpcScript(macsau, "\\script\\nvhoangkim\\tieusu.lua");
end


mangtoado = {
{2,2612,3650},
{2,2501,3747},
{2,2444,3685},
{2,2350,3589},
{2,2420,3478},
{2,2324,3788},
{2,2328,3922},
{2,2444,3863},
{2,2501,3864},
{2,2539,3950},
{2,2500,4049},
{2,2608,3971},
{2,2453,3815},
{2,2405,3798},
{2,2436,3651},
{2,2496,3516},
{2,2545,3502}
}
TDGD = {
{53,1583,3230},
{15,1593,3374},
{15,1438,3214},
{15,1514,3144},
{15,1692,3231},
{9,1599,3001},
{9,1643,3176},
{9,1710,3227},
{9,1862,2926},
{17,1643,3171},
{17,1642,3268},
{17,1535,3232},
{17,1535,3232},
{17,1562,3113},
{3,1672,3113},
{3,1620,3109},
{3,1605,3168},
{3,1710,3207},
{66,3462,6116},
{20,1610,3199},
}