function main(idx)
sl = GetItemCount(423)

if GetTask(465) >= gioihan() then
	Talk(1,"","B�n �� s� d�ng v��t qu� s� l��ng Gi�i H�n S� Ki�n: <color=yellow>"..GetTask(465).."000000 / "..gioihan().."000000")
return
end
if GetLevel() >= 140 then
Talk(1,"","��ng c�p tr�n 140 kh�ng th� s� d�ng")
return
end
DelItemIdx(idx);
if GetItemCount(423) == sl -1 then
		AddOwnExp(2000000)
		SetTask(465, GetTask(465) + 2)
		Msg2Player("Gi�i h�n: "..GetTask(465).."000000 / "..gioihan().."000000") 
		Talk(0,"")
else
Talk(1,"","hack ha em")
end

end

function gioihan()
if GetTask(466) == 1 then
return 6000
elseif GetTask(466) == 2 then
return 100000
else
return 3000
end
end