--========�ļ�����==================================--
--�ļ�����string.lua
--���ߣ�yfeng
--�������ڣ�2004-6-1
--����޸����ڣ�2005-1-24
--����������
--	��չluaδ�ṩ���ַ���������
--
--��Ϸ�ű���������Ե�����
--��ɽ����ɷ����޹�˾��copyright 1992-2005
--==================================================--

if not STRING_HEAD then
STRING_HEAD = 1


--��������������replace()��split()��join()������һЩ�׶ˣ���common.lua�����¶���������ͬ������
--Ϊ�˱��Ȿ�ļ���common.lua�еĺ������ǵ��������˴������ж�
--by fanzai	2005-12-28 20:46
if (not COMMON_HEAD) then

--========��������==================================--
--����ԭ�Σ�replace(str,pattern,s)
--���ߣ�yfeng
--�������ڣ�2005-1-27
--����޸����ڣ�2005-1-27
--����������
--	���ַ���s�滻�ַ���str�е�pattern
--������
--	str��Դ�ַ���n
--	pattern��Ҫ�滻���ַ���
--	s���滻pattern���ַ���
--����ֵ��
--	�滻����ַ�����
--������
--	��
--==================================================--
function replace(str,pattern,s)
	local startS,endS = strfind(str,pattern)
	while(startS) do
		str = strsub(str,1,startS-1)..s..strsub(str,endS+1,strlen(str))
		startS,endS = strfind(str,pattern)
	end
	return str
end
--========��������==================================--
--����ԭ�Σ�split(str,splitor)
--���ߣ�yfeng
--�������ڣ�2004-6-1
--����޸����ڣ�2004-6-1
--����������
--	���ַ���str�÷��ѷ�splitor���ѳ�������ʽ
--������
--	str�������ѵ��ַ���
--	splitor�����ѷ�,����ò���û�У�Ĭ��Ϊ��,��
--����ֵ��
--	�����ѵ����飮����ַ���str��û�а������ѷ�splitor��
--�򷵻ص�����ֻ�У���Ԫ�أ�Ԫ�����ݾ���str����
--������
--	local s = "aaa,bbb,ccc,ddd"
--	local arr = splite(s,",")
--	��arr������Ϊ��
--	arr[1]��aaa
--	arr[2]��bbb
--	arr[3]��ccc
--	arr[4]��ddd
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

--========��������==================================--
--����ԭ�Σ�join(arr,insertor)
--���ߣ�yfeng
--�������ڣ�2004-6-1
--����޸����ڣ�2005-1-24
--����������
--	��һά����arr�ڵ�Ԫ��������insertor����������arr��
--Ԫ�����Ϊ�ַ������ͣ���������Ҳ���ԣ�
--������
--	arr�������ӵ�����
--	insertor����������ò���û�У�Ĭ�ϲ����Ϊ��,��
--����ֵ��
--	��������֮����ַ��������arrû���κ�Ԫ�أ��򷵻�
--nil��
--������
--	local sarr = {"a","b","c","d"}
--	local s = join(sarr,",")
--	��s�Ľ��Ϊ
--	s��"a,b,c,d"
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

--========��������==================================--
--����ԭ�Σ�trim(str)
--���ߣ�yfeng
--�������ڣ�2004-6-1
--����޸����ڣ�2005-1-24
--����������
--	ɾ���ַ���str���˵Ŀհ׷��ţ����û�пհ׷��ţ���
--��ɾ����
--������
--	str����ɾ���հ׷��ŵ��ַ���
--����ֵ��
--	��ɾ���˿հ׷����ַ���
--������
--	local s = "   dddd     "
--	s = trim(s)
--	��s�Ľ��Ϊ��
--	s��"dddd"
--==================================================--
function trim(str)
	local start,last = strfind(str,"%S+.*%S+")
	print(tostring(start).."|"..tostring(last))
	if(start==nil or last==nil) then
		return str
	end
	return strsub(str,start,last)
end

---RGB����ת����16���Ʊ�ʾ���ַ���
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

---��������ֵת���ɲ�ɫ���к���
SERIESWORD = {
	{ "��",	"metal"	},
	{ "ľ",	"wood"	},
	{ "ˮ",	"water"	},
	{ "��",	"fire"	},
	{ "��",	"earth"	}
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
	if(sno < 0 or sno > 4) then return "��" end
	if (bUnColorful == 1) then
		return SERIESWORD[sno+1][1];
	else
		return toSeriesColorText(SERIESWORD[sno+1][1], sno);
	end
end
------------------------------

---���ȼ�����ת���ɲ�ɫ�ȼ�����
LEVELWORD = {
	"<color="..toColor(200,200,200).."> 1��<color>",
	"<color="..toColor(0,200,0).."> 2��<color>",
	"<color="..toColor(200,0,0).."> 3��<color>",
	"<color="..toColor(200,0,200).."> 4��<color>",
	"<color="..toColor(200,200,0).."> 5��<color>",
	"<color="..toColor(0,0,255).."> 6��<color>",
	"<color="..toColor(0,255,0).."> 7��<color>",
	"<color="..toColor(255,0,0).."> 8��<color>",
	"<color="..toColor(255,0,255).."> 9��<color>",
	"<color="..toColor(255,255,0)..">10��<color>",	
}

function toLevel(lvl)
	if(not tonumber(lvl)) then return "error" end
	if(lvl < 0 or lvl > 10) then return "δ֪" end
	return LEVELWORD[lvl]
end
---------------------------------

end
