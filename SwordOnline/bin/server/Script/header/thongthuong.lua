Include("\\script\\header\\taskid.lua");
LEVEL_NORMAL = 120
EXP_NORMAL = 2000000
MONEY_NORMAL = 20000
MAX_NVTN = 3
THONGTHUONG_MONTER = {
	{321, {598,599,600,601}, 48},		--Tr��ng B�ch S�n Nam
	{322, {594,595,596,597}, 48},		--Tr��ng B�ch s�n b�c
	{75, {155,156}, 48},		--Kh�a Lang ��ng
	{225, {561,560,917}, 48},		--Sa M�c 1
	{226, {561,560,917}, 48},		--Sa M�c 2
	{227, {534,535,536,537,538}, 48},		--Sa M�c 3
	{336, {707,708}, 48},		--Phong L�ng ��
	{340, {703,704,705,706}, 48},		--M�c Cao Qu�t
	{93, {838,147,148}, 48},		--Ti�n c�c ��ng
	{124, {13,14}, 18},		--C�n vi�n ��ng
};

function ktnvthongthuong(NpcIndex)
	local nTaskValue = GetTask(TASK_NVTHONGTHUONG);
	local nMap = GetNumber(2,nTaskValue,1);
	if(nMap<=0) then
	return end;	
	local nNpcTempID = GetNumber(3,GetTask(TASK_NVTHONGTHUONG),3);		
	local nNpcNum = GetNumber(2,GetTask(TASK_NVTHONGTHUONG),2);
	local nCurNum = GetNumber(2,GetTask(TASK_NVTHONGTHUONG),3);
	local w,x,y=GetWorldPos();
	if(w==THONGTHUONG_MONTER[nMap][1]) then
		if(nNpcTempID == GetNpcTemplateID(NpcIndex)) then
			if(nCurNum <nNpcNum) then
				nCurNum=nCurNum+1;
				Msg2Player("��i hi�p �� ti�u di�t "..GetNpcTempName(nNpcTempID)..": <color=Yellow>"..nCurNum.."/"..nNpcNum.."");
				SetTask(TASK_NVTHONGTHUONG,SetNumber(2,GetTask(TASK_NVTHONGTHUONG),3,nCurNum));
			end;
		end;
	end;
end;