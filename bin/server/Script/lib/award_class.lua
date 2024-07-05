
-- ====================== �ļ���Ϣ ======================

-- ������Եonline ���籭�����ģ��
-- Edited by peres
-- 2006/06/01 PM 17:00

-- �̻�����һҹ���̻���
-- ���ǵ����ڴ������Ⱥ�У�վ�����ı���ӵ��ס����
-- ����ů��Ƥ��������Ϥ��ζ�����̻����������۾���
-- һ���޿���ء���

-- ======================================================

-- �����ض�����֧����
Include("\\script\\lib\\limitedaward_head.lua");

CLimitAward = {

	-- ���޽���ս�ӵ�ID
	m_Lid_AwardData = 0,
	
	-- ȫ�ֱ����������������������е����ڣ�Ҳ�ǿ�ʼ�� GID
	m_Gid_AwardDate = 0,
	
	-- ȫ�ֱ������콱�����Ż���
	m_Gid_AwardIndex = 0,
	
	-- ���캯��
	__new = function(self, arg)
		self.m_Lid_AwardData = arg[1];
		self.m_Gid_AwardDate = arg[2];
		self.m_Gid_AwardIndex = arg[3];
	end,
	
	-- ����Ƿ���Ҫ��ʼ�������б�
	checkNeedInit = function(self)
		local nNowDate = tonumber(GetLocalDate("%y%m%d"));
		local nOldDate = GetGlbValue(self.m_Gid_AwardDate);
		if nOldDate==0 or nOldDate~=nNowDate then
			return 1;
		else
			return 0;
		end;
	end,

	
	-- �������ڵ�ǰ�콱��Ⱥ�е�λ��
	-- ���������int:nReadType  ��ȡ�����ͣ� 1 Ϊ��ȫ�ֱ�������2 Ϊ��ս����Ϣ�ж�
	-- ����ֵ��int:nCurPos  ��ǰλ��
	checkPlayerCurPos = function(self, nReadType)
		local nGlobalValuePos = 0;  -- ȫ�ֱ����е�λ��
		
		_Debug("��ʼ��ȡս�����ݣ�"..self.m_Lid_AwardData);
		
		local nType, nCurPos, nTotal = limit_get_level_awardinfo(self.m_Lid_AwardData, 1);
		if nType==-1 then
			_Debug("checkPlayerCurPos����ȡ���޵Ľ���ս����Ϣʧ�ܣ�");
			return nil;
		end;
		if nReadType==1 then
			
			nGlobalValuePos = GetGlbValue(self.m_Gid_AwardIndex);
			
			-- �����һ����Ҫ��ȫ�ֱ����ж�ȡλ�ã���ô���϶��� 1�������� 0
			if nGlobalValuePos==0 then nGlobalValuePos = 1; end;
			
			_Debug("��ȡ�������λ�ã�"..nGlobalValuePos.."  �н�������"..nTotal);
			return GetGlbValue(self.m_Gid_AwardIndex), nTotal;
		else
			_Debug("��ȡ�������λ�ã�"..nCurPos.."  �н�������"..nTotal);	
			return nCurPos, nTotal;
		end;
	end,

	
	-- ���������˼��Ƚ�
	checkPlayerAward = function(self, nIndex)
		local aryAwardPlayer = self:readAwardArray(self.m_Gid_AwardDate);
		local i, nAry = 0, {};
		
		_Debug("��ʼ���ȫ�ֱ�����Ϣ��");
		_Debug("�õ���������Ϣ�����ǣ�"..getn(aryAwardPlayer));
		
		-- ����� table ���������ţ��򷵻���Ӧ��ŵĽ����ȼ�
		for i, nAry in aryAwardPlayer do
			if type(nAry)=="table" then
				_Debug("�����ȼ���"..nAry[1].."  ���˳��"..nAry[2]);
				if nAry[2]==nIndex then
					_Debug("��ǰ "..nIndex.." λ������ˣ�"..nAry[1].." �Ƚ���");
					return nAry[1];
				end;
			end;
		end;
		
		-- ����Ҳ������򷵻� 0
		return 0;
	end,

	
	-- ����������������ҵ�һ������ʱ����ʼ������ȫ�ֱ�����Ϣ
	initAwardData = function(self)
		local aryAward = self:readArrayForLeague();
		local nCurPos, nTotal = self:checkPlayerCurPos(2);
		if aryAward==nil then
			_Debug("initAwardData�����콱������ʧ�ܣ�");
			return
		end;
		-- ��շ������ϵ�����콱����
		SetGlbValue(self.m_Gid_AwardIndex, 0);
		self:createAwardArray(aryAward, nTotal, self.m_Gid_AwardDate);
	end,

	
	-- ��ָ����ս���ж�ȡ�������ݹ��콱������
	readArrayForLeague = function(self)
		
		local nType, nCurPos, nTotal = limit_get_level_awardinfo(self.m_Lid_AwardData, 1);
		local nUsed, nMax = 0, 0;
		local aryAward = {};
		local i = 0;
		
		if nType==-1 then
			_Debug("readArrayForLeague����ȡ���޵Ľ���ս����Ϣʧ�ܣ�");
			return nil;
		end;
		
		for i=1, nType do
			nUsed, nMax = limit_get_one_awardinfo(self.m_Lid_AwardData, 1, i);
			tinsert(aryAward, nMax - nUsed);
		end;
		
		return aryAward;
	end,


	-- ��ȫ�ֱ����в�����������
	-- ���������
	-- aryAward:{����1����,
	--  		 ����2����,
	--  		 ����3����,
	--  		 ...}
	--
	-- int:nTotalPlayer ���в����콱������
	-- int:nStartID     ȫ�ֱ�����ʼʹ�õı��
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
		
		local aryOpen = {};  -- �Ѿ�ѡȡ����������ű�
		local aryOrg = {};   -- ����һ��ԭʼ�Ľ�����ű�
		local nRandom = 0;
		
			if nTotalPlayer<=0 then
				_Debug("createAwardArray��������н��������Ϊ 0����ʼ��ʧ�ܣ�");
				return
			end;
		
			for i=1, getn(aryAward) do
				nTotalNum = nTotalNum + aryAward[i];
			end;
			
			-- ȷ������ȫ�ֱ���д���λ��		
			nAwardTotalNumStart = nStartID + 1;
			nAwardLevelStart = nAwardTotalNumStart + 1;
			nAwardIndexStart = nAwardLevelStart + nTotalNum + 1;
			
			-- ����һ��ԭʼ�Ľ�����ű�
			for i=1, nTotalPlayer do
				aryOrg[i] = i;
			end;
			
			-- ���Ŷ���Ʈ�ݵ�����㷨~
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
			
			-- ������д���һλ
			SetGlbValue(nStartID, nNowDate);
			
			-- �����������д�ڵڶ�λ
			SetGlbValue(nAwardTotalNumStart, nTotalNum);
			
			local nLevelPos = nAwardLevelStart;
			local nIndexPos = nAwardIndexStart;
			local i,j,k = 0,0,0;
			
			-- д��ȫ�ֱ���
			for i, j in aryOpen do
				
				for k=1, getn(j) do
					SetGlbValue(nLevelPos, i);
					nLevelPos = nLevelPos + 1;
					
					SetGlbValue(nIndexPos, j[k]);
					nIndexPos = nIndexPos + 1;
				end;
				
			end;
		
	end,


	-- ��ȫ�ֱ����ж�ȡ���ݹ���ɽ�������
	-- int:nStartID     ȫ�ֱ�����ʼʹ�õı��
	readAwardArray = function(self, nStartID)
		
		local nAwardTotalNumStart = nStartID + 1;
		local nAwardLevelStart = nAwardTotalNumStart + 1;
		
		local nTotalNum = GetGlbValue(nAwardTotalNumStart);
		
		local nAwardIndexStart = nAwardLevelStart + nTotalNum + 1;
		
		local nLevelPos = nAwardLevelStart;
		local nIndexPos = nAwardIndexStart;
		
		local nLevel, nIndex = 0, 0;
		
		local aryAwardPlayer = {};
		
		_Debug("��ʼ���ȫ�ֱ�����Ϣ��");
		for i=1, nTotalNum do
			nLevel = GetGlbValue(nLevelPos);
			nIndex = GetGlbValue(nIndexPos);
			
			tinsert(aryAwardPlayer, {nLevel, nIndex});
			
			_Debug("�����ȼ���"..nLevel.."  ���˳��"..nIndex);
			nLevelPos = nLevelPos + 1;
			nIndexPos = nIndexPos + 1;
		end;
		
		return aryAwardPlayer;
		
	end,

	-- ��ս��׷����ҽ�����ŵ���Ϣ
	appendAwardInfo = function(self, nLevel, nPos)
		
		-- ��ս����Ϣ׷�ӽ����ȼ����콱����
		limit_append_award(self.m_Lid_AwardData, 1, nLevel);
		
		-- ��ս����Ϣ׷�ӵ�ǰ�콱�ߵ�λ��
		limit_append_curcount(self.m_Lid_AwardData, 1, 1);
		
		-- ���콱��λ�õĻ����һ
		SetGlbValue(self.m_Gid_AwardIndex, nPos + 1);
	end,
	
}