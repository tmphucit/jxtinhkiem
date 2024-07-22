function main()



SayNew("<color=green>Nguoi muon tro ve Ba Lang Huyen sao ?<color>",2,"Ta muon tro ve Ba Lang Huyen/vblh","Ta chi ghe tham thoi/no")




end


function no()


end




function vblh()


SetPunish(1)
SetFightState(0)
SetDeathScript("");

SetCamp(GetTask(151))
SetCurCamp(GetTask(151))
LeaveTeam()
SetTask(150,0)
SetTask(156,0)
SetTask(157,0)
NewWorld(53, 200*8, 200*16);
SetRevPos(19);
SetTask(30,0)

Msg2Player("Ban da tro ve Ba Lang Huyen.")


end