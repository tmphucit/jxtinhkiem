--hoangnhk
Include("\\script\\header\\repute_head.lua");

function main()
	SayNew(GetSex()==1 and 10101 or 10100, 2,
	"���c! �� ta xem th�/xem",
	"Kh�ng c�n ��u/no")
end;

function xem()
	if(GetCash() >= 5000) then
	Pay(5000)
	--Talk(1,"",10103);
	local nRepute = GetRepute()
	local nReputeLv = GetReputeLevel(nRepute) 
	if (nReputeLv == -1) then
	Talk(1,"",10103) 
	elseif (nReputeLv == 0) then 
	Talk(2,"","Kim long h� l� trong ao v�t, ng��i b�y gi� m�c d� m�t gi�i �o v�i, ng��i giang h� s� kh�ng bi�t, nh�ng gi� l�y ng�y gi�, t�t �em c� kinh thi�n ��ng ��a kh� n�ng",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 1) then 
	Talk(2,"","Th�n long ch�t hi�n trong cu�c s�ng, ng��i m�c d� s� xu�t mao l�, nh�ng t�t �em nhanh ch�ng qu�t kh�i, c� th�c chi s� s� r�t nhanh ch� � t�i l�c l��ng c�a ng��i",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 2) then 
	Talk(2,"","S� ph��ng l�ng c� h�ng h�c ch�, m�c d� � trong ch�n giang h� ng��i v�n ch� l� v� danh ti�u b�i, nh�ng v��t qua ph�m b�i ��i v�i ng��i m� n�i ch�ng qua l� ch�m tay c� th� ��ng chuy�n",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 3) then 
	Talk(2,"","Ti�m tu m��i t�i kh�ng ng��i h�i, � trong ch�n giang h� ng��i v�n y�n l�ng kh�ng nghe th�y, nh�ng ti�m ch�t �� bi�u l� kh�ng b� s�t, Nh�t Phi Tr�ng Thi�n ch�ng qua l� s�m mu�n chuy�n",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 4) then 
	Talk(2,"","�� tr�i qua ��ng ��o ma luy�n sau ��ch ng��i, �� �ang l�c m�i ng��i tr��c s� s� hi�n l� phong mang, giang h� b�y hi�p �� m� m�i ch� � t�i ng��i qu�t kh�i",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 5) then 
	Talk(2,"","Ng��i �� v��t qua gian nan nh�t kh�n kh� ��ch giai �o�n, ng��i danh ti�ng b�t ��u �nh h��ng ��n nh�ng ng��i chung quanh, ng��i nhi�u h�n ph�t hi�n n�ng l�c c�a ng��i",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 6) then 
	Talk(2,"","Ng��i qu�t kh�i �ang b� c�ng ng�y c�ng nhi�u ng��i coi tr�ng, trong ch�n giang h� ng��i danh ti�ng �� c�ng ng�y c�ng vang d�i, m�i ng��i b�t ��u th�t l�ng th�c � ��a ��i v�i ng��i n�i � nh� s�m b�n tai�",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 7) then 
	Talk(2,"","Ng��i �� c� nhi�u kinh nghi�m trong giang h�. B�n l�nh �� d�n th� hi�n, c�c anh h�ng hi�p ngh�a tr�n giang h� �� d�n d�n ch� � ��n ng��i.",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 8) then 
	Talk(2,"","Ng��i �� c� nhi�u kinh nghi�m trong giang h�. B�n l�nh �� d�n th� hi�n, c�c anh h�ng hi�p ngh�a tr�n giang h� �� d�n d�n ch� � ��n ng��i.",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	elseif (nReputeLv == 9) then 
	Talk(2,"","Danh v�ng giang h� �� t�ng l�n t�t ��nh, giang h� t�n ng��i l�: Nh�t ��i T�ng s�, V� L�m ��i Hi�p",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	else 
	Talk(2,"","Th�n l� nh�n v�t truy�n thuy�t ch�n giang h�, giang h� h�u b�i xem l� m�c ti�u ph�n ��u, ng��i nh� Th�n Long th�y ��u kh�ng th�y �u�i",format("Danh v�ng giang h� c�a ng��i hi�n t�i l� %d. Giang h� xem ng��i hi�n gi� l� <color=Red>%s ",nRepute,GetReputeStr(nReputeLv))) 
	end 
	else
		Talk(1,"",10102);
	end
end

function no()
end;