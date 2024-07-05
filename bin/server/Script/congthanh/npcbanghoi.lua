function main()
if GetTongNameID() == 0 then
	Say("<color=green>Kim S¬n Ch­ìng M«n <color>: Ta chuyªn qu¶n lı nh÷ng vÊn ®Ò vÒ Bang héi ",3,
	"Thµnh lËp bang héi/taobang",
	"§iÒu kiÖn lËp bang/timhieu",
	"KÕt thóc ®èi tho¹i/no")
else	
    Say("<color=green>Kim S¬n Ch­ìng M«n <color>: Ta chuyªn qu¶n lı nh÷ng vÊn ®Ò vÒ Bang héi ",2,
	"§iÒu kiÖn lËp bang/timhieu",
	"KÕt thóc ®èi tho¹i/no")
end
end

function taobang()
OpenTong(1)
end

function timhieu()
Talk(1,"","<color=green>§iÒu kiÖn lËp bang cÇn cã :<color>\nVËt phÈm yªu cÇu : 1 Nh¹c v­¬ng kiÕm\n§iÓm danh väng yªu cÇu : 2000 \nCÊp ®é yªu cÇu : 120\nTiÒn v¹n yªu cÇu : 1000 v¹n l­îng ")
--"<color=green>HiÖn t¹i server ®· update c¸c chøc n¨ng c¬ b¶n cña 1 Bang héi ",
--"<color=green>Nh­ng chøc n¨ng sÏ ®­îc Update dÇn trong nh÷ng lÇn update tiÕp theo ")
end

function no()
end