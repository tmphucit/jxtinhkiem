name = "VÀt Ph»m Th«n B›"


mangskill = {
{284,4,60,10,10,"1 phÛt","gi∂m th‰ th≠¨ng","%"},
{285,4,60,10,10,"1 phÛt","gi∂m th‰ th≠¨ng","%"},
{286,4,60,10,10,"1 phÛt","gi∂m cho∏ng","%"},
{287,4,60,10,10,"1 phÛt","gi∂m bﬁ chÀm","%"},
{288,4,60,10,10,"1 phÛt","gi∂m trÛng ÆÈc","%"},
{289,7,60,10,10,"1 phÛt","t®ng phﬂng ÆÈc","%"},
{290,7,60,10,10,"1 phÛt","t®ng phﬂng l´i","%"},
{293,7,60,10,10,"1 phÛt","t®ng phﬂng h·a","%"},
{294,7,60,10,10,"1 phÛt","t®ng phﬂng thÒ vÀt l˝","%"},
{295,7,60,10,10,"1 phÛt","t®ng phﬂng b®ng","%"},
{296,11,60,100,10,"1 phÛt","t®ng s∏t th≠¨ng vÀt l˝ nÈi c´ng","Æi”m",0,11,60,50,5,"1 phÛt","t®ng s∏t th≠¨ng vÀt l˝ ngoπi c´ng","%"},
{297,9,60,10,5,"1 phÛt","t®ng s∏t th≠¨ng ÆÈc h÷ nÈi c´ng","Æi”m",0,9,60,10,5,"1 phÛt","t®ng s∏t th≠¨ng ÆÈc h÷ ngoπi c´ng","Æi”m"},
{298,11,60,100,10,"1 phÛt","t®ng s∏t th≠¨ng b®ng h÷ nÈi c´ng","Æi”m",0,11,60,100,20,"1 phÛt","t®ng s∏t th≠¨ng b®ng h÷ ngoπi c´ng","Æi”m"},
{299,11,60,100,10,"1 phÛt","t®ng s∏t th≠¨ng h·a h÷ nÈi c´ng","Æi”m",0,11,60,100,20,"1 phÛt","t®ng s∏t th≠¨ng h·a h÷ ngoπi c´ng","Æi”m"},
{300,11,60,100,10,"1 phÛt","t®ng s∏t th≠¨ng l´i h÷ nÈi c´ng","Æi”m",0,11,60,100,20,"1 phÛt","t®ng s∏t th≠¨ng l´i h÷ ngoπi c´ng","Æi”m"},
{310,5,0.5,1000,1000,"n˜a gi©y","phÙc hÂi sinh l˘c","Æi”m",311,5,30,1000,250,"30 gi©y","t®ng sinh l˘c","Æi”m"},
{312,5,0.5,1000,1000,"n˜a gi©y","phÙc hÂi nÈi l˘c","Æi”m",313,5,30,1000,250,"30 gi©y","t®ng nÈi l˘c","Æi”m"},
{314,5,0.5,1000,1000,"n˜a gi©y","phÙc hÂi sinh l˘c vµ nÈi l˘c","Æi”m",315,5,30,1000,250,"30 gi©y","t®ng sinh l˘c vµ nÈi l˘c","Æi”m"},
{316,11,60,100,10,"1 phÛt","t®ng ÆÈ ch›nh x∏c","Æi”m"},
{317,3,60,10,10,"1 phÛt","t®ng tËc ÆÈ di chuy”n","%"},
{318,2,60,10,10,"1 phÛt","t®ng tËc ÆÈ xu t chi™u","%"},
}


function main()
i = random(1,getn(mangskill))

if GetLevelSkillEffectMan(mangskill[i][1]) > 0 then
level = random(GetLevelSkillEffectMan(mangskill[i][1]),mangskill[i][2])
else
level = random(1,mangskill[i][2])
end

AddSkillEffect(mangskill[i][1],level,mangskill[i][3]*18)
Msg2Player("Bπn nhÀn Æ≠Óc "..name.." "..mangskill[i][6].." "..mangskill[i][7].." "..(mangskill[i][4] + (level-1)*mangskill[i][5]).." "..mangskill[i][8].." ")

if getn(mangskill[i]) > 8 then
	if mangskill[i][9] ~= 0 then 
		if GetLevelSkillEffectMan(mangskill[i][9]) > 0 then
		level2 = random(GetLevelSkillEffectMan(mangskill[i][9]),mangskill[i][10])
		else
		level2 = random(1,mangskill[i][10])
		end
		AddSkillEffect(mangskill[i][9],level2,mangskill[i][11]*18)
	end
	Msg2Player("Bπn nhÀn Æ≠Óc "..name.." "..mangskill[i][14].." "..mangskill[i][15].." "..(mangskill[i][12] + (level-1)*mangskill[i][13]).." "..mangskill[i][16].." ")
end
addbaovat()
end

diembaovat = 40
function addbaovat()
w,x,y = GetWorldPos()
if GetGlbMissionV(60) == 2000 then
if w == 61 then
	SetTask(25,GetTask(25)+1)
	SetTask(26,GetTask(26)+diembaovat)
	SetTask(15,GetTask(15)+diembaovat)
	SetTask(31,GetTask(31)+diembaovat)
	if GetTask(12) == 1 then
		SetGlbMissionV(81,GetGlbMissionV(81) + diembaovat)
	elseif GetTask(12) == 2 then
		SetGlbMissionV(82,GetGlbMissionV(82) + diembaovat)
	end
	Msg2Player("Bπn nhÀn Æ≠Óc "..diembaovat.." Æi”m t›ch lÚy ")
	UpdateTopTKNew()
end
end
end


