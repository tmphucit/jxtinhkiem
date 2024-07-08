---Script by Ken Nguyen
--tong quan dai hoi
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\daihoihunganh.lua");

function main(NpcIndex)
	Say(15653,2,
		"Ta muèn rêi khái ®©y/rangoai",
		"Kh«ng cÇn/no")
end;

function rangoai()
	SubWorld = SubWorldID2Idx(960);
	if(GetMSRestTime(1,1) == 0) then
	return end
	local nTask = GetNumber(GetTask(TASK_NVST),9);
			NewWorld(THANHTHI_RETURNDH[nTask][1],
			THANHTHI_RETURNDH[nTask][2],THANHTHI_RETURNDH[nTask][3])
	SetLogoutRV(0)
end;

function no()
end;
