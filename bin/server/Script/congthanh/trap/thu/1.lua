function main()
w,x,y = GetWorldPos()
if GetCurCamp() == 2 then
	SetPosU(x+2,y+2)
	Msg2Player("Khu vuc khong the vao !")
end
end