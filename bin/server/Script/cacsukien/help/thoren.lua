Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\lib\\thuvien.lua")
function main()
ReLoadScript("\\script\\cacsukien\\help\\thoren.lua")
	-- local nW,nX,nY = GetWorldPos()
	local TAB_THOREN = {
			"Mua v� kh�/binhthuong",
			"Ch� t�o trang b� ho�ng kim/chetaohoangkim",
			"Th�ng C�p Trang B� Xanh/thangcap",
			"Ti�u h�y trang b�/tieuhuytrangbi",
			"K�t th�c ��i tho�i/no",
		}
		Say("", 5, TAB_THOREN[1],TAB_THOREN[2], TAB_THOREN[3], TAB_THOREN[4], TAB_THOREN[5])
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 53 or w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 18 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 9 then
Sale(16)
elseif w == 4 then
	xs = random(1,5)
	if xs == 1 then
		Sale(8)
	elseif xs == 2 then
		Sale(10)
	elseif xs == 3 then
		Sale(12)
	elseif xs == 4 then
		Sale(14)
	elseif xs == 5 then
		Sale(16)
	end
end
end;

--EP HKMP LeeRim
function chetaohoangkim()
	OpenCheckItemBox("��t m�nh ho�ng kim v�o ","C�ng th�c:\nV� kh� : c�n 3 m�nh ho�ng kim\nTrang b� kh�c c�n 6 m�nh ho�ng kim\nChung: 2000v�ng l��ng\nThuy Tinh = % thanh cong! ","chetao");
end

function chetao()
	local nMoney = 20000000;
	if GetCash() < nMoney then
		Talk(1,"",format("Ng��i kh�ng �� %d l��ng.",nMoney))
	return end
		a = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30);
	if GetItemCountBox(28) > 0  and  GetItemCountBox(29) > 0 and  GetItemCountBox(30) > 0 and GetItemCountBox(254) >= 3  then
			xacsuat = random(1,100)
			if xacsuat < (a*5) then
				-- for i=1,GetItemCountBox(28) do DelItemBox(28) end
				-- for i=1,GetItemCountBox(29) do DelItemBox(29) end
				-- for i=1,GetItemCountBox(30) do DelItemBox(30) end
				-- for i = 1,3 do DelItemBox(254)end		
				-- Pay(nMoney)
				hoangkim()
			else
			Talk(1,"","Ch� t�o trang b� <color=red> Th�t b�i <color> ng��i m�t 3 vi�n th�y tinh ")
				DelItemBox(28) 
				DelItemBox(29) 
				DelItemBox(30)
			Pay(2000000)
			end
	elseif GetItemCountBox(255) >= 3 and GetItemCountBox(28) > 0 and  GetItemCountBox(29) > 0 and  GetItemCountBox(30) > 0 then
			xacsuat = random(1,100)
			if xacsuat < (a*5) then
				-- for i=1,GetItemCountBox(28) do DelItemBox(28) end
				-- for i=1,GetItemCountBox(29) do DelItemBox(29) end
				-- for i=1,GetItemCountBox(30) do DelItemBox(30) end
				-- for i = 1,3 do DelItemBox(255) end		
				-- Pay(nMoney)
				hoangkimvk()
			else
			Talk(1,"","Ch� t�o trang b� <color=red> Th�t b�i <color> ng��i m�t 3 vi�n th�y tinh + 200 van  ")
				DelItemBox(28) 
				DelItemBox(29) 
				DelItemBox(30)
			Pay(2000000)
			end
	elseif a == 0 then
		Talk(1,"","Vui l�ng ��t v�o ch�nh x�c nguy�n li�u [ 3 Vi�n Th�y tinh kh�c nhau ] <pic=4>")
	else
		Talk(1,"","Vui l�ng ��t v�o ch�nh x�c nguy�n li�u.")
	end	
