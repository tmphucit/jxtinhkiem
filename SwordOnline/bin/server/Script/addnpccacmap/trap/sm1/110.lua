Include("\\script\\addnpccacmap\\trap\\mangtrap.lua")
function main(sel)
if GetLevel() < 90 then
	Talk(1,"","Ng��i kh�ng �� c�p 90, kh�ng th� �i qua")
	return
	end
sx = random(1,100)
if sx < 50 then
dichuyen(102)
else
dichuyen(103)
end
end