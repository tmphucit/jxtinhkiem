--主將死亡

function OnDeath4(Launcher)

pkrs = GetTask(192);
SetTask(192, pkrs+500);
AddOwnExp(5000000)
AddEventItem("洗髓经")

Msg2Player("烽火诸侯：积分上升500点")
Msg2Player("您的经验增加5000000点")
Msg2Player("您获得一本洗髓经")

end;


