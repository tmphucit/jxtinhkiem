--Include("..\\changemap.lua");
--Include("script\\station.lua");
--print("Hello!");
function GetPlayerInfo()
str="Name Is "..GetName().."Life Is"..GetLife().."SwordOnline!";
Say(str,0);
end;

function RunStation()
CurStation = 3;
main();
end;

function ShowOnline()
Msg2Player("Srv:["..GetServerName().."] Online:"..GetPlayerCount());
end;
function ShowGMCmd()
Say("GM Command List",7,"DoSct","RunSctFile","ReloadSct","ReloadAll","ShowGMCmd","GetPlayerInfo","Woooo!");
end;

function RESTORE()
RestoreMana();
RestoreLife();
RestoreStamina();
end;

function GotoFight()
--RESTORE();
SetPos(1474, 3284);
--Say("3",1,"sdfsd");
end;


function GenRandomNpc(Level, Width,Height, NpcNum, NpcFrom, NpcTo)
x ,y, worldindex = GetPos();

if (Width <= 0 or Height <=0 or NpcNum <=0 or NpcFrom <=0  or NpcTo <=0) then
return
end;

if (x == nil) then 
return
end;

PerWidth = Width/sqrt(NpcNum);
PerHeight = Height / sqrt(NpcNum);

for i = 1, NpcNum do 
	Npctemp = random(NpcFrom, NpcTo);
	
	NpcIndex = AddNpc(Npctemp, Level, worldindex, (x - Width/2) +  mod(i, sqrt(NpcNum)) * PerWidth, (y - Height/2) + i/sqrt(NpcNum) * PerHeight);

	if (NpcIndex>0) then
	random(1,2)
		if (random(1,2) == 1) then
		SetNpcCurCamp(NpcIndex, 1)
		else
		SetNpcCurCamp(NpcIndex, 2)
		end;
	end;

end;

end;

function MoveTestPlayer(NpcFrom ,NpcTo, x, y ,worldindex, Width, Height)
Msg2Player(x.." "..y.." "..worldindex);
if (Width <= 0 or Height <=0 or NpcFrom <=0  or NpcTo <=0) then
return
end;

if (x == nil) then 
return
end;

NpcNum = NpcTo - NpcFrom + 1;
Msg2Player("sdfsdf"..NpcNum);
PerWidth = Width/sqrt(NpcNum);
PerHeight = Height / sqrt(NpcNum);
nCount = 1;

for i = 1, NpcNum do 

	PlayerIndex = NpcFrom + i - 1;
	Msg2SubWorld("f"..PlayerIndex);
	if (strfind(GetName(), "test")) then
	PosX = (x - Width/2) +  mod(nCount, sqrt(NpcNum)) * PerWidth;
	PosY = (y - Height/2) + nCount / sqrt(NpcNum) * PerHeight;
	Msg2SubWorld("world"..worldindex.." ["..x..","..y.."]to["..PosX..","..PosY.."]");
	NewWorld(worldindex, PosX/32, PosY/32);
	Msg2SubWorld(GetName().."Have Move");
	nCount = nCount + 1;
	end;

end;

end;

function SPos()
x,y = GetPos();
Msg2Player((x)..","..(y))
end;

function LEVERUP(nLevel)
for i = 1, nLevel do 
AddOwnExp(1000000);
end;
end;

function GotoStation(nStation)
Msg2Player("�����ˣ������߆���"..GetStationName(nStation))
nW , nX, nY = GetStationPos(nStation);
NewWorld(nW, nX , nY );
end;

function GotoTermini(nTermini)
Msg2Player("Goto "..GetWayPointName(nTermini));
nW, nX, nY = GetWayPointPos(nTermini);
NewWorld(nW, nX, nY);
end;

function GotoPlace(nPlace)
NewWorld(Place[nPlace].W, Place[nPlace].X, Place[nPlace].Y);
end;