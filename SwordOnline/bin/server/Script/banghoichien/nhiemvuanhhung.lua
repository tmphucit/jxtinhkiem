function main()
SayNew("Ng��i mu�n ta gi�p g� ?",3,
"Nh�n nhi�m v� Anh H�ng /nhannhiemvu",
"R�i kh�i Tr��ng Ca M�n /roikhoitruongcamon",
"Tho�t./no")
end

function nhannhiemvu()
Talk(1,"","T�nh n�ng s� c�p nh�t trong th�i gian s�p t�i !")
end


function roikhoitruongcamon()
sx = RandomNew(1,4)
if sx == 1 then
NewWorld(66,3543, 6205)
elseif sx == 2 then
NewWorld(66,3560, 6187)
elseif sx == 3 then
NewWorld(66,3580, 6209)
elseif sx == 4 then
NewWorld(66,3551, 6239)
end
SetFightState(0)
end