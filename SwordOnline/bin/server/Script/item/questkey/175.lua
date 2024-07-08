
Include("\\script\\admin\\monphai.lua")
function main(idx)
DelItemIdx(idx);
SetTask(162,GetTask(162)+50)
Msg2Player("§iÓm Phóc duyªn cña b¹n hiÖn t¹i lµ: "..GetTask(162).." ®iÓm")
end

