Include("\\script\\source.lua")

function main(idx)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end
sl = GetItemCount(144)
DelItemIdx(idx);
if GetItemCount(144) == (sl-1) then
	sx = random(1,60)
	if sx == 6 then
		sx2 = random(1,4)
		if sx2 == 1 then
			idxitem = AddItem(0,4,3,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 2 then
			idxitem = AddItem(0,3,3,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 3 then
			idxitem = AddItem(0,9,3,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 4 then
			idxitem = AddItem(0,3,4,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		end
	elseif sx == 2 then
		sx2 = random(1,5)
		if sx2 == 1 then
			idxitem = AddItem(0,7,15,random(1,10),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 2 then
			idxitem = AddItem(0,2,30,random(1,10),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 3 then
			idxitem = AddItem(0,6,3,random(1,10),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 4 then
			idxitem = AddItem(0,5,5,random(1,10),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		elseif sx2 == 5 then
			idxitem = AddItem(0,8,3,random(1,10),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
		end
	elseif sx >= 3 and sx <= 8 then
		idxitem = AddEventItem(406)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
	elseif sx == 9 then
		idxitem = AddEventItem(407)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")	
	elseif sx == 10 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")		
	else	
		idxitem = AddEventItem(random(28,30))
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng B¶o VËt nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")
	end
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end

