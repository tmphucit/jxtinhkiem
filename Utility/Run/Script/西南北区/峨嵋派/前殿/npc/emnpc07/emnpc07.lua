--description: ���������� 
--author: yuanlan	
--date: 2003/3/4


Include("emnpc07_Default.lua")
Include("emnpc07_UTask_10.lua")
Include("emnpc07_UTask_16.lua")
Include("emnpc07_UTask_18.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 10) then emnpc07_UTask_10() return end;					--�ӵ�10������
if (UTask_em == 16) then emnpc07_UTask_16() return end;					--10�����������
if (UTask_em == 18) then emnpc07_UTask_18() return end;					--10�����������

emnpc07_Default();
	
end;	


