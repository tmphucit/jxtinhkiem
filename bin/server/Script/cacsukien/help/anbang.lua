function main()
Say("<color=green>An Bang S� Gi�: <color> Ng��i c� mang theo <color=red> L�nh B�i An Bang <color> ��n ��y kh�ng? ",5,
"��i An Bang Tinh Th�ch H�ng Li�n/doidcab",
"��i An Bang C�c Hoa Th�ch Ch� Ho�n/doinhan1ab",
"��i An Bang K� Huy�t Th�ch Gi�i Ch� /doinhan2ab",
"��i An Bang �i�n Ho�ng Th�ch Ng�c B�i /doinbab",
"Thoat./no")
end

function no()
end


function doinbab()
if CheckFreeBoxItem(0,9,3,1) == 0 then
Msg2Player("Kho�ng tr�ng h�nh trang kh�ng �� . �� ngh� d�n d�p h�nh trang tr��c khi s� d�ng ch�c n�ng !")
return
end
a = GetItemCount(38)
if GetItemCount(38) >= 1 then
	DelItem(38)
	if GetItemCount(38) == (a-1) then
	AddItem(0,9,18,3,0,0,0)
	Msg2Player("B�n Nh�n ���c 1 [Li�n ��u] An Bang �i�n Ho�ng Th�ch Ng�c B�i ")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang S� Gi�: <color> B�n kh�ng mang theo <color=red> L�nh B�i An Bang ")
end
end

function doinhan2ab()
if CheckFreeBoxItem(0,3,4,1) == 0 then
Msg2Player("Kho�ng tr�ng h�nh trang kh�ng �� . �� ngh� d�n d�p h�nh trang tr��c khi s� d�ng ch�c n�ng !")
return
end
a = GetItemCount(37)
if GetItemCount(37) >= 1 then
	DelItem(37)
	if GetItemCount(37) == (a-1) then
	AddItem(0,3,34,3,0,0,0)
	Msg2Player("B�n Nh�n ���c 1 [Li�n ��u] An Bang K� Huy�t Th�ch Gi�i Ch� ")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang S� Gi�: <color> B�n kh�ng mang theo <color=red> L�nh B�i An Bang ")
end
end
function doinhan1ab()
if CheckFreeBoxItem(0,3,3,1) == 0 then
Msg2Player("Kho�ng tr�ng h�nh trang kh�ng �� . �� ngh� d�n d�p h�nh trang tr��c khi s� d�ng ch�c n�ng !")
return
end
a = GetItemCount(36)
if GetItemCount(36) >= 1 then
	DelItem(36)
	if GetItemCount(36) == (a-1) then
	AddItem(0,3,33,3,0,0,0)
	Msg2Player("B�n Nh�n ���c 1 [Li�n ��u] An Bang C�c Hoa Th�ch Ch� Ho�n")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang S� Gi�: <color> B�n kh�ng mang theo <color=red> L�nh B�i An Bang")
end
end
function doidcab()
if CheckFreeBoxItem(0,4,3,1) == 0 then
Msg2Player("Kho�ng tr�ng h�nh trang kh�ng �� . �� ngh� d�n d�p h�nh trang tr��c khi s� d�ng ch�c n�ng !")
return
end
a = GetItemCount(35)
if GetItemCount(35) >= 1 then
	DelItem(35)
	if GetItemCount(35) == (a-1) then
	AddItem(0,4,18,3,0,0,0)
	Msg2Player("B�n Nh�n ���c 1 [Li�n ��u] An Bang Tinh Th�ch H�ng Li�n")
	Talk(0,"no","")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>An Bang S� Gi�: <color> B�n kh�ng mang theo <color=red> L�nh B�i An Bang")
end
end