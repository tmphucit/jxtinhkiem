-- TimerHead.lua
-- By: Dan_Deng(2003-08-23) ��ʱ����ع���

FramePerSec = 18			-- ÿ��֡��������������
CTime = 3600					-- ÿ��ʱ����600�루10���ӣ�����

function GetRestSec()		-- ֱ�ӷ��ؼ�ʱ��ʣ������
	return floor(GetRestTime() / FramePerSec)
end;

function GetRestCTime()			-- ��ȡ��ʱ��ʣ��ʱ�䣬����һ��ʱ��ʱ���й�ʱ��ת��
	x = floor(GetRestTime() / FramePerSec)
	if (x < CTime) then		-- ����һ��ʱ��
		y = x.." gi�y"
	else
		y = floor(x / CTime).." gi� "
	end
	return y
end;

function GetTimerTask()			-- ͨ����ʱ��ID�Ž�����Ӧ����
	
end