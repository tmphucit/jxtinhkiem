function main(nObjIdx)
	local nObjValue = GetObjValue(nObjIdx);
	if(nObjValue == 1) then
		Talk(1,"","Ba L�ng huy�n <---> V� L�ng S�n");
	elseif(nObjValue == 2) then
		Talk(1,"","Ba L�ng huy�n <---> Mi�u L�nh");
	elseif(nObjValue == 3) then
		Talk(1,"","Ba L�ng huy�n <---> Nam Nh�c tr�n");
	end
end;