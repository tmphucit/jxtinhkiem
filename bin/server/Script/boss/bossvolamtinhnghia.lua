
function OnDeath()
idx = PlayerIndex
Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t Boss V� L�m T�nh Ngh�a v� �em l�i cho to�n b� nh�n s� tham gia t�i Long Tuy�n Th�n r�t nhi�u kinh nghi�m. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()


AddEventItem(17)
Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c <color=yellow>1 Kim Nguy�n B�o ")

for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if w == 4 then
				AddOwnExp(20000000)
				Msg2Player("B�n nh�n ���c 20 tri�u kinh nghi�m t� Boss V� L�m T�nh Ngh�a ")

				SetTask(172,GetTask(172)+2*60*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Th�i gian nh�n ��i kinh nghi�m l�: "..floor(GetTask(172)/60/18).." ph�t !")
				SetTask(141,1)	
			
			end
		end
end
PlayerIndex = idx


end


function OnDrop()


end











