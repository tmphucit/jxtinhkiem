Include("\\script\\lib\\thuvien.lua")
FACTION = 30
FirstSay	= "M�i c�c h� ch�n m�n �� �e� h�p th�nh"
FinallySay	= "Ta suy ngh� l�i/no" 
Finally	= "Ta suy ngh� l�i/travatpham" 
 function hoangkim()
 	Say("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",11,
		"Thi�u L�m ph�i./hoangkimmonphaihk",
		"Thi�n V��ng Bang./hoangkimmonphaihk",
		"Nga My ph�i./hoangkimmonphaihk",
		"Th�y Y�n m�n./hoangkimmonphaihk",
		"Ng� ��c Gi�o./hoangkimmonphaihk", 
		"���ng M�n./hoangkimmonphaihk",
		"C�i Bang./hoangkimmonphaihk",
		"Thi�n Nh�n Gi�o./hoangkimmonphaihk",
		"V� �ang ph�i./hoangkimmonphaihk",
		"C�n L�n ph�i./hoangkimmonphaihk",
	"Tho�t./no")
 end
 
function hoangkimmonphaihk(nSel)
	SetTaskTemp(FACTION, 0); -- reset task before set
	local nRow = nSel + 1;
	SetTaskTemp(FACTION, nRow);
	local TAB_HKMP = {
	{"Thi�u l�m b�ng ph�p/trangbihk","Thi�u l�m �ao ph�p/trangbihk","Thi�u l�m quy�n ph�p/trangbihk",},
	{"Thi�n v��ng �ao ph�p/trangbihk","Thi�n v��ng th��ng ph�p/trangbihk","Thi�n v��ng ch�y ph�p/trangbihk",},
	{"Nga mi ki�m ph�p/trangbihk","Nga mi ch��ng ph�p/trangbihk","Nga mi buff ph�p/trangbihk",},
	{"Th�y y�n ��n �ao/trangbihk","Th�y y�n song �ao/trangbihk",},
	{"Ng� ��c �ao ph�p/trangbihk","Ng� ��c ch��ng ph�p/trangbihk","Ng� ��c b�a ph�p/trangbihk",},
	{"���ng m�n t� ti�n/trangbihk","���ng m�n phi ti�u/trangbihk","���ng m�n phi �ao/trangbihk","���ng m�n b�y thu�t ph�p/trangbihk",},
	{"C�i bang b�ng ph�p/trangbihk","C�i bang ch��ng ph�p/trangbihk",},
	{"Thi�n nh�n k�ch/trangbihk","Thi�n nh�n ch��ng/trangbihk","Thi�n b�a ph�p /trangbihk",},
	{"V� �ang ki�m ph�p /trangbihk","V� �ang ch��ng ph�p/trangbihk",},
	{"C�n l�n �ao ph�p/trangbihk","C�n l�n ki�m ph�p/trangbihk","C�n l�n ki�m ph�p/trangbihk",},
	}
	if nRow == 6 then
		Say(FirstSay,5,		
				TAB_HKMP[nRow][1],
				TAB_HKMP[nRow][2],
				TAB_HKMP[nRow][3],
				TAB_HKMP[nRow][4],
		Finally)
		elseif nRow == 4 or nRow == 7 or nRow == 9 then
			Say(FirstSay,3,
				TAB_HKMP[nRow][1],
				TAB_HKMP[nRow][2],
		Finally)
		else
			Say(FirstSay,4,
				TAB_HKMP[nRow][1],
				TAB_HKMP[nRow][2],
				TAB_HKMP[nRow][3],
		Finally)
	end
