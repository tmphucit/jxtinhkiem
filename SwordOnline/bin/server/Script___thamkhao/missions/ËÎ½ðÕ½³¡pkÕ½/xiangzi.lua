function main(sel)

timestate = GetMissionV(1);
if (timestate == 1) then 
SetFightState(0);
elseif (timestate == 2) then 
SetFightState(1);
end
OpenBox();		--弹出储物箱物品框和玩家物品框，以便于玩家进行物品和金钱的存取

end;