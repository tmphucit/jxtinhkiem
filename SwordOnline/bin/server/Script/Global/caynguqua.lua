function OnDrop()
end

function OnDeath()

m = random(222,231)

for i=1,5 do
AddEventItem(m)
end
if m == 222 then
Msg2Player("B�n nh�n ���c 5 Tr�i M�ng C�u ")
elseif m == 223 then
Msg2Player("B�n nh�n ���c 5 Tr�i D�a ")
elseif m == 224 then
Msg2Player("B�n nh�n ���c 5 Tr�i �u �� ")
elseif m == 225 then
Msg2Player("B�n nh�n ���c 5 Tr�i Xo�i ")
elseif m == 226 then
Msg2Player("B�n nh�n ���c 5 Tr�i Sung ")
elseif m == 227 then
Msg2Player("B�n nh�n ���c 5 Tr�i Chu�i ")
elseif m == 228 then
Msg2Player("B�n nh�n ���c 5 Tr�i H�ng ")
elseif m == 229 then
Msg2Player("B�n nh�n ���c 5 Tr�i B��i ")
elseif m == 230 then
Msg2Player("B�n nh�n ���c 5 Tr�i Cam ")
elseif m == 231 then
Msg2Player("B�n nh�n ���c 5 Tr�i L�")
end
end