--description: ���������ƴ� 
--author: yuanlan	
--date: 2003/3/5


Include("emnpc09_Default.lua")
Include("emnpc09_UTask_30.lua")
Include("emnpc09_UTask_38.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 30) then emnpc09_UTask_30() return end;					--�ӵ�30������
if (UTask_em == 38) then emnpc09_UTask_38() return end;					--30�����������

emnpc09_Default();
	
end;	


