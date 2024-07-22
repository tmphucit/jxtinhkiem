
-- ====================== 文件信息 ======================

-- 剑侠情缘online 世界杯活动奖励模块
-- Edited by peres
-- 2006/06/01 PM 17:00

-- 烟花。那一夜的烟花。
-- 她记得他在大雨的人群中，站在她的背后拥抱住她。
-- 他温暖的皮肤，他熟悉的味道。烟花照亮她的眼睛。
-- 一切无可挽回……

-- ======================================================

-- 读入特定奖励支持类
Include("\\script\\lib\\limitedaward_head.lua");

CLimitAward = {

	-- 有限奖励战队的ID
	m_Lid_AwardData = 0,
	
	-- 全局变量：服务器产生奖励序列的日期，也是开始的 GID
	m_Gid_AwardDate = 0,
	
	-- 全局变量：领奖玩家序号缓存
	m_Gid_AwardIndex = 0,
	
	-- 构造函数
	__new = function(self, arg)
		self.m_Lid_AwardData = arg[1];
		self.m_Gid_AwardDate = arg[2];
		self.m_Gid_AwardIndex = arg[3];
	end,
	
	-- 检查是否需要初始化奖励列表
	checkNeedInit = function(self)
		local nNowDate = tonumber(GetLocalDate("%y%m%d"));
		local nOldDate = GetGlbValue(self.m_Gid_AwardDate);
		if nOldDate==0 or nOldDate~=nNowDate then
			return 1;
		else
			return 0;
		end;
	end,

	
	-- 获得玩家在当前领奖人群中的位置
	-- 传入参数：int:nReadType  读取的类型， 1 为从全局变量读，2 为从战队信息中读
	-- 返回值：int:nCurPos  当前位置
	checkPlayerCurPos = function(self, nReadType)
		local nGlobalValuePos = 0;  -- 全局变量中的位置
		
		_Debug("开始获取战队数据："..self.m_Lid_AwardData);
		
		local nType, nCurPos, nTotal = limit_get_level_awardinfo(self.m_Lid_AwardData, 1);
		if nType==-1 then
			_Debug("checkPlayerCurPos：获取有限的奖励战队信息失败！");
			return nil;
		end;
		if nReadType==1 then
			
			nGlobalValuePos = GetGlbValue(self.m_Gid_AwardIndex);
			
			-- 如果第一次需要从全局变量中读取位置，那么它肯定是 1，不会是 0
			if nGlobalValuePos==0 then nGlobalValuePos = 1; end;
			
			_Debug("获取到的玩家位置："..nGlobalValuePos.."  中奖总数："..nTotal);
			return GetGlbValue(self.m_Gid_AwardIndex), nTotal;
		else
			_Debug("获取到的玩家位置："..nCurPos.."  中奖总数："..nTotal);	
			return nCurPos, nTotal;
		end;
	end,

	
	-- 检查玩家中了几等奖
	checkPlayerAward = function(self, nIndex)
		local aryAwardPlayer = self:readAwardArray(self.m_Gid_AwardDate);
		local i, nAry = 0, {};
		
		_Debug("开始输出全局变量信息：");
		_Debug("得到的数组信息总数是："..getn(aryAwardPlayer));
		
		-- 如果在 table 里有这个序号，则返回相应序号的奖励等级
		for i, nAry in aryAwardPlayer do
			if type(nAry)=="table" then
				_Debug("奖励等级："..nAry[1].."  玩家顺序："..nAry[2]);
				if nAry[2]==nIndex then
					_Debug("当前 "..nIndex.." 位玩家中了："..nAry[1].." 等奖。");
					return nAry[1];
				end;
			end;
		end;
		
		-- 如果找不到，则返回 0
		return 0;
	end,

	
	-- 当单个服务器的玩家第一个触发时，初始化整个全局变量信息
	initAwardData = function(self)
		local aryAward = self:readArrayForLeague();
		local nCurPos, nTotal = self:checkPlayerCurPos(2);
		if aryAward==nil then
			_Debug("initAwardData：构造奖励数组失败！");
			return
		end;
		-- 清空服务器上的玩家领奖序列
		SetGlbValue(self.m_Gid_AwardIndex, 0);
		self:createAwardArray(aryAward, nTotal, self.m_Gid_AwardDate);
	end,

	
	-- 从指定的战队中读取奖励数据构造奖励数组
	readArrayForLeague = function(self)
		
		local nType, nCurPos, nTotal = limit_get_level_awardinfo(self.m_Lid_AwardData, 1);
		local nUsed, nMax = 0, 0;
		local aryAward = {};
		local i = 0;
		
		if nType==-1 then
			_Debug("readArrayForLeague：获取有限的奖励战队信息失败！");
			return nil;
		end;
		
		for i=1, nType do
			nUsed, nMax = limit_get_one_awardinfo(self.m_Lid_AwardData, 1, i);
			tinsert(aryAward, nMax - nUsed);
		end;
		
		return aryAward;
	end,


	-- 在全局变量中产生奖励数组
	-- 传入参数：
	-- aryAward:{奖励1人数,
	--  		 奖励2人数,
	--  		 奖励3人数,
	--  		 ...}
	--
	-- int:nTotalPlayer 所有参与领奖总人数
	-- int:nStartID     全局变量开始使用的标记
	createAwardArray = function(self, aryAward, nTotalPlayer, nStartID)
		
		if type(aryAward)~="table" or aryAward==nil or nStartID==nil then
			print ("createAwardArray: parameter error!");
			return
		end;
		
		local nNowDate = tonumber(GetLocalDate("%y%m%d"));
		local nTotalNum = 0;
		
		local nAwardLevelStart = 0;
		local nAwardTotalNumStart = 0;
		local nAwardIndexStart = 0;
		
		local aryOpen = {};  -- 已经选取到奖励的序号表
		local aryOrg = {};   -- 构造一个原始的紧凑序号表
		local nRandom = 0;
		
			if nTotalPlayer<=0 then
				_Debug("createAwardArray：传入的中奖玩家总数为 0，初始化失败！");
				return
			end;
		
			for i=1, getn(aryAward) do
				nTotalNum = nTotalNum + aryAward[i];
			end;
			
			-- 确定各个全局变量写入的位置		
			nAwardTotalNumStart = nStartID + 1;
			nAwardLevelStart = nAwardTotalNumStart + 1;
			nAwardIndexStart = nAwardLevelStart + nTotalNum + 1;
			
			-- 构造一个原始的紧凑序号表
			for i=1, nTotalPlayer do
				aryOrg[i] = i;
			end;
			
			-- 幽雅而又飘逸的随机算法~
			for i=1, getn(aryAward) do
				if aryOpen[i]==nil then aryOpen[i]={} end;
				if aryAward[i]>0 then
					for j=1, aryAward[i] do
						if getn(aryOrg)==0 then
							nRandom = 0;
							tinsert(aryOpen[i], 0);					
						else
							nRandom = random(1, getn(aryOrg));
							tinsert(aryOpen[i], aryOrg[nRandom]);
							tremove(aryOrg, nRandom);						
						end;
					end;
				end;
			end;
			
			-- 将日期写入第一位
			SetGlbValue(nStartID, nNowDate);
			
			-- 将数组的总数写在第二位
			SetGlbValue(nAwardTotalNumStart, nTotalNum);
			
			local nLevelPos = nAwardLevelStart;
			local nIndexPos = nAwardIndexStart;
			local i,j,k = 0,0,0;
			
			-- 写入全局变量
			for i, j in aryOpen do
				
				for k=1, getn(j) do
					SetGlbValue(nLevelPos, i);
					nLevelPos = nLevelPos + 1;
					
					SetGlbValue(nIndexPos, j[k]);
					nIndexPos = nIndexPos + 1;
				end;
				
			end;
		
	end,


	-- 从全局变量中读取数据构造成奖励数组
	-- int:nStartID     全局变量开始使用的标记
	readAwardArray = function(self, nStartID)
		
		local nAwardTotalNumStart = nStartID + 1;
		local nAwardLevelStart = nAwardTotalNumStart + 1;
		
		local nTotalNum = GetGlbValue(nAwardTotalNumStart);
		
		local nAwardIndexStart = nAwardLevelStart + nTotalNum + 1;
		
		local nLevelPos = nAwardLevelStart;
		local nIndexPos = nAwardIndexStart;
		
		local nLevel, nIndex = 0, 0;
		
		local aryAwardPlayer = {};
		
		_Debug("开始输出全局变量信息：");
		for i=1, nTotalNum do
			nLevel = GetGlbValue(nLevelPos);
			nIndex = GetGlbValue(nIndexPos);
			
			tinsert(aryAwardPlayer, {nLevel, nIndex});
			
			_Debug("奖励等级："..nLevel.."  玩家顺序："..nIndex);
			nLevelPos = nLevelPos + 1;
			nIndexPos = nIndexPos + 1;
		end;
		
		return aryAwardPlayer;
		
	end,

	-- 向战队追加玩家奖励序号的信息
	appendAwardInfo = function(self, nLevel, nPos)
		
		-- 给战队信息追加奖励等级的领奖人数
		limit_append_award(self.m_Lid_AwardData, 1, nLevel);
		
		-- 给战队信息追加当前领奖者的位置
		limit_append_curcount(self.m_Lid_AwardData, 1, 1);
		
		-- 给领奖者位置的缓存加一
		SetGlbValue(self.m_Gid_AwardIndex, nPos + 1);
	end,
	
}