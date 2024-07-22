
function main(sel)
  SayNew("白胡子老头：需要老夫帮什么忙呢?", 2, "我要去宋方报名处/song", "没事/no");
end;

function song()
NewWorld(44, 886, 4499);
SetFightState(0);
Msg2Player("到达:宋方报名处!");
end;

function no()
end;