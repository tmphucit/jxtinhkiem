

function main(idx)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if (ngay == 2 and gio >= 17) or ngay > 2 then
Talk(1,"","V�t ph�m h�t h�n s� d�ng !")
return
end

w,x,y = GetWorldPos()
if w ~= 15 and w ~= 17 and w ~= 9 and w ~= 53 and w ~= 66 and w ~= 3 and w~= 20 then
Talk(1,"","Ch� ���c gieo h�t gi�ng trong b�n �� Th�nh Th�, Th�n L�ng v� ��o T�y T�y !")
return
end
if GetAccount() == "" and GetGlbMissionV(37) == 0 then
		SetGlbMissionV(37, 90000)
		Talk(1,"","�� kh�a c�y tr�ng !")
	return
end
if GetGlbMissionV(37) == 90000 and GetAccount() ~= "" then
Talk(1,"","<color=red>T�m kh�a tr�ng c�y 5 ph�t �� reset m�ng c�y tr�ng tr�nh qu� t�i, c�c b�n h�y thu ho�ch nh�ng c�y c� tr��c khi b�t ��u ��t tr�ng c�y m�i !")
return
end

n = GetItemCount(578)
			if GetItemCount(578) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(578) == (n-1) then
						quai = AddNpc(1044,95,SubWorldID2Idx(w),x*32,y*32)
						SetNpcScript(quai, "\\script\\sukien\\trongcay.lua")
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
