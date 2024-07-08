
function main()

	logDangNhap()

	--Yr,Mth,Dy,Hr,Mn,Se = GetTime();
	--local nNam = GetTask(TASK_NAM) + 2000;
	--local nThang = GetTask(TASK_THANG)
	--local nNgay = GetTask(TASK_NGAY)
	--if(nNam ~= Yr or nThang ~= Mth or nNgay ~= Dy) then --reset 1 ngay moi
	--	SetTask(TASK_NAM,Yr-2000);
	--	SetTask(TASK_THANG,Mth);
	--	SetTask(TASK_NGAY,Dy);
		--reset task can thiet tai day
	--	SetTask(TASK_RESET,0);
	--	SetTask(TASK_RESET2,0);
	--	SetTask(TASK_RESET3,0);
	--	SetTask(TASK_RESET4,0);
	--	SetTask(TASK_RESET5,0);
	--	SetTask(TASK_DATCUOC4, 0);
	--	SetTask(TASK_DATCUOC5, 0);
	--	SetTask(TASK_DATCUOC6, 0);
	--	SetOnlineMin(0)
	--	SetChatFlag(0)
	--end
	--local ThoiGian = GetTask(TASK_THOIGIAN4)
	--if(ThoiGian > 0) then
	--	local PhutHienTai = GetTimeMin();
	--	if (PhutHienTai - ThoiGian) > 0 then
	--	SetTask(TASK_THOIGIAN4, 0);
	--	SetRankEx(0,1);
	--	end
	--end
	--local nTTLTime = GetTask(TASK_TIENTHAOLO)
	--if(nTTLTime > 18) then
	--	AddSkillState(440, GetTask(TASK_LOAITTL), nTTLTime);
	--end
	--nTTLTime = GetTask(TASK_THIENSONBAOLO)
	--if(nTTLTime > 18) then
	--	AddSkillState(441, 1, nTTLTime*1080);
	--end
	--nTTLTime = GetTask(TASK_QUEHOATUU)
	--if(nTTLTime > 18) then
	--	AddSkillState(450, 1, nTTLTime*1080);
	--end
	--if (GetNumber(GetTask(TASK_LINHTINH2),3) == 1) then
	--	SetTask(TASK_OFFLINEMIN, 0)
	--end
	-----------------------------------------------------------
	--SetTask(TASK_LINHTINH,SetNumber(GetTask(TASK_LINHTINH),2,0));
	--if (GetNumber(GetTask(TASK_LINHTINH3),4) == 0) then
	--SetTask(TASK_LUCKYBONUS, 0);
	--SetTask(TASK_LINHTINH3, SetNumber(GetTask(TASK_LINHTINH3),4,1));
	--end
	-----------------------------------------------------------
	--ThongBao()
	CheckPK()
	--Talk(1,"","H·y cïng chung tay x©y dùng Vâ L©m thËt lín m¹nh.")

end;

--===================== THONG BAO KHI MOI VAO GAME =====================--
function ThongBao()
	Msg2Player("<color=yellow>Chµo mõng b¹n ®Õn víi thÕ giíi Vâ L©m, chóc b¹n ch¬i game vui vÎ!<color>\n<color=cyan>* Trang chñ:<color> <color=fire>http://volam2003.net")
	-- Msg2Player("<color=green>§· cã patch TungSon_13.rar, vui lßng t¶i vÒ ®Ó cËp nhËt.")
end
--=====================================================================--

function CheckPK()
	local nW, nX, nY = GetWorldPos()
	if (nW == 197) and (GetPK() >= 1) then
		SetTimer(1800*18,6)
		--SetTask(TASK_LINHTINH, SetNumber(GetTask(TASK_LINHTINH),8,1));
		Msg2Player("<color=pink>Tay ng­¬i ®· nhuèm m¸u qu¸ nhiÒu, h·y tiÕp tôc s¸m hèi ë thiªn lao.")
		return
	end
	if GetPK() >= 5 and GetPK() < 8 then
		Talk(1,"","Tay ng­¬i ®· nhuèm m¸u qu¸ nhiÒu, <color=red>PK 8 trë lªn<color> sÏ bÞ tèng vµo Thiªn Lao ®Ó ¨n n¨n s¸m hèi.")
		return
	elseif (GetPK() >= 8) then
		if(NewWorld(197,1590,3206) == 1) then
		LeaveTeam();
		SetPKMode(0,0);--phuc hoi pk tu do
		SetFightState(0);--phi chien dau
		SetPunish(0);
		SetCurCamp(GetCamp());
		SetTimer(1800*18,6)
		--SetTask(TASK_LINHTINH, SetNumber(GetTask(TASK_LINHTINH),8,1));
		Msg2Player("<color=pink>Tay ng­¬i ®· nhuèm m¸u qu¸ nhiÒu, h·y vµo Thiªn Lao ®Ó ¨n n¨n s¸m hèi.")
		end
	end
end

function logWrite(str)
local gm_Log = "server_log/"..date("%Y_%m_%d").."_DANGNHAP_log.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, str);
closefile(fs_log);
end

function logDangNhap()
local szAccount = GetAccount()
local szName = GetName()
local dwID = GetHWID()
local nLevel = GetLevel()
local nIP = GetIP()
local nExtPoint = GetExtPoint()
local nMoney = GetCash()
local log = ""..date("%H:%M:%S").."\t Tµi kho¶n: "..szAccount.."\t Nh©n vËt: "..szName.."\t HWID ID: "..dwID.."\t CÊp: "..nLevel.."\t IP: "..nIP.."\t Xu: "..nExtPoint.."\t Tæng tiÒn v¹n: "..nMoney.."\n"
logWrite(log)
end