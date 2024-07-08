
function main(sel)
  SayNew("白胡子老头：需要老夫帮什么忙呢?", 2, "我要去金方报名处/jin", "没事/no");
end;

function jin()
NewWorld(44, 1585, 3215);
SetFightState(0);
Msg2Player("到达:金方报名处!");
end;

function no()
end;