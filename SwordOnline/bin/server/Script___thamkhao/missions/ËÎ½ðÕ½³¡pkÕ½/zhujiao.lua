--玩家死亡

function OnDeath3(Launcher)

pkrs = GetTask(192);
SetTask(192, pkrs+1);
AddOwnExp(10000)

Msg2Player("烽火诸侯：积分上升1点")
Msg2Player("您的经验增加10000点")


end;