end

	TAB_DOMONPHAI ={	
			{	--thieulam
				{	{"Ph�c Ma T� Kim C�n/chay",						0,0,2,61,189,77	,	}	,
					{"Ph�c Ma Huy�n Ho�ng C� Sa/chay",				0,2,35,1,201,77,	}	,
					{"Ph�c Ma � Kim Nhuy�n �i�u/chay",				0,6,6,1,213,77,	}	,
					{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u/chay",			0,3,8,1,237,77}	,
					{"Ph�c Ma Ph� �� T�ng h�i/chay",				0,5,7,1,219,77,	}	,	}	,	
				{	{"T� Kh�ng Gi�ng Ma Gi�i �ao/chay",				0,0,1,61,189,76,	}	,
					{"T� Kh�ng T� Kim C� Sa/chay",					0,2,34,1,201,76,	}	,
					{"T� Kh�ng H� ph�p Y�u ��i/chay",				0,6,5,1,213,76,	}	,
					{"T� Kh�ng Nhuy�n B� H� Uy�n/chay",				0,8,4,1,207,76,	}	,
					{"T� Kh�ng Gi�i Lu�t Ph�p gi�i/chay",			0,3,7,1,237,76,	}	,	}	,			
				{	{"M�ng Long Ch�nh H�ng T�ng M�o/chay",			0,7,16,1,195,75,	}	,
					{"M�ng Long Kim Ti Ch�nh H�ng C� Sa/chay",		0,2,33,1,201,75,	}	,
					{"M�ng Long Huy�n Ti Ph�t ��i/chay",			0,6,5,1,213,76,	}	,
					{"M�ng Long Ph�t Ph�p Huy�n B�i/chay",			0,9,6,1,231,75,	}	,
					{"M�ng Long ��t Ma T�ng h�i/chay",				0,5,6,1,219,75,	}	,	}	,
			},  		
			{	--tv
				{	{"Ng� Long L��ng Ng�n B�o �ao/chay",			0,0,1,121,189,80,	}	,		
					{"Ng� Long Chi�n Th�n Phi Qu�i gi�p/chay",		0,4,6,1,225,80,	}	,		
					{"Ng� Long Thi�n M�n Th�c Y�u ho�n/chay",		0,6,9,1,213,80,	}	,		
					{"Ng� Long T�n Phong H� y�n/chay",				0,8,7,1,207,80,	}	,		
					{"Ng� Long Tuy�t M�nh Ch� ho�n/chay",			0,3,9,1,237,80,	}	,	}	,			
				{	{"K� Nghi�p B�n L�i To�n Long th��ng/chay",		0,0,3,61,189,78,	}	,		
					{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i/chay",		0,2,36,1,201,78,	}	,		
					{"K� Nghi�p B�ch H� V� Song kh�u/chay",			0,6,7,1,213,78,	}	,		
					{"K� Nghi�p H�aV�n K� L�n Th� /chay",			0,8,5,1,207,78,	}	,		
					{"K� Nghi�p Chu T��c L�ng V�n Ngoa/chay",		0,5,8,1,219,78,	}	,	}	,
				{	{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y/chay",	0,0,4,61,189,79,	}	,		
					{"H�m Thi�n V� Th�n T��ng Kim Gi�p/chay",		0,2,37,1,201,79,	}	,		
					{"H�m Thi�n Uy V� Th�c y�u ��i/chay",			0,6,8,1,213,79,	}	,		
					{"H�m Thi�n H� ��u Kh�n Th�c Uy�n/chay",		0,8,6,1,207,79,	}	,		
					{"H�m Thi�n Th�a Long Chi�n Ngoa/chay",			0,5,9,1,219,79,	}	,	}	,
			},
			{												
				{	{"V� Gian � Thi�n Ki�m/chay",					0,0,0,61,189,89,	}	,		
					{"V� Gian Thanh Phong Truy Y/chay",				0,2,42,1,201,89,	}	,		
					{"V� Gian Ph�t V�n Ti ��i/chay",				0,6,14,1,213,89,	}	,		
					{"V� Gian C�m V�n H� Uy�n/chay",				0,8,13,1,207,89,	}	,		
					{"V� Gian B�ch Ng�c B�n Ch� /chay",				0,3,14,1,237,89,	}	,	}	,
				{	{"V� Ma Ma Ni qu�n/chay",						0,7,20,1,195,88,	}	,		
					{"V� Ma T� Kh�m C� Sa/chay",					0,2,43,1,201,88,	}	,		
					{"V� Ma B�ng Tinh Ch� Ho�n/chay",				0,3,15,1,237,88,	}	,		
					{"V� Ma T�y T��ng Ng�c Kh�u /chay",				0,9,16,1,231,88,	}	,		
					{"V� Ma H�ng Truy Nhuy�n Th�p h�i/chay",		0,5,16,1,219,88,	}	,	}	,
				{	{"V� Tr�n Ng�c N� T� T�m qu�n/chay",			0,7,21,1,195,90,	}	,		
					{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u/chay",		0,4,10,1,225,90,	}	,		
					{"V� Tr�n T� Bi Ng�c Ban Ch� /chay",			0,3,17,1,237,90,	}	,		
					{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i/chay",		0,9,9,1,231,90,	}	,		
					{"V� Tr�n Ph�t Quang Ch� Ho�n/chay",			0,3,16,1,237,90,	}	,	}	,
			},
			{												
				{	{"T� Ho�ng Ph�ng Nghi �ao/chay",				0,0,1,181,189,91,	}	,		
					{"T� Ho�ng Tu� T�m Khinh Sa Y/chay",			0,2,44,1,201,91,	}	,		
					{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i/chay",	0,6,15,1,213,91,	}	,		
					{"T� Ho�ng B�ng Tung C�m uy�n/chay",			0,8,14,1,207,91,	}	,		
					{"T� Ho�ng Th�y Ng�c Ch� Ho�n/chay",			0,3,18,1,237,91,	}	,	}	,
				{	{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao/chay",		0,0,5,61,189,92,	}	,		
					{"B�ch H�i Ho�n Ch�u V� Li�n/chay",				0,4,11,1,225,92,	}	,		
					{"B�ch H�i H�ng Linh Kim Ti ��i/chay",			0,6,16,1,213,92,	}	,		
					{"B�ch H�i H�ng L�ng Ba/chay",					0,9,10,1,231,92,	}	,		
					{"B�ch H�i Khi�n T� Ch� ho�n",					104	,	}	,	}	,
			},
			{												
				{	{"U Lung Kim X� Ph�t ��i/chay",						0,7,19,1,195,85	,	}	,		
					{"U Lung X�ch Y�t M�t trang/chay",					0,2,40,1,201,85	,	}	,		
					{"U Lung Thanh Ng� Tri�n y�u/chay",					0,6,13,1,213,85	,	}	,		
					{"U Lung Ng�n Th�m H� Uy�n/chay",					0,8,11,1,207,85	,	}	,		
					{"U Lung M�c Th� Nhuy�n L� /chay",					0,5,14,1,219,85	,	}	,	}	,
				{	{"Minh �o T� S�t ��c Nh�n/chay",					0,0,1,171,189,86	,	}	,		
					{"Minh �o U ��c �m Y/chay",							0,2,41,1,201,86	,	}	,		
					{"Minh �o ��c Y�t Ch� Ho�n/chay",					0,3,13,1,237,86	,	}	,		
					{"Minh �o H� C�t H� uy�n/chay",						0,8,12,1,207,86	,	}	,		
					{"Minh �o Song Ho�n X� H�i/chay",					0,5,15,1,219,86	,	}	,	}	,
				{	{"Ch� Ph��c Ph� gi�p ��u ho�n/chay",				0,7,18,1,195,87	,	}	,		
					{"Ch� Ph��c Di�t L�i C�nh Ph� /chay",				0,4,9,1,225,87	,	}	,		
					{"Ch� Ph��c U �o Ch� Ho�n/chay",					0,3,12,1,237,87	,	}	,		
					{"Ch� Ph��c Xuy�n T�m ��c Uy�n/chay",				0,8,10,1,207,87	,	}	,		
					{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa/chay",			0,5,13,1,219,87	,	}	,	}	,
			},
			{												
				{	{"Thi�n Quang Hoa V� M�n Thi�n/chay",				0,1,2,31,189,81	,	}	,		
					{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� /chay",		0,4,8,1,225,81	,	}	,		
					{"Thi�n Quang S�m La Th�c ��i/chay",				0,6,12,1,213,81	,	}	,		
					{"Thi�n Quang Song B�o H�n Thi�t Tr�c/chay",		0,8,9,1,207,81	,	}	,		
					{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n/chay",		0,3,11,1,237,81	,	}	,	}	,
				{	{"S�m Hoang Phi Tinh �o�t H�n/chay",				0,1,0,41,189,83	,	}	,		
					{"S�m Hoang KimTi�n Li�n Ho�n Gi�p/chay",			0,2,39,1,201,83	,	}	,		
					{"S�m Hoang H�n Gi�o Y�u Th�c/chay",				0,6,11,1,213,83	,	}	,		
					{"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i/chay",		0,9,8,1,231,83	,	}	,		
					{"S�m Hoang Tinh V�n Phi L� /chay",					0,5,12,1,219,83	,	}	,	}	,	
				{	{"B�ng H�n ��n Ch� Phi �ao/chay",					0,1,1,21,189,82	,	}	,		
					{"B�ng H�n Huy�n Y Th�c Gi�p/chay",					0,2,38,1,201,82	,	}	,		
					{"B�ng H�n T�m Ti�n Y�u Kh�u/chay",					0,6,10,1,213,82	,	}	,		
					{"B�ng H�n Huy�n Thi�n B�ng H�a B�i/chay",			0,9,7,1,231,82	,	}	,		
					{"B�ng H�n Nguy�t �nh Ngoa/chay",					0,5,11,1,219,82	,	}	,	}	,
				{	{"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n/chay",			0,7,17,1,195,84	,	}	,		
					{"��a Ph�ch H�c Di�m Xung Thi�n Li�n/chay",			0,4,7,1,225,84	,	}	,		
					{"��a Ph�ch T�ch L�ch L�i H�a Gi�i/chay",			0,3,10,1,237,84	,	}	,		
					{"��a Ph�ch Kh�u T�m tr�c/chay",					0,8,8,1,207,84	,	}	,		
					{"��a Ph�ch ��a H�nh Thi�n L� Ngoa/chay",			0,5,10,1,219,84	,	}	,	}	,
			},
			{												
				{	{"��ch Kh�i L�c Ng�c Tr��ng/chay",					0,0,2,121,189,94	,	}	,		
					{"��ch Kh�i C�u ��i C�i Y/chay",					0,2,46,1,201,94	,	}	,		
					{"��ch Kh�i Tri�n M�ng y�u ��i/chay",				0,6,18,1,213,94	,	}	,		
					{"��ch Kh�i C�u T�ch B� H� uy�n/chay",				0,8,16,1,207,94	,	}	,		
					{"��ch Kh�i Th�o Gian Th�ch gi�i/chay",				0,3,20,1,237,94	,	}	,	}	,
				{	{"��ng C�u Phi Long ��u ho�n/chay",					0,7,22,1,195,93	,	}	,		
					{"��ng C�u Gi�ng Long C�i Y/chay",					0,2,45,1,201,93	,	}	,		
					{"��ng C�u Ti�m Long Y�u ��i/chay",					0,6,17,1,213,93	,	}	,		
					{"��ng C�u Kh�ng Long H� Uy�n/chay",				0,8,15,1,207,93	,	}	,		
					{"��ng C�u Ki�n Long Ban Ch� /chay",				0,3,19,1,237,93	,	}	,	}	,
			},
			{												
				{	{"Ma S�t Qu� C�c U Minh Th��ng/chay",				0,0,3,121,189,96	,	}	,		
					{"Ma S�t T�n D��ng �nh Huy�t Gi�p/chay",			0,2,47,1,201,96	,	}	,		
					{"Ma S�t X�ch K� T�a Y�u Kh�u/chay",				0,6,20,1,213,96	,	}	,		
					{"Ma S�t C� H�a Li�u Thi�n uy�n/chay",				0,8,18,1,207,96	,	}	,		
					{"Ma S�t V�n Long Th� Ch�u gi�i/chay",				0,3,22,1,237,96	,	}	,	}	,
				{	{"Ma Ho�ng Kim Gi�p Kh�i/chay",						0,7,23,1,195,97	,	}	,		
					{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n/chay",			0,4,12,1,225,97	,	}	,		
					{"Ma Ho�ng Kh� C�c Th�c y�u ��i/chay",				0,6,19,1,213,97	,	}	,		
					{"Ma Ho�ng Huy�t Y Th� Tr�c/chay",					0,8,17,1,207,97	,	}	,		
					{"Ma Ho�ng ��ng ��p Ngoa/chay",						0,5,17,1,219,97,	}	,	}	,
				{	{"Ma Th� Li�t Di�m Qu�n Mi�n/chay",					0,7,24,1,195,95	,	}	,		
					{"Ma Th� L� Ma Ph� T�m Li�n/chay",					0,4,13,1,225,95	,	}	,		
					{"Ma Th� Nghi�p H�a U Minh Gi�i/chay",				0,3,21,1,237,95	,	}	,		
					{"Ma Th� Huy�t Ng�c Th�t S�t B�i/chay",				0,9,11,1,231,95	,	}	,		
					{"Ma Th� s�n  H�i Phi H�ng L� /chay",				0,5,18,1,219,95	,	}	,	}	,
			},
			{												
				{	{"C�p Phong Ch�n V� Ki�m/chay",						0,0,0,171,189,98	,	}	,		
					{"C�p Phong Tam Thanh Ph� /chay",					0,4,14,1,225,98	,	}	,		
					{"C�p Phong Huy�n Ti Tam �o�n c�m/chay",			0,6,21,1,213,98	,	}	,		
					{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i/chay",		0,9,12,1,231,98	,	}	,		
					{"C�p Phong Thanh T�ng Ph�p gi�i/chay",				0,3,23,1,237,98	,	}	,	}	,
				{	{"L�ng Nh�c Th�i C�c Ki�m/chay",					0,0,0,121,189,99	,	}	,		
					{"L�ng Nh�c V� Ng� ��o b�o/chay",					0,2,48,1,201,99	,	}	,		
					{"L�ng Nh�c N� L�i Gi�i/chay",						0,3,24,1,237,99	,	}	,		
					{"L�ng Nh�c V� C�c Huy�n Ng�c B�i/chay",			0,9,13,1,231,99	,	}	,		
					{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i/chay",		0,3,25,1,237,99	,	}	,	}	,
			},
			{												
				{	{"S��ng Tinh Thi�n Ni�n H�n Thi�t/chay",			0,0,1,151,189,101	,	}	,		
					{"S��ng Tinh Ng�o S��ng ��o b�o/chay",				0,2,49,1,201,101	,	}	,		
					{"S��ng Tinh Thanh Phong L� ��i/chay",				0,6,22,1,213,101	,	}	,		
					{"S��ng Tinh Thi�n Tinh B�ng Tinh th� /chay",		0,8,19,1,207,101	,	}	,		
					{"S��ng Tinh Phong B�o ch� ho�n/chay",				0,3,27,1,237,101	,	}	,	}	,
				{	{"L�i Khung H�n Tung B�ng B�ch quan/chay",			0,7,26,1,195,100	,	}	,		
					{"L�i Khung Thi�n ��a H� ph� /chay",				0,4,16,1,225,100	,	}	,		
					{"L�i Khung Phong L�i Thanh C�m ��i/chay",			0,6,23,1,213,100	,	}	,		
					{"L�i Khung Linh Ng�c U�n L�i/chay",				0,9,15,1,231,100	,	}	,		
					{"L�i Khung C�u Thi�n D�n L�i gi�i/chay",			0,3,28,1,237,100	,	}	,	}	,
				{	{"V� �o B�c Minh ��o qu�n/chay",					0,7,25,1,195,102	,	}	,		
					{"V� �o Ki B�n ph� ch� /chay",						0,5,19,1,219,102	,	}	,		
					{"V� �o Th�c T�m ch� ho�n/chay",					0,3,26,1,237,102	,	}	,		
					{"V� �o Thanh �nh Huy�n Ng�c B�i/chay",				0,9,14,1,231,102	,	}	,		
					{"V� �o Tung Phong Tuy�t �nh ngoa/chay",			0,5,19,1,219,102	,	}	,	}	,
				},										
		}
function trangbihk(nSel) -- no loi ham nay ma
local nFactionId = GetTaskTemp(FACTION);
	SetTaskTemp(Line, 0); -- reset task before set
	local nRow = nSel + 1;
	SetTaskTemp(Line,nRow);
	Say(FirstSay,6,
	TAB_DOMONPHAI[nFactionId][nRow][1][1],
	TAB_DOMONPHAI[nFactionId][nRow][2][1],
	TAB_DOMONPHAI[nFactionId][nRow][3][1],
	TAB_DOMONPHAI[nFactionId][nRow][4][1],
	TAB_DOMONPHAI[nFactionId][nRow][5][1],
	Finally)

end
		
		
function chay(nSel)
local nFactionId = GetTaskTemp(FACTION);
local nLine = GetTaskTemp(Line);
local nRow = nSel + 1;
	-- Random = random (1,2)
	-- if a == 1 then
	--	AddGoldItem(TAB_DOMONPHAI[nFactionId][nLine][nRow][2])
		AddItem(TAB_DOMONPHAI[nFactionId][nLine][nRow][2],TAB_DOMONPHAI[nFactionId][nLine][nRow][3],TAB_DOMONPHAI[nFactionId][nLine][nRow][4],TAB_DOMONPHAI[nFactionId][nLine][nRow][5],0,0,0)
		Msg2Player("Ch�c m�ng c�c h� �� ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i")
		-- else
		-- Msg2Player("Th�t b�i")
	-- end
end
--===========================Nguyen lieu ep trang bi hoang kim [ Manh trang bi + Mat tich mon phai + bi kim theo duong + thuy tinh]

function nguyenlieuhk()
 	Say("",4,
	"Manh Hoang Kim/manh",
	"Mat Tich/mattich",
	"Bi Kip/bikip",
	"Tho�t./no")
 end

 function manh()
  	Say("Chon manh",4,
	"Manh ao/manhselect",
	"Manh non/manhselect",
	"Manh that lung/manhselect",
	"Manh giay/manhselect",
	"Manh vu khi/manhselect",
	"Manh day chuyen/manhselect",
	"Manh ngoc boi/manhselect",
	"Manh bao tay/manhselect",
	"Manh nhan/manhselect",
	"Tho�t./no")
  end
  
 -- TAB_MANH={
 -- {}
 
 -- }
-- function manhselect(nSel)
-- nRow = Sel + 1
	-- if 

-- end














