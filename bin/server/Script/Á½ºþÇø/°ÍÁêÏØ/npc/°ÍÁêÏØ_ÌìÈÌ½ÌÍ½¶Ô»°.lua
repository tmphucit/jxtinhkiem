
Include("//script//faction49//main_faction.lua")

function main()
W,X,Y = GetWorldPos()
if W == 53 then
	if GetFaction() == "" then
		SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi co muon tham gia vao mon phai <color="..colorS(3)..">Thien Nhan Giao<color> hay khong?","Vang toi muon tham gia vao Thien Nhan Giao./nhapphai","Thoat./Exit"})
	elseif GetFaction() == "Thien Nhan Giao" then
			if GetTask(TaskTN) ~= 60 then
				if GetLevel() >= 60 then
				SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi muon lam gi ? Nguoi da la de tu cua Thien Nhan Giao roi nguoi muon xuat su a ?","Vang ta muon hoc vo cong mon phai./HocSkill","Vang ta muon xuat su./xuatsu","Thoat./Exit"})
				else
				SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi muon lam gi..? hien tai nguoi co muon hoc hoi them vo cong cua mon phai...?","Vang ta muon hoc vo cong mon phai./HocSkill","Thoat./Exit"})
				end
			else
				SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Chao "..GetName().." nguoi muon quay tro ve Mon Phai ?","Dung vay./quayve","Thoat./Exit"})
			end
	elseif GetFaction() ~= "Thien Nhan Giao" then
			Talk(1,"","<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi co biet Thien Nhan Giao xua nay khong he ua thich bon Nga Mi va Thuy Yen...?")
	end
else
	if GetFaction() == "" then
		SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi co muon tham gia vao mon phai <color="..colorS(3)..">Thien Nhan Giao<color> hay khong?","Vang toi muon tham gia vao Thien Nhan Giao./nhapphai","Thoat./Exit"})
	elseif GetFaction() == "Thien Nhan Giao" then
			if GetTask(TaskTN) ~= 60 then
				if GetLevel() >= 60 then
				SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi muon lam gi ? Nguoi da la de tu cua Thien Nhan Giao roi nguoi muon xuat su a ?","Vang ta muon hoc vo cong mon phai./HocSkill","Vang ta muon xuat su./xuatsu","Thoat./Exit"})
				else
				SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi muon lam gi..? hien tai nguoi co muon hoc hoi them vo cong cua mon phai...?","Vang ta muon hoc vo cong mon phai./HocSkill","Thoat./Exit"})
				end
			else
				SayEx({"<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Chao "..GetName().." nguoi muon quay tro ve Mon Phai ?","Dung vay./quayve","Thoat./Exit"})
			end
	elseif GetFaction() ~= "Thien Nhan Giao" then
			Talk(1,"","<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi co biet Thien Nhan Giao xua nay khong he ua thich bon Nga Mi va Thuy Yen...?")
	end
end
end;


function nhapphai()
if GetCamp() == 0 then
	if GetLevel() < 10 then
		MsgEx("<color="..colorS()..">Thien Nhan Giao Truong Mon<color> : Nguoi hay luyen tap den <color="..colorS(1)..">cap do 10<color> roi hay quay lai day de tim ta...",1)
	else
	ToBeConT()
	end
else
SayEx({"<color="..colorS()..">Nguoi da gia nhap mon phai khac khong the tiep tuc gia nhap vao mon phai cua ta...","Ket thuc doi thoai./Exit"})
end
end;

function ToBeConT()
JoinFaction(8)
end;

function xuatsu()
LeFaction(TaskTN,TienXuatSu,"Ban da roi khoi mon phai Thien Nhan Giao...Hay co gang phat duong quang dai con duong su nghiep cua minh.")
end;

function quayve()
ReFaction(TaskTN,2,TienXuatSu,"Chuc mung "..GetName().." da tro ve mon phai Thien Nhan Giao...")
end;

function HocSkill()
	if GetLevel() < 90 then
		LearnSkillFaction()
	Msg2Player("Chao mung ban gia nhap mon phai Thien Nhan.")
	else
		LearnSkillFaction()
	Msg2Player("Chuc Mung Ban Hoc Xong Ky Nang 9x")
	end
end;