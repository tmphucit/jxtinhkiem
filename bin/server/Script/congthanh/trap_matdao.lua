function main()
if GetCurCamp() == 1 then

Msg2Player("B�n �� r�i th�nh an to�n !")
s = random(1,2)
if s == 1 then
NewWorld(36,1740,3506)
else
NewWorld(36,1835, 3398)
end

else
Msg2Player("M�t ��o ch� h� tr� cho b�n th� th�nh !")
end
end