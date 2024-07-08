-- Author: AlexKing
-- Date: 28/11/2016
Include("\\script\\lib\\lib_server.lua")
Include("\\Script\\Global\\sourcejx49.lua")


TUONGDUONG_PHUCNGUUDONG={
{15,1663,2985},
{15,1662,2985},
{15,1661,2985},
{15,1660,2985},
{15,1659,2985},
{15,1658,2985},
{15,1657,2985},
{15,1656,2985},
{15,1655,2985},
{15,1654,2985},
{15,1652,2984},
{15,1651,2984},
{15,1650,2983},
{15,1649,2983},
{15,1648,2983},
{15,1648,2983},
{15,1648,2985},
{15,1650,2986},
{15,1651,2986},
{15,1652,2986},
{15,1653,2986},
{15,1654,2987},
{15,1655,2987},
{15,1656,2987},
{15,1657,2987},
{15,1658,2987},
{15,1660,2987},
{15,1661,2987},
{15,1662,2987},
{15,1663,2986}
};


NPC_TTHANHSON = 
{
{83386,143078},
{83688,142690},
{83440,141766},
{82977,141406},
{82671,140270},
{82315,139078},
{81223,138366},
{81238,137920},
{80849,135616},
{80311,135056},
{79815,133918},
{78828,132952},
{77844,131488},
{77464,130256},
{76440,129184},
{75733,129016},
{75557,127802},
{76438,126652},
{77953,126072},
{78580,124268},
{79007,123916},
{78447,122400},
{77938,121480},
{76754,121210},
{75449,120262},
{75170,120882},
{73685,121074},
{73009,122072},
{72379,121686},
{71373,120540},
{70195,120272},
{69150,119234},
{68635,119588},
{67876,119882},
{67321,120980},
{66055,121142},
{64873,120924},
{64666,120282},
{63938,120156},
{63410,120460},
{62158,121726},
{61128,122054},
{60437,122308},
{60115,121590},
{60238,120238},
{59973,118840},
{60187,117764},
{61109,116756},
{62093,115094},
{62480,115030}
};

BOSS_TTHANHSON = 
{
{78957,124476,"AlexKing"   },
{72793,122074,"L©m TrÝ Léc"},
{64069,119871,"Minh KiÕm"  },
};

KIND_TIEUXA =
{
{1,1634," ®ång Tiªu Xa","<color=green>"	}, -- dong tieu xa
{2,1635," b¹c Tiªu Xa" ,"<color=purple>"}, -- bac tieu xa
{3,1636," vµng Tiªu Xa","<color=gold>"	}, -- vang tieu xa
};

NPC_TALKTIEU =
{
{1,1632,"Tiªu s­ tiªu côc Song ¦ng"	,15,1547,3192, 1632,"Long M«n tiªu s­ ",8,1925,3359},	-- phuc nguu
{2,115,"Tiªu s­ tiªu côc Song ¦ng"	,80,1592,3118, 376,"Long M«n tiªu s­ ",2 ,2600,3504},	-- hoa son
{3,308,"Tiªu s­ tiªu côc Song ¦ng"	,15,1587,3302, 376,"Long M«n tiªu s­ ",27,1951,3506},	-- thanh thanh son
}

