
function main(sel)
  Say("�׺�����ͷ����Ҫ�Ϸ��ʲôæ��?", 2, "��Ҫȥ�𷽱�����/jin", "û��/no");
end;

function jin()
NewWorld(44, 1585, 3215);
SetFightState(0);
Msg2Player("����:�𷽱�����!");
end;

function no()
end;