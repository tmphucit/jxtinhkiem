function main() 
Say("<color=green>Ch� Ti�n Trang<color>:  Hi�n t�i b�n c� <color=red>"..GetTask(99).."<color> v�ng.",3,
"��i Kim Nguy�n B�o ra v�ng/guiknb",
"��i V�ng ra Kim Nguy�n B�o/rutknb", 
-- "��i Ti�n ��ng ra V�ng/guitd", 
-- "��i V�ng ra Ti�n ��ng/ruttd", 
"Tho�t./no")
end


function rutknb()
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end


slknb = GetItemCount(17) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 20 and GetTask(101) >= 20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 20)
	SetTask(101,GetTask(101) - 20)
	if GetTask(99) == vang-20 and GetTask(101) == vang2 - 20 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,17,1,1) ~= 0 then
		AddEventItem(17)
		if GetItemCount(17) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." KNB moi: "..GetItemCount(17).." KNB cu: "..slknb.."vang")
			SetTask(99,0)
			SetTask(101,0)
			DelItem(17)
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		inlog(""..GetAccount().." - "..GetName().." da doi vang thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(99).."")
		Msg2Player("B�n nh�n ���c 1 Kim Nguy�n B�o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>20<color> v�ng, kh�ng th� giao d�ch !")
end
end
  

function ruttd()
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end


slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 5 and GetTask(101) >= 5 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 5)
	SetTask(101,GetTask(101) -5)
	if GetTask(99) == vang-5 and GetTask(101) == vang2 - 5 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,17,1,1) ~= 0 then
		AddEventItem(161)
		if GetItemCount(161) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." KNB moi: "..GetItemCount(17).." KNB cu: "..slknb.."vang")
			SetTask(99,0)
			SetTask(101,0)
			DelItem(17)
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		inlog(""..GetAccount().." - "..GetName().." da doi vang thanh cong. KNB: "..GetItemCount(161).." - Vang: "..GetTask(99).."")
		Msg2Player("B�n nh�n ���c 1  Ti�n ��ng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>5<color> v�ng, kh�ng th� giao d�ch !")
end
end
  

function guitd()
sl = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(161) > 0 then
	DelItem(161)
	if GetItemCount(161) == sl-1 then
		SetTask(99,GetTask(99) + 5)
		SetTask(101,GetTask(101) + 5)
		if GetTask(99) ~= vang + 5 or GetTask(101) ~= vang2 + 5 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n nh�n ���c 5 v�ng !")
		inlog(""..GetAccount().." - "..GetName().." da doi tiendong thanh cong. td: "..GetItemCount(161).." - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B�n kh�ng mang theo <color=yellow> Ti�n ��ng<color>")
end
end


function guiknb()
sl = GetItemCount(17) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(17) > 0 then
	DelItem(17)
	if GetItemCount(17) == sl-1 then
		SetTask(99,GetTask(99) + 20)
		SetTask(101,GetTask(101) + 20)
		if GetTask(99) ~= vang + 20 or GetTask(101) ~= vang2 + 20 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n nh�n ���c 20 v�ng !")
		inlog(""..GetAccount().." - "..GetName().." da doi KNB thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B�n kh�ng mang theo <color=yellow>Kim Nguy�n B�o<color>")
end
end



function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logKimNguyenBao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function no()
end
