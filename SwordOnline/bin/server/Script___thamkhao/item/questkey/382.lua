
function main(idx)
sl = GetItemCount(382)
ngay = tonumber(date("%d"))

if floor(GetTask(332)/1000) ~= 4 then
 SetTask(332 , 4 * 1000)
Msg2Player("Reset giíi h¹n ngµy míi: <color=yellow>0 / 15")
end 
if mod(GetTask(332),1000) >= 15 then
Talk(1,"","B¹n ®· ®¹t giíi h¹n 15 B¸nh Kem Gi¸ng Sinh trong ngµy h«m nay")
return
end
DelItemIdx(idx);

if GetItemCount(382) == sl -1 then
		
		nexp = 10000000
		
		if GetLevel() >= 125 then
			SetTask(332, GetTask(332) + 1 )
			Msg2Player("Giíi h¹n B¸nh Kem Gi¸ng Sinh trong ngµy: <color=green>"..mod(GetTask(332),1000).." / 15 c¸i")
		end
			AddOwnExp(nexp)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>10.000.000<color=red> kinh nghiÖm")
		
	item = random(1,200)
		if item == 100 or item == 50 or item == 150 then
				idxitem = AddEventItem(random(113,114))
				SetBindItem(idxitem,1)
				Msg2Player("B¹n nhËn ®­îc <color=pink>VËt PhÈm Hç Trî LuyÖn C«ng")
		elseif item == 51 then
				AddEventItem(random(117,118))
				Msg2Player("B¹n nhËn ®­îc <color=pink>VËt PhÈm Hç Trî LuyÖn C«ng")
		end
	
		
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end


function inlog3(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logSuDungBanhKem.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


MangItem = {
"M·nh D©y ChuyÒn An Bang [1]",
"M·nh D©y ChuyÒn An Bang [2]",
"M·nh D©y ChuyÒn An Bang [3]",
"M·nh D©y ChuyÒn An Bang [4]",
"M·nh D©y ChuyÒn An Bang [5]",
"M·nh NhÉn Cóc Hoa [1]",
"M·nh NhÉn Cóc Hoa [2]",
"M·nh NhÉn Cóc Hoa [3]",
"M·nh NhÉn Cóc Hoa [4]",
"M·nh NhÉn Cóc Hoa [5]",
"M·nh NhÉn Kª HuyÕt [1]",
"M·nh NhÉn Kª HuyÕt [2]",
"M·nh NhÉn Kª HuyÕt [3]",
"M·nh NhÉn Kª HuyÕt [4]",
"M·nh NhÉn Kª HuyÕt [5]",
"M·nh Ngäc Béi An Bang [1]",
"M·nh Ngäc Béi An Bang [2]",
"M·nh Ngäc Béi An Bang [3]",
"M·nh Ngäc Béi An Bang [4]",
"M·nh Ngäc Béi An Bang [5]",
"M·nh §Þnh Quèc [1]",
"M·nh §Þnh Quèc [2]",
"M·nh §Þnh Quèc [3]",
"M·nh §Þnh Quèc [4]",
"M·nh §Þnh Quèc [5]",
"M·nh §Þnh Quèc [6]",
"M·nh §Þnh Quèc [7]",
"M·nh §Þnh Quèc [8]",
"M·nh §Þnh Quèc [9]",
"M·nh §Þnh Quèc [10]",
}