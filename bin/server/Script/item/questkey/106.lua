function main(idx)
w,x,y = GetWorldPos()

if w ~= 33 and w ~= 61 and w~= 34 and w ~= 35 and w ~= 36 then
Talk(1,"","Kh�ng m� l� bao � ngo�i chi�n tr��ng !")
return
end

n = GetItemCount(106)
if GetFightState() == 0 then
DelItemIdx(idx);
	if GetItemCount(106) == (n-1) then
		for i=1,20 do
			AddItem(1,2,0,4,0,0,0)
		end
		Msg2Player("B�n nh�n ���c 20 b�nh Ng� Hoa Ng�c L� Ho�n")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","V�t ph�m ch� s� d�ng trong doanh tr�i T�ng Kim !")
end
end