
------TaskTemp------------------
ITEMINDEX	= 0
NPCINDEX	= 1
DESPLAYERID = 3	--for gm
SELSKILLNO = 4	--skill cua phai' so' x
HAVELOVE_MALE = 5		--Dang cau hon
HAVELOVE_FEMALE = 6		--playerindex cua nam
SEL_MOVEARRAY = 7			--lua chon mang~di chuyen
SEL_MOVEBEGIN = 8			--lua chon di chuyen
												--su dung	8->18
TEMP_TASK = 19
-------TASKID (loai lon)------------------
TASK_NAME = 0--ten nhan vat
TASK_LVGAMESEC = 1-- thoi gian roi mang
TASK_LVGAMEEXP = 2 --kinhnghiem tich luy roi mangcua nv
TASK_THIETLAHAN = 8
TASK_SHXT = 10
TASK_DUNGCHUNG = 11	--[1]da hoan thanh datau truoc do(phan thuong)
										--[2]ben kia bo phong lang do
										--[3][4]lan dat cuoc
										--[5][6]lan danh khinh cong
										--[7]loai khinh cong
										--[8]nv heo rung thanh do
										--[9]thanh thi dau thu
TASK_DUNGCHUNG2 = 12 --[1][2]an may thanh do[3][4]giet heo rung thanh do[5]dao nhan que[6]so lan giao thit[7][8]yeu cau thit tuoi[9]xuat su
TASK_DATAU_OLD = 13
TASK_DIADOCHI = 14	--[1][2][3]b�n �� --[4][5][6]s� l��ng t�m �c [7][8][9]level cua update kinh nghiem
TASK_DATAU_NEED = 15
TASK_DATAU_ACCEPT = 16	--[1]Nh�n nhi�m v� [2]Lo�i nhi�m v� : 0: kh�ng giao, 1: c� giao v�t ph�m [3]�� kh� 
													--[4][5][6]controng [7][8] loai update [9] loai item giao
TASK_DATAU_NUM = 17
TASK_LIENDAU_TIME = 18	--mua dau thu n
TASK_DAOTAYTUY = 19	--[1][2][3]mapcu[4]Taytuy[5][6]idrevive[7]loaitaytuy[8]colaothai[9]tieungu
TASK_BOOKS = 20	--[1][2]TTK[3][4]VLMT[5]phung nguyet[6]cong nguyet
--------------------------------
TASK_NVST = 21	--[1][2]nhan nv [3][4][5][6][7][8]NVLongngu [9]thanh thi return
TASK_TANTHU = 22		--[1]nhan item [2]hocskill9x[3]nhantop[4]testgame[5]ho tro tao bang hoi[6][7][8][9]thuongcap
TASK_NVDANHVONG = 23	--[1]nv thit heo[2]mieng thit [3]nv hai thuoc [4]noiduathuden [5]noibatdau dua thu	[6]aphuong [7]thuongquanthu [8]anmaylongmon [9]phu-hotu
TASK_THOIGIAN = 24	--THOI GIAN heo rung
TASK_THOIGIAN2 = 25	--THOI GIAN dichquan
TASK_LIENDAU = 26	--id data
TASK_RESET = 27	--[1]sudungHH[2]solanhaiHH [3]maxvuotai[4]longhuyethoan [5][6]luyenskill120moingay [7][8]max nvst[9]sudung qua HK
TASK_MOC_DATAU = 28	--nhan thuong moc da tau 9 o^
TASK_RESET2 = 29	--[1][2][3]datau max moi ngay[4]nhanthuongdatcuoc[5][6]hoadangmoingay[7][8]traloidunglientuc[9]thien tue
TASK_THOIGIAN3 = 30 --THOI GIAN nv heo rung thanh do
TASK_DATCUOCT = 31	--vong thi thu' n
TASK_DATCUOC1 = 32	--phu quy cam hap
TASK_DATCUOC2 = 33	--phu quy cam hap
TASK_DATCUOC3 = 34	--phu quy cam hap
TASK_DATCUOC4 = 35	--phu quy cam hap
TASK_DATCUOC5 = 36	--phu quy cam hap
TASK_DATCUOC6 = 37	--phu quy cam hap
TASK_THOIGIAN4 = 38	
TASK_THOIGIAN5 = 40 --THOI GIAN hai thuoc
TASK_RESET3 = 41 --[1]nau banh[3][4]thiet la han[5][6]cam nang hoang kim[7]so lan sd long huyethoan[8]so lan nv thongthuong trongngay
TASK_THOIGIAN6 = 42 --[1][2]luu ngay de resettask
TASK_RESET4 = 43 --ong chu co
TASK_NVTHONGTHUONG = 44 --[1][2][3][4]id quai nv thong thuong
TASK_RESETWEEK = 45 --[9]thu hien tai
TASK_THOIGIAN7 = 47 --xoa mat ma
TASK_THOIGIAN8 = 48 --THOI GIAN nv thit tuoi
TASK_THITTUOI = 49 -- so luong thit tuoi
TASK_NVDANHVONG2 = 50 --[1][2][3][4][5][6][7]thoi gian nv lien ket vo lam[8]ngolaogia-giangtan[9]gianna-hotu
TASK_THOIGIAN9	= 52 --THOI GIAN nhan danh vong
TASK_DUNGCHUNG3 = 53 --[1]tui tu mau[3][4]nv thong thuong[5]phe hien tai[7][8][9]ngoi tu
TASK_NVDANHVONG3 = 54 --[1][2][3][4]tim hieu cac mon phai [5]nv lien ket vo lam

