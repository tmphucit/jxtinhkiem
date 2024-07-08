---------------------------------------------------------
----Author: DNTmaster
---------------------------------------------------------
Include("\\Script\\global\\sourcejx49.lua");

TASKTULUYEN = 179
function Tay()

SayEx({"<color="..colorS()..">Phan Tang<color> : Chao "..GetName().." nguoi co muon duoc tay tuy hay khong ?\nNeu muon thi hay nhanh chon dieu nguoi muon lam...","Ta muon tay diem Ky Nang./KyNangClear","Ta muon roi khoi noi nay./Out_step1","Thoat./Exit"})

end;

function Doing()
TayTuy()
end;

function TayTuy()
TayDiem()
TaySkill()
ResetAll()
end;


function ResetAll()
diemkn = GetMagicPoint()
diemtn = GetProp()
AddMagicPoint(- diemkn)
AddProp(- diemtn)
point1 = GetTask(TaskTayTuyKinh)
point2 = GetTask(TaskVoLamMatTich)
lv = GetLevel()
pointThem1 = (((lv - 1)*5) + point1)
pointThem2 = ((lv - 1) + point2)
AddMagicPoint(pointThem2)
AddProp(pointThem1)
--CallSkillFaction()
Msg2Player(">>>Da tay diem thanh cong cho nhan vat<<<")
KickOutSelf()
end;

function TiemNangClear()
TayDiem()
ResetAp(1)
end;

function KyNangClear()
TaySkill()
ResetAp(2)
end;

function ResetAp(id)
	if id == 1 then
	diemtn = GetProp()
	AddProp(- diemtn)
	point1 = GetTask(TaskTayTuyKinh)
	pointThem1 = (((GetLevel() - 1)*5) + point1)
	AddProp(pointThem1)
	Msg2Player(">>>Da tay diem Tiem Nang thanh cong cho nhan vat<<<")
	KickOutSelf()
	elseif id == 2 then
	diemkn = GetMagicPoint()
	AddMagicPoint(- diemkn)
	point2 = GetTask(TaskVoLamMatTich)
	pointThem2 = ((GetLevel() - 1) + point2)
	AddMagicPoint(pointThem2)
	--CallSkillFaction()
	Msg2Player(">>>Da tay diem Ky Nang thanh cong cho nhan vat<<<")
	KickOutSelf()
	end
end;

function Out_step1()
SayEx({"<color="..colorS()..">Phan Tang<color> : Nguoi co that su muon <color="..colorS(4)..">roi khoi<color> noi nay hay khong ?\nPhai ton rat nhieu tien cua va vat pham moi co the den duoc noi nay...\nBan hay <color="..colorS(3)..">xac nhan<color> lai mot lan nua...","Ta dong y./Out_step2","Thoat./Exit"})
end;


function Out_step2()

MoveNPC(53,197,202,6,4,0,0);
SetRevPos(19);
Msg2Player("Ngoi Yen ! Dang tro ve Ba Lang Huyen...")
end;