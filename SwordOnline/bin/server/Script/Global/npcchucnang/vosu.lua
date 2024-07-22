--hoangnhk
Include("\\script\\header\\taskid.lua");
NOT_ENOUGH = "Ng��i luy�n t�p v�n ch�a ��. Ti�p theo h�y �i ��nh ";

function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if(w == 20) then
		local nTaskValue = GetTask(TASK_NVDANHVONG);
		local nTask = GetNumber(1,nTaskValue,9);
		if(nTask == 1) then
		SetTask(TASK_NVDANHVONG, SetNumber(1,nTaskValue,9,2));
		Talk(1,"",12939)
		Msg2Player("V� s� ��ng � d�y v� mi�n ph� cho H� T�. Mau quay v� b�o cho cha H� T� bi�t.")
		return end;
	end;
	SayNew("<npc>: D�o n�y kh�ng hi�u sao l�i c� nhi�u ng��i ��n t�m ta th�! ��ng n�i l� ng��i c�ng t�m ta nh�!",3,
	"Ta �ang c� nhi�m v� b�n th�t t��i/nvthittuoi",
	"Ta mu�n h�c khinh c�ng/hockcong",
	"Kh�ng c� g�! Ch� l� �i ngang qua th�i!/no")
end;

function nvthittuoi()
	SayNew("LINK:<npc>",0,"<npc>: Ng��i hi�n �ang c� "..GetTask(TASK_THITTUOI).." mi�ng th�t t��i. Ta mu�n ng��i ra ngo�i r�ng t�m th�m m�t �t n�a. Mang v� ��y ta s� t�ng ng��i m�t s� �i�m kinh nghi�m, c� ��ng � kh�ng?",
	3,
	"���ng nhi�n! D� sao ta c�ng mu�n t�m ch�t �t kinh nghi�m/nhannv",
	"Ta ��n �� giao th�t/tranv",
	"�� ta suy ngh� l�i!/no")
end

function nhannv()
	local nTask = GetNumber(2,GetTask(TASK_DUNGCHUNG2),4);
	if(nTask > 0) then
		SayNew("Ng��i �� nh�n nhi�m v� t�m th�t t��i r�i! Kh�ng c�n l�m n�a! T�m "..nTask.." mi�ng th�t t��i �i!","K�t th�c ��i tho�i/no")
	else
		nTask = random(5,20);
		SetTask(TASK_DUNGCHUNG2,SetNumber(2,GetTask(TASK_DUNGCHUNG2),4,nTask));
		SayNew("Hi�n gi� ta c�n "..nTask.." mi�ng th�t t��i, h�y �i t�m gi�p ta!.",1,"K�t th�c ��i tho�i/no")
		AddNote(13,1,"T�m cho v� s� "..nTask.." mi�ng th�t t��i");
	end
end


function tranv()
	local nTaskValue = GetTask(TASK_DUNGCHUNG2);
	local nTask = GetNumber(2,nTaskValue,4);
	local nNum = GetNumber(1,nTaskValue,6);
	if (nTask ~= 0) then
		if (GetTask(TASK_THITTUOI) >= nTask) then
			if (GetGameTime() >= GetTask(TASK_THOIGIAN8)) and (nNum >= 0) and  (nNum < 3) and  (nTask >= 5) then
				AddRepute(1)
				Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng.")
				nNum = nNum + 1
				if (nNum == 3) then
					SetTask(TASK_DUNGCHUNG2,SetNumber(1,GetTask(TASK_DUNGCHUNG2),6,0))
					SetTask(TASK_THOIGIAN8,GetGameTime()+43200)
				else
					SetTask(TASK_DUNGCHUNG2,SetNumber(1,GetTask(TASK_DUNGCHUNG2),6,nNum))
					SetTask(TASK_THOIGIAN8,GetGameTime())
				end
			end
			AddOwnExp(nTask*10)
			Earn(nTask*20)
			SetTask(TASK_THITTUOI,GetTask(TASK_THITTUOI)-nTask)
			SetTask(TASK_DUNGCHUNG2,SetNumber(2,GetTask(TASK_DUNGCHUNG2),4,0))
			Talk(1,"","Th�t xu�t s�c! H�y nh�n l�y ti�n v� �i�m kinh nghi�m!")
		else 
			SayNew("Hi�n gi� ta c�n "..nTask.." mi�ng th�t t��i. Ng��i hi�n �ang c� "..GetTask(TASK_THITTUOI).." mi�ng, c� g�ng th�m �i!",1,"K�t th�c ��i tho�i/no")
		end
	else 
		Talk(1,"","V� S�: Ch�a l�m xong nhi�m v� m� d�m ��n g�t ta �? Ng��i ��u, ti�n kh�ch!")
	end
end

function hockcong()
	local nTaskValue = GetTask(TASK_DUNGCHUNG);
	local nTask = GetNumber(1,nTaskValue,7);
	if (GetLevel() >= 2) then
		if(nTask == 0) then
		SayNew("V� h�c 'ngo�i luy�n g�n c�t, trong luy�n kh� c�ng'. H�c v� ph�i t�p c� trong l�n ngo�i! Xem ng��i t� ch�t th�ng minh, c� mu�n h�c v�i chi�u ph�ng th�n kh�ng? H�c ph� ch� c� 100 l��ng", 2, "H�c/kcong", "Kh�ng h�c/no")
		else
		kcong();
		end;
	else
		Talk(1,"","H� luy�n tam ph�c, ��ng luy�n tam c�u. V� ngh� kh�ng ph�i m�t ng�y m� th�nh!")
	end
end;

function kcong()
	local nTaskValue = GetTask(TASK_DUNGCHUNG);
	local nTask = GetNumber(1,nTaskValue,7);
	local nTime = GetNumber(2,nTaskValue,3);
	if(nTask == 0) then
		if(GetCash() < 100) then
		Talk(1,"",10259)
		else
		Pay(100)
		nTaskValue = SetNumber(1,nTaskValue,7,1)
		nTaskValue = SetNumber(2,nTaskValue,3,0)
		SetTask(TASK_DUNGCHUNG, nTaskValue)
		Talk(1,"",10258)
		end
	elseif(nTask == 1) then	--coc go
		if(nTime < 50) then
		Talk(1,"",NOT_ENOUGH..(50-nTime).." c�c g� �i!")
		else
		nTaskValue = SetNumber(1,nTaskValue,7,2)
		nTaskValue = SetNumber(2,nTaskValue,3,0)
		SetTask(TASK_DUNGCHUNG, nTaskValue)
		Talk(1,"",10253)
		end
	elseif(nTask == 2) then	--bao cat
		if(nTime < 50) then
		Talk(1,"",NOT_ENOUGH..(50-nTime).." bao c�t �i!")
		else
		nTaskValue = SetNumber(1,nTaskValue,7,3)
		nTaskValue = SetNumber(2,nTaskValue,3,0)
		SetTask(TASK_DUNGCHUNG, nTaskValue)
		Talk(1,"",10254)
		end
	elseif(nTask == 3) then	--moc nhan
		if(nTime < 50) then
		Talk(1,"",NOT_ENOUGH..(50-nTime).." m�c nh�n �i!")
		else
		nTaskValue = SetNumber(1,nTaskValue,7,4)
		nTaskValue = SetNumber(2,nTaskValue,3,0)
		SetTask(TASK_DUNGCHUNG, nTaskValue)
		AddMagic(210,1)
		Msg2Player("Ch�c m�ng b�n �� luy�n th�nh Khinh C�ng.")
		Talk(1,"",10255)
		end
	else	--da hoc xong
		Talk(1,"",10256)
	end
end;

function no()
end;