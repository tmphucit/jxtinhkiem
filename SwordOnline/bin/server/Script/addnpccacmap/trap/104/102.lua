Include("\\script\\addnpccacmap\\trap\\mangtrap.lua")
function main(sel)
if GetLevel() < 70 then
	Talk(1,"","Ng��i kh�ng �� c�p 70, kh�ng th� �i qua")
	return
	end
dichuyen(42)
end