--cac du lieu data int--
DATA_DICEMONEY = 0 -- tien chu song bac
DATA_DUATOP = 11
DATA_DATCUOC = 12 --dat cuoc
DATA_DCHAVERES = 13 --dat cuoc
DATA_DCBEGIN = 21 --dat cuoc
DATA_DCEND = 30 --dat cuoc
DATA_MAPVUOTAI	= 40 --40-46


NV_SATTHU = 50

DATAU_SOLAN = 82
DATAU_LIENTIEP = 83
DATAU_GIAIDOAN = 84
DATAU_LOAINV = 85
DATAU_DIEMNV = 86
DATAU_DATCUOC = 87
DATAU_BANDO = 88
DATAU_SHXT = 89
DATAU_LANHUY = 90
DATAU_PHANTHUONG1 = 91
DATAU_PHANTHUONG2 = 92
DATAU_PHANTHUONG3 = 93
DATAU_KINHNGHIEM1 = 94
TONGKIM_TLthuong = 95
LBhoanthanh_datau = 96

XU_VANG = 99
DIEMDANHVONG = 100
XU_VANG2 = 101

NV_MONPHAI1 = 103

MOCPHANTHUONG = 106

DATAU_20NV = 111

TASK_CHECK_DUATOP = 115

CHECK_BANDO_MAPS = 131

NGAY1 = 136
SOLUONG_GIOIHAN = 137
LIENQUAN_KYNANG120 = 138


THOIGIAN_NHALAO = 142


DIEMPHUCDUYEN = 162 

VUOTAI_TRONGNGAY1 = 185

TASK_TAYTUY1 = 196

GIOIHAN_TIEMNANG = 198
GIOIHAN_KYNANG = 199


TASK_MAPS_BANDO1 = 323
TASK_MAPS_BANDO2 = 324
TASK_MAPS_BANDO3 = 325

THANGCAPXANH1 = 328
BANGHOI_TRANHHUNG1 = 329

GiftCode_TANTHU = 333


NGUYENLIEUT  = 417

VANGKHOA_1 = 463

THOIGIAN_MAYMAN1 = 483

CHUADATVIP = 485
TANTHU_HOTRO1 = 486

TICHLUY_SUKIEN1 = 488
TINH_THOIGIAN1 = 489
TINH_THOIGIAN2 = 490
TINH_THOIGIAN3 = 491
TINH_THOIGIAN4 = 492

MATDO_THANBI1 = 494


HOTRO_9X1 = 503

CHUA_TICHLUYNAP = 506
DIEM_NAP1 = 507

BW_SIGNPOSWORLD = 511;
BW_SIGNPOSX = 512;
BW_SIGNPOSY = 513;

NV_CHAOLAPBAT = 528

SOLAN_SATTHU1 = 534
SOLAN_SATTHU2 = 535

DIEM_SUKIEN = 612

NGAY2 = 666


SOLUONG_GIOIHAN2 = 677

TUIQUA1 = 679

DANHAN_GOIQUA1 = 682

THANRONG = 699
XUONGRONG = 700
DUOIRONG = 701
MAICHEO = 702
DAURONG = 703
NGUYENLIEUDB = 704
THUYENRONGNHO = 705
THUYENRONGLON = 706

Task_GH_THUYENRONGNHO = 777  
EVENT_THUONG = 778
EVENT_DB = 779
Task_GH_Event_DB = 780  --- Task 1 Lan Gia Han Event DB
Task_GH_Event_T = 781  --- Task 1 Lan Gia Han Event Thuong
Task_GH_MocEvent = 782  --- Task Nhan Gioi Han Event DB
Task_GH_MocEventT = 783  --- Task Nhan Gioi Han Event Thuong
Task_MAX_2EVENTT = 784   --- Task Max 2 Lan Event Thuong
Task_MAX_2EVENTDB = 785  --- Task Max 2 Lan Event DB

DASUDUNG_GiftCode = 803
Task_GH_THUYENRONGLON = 804  
UYTHACBANDO = 805

DASUDUNG_GiftCode2 = 813
GiftCode_LikeShare = 814

DANHAN_VIP = 888






































