
function OnDeath()
end

dstong = {}
dskim = {}
bientam = {}

function OnDrop()

dskim = {
{"",1},
{"",2},
{"",3},
{"",4},
{"",5},
{"",6},
{"",7},
{"",8},
{"",9},
{"",10},
}
dstong = {
{"",1},
{"",2},
{"",3},
{"",4},
{"",5},
{"",6},
{"",7},
{"",8},
{"",9},
{"",10},
}

idx = PlayerIndex
Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t Boss V� L�m T�nh Ki�m v� �em l�i cho to�n b� nh�n s� tham gia Chi�n Tr��ng T�ng Kim r�t nhi�u kinh nghi�m. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()

AddEventItem(17)
Msg2Player("B�n nh�n ���c 1 <color=yellow>Kim Nguy�n B�o ")



	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if w == 33 then
				if GetTask(12) == 1 then
					dstong[getn(dstong)+1] = {GetName(),GetTask(31)}
				elseif GetTask(12) == 2 then
					dskim[getn(dskim)+1] = {GetName(),GetTask(31)}
				end
				SetTask(172,GetTask(172)+4*60*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
				SetTask(141,1)	
			end
		end
	end

for i=1,getn(dstong) do
	for j=1,getn(dstong) do
		if dstong[i][2] > dstong[j][2] then
			bientam = dstong[i]
			dstong[i] = dstong[j]
			dstong[j] = bientam
		end
	end
end
for i=1,getn(dskim) do
	for j=1,getn(dskim) do
		if dskim[i][2] > dskim[j][2] then
			bientam = dskim[i]
			dskim[i] = dskim[j]
			dskim[j] = bientam
		end
	end
end

for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if w == 33 then
				if GetTask(12) == 1 then
					for k=2,10 do
						if GetName() == dstong[k][1] then
							AddOwnExp(10000000)
							Msg2Player("B�n nh�n ���c 10 tri�u kinh nghi�m t� Boss V� L�m T�nh Ki�m ")
						end
					end
					if GetName() == dstong[1][1] then
						AddOwnExp(20000000)
						Msg2Player("B�n nh�n ���c 20 tri�u kinh nghi�m t� Boss V� L�m T�nh Ki�m ")
					end
				elseif GetTask(12) == 2 then
					for k=2,10 do
						if GetName() == dskim[k][1] then
							AddOwnExp(10000000)
							Msg2Player("B�n nh�n ���c 10 tri�u kinh nghi�m t� Boss V� L�m T�nh Ki�m ")
						end
					end
					if GetName() == dskim[1][1] then
						AddOwnExp(20000000)
						Msg2Player("B�n nh�n ���c 20 tri�u kinh nghi�m t� Boss V� L�m T�nh Ki�m ")
					end

				end
			end
		end
end
Msg2SubWorld("<color=yellow>Top 10 T�ng:")
for i=1,10 do
	Msg2SubWorld("H�ng "..i..": "..dstong[i][1].." - "..dstong[i][2].." ")
end
Msg2SubWorld("<color=yellow>Top 10 Kim:")
for i=1,10 do
	Msg2SubWorld("H�ng "..i..": "..dskim[i][1].." - "..dskim[i][2].." ")
end



PlayerIndex = idx
end



