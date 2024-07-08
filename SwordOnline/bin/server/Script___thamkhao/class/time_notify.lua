Include("\\script\\lib\\mem.lua");
Include("\\Script\\lib\\string.lua");

file_notify = "Data/notify.txt";
GLBValue_notify = 43

function initNotify()
SetTimer(18*60*15,3)
Msg2Player("Kich hoat chuc nang ho tro tan thu.")
end;


function AutoSendNotify()
fs_notify = openfile(file_notify, "r");
local s = read(fs_notify,"*all")
local tab_notify = split(s,"\n")
local count = GetGlbMissionV(GLBValue_notify) + 1
local real_count = getn(tab_notify)
if ( count > real_count ) then count = 1 end;
SetGlbMissionV(GLBValue_notify,count)
Msg2Player(tab_notify[count])
closefile(fs_notify);
end;
