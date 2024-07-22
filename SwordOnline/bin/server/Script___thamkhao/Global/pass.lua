--Author: thaihoa91
Include("\\script\\Global\\passwords.lua");

function main()
w,X,Y = GetWorldPos()
if w == 53 then
SetRevPos(19)
Msg2Player("Ban da luu ruong Ba Lang Huyen !")
elseif w == 15 then
SetRevPos(10)
Msg2Player("Ban da luu ruong Tuong Duong !")
elseif w == 18 then
SetRevPos(11)
Msg2Player("Ban da luu ruong Thanh Do !")
elseif w == 17 then
SetRevPos(12)
Msg2Player("Ban da luu ruong Phuong Tuong !")

end
OpenBox();
end