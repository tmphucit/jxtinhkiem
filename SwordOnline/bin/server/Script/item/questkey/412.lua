

function main(idx)
sl = GetItemCount(412)
if GetItemCount(412) >= 1 then
DelItemIdx(idx);
if GetItemCount(412) == (sl-1) then
	m = random(10,50)
	Earn(m*10000)
	Msg2SubWorld("<color=pink>"..GetName().." m� r��ng ng�n l��ng nh�n ���c "..m.." v�n l��ng")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