end
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
				{	{"Ph�c Ma T� Kim C�n",						0,0,2,61,189,77	,	}	,
					{"Ph�c Ma Huy�n Ho�ng C� Sa/chay",				0,2,35,1,201,77,	}	,
					{"Ph�c Ma � Kim Nhuy�n �i�u/chay",				0,6,6,1,213,77,		}	,
					{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u/chay",			0,3,8,1,237,77,		}	,
					{"Ph�c Ma Ph� �� T�ng h�i/chay",				0,5,7,1,219,77,		}	,	}	,	
				{	{"T� Kh�ng Gi�ng Ma Gi�i �ao",				0,0,1,61,189,76,	}	,
					{"T� Kh�ng T� Kim C� Sa/chay",					0,2,34,1,201,76,	}	,
					{"T� Kh�ng H� ph�p Y�u ��i/chay",				0,6,5,1,213,76,		}	,
					{"T� Kh�ng Nhuy�n B� H� Uy�n/chay",				0,8,4,1,207,76,		}	,
					{"T� Kh�ng Gi�i Lu�t Ph�p gi�i/chay",			0,3,7,1,237,76,		}	,	}	,			
				{	{"M�ng Long Ch�nh H�ng T�ng M�o/chay",			0,7,16,1,195,75,	}	,
					{"M�ng Long Kim Ti Ch�nh H�ng C� Sa/chay",		0,2,33,1,201,75,	}	,
					{"M�ng Long Huy�n Ti Ph�t ��i/chay",			0,6,5,1,213,76,		}	,
					{"M�ng Long Ph�t Ph�p Huy�n B�i/chay",			0,9,6,1,231,75,		}	,
					{"M�ng Long ��t Ma T�ng h�i/chay",				0,5,6,1,219,75,		}	,	}	,
			},  		
			{	--tv
				{	{"Ng� Long L��ng Ng�n B�o �ao",			0,0,1,121,189,80,	}	,		
					{"Ng� Long Chi�n Th�n Phi Qu�i gi�p/chay",		0,4,6,1,225,80,		}	,		
					{"Ng� Long Thi�n M�n Th�c Y�u ho�n/chay",		0,6,9,1,213,80,		}	,		
					{"Ng� Long T�n Phong H� y�n/chay",				0,8,7,1,207,80,		}	,		
					{"Ng� Long Tuy�t M�nh Ch� ho�n/chay",			0,3,9,1,237,80,		}	,	}	,			
				{	{"K� Nghi�p B�n L�i To�n Long th��ng",		0,0,3,61,189,78,	}	,		
					{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i/chay",		0,2,36,1,201,78,	}	,		
					{"K� Nghi�p B�ch H� V� Song kh�u/chay",			0,6,7,1,213,78,		}	,		
					{"K� Nghi�p H�aV�n K� L�n Th� /chay",			0,8,5,1,207,78,		}	,		
					{"K� Nghi�p Chu T��c L�ng V�n Ngoa/chay",		0,5,8,1,219,78,		}	,	}	,
				{	{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",	0,0,4,61,189,79,	}	,		
					{"H�m Thi�n V� Th�n T��ng Kim Gi�p/chay",		0,2,37,1,201,79,	}	,		
					{"H�m Thi�n Uy V� Th�c y�u ��i/chay",			0,6,8,1,213,79,	}	,		
					{"H�m Thi�n H� ��u Kh�n Th�c Uy�n/chay",		0,8,6,1,207,79,	}	,		
					{"H�m Thi�n Th�a Long Chi�n Ngoa/chay",			0,5,9,1,219,79,	}	,	}	,
			},
			{												
				{	{"V� Gian � Thi�n Ki�m",					0,0,0,61,189,89,	}	,		
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
				{	{"T� Ho�ng Ph�ng Nghi �ao",				0,0,1,181,189,91,	}	,		
					{"T� Ho�ng Tu� T�m Khinh Sa Y/chay",			0,2,44,1,201,91,	}	,		
					{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i/chay",	0,6,15,1,213,91,	}	,		
					{"T� Ho�ng B�ng Tung C�m uy�n/chay",			0,8,14,1,207,91,	}	,		
					{"T� Ho�ng Th�y Ng�c Ch� Ho�n/chay",			0,3,18,1,237,91,	}	,	}	,
				{	{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao/",		0,0,5,61,189,92,	}	,		
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
				{	{"Thi�n Quang Hoa V� M�n Thi�n",				0,1,2,31,189,81	,	}	,		
					{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� /chay",		0,4,8,1,225,81	,	}	,		
					{"Thi�n Quang S�m La Th�c ��i/chay",				0,6,12,1,213,81	,	}	,		
					{"Thi�n Quang Song B�o H�n Thi�t Tr�c/chay",		0,8,9,1,207,81	,	}	,		
					{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n/chay",		0,3,11,1,237,81	,	}	,	}	,
				{	{"S�m Hoang Phi Tinh �o�t H�n",				0,1,0,41,189,83	,	}	,		
					{"S�m Hoang KimTi�n Li�n Ho�n Gi�p/chay",			0,2,39,1,201,83	,	}	,		
					{"S�m Hoang H�n Gi�o Y�u Th�c/chay",				0,6,11,1,213,83	,	}	,		
					{"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i/chay",		0,9,8,1,231,83	,	}	,		
					{"S�m Hoang Tinh V�n Phi L� /chay",					0,5,12,1,219,83	,	}	,	}	,	
				{	{"B�ng H�n ��n Ch� Phi �ao",					0,1,1,21,189,82	,	}	,		
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
				{	{"��ch Kh�i L�c Ng�c Tr��ng",					0,0,2,121,189,94	,	}	,		
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
				{	{"Ma S�t Qu� C�c U Minh Th��ng",				0,0,3,121,189,96	,	}	,		
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
				{	{"C�p Phong Ch�n V� Ki�m",						0,0,0,171,189,98	,	}	,		
					{"C�p Phong Tam Thanh Ph� /chay",					0,4,14,1,225,98	,	}	,		
					{"C�p Phong Huy�n Ti Tam �o�n c�m/chay",			0,6,21,1,213,98	,	}	,		
					{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i/chay",		0,9,12,1,231,98	,	}	,		
					{"C�p Phong Thanh T�ng Ph�p gi�i/chay",				0,3,23,1,237,98	,	}	,	}	,
				{	{"L�ng Nh�c Th�i C�c Ki�m",					0,0,0,121,189,99	,	}	,		
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

		AddItem(TAB_DOMONPHAI[nFactionId][nLine][nRow][2],TAB_DOMONPHAI[nFactionId][nLine][nRow][3],TAB_DOMONPHAI[nFactionId][nLine][nRow][4],TAB_DOMONPHAI[nFactionId][nLine][nRow][5],0,0,0)
					Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i ")	
			local nMoney = 20000000;
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
				for i = 1,3 do DelItemBox(254)end		
				Pay(nMoney)
end




--===================================--===================================--===================================VU KHI
function hoangkimvk()
 	Say("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",11,
		"Thi�u L�m ph�i./hoangkimmonphaihkvk",
		"Thi�n V��ng Bang./hoangkimmonphaihkvk",
		"Nga My ph�i./hoangkimmonphaihkvk",
		"Th�y Y�n m�n./hoangkimmonphaihkvk",
		"Ng� ��c Gi�o./hoangkimmonphaihkvk", 
		"���ng M�n./hoangkimmonphaihkvk",
		"C�i Bang./hoangkimmonphaihkvk",
		"Thi�n Nh�n Gi�o./hoangkimmonphaihkvk",
		"V� �ang ph�i./hoangkimmonphaihkvk",
		"C�n L�n ph�i./hoangkimmonphaihkvk",
	"Tho�t./no")
 end
 
function hoangkimmonphaihkvk(nSel)
	SetTaskTemp(FACTION, 0); -- reset task before set
	local nRow = nSel + 1;
	SetTaskTemp(FACTION, nRow);
	local TAB_HKMP = {
	{"Thi�u l�m b�ng ph�p/trangbihkvk","Thi�u l�m �ao ph�p/trangbihkvk","Thi�u l�m quy�n ph�p/trangbihkvk",},
	{"Thi�n v��ng �ao ph�p/trangbihkvk","Thi�n v��ng th��ng ph�p/trangbihkvk","Thi�n v��ng ch�y ph�p/trangbihkvk",},
	{"Nga mi ki�m ph�p/trangbihkvk","Nga mi ch��ng ph�p/trangbihkvk","Nga mi buff ph�p/trangbihkvk",},
	{"Th�y y�n ��n �ao/trangbihkvk","Th�y y�n song �ao/trangbihkvk",},
	{"Ng� ��c �ao ph�p/trangbihkvk","Ng� ��c ch��ng ph�p/trangbihkvk","Ng� ��c b�a ph�p/trangbihkvk",},
	{"���ng m�n t� ti�n/trangbihkvk","���ng m�n phi ti�u/trangbihkvk","���ng m�n phi �ao/trangbihkvk","���ng m�n b�y thu�t ph�p/trangbihkvk",},
	{"C�i bang b�ng ph�p/trangbihkvk","C�i bang ch��ng ph�p/trangbihkvk",},
	{"Thi�n nh�n k�ch/trangbihkvk","Thi�n nh�n ch��ng/trangbihkvk","Thi�n b�a ph�p /trangbihkvk",},
	{"V� �ang ki�m ph�p /trangbihkvk","V� �ang ch��ng ph�p/trangbihkvk",},
	{"C�n l�n �ao ph�p/trangbihkvk","C�n l�n ki�m ph�p/trangbihkvk","C�n l�n ki�m ph�p/trangbihkvk",},
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

	TAB_DOMONPHAIvk ={	
			{	--thieulam
				{	{"Ph�c Ma T� Kim C�n/chayvk",						0,0,2,61,189,77	,	}	,
					{"Ph�c Ma Huy�n Ho�ng C� Sa",				0,2,35,1,201,77,	}	,
					{"Ph�c Ma � Kim Nhuy�n �i�u",				0,6,6,1,213,77,		}	,
					{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",			0,3,8,1,237,77,		}	,
					{"Ph�c Ma Ph� �� T�ng h�i",				0,5,7,1,219,77,		}	,	}	,	
				{	{"T� Kh�ng Gi�ng Ma Gi�i �ao/chayvk",				0,0,1,61,189,76,	}	,
					{"T� Kh�ng T� Kim C� Sa",					0,2,34,1,201,76,	}	,
					{"T� Kh�ng H� ph�p Y�u ��i",				0,6,5,1,213,76,		}	,
					{"T� Kh�ng Nhuy�n B� H� Uy�n",				0,8,4,1,207,76,		}	,
					{"T� Kh�ng Gi�i Lu�t Ph�p gi�i",			0,3,7,1,237,76,		}	,	}	,			
				{	{"M�ng Long Ch�nh H�ng T�ng M�o",			0,7,16,1,195,75,	}	,
					{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",		0,2,33,1,201,75,	}	,
					{"M�ng Long Huy�n Ti Ph�t ��i",			0,6,5,1,213,76,		}	,
					{"M�ng Long Ph�t Ph�p Huy�n B�i",			0,9,6,1,231,75,		}	,
					{"M�ng Long ��t Ma T�ng h�i",				0,5,6,1,219,75,		}	,	}	,
			},  		
			{	--tv
				{	{"Ng� Long L��ng Ng�n B�o �ao/chayvk",			0,0,1,121,189,80,	}	,		
					{"Ng� Long Chi�n Th�n Phi Qu�i gi�p",		0,4,6,1,225,80,		}	,		
					{"Ng� Long Thi�n M�n Th�c Y�u ho�n",		0,6,9,1,213,80,		}	,		
					{"Ng� Long T�n Phong H� y�n",				0,8,7,1,207,80,		}	,		
					{"Ng� Long Tuy�t M�nh Ch� ho�n",			0,3,9,1,237,80,		}	,	}	,			
				{	{"K� Nghi�p B�n L�i To�n Long th��ng/chayvk",		0,0,3,61,189,78,	}	,		
					{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",		0,2,36,1,201,78,	}	,		
					{"K� Nghi�p B�ch H� V� Song kh�u",			0,6,7,1,213,78,		}	,		
					{"K� Nghi�p H�aV�n K� L�n Th� ",			0,8,5,1,207,78,		}	,		
					{"K� Nghi�p Chu T��c L�ng V�n Ngoa",		0,5,8,1,219,78,		}	,	}	,
				{	{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y/chayvk",	0,0,4,61,189,79,	}	,		
					{"H�m Thi�n V� Th�n T��ng Kim Gi�p",		0,2,37,1,201,79,	}	,		
					{"H�m Thi�n Uy V� Th�c y�u ��i",			0,6,8,1,213,79,	}	,		
					{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",		0,8,6,1,207,79,	}	,		
					{"H�m Thi�n Th�a Long Chi�n Ngoa",			0,5,9,1,219,79,	}	,	}	,
			},
			{												
				{	{"V� Gian � Thi�n Ki�m/chayvk",					0,0,0,61,189,89,	}	,		
					{"V� Gian Thanh Phong Truy Y",				0,2,42,1,201,89,	}	,		
					{"V� Gian Ph�t V�n Ti ��i",				0,6,14,1,213,89,	}	,		
					{"V� Gian C�m V�n H� Uy�n",				0,8,13,1,207,89,	}	,		
					{"V� Gian B�ch Ng�c B�n Ch� ",				0,3,14,1,237,89,	}	,	}	,
				{	{"V� Ma Ma Ni qu�n",						0,7,20,1,195,88,	}	,		
					{"V� Ma T� Kh�m C� Sa",					0,2,43,1,201,88,	}	,		
					{"V� Ma B�ng Tinh Ch� Ho�n",				0,3,15,1,237,88,	}	,		
					{"V� Ma T�y T��ng Ng�c Kh�u ",				0,9,16,1,231,88,	}	,		
					{"V� Ma H�ng Truy Nhuy�n Th�p h�i",		0,5,16,1,219,88,	}	,	}	,
				{	{"V� Tr�n Ng�c N� T� T�m qu�n",			0,7,21,1,195,90,	}	,		
					{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",		0,4,10,1,225,90,	}	,		
					{"V� Tr�n T� Bi Ng�c Ban Ch� ",			0,3,17,1,237,90,	}	,		
					{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",		0,9,9,1,231,90,	}	,		
					{"V� Tr�n Ph�t Quang Ch� Ho�n",			0,3,16,1,237,90,	}	,	}	,
			},
			{												
				{	{"T� Ho�ng Ph�ng Nghi �ao/chayvk",				0,0,1,181,189,91,	}	,		
					{"T� Ho�ng Tu� T�m Khinh Sa Y",			0,2,44,1,201,91,	}	,		
					{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",	0,6,15,1,213,91,	}	,		
					{"T� Ho�ng B�ng Tung C�m uy�n",			0,8,14,1,207,91,	}	,		
					{"T� Ho�ng Th�y Ng�c Ch� Ho�n",			0,3,18,1,237,91,	}	,	}	,
				{	{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao/chayvk",		0,0,5,61,189,92,	}	,		
					{"B�ch H�i Ho�n Ch�u V� Li�n",				0,4,11,1,225,92,	}	,		
					{"B�ch H�i H�ng Linh Kim Ti ��i",			0,6,16,1,213,92,	}	,		
					{"B�ch H�i H�ng L�ng Ba",					0,9,10,1,231,92,	}	,		
					{"B�ch H�i Khi�n T� Ch� ho�n",					104	,	}	,	}	,
			},
			{												
				{	{"U Lung Kim X� Ph�t ��i",						0,7,19,1,195,85	,	}	,		
					{"U Lung X�ch Y�t M�t trang",					0,2,40,1,201,85	,	}	,		
					{"U Lung Thanh Ng� Tri�n y�u",					0,6,13,1,213,85	,	}	,		
					{"U Lung Ng�n Th�m H� Uy�n",					0,8,11,1,207,85	,	}	,		
					{"U Lung M�c Th� Nhuy�n L� ",					0,5,14,1,219,85	,	}	,	}	,
				{	{"Minh �o T� S�t ��c Nh�n",					0,0,1,171,189,86	,	}	,		
					{"Minh �o U ��c �m Y",							0,2,41,1,201,86	,	}	,		
					{"Minh �o ��c Y�t Ch� Ho�n",					0,3,13,1,237,86	,	}	,		
					{"Minh �o H� C�t H� uy�n",						0,8,12,1,207,86	,	}	,		
					{"Minh �o Song Ho�n X� H�i",					0,5,15,1,219,86	,	}	,	}	,
				{	{"Ch� Ph��c Ph� gi�p ��u ho�n",				0,7,18,1,195,87	,	}	,		
					{"Ch� Ph��c Di�t L�i C�nh Ph� ",				0,4,9,1,225,87	,	}	,		
					{"Ch� Ph��c U �o Ch� Ho�n",					0,3,12,1,237,87	,	}	,		
					{"Ch� Ph��c Xuy�n T�m ��c Uy�n",				0,8,10,1,207,87	,	}	,		
					{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",			0,5,13,1,219,87	,	}	,	}	,
			},
			{												
				{	{"Thi�n Quang Hoa V� M�n Thi�/chayvk",				0,1,2,31,189,81	,	}	,		
					{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",		0,4,8,1,225,81	,	}	,		
					{"Thi�n Quang S�m La Th�c ��i",				0,6,12,1,213,81	,	}	,		
					{"Thi�n Quang Song B�o H�n Thi�t Tr�c",		0,8,9,1,207,81	,	}	,		
					{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",		0,3,11,1,237,81	,	}	,	}	,
				{	{"S�m Hoang Phi Tinh �o�t H�n/chayvk",				0,1,0,41,189,83	,	}	,		
					{"S�m Hoang KimTi�n Li�n Ho�n Gi�p",			0,2,39,1,201,83	,	}	,		
					{"S�m Hoang H�n Gi�o Y�u Th�c",				0,6,11,1,213,83	,	}	,		
					{"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",		0,9,8,1,231,83	,	}	,		
					{"S�m Hoang Tinh V�n Phi L� ",					0,5,12,1,219,83	,	}	,	}	,	
				{	{"B�ng H�n ��n Ch� Phi �ao/chayvk",					0,1,1,21,189,82	,	}	,		
					{"B�ng H�n Huy�n Y Th�c Gi�p",					0,2,38,1,201,82	,	}	,		
					{"B�ng H�n T�m Ti�n Y�u Kh�u",					0,6,10,1,213,82	,	}	,		
					{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",			0,9,7,1,231,82	,	}	,		
					{"B�ng H�n Nguy�t �nh Ngoa",					0,5,11,1,219,82	,	}	,	}	,
				{	{"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",			0,7,17,1,195,84	,	}	,		
					{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",			0,4,7,1,225,84	,	}	,		
					{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",			0,3,10,1,237,84	,	}	,		
					{"��a Ph�ch Kh�u T�m tr�c",					0,8,8,1,207,84	,	}	,		
					{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",			0,5,10,1,219,84	,	}	,	}	,
			},
			{												
				{	{"��ch Kh�i L�c Ng�c Tr��ng/chayvk",					0,0,2,121,189,94	,	}	,		
					{"��ch Kh�i C�u ��i C�i Y",					0,2,46,1,201,94	,	}	,		
					{"��ch Kh�i Tri�n M�ng y�u ��i",				0,6,18,1,213,94	,	}	,		
					{"��ch Kh�i C�u T�ch B� H� uy�n",				0,8,16,1,207,94	,	}	,		
					{"��ch Kh�i Th�o Gian Th�ch gi�i",				0,3,20,1,237,94	,	}	,	}	,
				{	{"��ng C�u Phi Long ��u ho�n",					0,7,22,1,195,93	,	}	,		
					{"��ng C�u Gi�ng Long C�i Y",					0,2,45,1,201,93	,	}	,		
					{"��ng C�u Ti�m Long Y�u ��i",					0,6,17,1,213,93	,	}	,		
					{"��ng C�u Kh�ng Long H� Uy�n",				0,8,15,1,207,93	,	}	,		
					{"��ng C�u Ki�n Long Ban Ch� ",				0,3,19,1,237,93	,	}	,	}	,
			},
			{												
				{	{"Ma S�t Qu� C�c U Minh Th��ng/chayvk",				0,0,3,121,189,96	,	}	,		
					{"Ma S�t T�n D��ng �nh Huy�t Gi�p",			0,2,47,1,201,96	,	}	,		
					{"Ma S�t X�ch K� T�a Y�u Kh�u",				0,6,20,1,213,96	,	}	,		
					{"Ma S�t C� H�a Li�u Thi�n uy�n",				0,8,18,1,207,96	,	}	,		
					{"Ma S�t V�n Long Th� Ch�u gi�i",				0,3,22,1,237,96	,	}	,	}	,
				{	{"Ma Ho�ng Kim Gi�p Kh�i",						0,7,23,1,195,97	,	}	,		
					{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",			0,4,12,1,225,97	,	}	,		
					{"Ma Ho�ng Kh� C�c Th�c y�u ��i",				0,6,19,1,213,97	,	}	,		
					{"Ma Ho�ng Huy�t Y Th� Tr�c",					0,8,17,1,207,97	,	}	,		
					{"Ma Ho�ng ��ng ��p Ngoa",						0,5,17,1,219,97,	}	,	}	,
				{	{"Ma Th� Li�t Di�m Qu�n Mi�n",					0,7,24,1,195,95	,	}	,		
					{"Ma Th� L� Ma Ph� T�m Li�n",					0,4,13,1,225,95	,	}	,		
					{"Ma Th� Nghi�p H�a U Minh Gi�i",				0,3,21,1,237,95	,	}	,		
					{"Ma Th� Huy�t Ng�c Th�t S�t B�i",				0,9,11,1,231,95	,	}	,		
					{"Ma Th� s�n  H�i Phi H�ng L� ",				0,5,18,1,219,95	,	}	,	}	,
			},
			{												
				{	{"C�p Phong Ch�n V� Ki�m/chayvk",						0,0,0,171,189,98	,	}	,		
					{"C�p Phong Tam Thanh Ph� ",					0,4,14,1,225,98	,	}	,		
					{"C�p Phong Huy�n Ti Tam �o�n c�m",			0,6,21,1,213,98	,	}	,		
					{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",		0,9,12,1,231,98	,	}	,		
					{"C�p Phong Thanh T�ng Ph�p gi�i",				0,3,23,1,237,98	,	}	,	}	,
				{	{"L�ng Nh�c Th�i C�c Ki�m/chayvk",					0,0,0,121,189,99	,	}	,		
					{"L�ng Nh�c V� Ng� ��o b�o",					0,2,48,1,201,99	,	}	,		
					{"L�ng Nh�c N� L�i Gi�i",						0,3,24,1,237,99	,	}	,		
					{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",			0,9,13,1,231,99	,	}	,		
					{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",		0,3,25,1,237,99	,	}	,	}	,
			},
			{												
				{	{"S��ng Tinh Thi�n Ni�n H�n Thi�t",			0,0,1,151,189,101	,	}	,		
					{"S��ng Tinh Ng�o S��ng ��o b�o",				0,2,49,1,201,101	,	}	,		
					{"S��ng Tinh Thanh Phong L� ��i",				0,6,22,1,213,101	,	}	,		
					{"S��ng Tinh Thi�n Tinh B�ng Tinh th� ",		0,8,19,1,207,101	,	}	,		
					{"S��ng Tinh Phong B�o ch� ho�n",				0,3,27,1,237,101	,	}	,	}	,
				{	{"L�i Khung H�n Tung B�ng B�ch quan",			0,7,26,1,195,100	,	}	,		
					{"L�i Khung Thi�n ��a H� ph� ",				0,4,16,1,225,100	,	}	,		
					{"L�i Khung Phong L�i Thanh C�m ��i",			0,6,23,1,213,100	,	}	,		
					{"L�i Khung Linh Ng�c U�n L�i",				0,9,15,1,231,100	,	}	,		
					{"L�i Khung C�u Thi�n D�n L�i gi�i",			0,3,28,1,237,100	,	}	,	}	,
				{	{"V� �o B�c Minh ��o qu�n",					0,7,25,1,195,102	,	}	,		
					{"V� �o Ki B�n ph� ch� ",						0,5,19,1,219,102	,	}	,		
					{"V� �o Th�c T�m ch� ho�n",					0,3,26,1,237,102	,	}	,		
					{"V� �o Thanh �nh Huy�n Ng�c B�i",				0,9,14,1,231,102	,	}	,		
					{"V� �o Tung Phong Tuy�t �nh ngoa",			0,5,19,1,219,102	,	}	,	}	,
				},										
		}
function trangbihkvk(nSel) -- no loi ham nay ma
local nFactionId = GetTaskTemp(FACTION);
	SetTaskTemp(Line, 0); -- reset task before set
	local nRow = nSel + 1;
	SetTaskTemp(Line,nRow);
	Say(FirstSay,2,
	TAB_DOMONPHAIvk[nFactionId][nRow][1][1],
	-- TAB_DOMONPHAIvk[nFactionId][nRow][2][1],
	-- TAB_DOMONPHAIvk[nFactionId][nRow][3][1],
	-- TAB_DOMONPHAIvk[nFactionId][nRow][4][1],
	-- TAB_DOMONPHAIvk[nFactionId][nRow][5][1],
	Finally)

end
		
		
function chayvk(nSel)
local nFactionId = GetTaskTemp(FACTION);
local nLine = GetTaskTemp(Line);
local nRow = nSel + 1;

		AddItem(TAB_DOMONPHAIvk[nFactionId][nLine][nRow][2],TAB_DOMONPHAIvk[nFactionId][nLine][nRow][3],TAB_DOMONPHAIvk[nFactionId][nLine][nRow][4],TAB_DOMONPHAIvk[nFactionId][nLine][nRow][5],0,0,0)
					Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i ")	
			local nMoney = 20000000;
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
				for i = 1,3 do DelItemBox(255)end		
				Pay(nMoney)
end