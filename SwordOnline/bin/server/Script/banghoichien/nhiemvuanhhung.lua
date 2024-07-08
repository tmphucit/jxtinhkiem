function main()
SayNew("Ng­¬i muèn ta gióp g× ?",3,
"NhËn nhiÖm vô Anh Hïng /nhannhiemvu",
"Rêi khái Tr­êng Ca M«n /roikhoitruongcamon",
"Tho¸t./no")
end

function nhannhiemvu()
Talk(1,"","TÝnh n¨ng sÏ cËp nhËt trong thêi gian s¾p tíi !")
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