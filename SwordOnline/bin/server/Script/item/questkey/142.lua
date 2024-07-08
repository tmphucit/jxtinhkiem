Include("\\script\\Global\\sourcejx49.txt")
Include("\\script\\sukien\\eventtrungthu\\event_xephang.lua")
Include("\\script\\lib\\thuvien.lua")

idxitem = LONGDENKEOQUAN
tam_duatop = {"","",0}

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		
		
		SetTask(Task_LongDenKeoQuan, GetTask(Task_LongDenKeoQuan) + 1)
		AddOwnExp(Exp_LongDenKeoQuan)
		Msg2Player("Sè l­îng Lång §Ìn KÐo Qu©n ®· sö dông: "..GetTask(Task_LongDenKeoQuan).."")
		
		
		vtmin = checkmin()
		XEP_HANG[vtmin][1] = GetName()
		XEP_HANG[vtmin][2] = GetAccount()
		XEP_HANG[vtmin][3] = GetTask(Task_LongDenKeoQuan)
		
		
		for i=1,getn(XEP_HANG) do
			for j=1,getn(XEP_HANG) do
				if XEP_HANG[i][3] > XEP_HANG[j][3] then
					tam_duatop = XEP_HANG[i]
					XEP_HANG[i] = XEP_HANG[j]
					XEP_HANG[j] = tam_duatop
				end
			end
		end
		

			Msg2Player("<color=green>Danh S¸ch Top:")	
			for i=1,getn(XEP_HANG) do
				Msg2Player("H¹ng "..i..": "..XEP_HANG[i][1].." - Sè c©y: "..XEP_HANG[i][3].."")
			end
		BANGI = TaoBang(XEP_HANG,"XEP_HANG")
		LuuBang("script/sukien/eventtrungthu/event_xephang.lua",BANGI)
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end


function checkmin()
for i=1,getn(XEP_HANG) do
	if GetName() == XEP_HANG[i][1] then
		return i
	end
end

vt_min = 1
point_min = XEP_HANG[1][3]
for i=2,getn(XEP_HANG) do
	if XEP_HANG[i][3] < point_min then
		vt_min = i
		point_min = XEP_HANG[i][3]
	end
end
return vt_min
end