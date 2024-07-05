function main()
if GetTongNameID() == 0 then
	Say("<color=green>Qu¶n Lı Bang Héi<color>: Ta chuyªn qu¶n lı nh÷ng vÊn ®Ò vÒ Bang héi ",3,
	"T¹o Bang héi/taobang",
	"T×m hiÓu vÒ Bang héi/timhieu",
	"Tho¸t./no")
else	Say("<color=green>Qu¶n Lı Bang Héi<color>: Ta chuyªn qu¶n lı nh÷ng vÊn ®Ò vÒ Bang héi ",2,
	"T×m hiÓu vÒ Bang héi/timhieu",
	"Tho¸t./no")
end
end

function taobang()
OpenTong(1)
end
function timhieu()
Talk(3,"","<color=red>§iÒu kiÖn lËp bang:<color>\n1 Nh¹c v­¬ng kiÕm\n1000 danh väng\nLevel > 100\n1000 v¹n l­îng ",
"HiÖn t¹i server ®· update c¸c chøc n¨ng c¬ b¶n cña 1 Bang héi ",
"Nh­ng chøc n¨ng sÏ ®­îc Update dÇn trong nh÷ng lÇn update tiÕp theo ")
end
function no()
end