
mangskill = {
{1,14},
{1,10},
{1,8},
{1,4},
{1,6},
{1,15},
{1,16},
{1,20},
{1,271},
{1,11},
{1,19},
{1,273},
{1,21},
{1,350},
{1,351},
{1,353},
{1,412},
{2,34},
{2,30},
{2,29},
{2,26},
{2,23},
{2,24},
{2,33},
{2,37},
{2,35},
{2,31},
{2,40},
{2,42},
{2,36},
{2,32},
{2,41},
{2,325},
{2,347},
{2,345},
{2,414},
{3,45},
{3,43},
{3,462},
{3,464},
{3,436},
{3,434},
{3,439},
{3,50},
{3,54},
{3,47},
{3,48},
{3,249},
{3,58},
{3,357},
{3,399},
{3,355},
{3,358},
{3,302},
{3,416},
{4,63},
{4,62},
{4,65},
{4,60},
{4,67},
{4,70},
{4,66},
{4,68},
{4,333},
{4,64},
{4,69},
{4,336},
{4,73},
{4,72},
{4,75},
{4,71},
{4,74},
{4,327},
{4,359},
{4,361},
{4,418},
{5,85},
{5,80},
{5,77},
{5,79},
{5,93},
{5,334},
{5,82},
{5,89},
{5,86},
{5,92},
{5,252},
{5,88},
{5,91},
{5,282},
{5,291},
{5,374},
{5,370},
{5,420},
{6,99},
{6,102},
{6,95},
{6,97},
{6,269},
{6,105},
{6,113},
{6,100},
{6,109},
{6,114},
{6,108},
{6,111},
{6,377},
{6,378},
{6,422},
{7,122},
{7,119},
{7,116},
{7,115},
{7,129},
{7,274},
{7,124},
{7,277},
{7,128},
{7,125},
{7,130},
{7,335},
{7,362},
{7,389},
{7,424},
{8,135},
{8,145},
{8,132},
{8,131},
{8,136},
{8,137},
{8,141},
{8,135},
{8,138},
{8,140},
{8,364},
{8,143},
{8,150},
{8,142},
{8,148},
{8,328},
{8,365},
{8,367},
{8,426},
{9,153},
{9,155},
{9,152},
{9,151},
{9,159},
{9,164},
{9,158},
{9,160},
{9,157},
{9,166},
{9,165},
{9,267},
{9,380},
{9,382},
{9,428},
{10,169},
{10,179},
{10,167},
{10,168},
{10,338},
{10,171},
{10,174},
{10,178},
{10,172},
{10,339},
{10,173},
{10,175},
{10,181},
{10,176},
{10,90},
{10,275},
{10,182},
{10,472},
{10,329},
{10,385},
{10,384},
{10,430},
}

Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

function mp()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	else
	return 0
	end
end;

function check()
return 0
end

function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
mangtn = {
{35,25,25,15},
{20,35,20,25},
{25,25,25,25},
{30,20,30,20},
{20,15,25,40},
}

function checkruapk()
end

function xuly()
end