FILE_TIEUDAU = "\\script\\hoatdong\\event_vantieu\\tieudau.lua";
FILE_TIEUSU = "\\script\\hoatdong\\event_vantieu\\tieusu.lua";
DROPRATENPC = "\\script\\hoatdong\\event_vantieu\\drop_npc.lua";
ONDEATHNPC = "\\script\\hoatdong\\event_vantieu\\death_npc.lua";
DROPRATETIEU = "\\script\\hoatdong\\event_vantieu\\drop_tieu.lua";
ONDEATHTIEU = "\\script\\hoatdong\\event_vantieu\\death_tieu.lua";
MAX_CUOP_TIEU = 5;
function addnpcvantieu()
	-- son tac
	local nNpcIdx;	
	for i=1,getn(NPC_TTHANHSON) do
		nNpcIdx = AddNpcEx3({24,552,26},100,{0,1,2,3,4},27,
		NPC_TTHANHSON[i][1],NPC_TTHANHSON[i][2],DROPRATE9X,DEATHFILE9X,
			nil,5,nil,nil,nil,100,35,40,45,800,nil);
	end
	
	for i=1,getn(BOSS_TTHANHSON) do
		nNpcIdx = AddNpcEx3({701},120,{0,1,2,3,4},27,
		BOSS_TTHANHSON[i][1],BOSS_TTHANHSON[i][2],DROPRATENPC,ONDEATHNPC,
			BOSS_TTHANHSON[i][3],5,6000*EXP_RATE,100000,nil,5000,100,1,1,2500,50);
	end	
	-- npc lien quan
	for i=1,getn(NPC_TALKTIEU) do
		nNpcIdx = AddNpcEx1({NPC_TALKTIEU[i][2]},1,nil,NPC_TALKTIEU[i][4],
		NPC_TALKTIEU[i][5]*32,NPC_TALKTIEU[i][6]*32,"",FILE_TIEUDAU,NPC_TALKTIEU[i][3],6); 
		SetNpcValue(nNpcIdx,NPC_TALKTIEU[i][1]);
		
		nNpcIdx = AddNpcEx1({NPC_TALKTIEU[i][7]},1,nil,NPC_TALKTIEU[i][9],
		NPC_TALKTIEU[i][10]*32,NPC_TALKTIEU[i][11]*32,"",FILE_TIEUSU,NPC_TALKTIEU[i][8],6);
		SetNpcValue(nNpcIdx,NPC_TALKTIEU[i][1]);		
	end		
end

function addtrapvantieu()
	local Count = 0;
	Count = getn(TUONGDUONG_PHUCNGUUDONG)
	for i=1,Count do
	AddTrapEx5(TUONGDUONG_PHUCNGUUDONG[i][1],TUONGDUONG_PHUCNGUUDONG[i][2]*32,TUONGDUONG_PHUCNGUUDONG[i][3]*32,"\\script\\maps\\khac\\trap\\tuongduong-phucnguudong.lua")
	end
	
	-- Count = getn(PHUCNGUUDONG_TUONGDUONG)
	-- for i=1,Count do
	-- AddTrapEx5(PHUCNGUUDONG_TUONGDUONG[i][1],PHUCNGUUDONG_TUONGDUONG[i][2]*32,PHUCNGUUDONG_TUONGDUONG[i][3]*32,"\\script\\maps\\khac\\trap\\phucnguudong-tuongduong.lua")
	-- end	
	
	-- Count = getn(DUONGCHAU_HOASON)
	-- for i=1,Count do
	-- AddTrapEx5(DUONGCHAU_HOASON[i][1],DUONGCHAU_HOASON[i][2]*32,DUONGCHAU_HOASON[i][3]*32,"\\script\\maps\\khac\\trap\\duongchau-hoason.lua")
	-- end
	
	-- Count = getn(HOASON_DUONGCHAU)
	-- for i=1,Count do
	-- AddTrapEx5(HOASON_DUONGCHAU[i][1],HOASON_DUONGCHAU[i][2]*32,HOASON_DUONGCHAU[i][3]*32,"\\script\\maps\\khac\\trap\\hoason-duongchau.lua")
	-- end

	-- Count = getn(PHUONGTUONG_THANHTHANHSON)
	-- for i=1,Count do
	-- AddTrapEx5(PHUONGTUONG_THANHTHANHSON[i][1],PHUONGTUONG_THANHTHANHSON[i][2]*32,PHUONGTUONG_THANHTHANHSON[i][3]*32,"\\script\\maps\\khac\\trap\\phuongtuong-thanhthanhson.lua")
	-- end	
	
	-- Count = getn(THANHTHANHSON_PHUONGTUONG)
	-- for i=1,Count do
	-- AddTrapEx5(THANHTHANHSON_PHUONGTUONG[i][1],THANHTHANHSON_PHUONGTUONG[i][2]*32,THANHTHANHSON_PHUONGTUONG[i][3]*32,"\\script\\maps\\khac\\trap\\thanhthanhson-phuongtuong.lua")
	-- end		
end

function addobjvantieu()
end