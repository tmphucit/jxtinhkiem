iditem = 918

function main(idx)

end
function main_(idx)
n = GetItemCount(iditem)	
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(iditem) == n-1) then
					sx = RandomNew(1,100)
					if sx < 50 then
						AddEventItem(915)
						Msg2Player("B�n nh�n ���c 1 <color=yellow>Ph�o Ti�u")
					elseif sx < 80 then
						AddEventItem(916)
						Msg2Player("B�n nh�n ���c 1 <color=yellow>Ph�o Trung")
					else
						AddEventItem(917)
						Msg2Player("B�n nh�n ���c 1 <color=green>Ph�o ��i")			
					end							
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end

