
function main(idx)
sl = GetItemCount(382)
ngay = tonumber(date("%d"))

if floor(GetTask(332)/1000) ~= 4 then
 SetTask(332 , 4 * 1000)
Msg2Player("Reset gi�i h�n ng�y m�i: <color=yellow>0 / 15")
end 
if mod(GetTask(332),1000) >= 15 then
Talk(1,"","B�n �� ��t gi�i h�n 15 B�nh Kem Gi�ng Sinh trong ng�y h�m nay")
return
end
DelItemIdx(idx);

if GetItemCount(382) == sl -1 then
		
		nexp = 10000000
		
		if GetLevel() >= 125 then
			SetTask(332, GetTask(332) + 1 )
			Msg2Player("Gi�i h�n B�nh Kem Gi�ng Sinh trong ng�y: <color=green>"..mod(GetTask(332),1000).." / 15 c�i")
		end
			AddOwnExp(nexp)
			Msg2Player("B�n nh�n ���c <color=yellow>10.000.000<color=red> kinh nghi�m")
		
	item = random(1,200)
		if item == 100 or item == 50 or item == 150 then
				idxitem = AddEventItem(random(113,114))
				SetBindItem(idxitem,1)
				Msg2Player("B�n nh�n ���c <color=pink>V�t Ph�m H� Tr� Luy�n C�ng")
		elseif item == 51 then
				AddEventItem(random(117,118))
				Msg2Player("B�n nh�n ���c <color=pink>V�t Ph�m H� Tr� Luy�n C�ng")
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
"M�nh D�y Chuy�n An Bang [1]",
"M�nh D�y Chuy�n An Bang [2]",
"M�nh D�y Chuy�n An Bang [3]",
"M�nh D�y Chuy�n An Bang [4]",
"M�nh D�y Chuy�n An Bang [5]",
"M�nh Nh�n C�c Hoa [1]",
"M�nh Nh�n C�c Hoa [2]",
"M�nh Nh�n C�c Hoa [3]",
"M�nh Nh�n C�c Hoa [4]",
"M�nh Nh�n C�c Hoa [5]",
"M�nh Nh�n K� Huy�t [1]",
"M�nh Nh�n K� Huy�t [2]",
"M�nh Nh�n K� Huy�t [3]",
"M�nh Nh�n K� Huy�t [4]",
"M�nh Nh�n K� Huy�t [5]",
"M�nh Ng�c B�i An Bang [1]",
"M�nh Ng�c B�i An Bang [2]",
"M�nh Ng�c B�i An Bang [3]",
"M�nh Ng�c B�i An Bang [4]",
"M�nh Ng�c B�i An Bang [5]",
"M�nh ��nh Qu�c [1]",
"M�nh ��nh Qu�c [2]",
"M�nh ��nh Qu�c [3]",
"M�nh ��nh Qu�c [4]",
"M�nh ��nh Qu�c [5]",
"M�nh ��nh Qu�c [6]",
"M�nh ��nh Qu�c [7]",
"M�nh ��nh Qu�c [8]",
"M�nh ��nh Qu�c [9]",
"M�nh ��nh Qu�c [10]",
}