-----------------------------------------------------------
--Update by DNTmaster
-----------------------------------------------------------
Include("\\Script\\global\\sourcejx49.lua");
function main()
	return  skillfaction()
end;

function faction()
player_Faction = GetFaction()
if (player_Faction == "������") then 
return 6
elseif (player_Faction == "�嶾��") then
return 4
elseif (player_Faction == "������") then
return 2
elseif (player_Faction == "������") then
return 1
elseif (player_Faction == "�䵱��") then
return 9
elseif (player_Faction == "���̽�") then
return 8
elseif (player_Faction == "����") then
return 3
elseif (player_Faction == "������") then
return 10
elseif (player_Faction == "������") then
return 5
elseif (player_Faction == "ؤ��") then
return 7
else
return -1
end
end

mainskill = {
{273,"Nhu Lai Thien Diep"},
{36,"Thien Vuong Chien Y"},
{48,"Tam Nhan"},
{75,"Ngu Doc Ky Kinh"},
{252,"Phat Phap Vo Bien"},
{114,"Bang Cot Tuyet Tam"},
{130,"Tuy Diep Cuong Vu"},
{150,"Thien Ma Giai The"},
{166,"Thai Cuc Than Cong"},
{275,"Suong Ngao Con Luan"}
}

MESSAGES={
	"Ky nang tran phai��%s��tang len 1 cap",
	"Ky nang tran phai��%s��da dat den muc gioi han"
}

function skillfaction()
	if faction() == 1 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 2 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 3 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 4 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 5 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 6 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 7 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 8 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 9 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	elseif faction() == 10 then
		look = GetTask(68)
		if look == 0 then
		SkillUpLevel(30)
		elseif look >= 1 and look < 2 then
		SkillUpLevel(33)
		elseif look >= 2 and look < 4 then
		SkillUpLevel(35)
		elseif look >= 4 and look < 6  then
		SkillUpLevel(40)
		elseif look >= 6 and look < 8 then
		SkillUpLevel(45)
		elseif look >= 8 then
		SkillUpLevel(50)
		end
	end
end;

function SkillUpLevel(maxs)
num = HaveMagic(mainskill[faction()][1])
if GetLevel() >= num+60 then
	if num < maxs then
	AddMagic(mainskill[faction()][1],num+1)
	AddMagicPoint(-1)
	Msg2Player(format(MESSAGES[1],mainskill[faction()][2]))
	return 1
	else
	Msg2Player(format(MESSAGES[2],mainskill[faction()][2]))
	return 0
	end
else
Msg2Player("Can dang cap "..(num+60).." de thang cap")
end
end;








