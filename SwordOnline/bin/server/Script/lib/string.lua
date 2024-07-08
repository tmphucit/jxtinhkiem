--========文件定义==================================--
--文件名：string.lua
--作者：yfeng
--创建日期：2004-6-1
--最后修改日期：2005-1-24
--功能叙述：
--	扩展lua未提供的字符串处理函数
--
--游戏脚本·剑侠情缘网络版
--金山软件股份有限公司，copyright 1992-2005
--==================================================--

if not STRING_HEAD then
STRING_HEAD = 1


--以下三个函数（replace()、split()、join()）存在一些弊端，故common.lua中重新定义了三个同名函数
--为了避免本文件将common.lua中的函数覆盖掉，加上了此条件判断
--by fanzai	2005-12-28 20:46
if (not COMMON_HEAD) then

--========函数定义==================================--
--函数原形：replace(str,pattern,s)
--作者：yfeng
--创建日期：2005-1-27
--最后修改日期：2005-1-27
--功能叙述：
--	用字符串s替换字符串str中的pattern
--参数：
--	str：源字符串n
--	pattern：要替换的字符串
--	s：替换pattern的字符串
--返回值：
--	替换后的字符串。
--用例：
--	无
--==================================================--
function replace(str,pattern,s)
	local startS,endS = strfind(str,pattern)
	while(startS) do
		str = strsub(str,1,startS-1)..s..strsub(str,endS+1,strlen(str))
		startS,endS = strfind(str,pattern)
	end
	return str
end
--========函数定义==================================--
--函数原形：split(str,splitor)
--作者：yfeng
--创建日期：2004-6-1
--最后修改日期：2004-6-1
--功能叙述：
--	把字符串str用分裂符splitor分裂成数组形式
--参数：
--	str：被分裂的字符串
--	splitor：分裂符,如果该参数没有，默认为＂,＂
--返回值：
--	被分裂的数组．如果字符串str中没有包含分裂符splitor，
--则返回的数组只有１个元素，元素内容就是str本身．
--用例：
--	local s = "aaa,bbb,ccc,ddd"
--	local arr = splite(s,",")
--	则，arr的内容为：
--	arr[1]：aaa
--	arr[2]：bbb
--	arr[3]：ccc
--	arr[4]：ddd
--==================================================--
function split(str,splitor)
	if(splitor==nil) then
		splitor=","
	end
	local strArray={}
	local strStart=1
	local splitorLen = strlen(splitor)
	local index=strfind(str,splitor,strStart)
	if(index==nil) then
		strArray[1]=str
		return strArray
	end
	local i=1
	while index do
		strArray[i]=strsub(str,strStart,index-1)
		i=i+1
		strStart=index+splitorLen
		index = strfind(str,splitor,strStart)
	end
	strArray[i]=strsub(str,strStart,strlen(str))
	return strArray
end

--========函数定义==================================--
--函数原形：join(arr,insertor)
--作者：yfeng
--创建日期：2004-6-1
--最后修改日期：2005-1-24
--功能叙述：
--	把一维数组arr内的元素内容用insertor连接起来，arr的
--元素最好为字符串类型，数字类型也可以．
--参数：
--	arr：被连接的数组
--	insertor：插入符，该参数没有，默认插入符为＂,＂
--返回值：
--	返回连接之后的字符串．如果arr没有任何元素，则返回
--nil．
--用例：
--	local sarr = {"a","b","c","d"}
--	local s = join(sarr,",")
--	则：s的结果为
--	s："a,b,c,d"
--==================================================--
function join(arr,insertor)
	local maxItem = getn(arr)
	if(maxItem ==0) then
		return nil
	end
	if(insertor==nil) then
		insertor=","
	end
	local str=""
	for i=1,maxItem-1 do
		if(not arr[i]) then 
			str= str..insertor
		else
			str = str..tostring(arr[i])..insertor
		end
	end
	if(arr[maxItem]) then 
		str = str..tostring(arr[maxItem])
	end
	return str
end

end	--if (not COMMON_HEAD) then

--========函数定义==================================--
--函数原形：trim(str)
--作者：yfeng
--创建日期：2004-6-1
--最后修改日期：2005-1-24
--功能叙述：
--	删除字符串str两端的空白符号，如果没有空白符号，则
--不删除．
--参数：
--	str：被删除空白符号的字符串
--返回值：
--	被删除了空白符的字符串
--用例：
--	local s = "   dddd     "
--	s = trim(s)
--	则，s的结果为：
--	s："dddd"
--==================================================--
function trim(str)
	local start,last = strfind(str,"%S+.*%S+")
	print(tostring(start).."|"..tostring(last))
	if(start==nil or last==nil) then
		return str
	end
	return strsub(str,start,last)
end

---RGB数字转换成16进制表示的字符串
function toColor(r,g,b)
	if(not tonumber(r)) then r=0 end
	if(not tonumber(g)) then g=0 end
	if(not tonumber(b)) then b=0 end
	if(r<0) then r=0 end
	if(g<0) then g=0 end
	if(b<0) then g=0 end
	if(r>255) then r=255 end
	if(g>255) then g=255 end
	if(b>255) then b=255 end
	return r*65536+g*256+b
end
-------------------------------------

---将五行数值转换成彩色五行汉字
SERIESWORD = {
	{ "金",	"metal"	},
	{ "木",	"wood"	},
	{ "水",	"water"	},
	{ "火",	"fire"	},
	{ "土",	"earth"	}
}

function toSeriesColorText(text, sno)
	if (sno < 0 or sno >= getn(SERIESWORD)) then
		return text;
	else
		return "<color="..SERIESWORD[sno+1][2]..">"..text.."<color>";
	end
end

function toSeries(sno, bUnColorful)
	if(not tonumber(sno)) then return "error" end
	if(sno < 0 or sno > 4) then return "无" end
	if (bUnColorful == 1) then
		return SERIESWORD[sno+1][1];
	else
		return toSeriesColorText(SERIESWORD[sno+1][1], sno);
	end
end
------------------------------

---将等级数字转换成彩色等级汉字
LEVELWORD = {
	"<color="..toColor(200,200,200).."> 1级<color>",
	"<color="..toColor(0,200,0).."> 2级<color>",
	"<color="..toColor(200,0,0).."> 3级<color>",
	"<color="..toColor(200,0,200).."> 4级<color>",
	"<color="..toColor(200,200,0).."> 5级<color>",
	"<color="..toColor(0,0,255).."> 6级<color>",
	"<color="..toColor(0,255,0).."> 7级<color>",
	"<color="..toColor(255,0,0).."> 8级<color>",
	"<color="..toColor(255,0,255).."> 9级<color>",
	"<color="..toColor(255,255,0)..">10级<color>",	
}

function toLevel(lvl)
	if(not tonumber(lvl)) then return "error" end
	if(lvl < 0 or lvl > 10) then return "未知" end
	return LEVELWORD[lvl]
end
---------------------------------

end
