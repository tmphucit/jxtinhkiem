function main(sel)

timestate = GetMissionV(1);
if (timestate == 1) then 
SetFightState(0);
elseif (timestate == 2) then 
SetFightState(1);
end
OpenBox();		--������������Ʒ��������Ʒ���Ա�����ҽ�����Ʒ�ͽ�Ǯ�Ĵ�ȡ

end;