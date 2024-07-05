--�������������ڼ��㼼��������
--���巽����
--����1�������ȣ��������ٶȣ��������ظ��˺���������Χ���������Ӧ�ȼ�������
-- SkillExp(i) = Exp1*a^(i-1)*time*range
function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end

SKILLS={
	

thieulam={
lifemax_p={{{1,20},{20,80}},{{1,16*18},{2,16*18}}},
meleedamagereturn_p={{{1,10},{20,30}},{{1,16*18},{2,16*18}}},
rangedamagereturn_p={{{1,10},{20,30}},{{1,16*18},{2,16*18}}},
skill_cost_v={{{1,100},{20,100}}},	
},

thienvuong={
allres_p={{{1,1},{20,10}},{{1,15*18},{2,15*18}}},
allresmax_p={{{1,1},{20,5}},{{1,15*18},{2,15*18}}},
lifereplenish_v={{{1,10},{20,100}},{{1,15*18},{2,15*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

duongmon={
castspeed_v={{{1,10},{20,55}},{{1,7*18},{2,7*18}}},
fastwalkrun_p={{{1,20},{20,80}},{{1,7*18},{2,7*18}}},
deadlystrikeenhance_p={{{1,5},{20,15}},{{1,7*18},{2,7*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

ngudoc={
woodskill_v={{{1,15},{20,105}},{{1,10*18},{2,10*18}}},
addpoisondamage_v={{{1,35},{30,285}},{{1,10*18},{2,10*18}}},
physicsres_p={{{1,10},{20,60}},{{1,10*18},{2,10*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

ngamy={
meleedamagereturn_v={{{1,30},{20,300}},{{1,18*18},{2,18*18}}},
rangedamagereturn_v={{{1,30},{20,300}},{{1,18*18},{2,18*18}}},
lifereplenish_v={{{1,50},{20,200}},{{1,15*18},{2,15*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

thuyyen={
deadlystrikeenhance_p={{{1,5},{20,25}},{{1,18*18},{2,18*18}}},
waterskill_v={{{1,300},{20,3500}},{{1,12*18},{2,18*18}}},
castspeed_v={{{1,6},{20,30}},{{1,12*18},{2,18*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

caibang={
fireskill_v={{{1,500},{20,2500}},{{1,12*18},{2,12*18}}},
addphysicsdamage_p={{{1,50},{20,750}},{{1,12*18},{2,12*18}}},
deadlystrikeenhance_p={{{1,5},{20,15}},{{1,12*18},{2,12*18}}},
skill_cost_v={{{1,100},{20,100}}},	
},

thiennhan={
adddefense_v={{{1,1000},{20,10000}},{{1,15*18},{2,15*18}}},
fireskill_v={{{1,200},{20,2000}},{{1,15*18},{2,15*18}}},
addphysicsdamage_p={{{1,300},{20,3000}},{{1,15*18},{2,15*18}}},
skill_cost_v={{{1,100},{20,100}}},	
},

vodang={
freezetimereduce_p={{{1,500},{20,500}},{{1,1*18},{20,8*18}}},
poisontimereduce_p={{{1,200},{20,200}},{{1,1*18},{20,8*18}}},
stuntimereduce_p={{{1,500},{20,500}},{{1,1*18},{20,8*18}}},
fasthitrecover_v={{{1,500},{20,500}},{{1,1*18},{20,8*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

conlon={
physicsarmor_v={{{1,99999999},{20,99999999}},{{1,1*18},{20,12*18}}},
coldarmor_v={{{1,99999999},{20,99999999}},{{1,1*18},{20,12*18}}},
firearmor_v={{{1,99999999},{20,99999999}},{{1,1*18},{20,12*18}}},
poisonarmor_v={{{1,99999999},{20,99999999}},{{1,1*18},{20,12*18}}},
lightingarmor_v={{{1,99999999},{20,99999999}},{{1,1*18},{20,12*18}}},
skill_cost_v={{{1,100},{20,100}}},		
},

knp={
staminamax_p={{{1,-100},{2,-100}},{{1,-1},{2,-1}}},
staminamax_v={{{1,100},{2,100}},{{1,-1},{2,-1}}},	
},

}
-----------------------------------------------
--Create by yfeng 2004-05-20
-----------------------------------------------

-----------------------------------------------
--����2���㣬�����κ���f(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--��x2=x1, ��x=c,��ֱ����һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--����2���㣬��2���κ���f(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--��x1����x2 < 0 ,y =0
--��x2=x1, ��x=c,��һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��extrac
function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

-----------------------------------------------
--����2���㣬��-2���κ���f(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--��x2����x1<0, y=0,
--��x1=x2,��x=c,��һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��extrac
function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--���������:Link(x,points)
--����points�ṩ��һϵ�е㣬�����ڵ��������������
--return yֵ
--x ����ֵ
--points �㼯��
--���磺points������{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}��ӳ��
function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

------------------------------------------------------
--�����趨��ʽ���£�
--SKILLS={
--	��������=	{
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		����������
--	}��
--	��������=	{
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		����������
--	}��
--	����������
--}
--�磺
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--ħ������physicsenhance_p����1��1��ʱΪ35��20��ʱΪ335�����߲��Ĭ������
--			[2]={{1,0},{20,0}},
--		},--û��[3]����ʾħ������physicsenhance_p����2��Ĭ��Ϊ�κ�ʱ����0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--�����������ܡ��������¡���ħ�����Ժ���ֵ
-----------------------------------------------------------
--����GetSkillLevelData(levelname, data, level)
--levelname��ħ����������
--data����������
--level�����ܵȼ�
--return������������Ϊdata�����ܵȼ�Ϊlevel
--			ʱ��ħ������levelname����������������ľ���ֵ
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	if(data==nil) then
		return ""
	end
	if(data == "") then
		return ""
	end
	if(SKILLS[data]==nil) then
		return ""
	end
	if(SKILLS[data][levelname]==nil) then
		return ""
	end
	if(SKILLS[data][levelname][1]==nil) then
		SKILLS[data][levelname][1]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][2]==nil) then
		SKILLS[data][levelname][2]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][3]==nil) then
		SKILLS[data][levelname][3]={{0,0},{20,0}}
	end
	p1=floor(Link(level,SKILLS[data][levelname][1]))
	p2=floor(Link(level,SKILLS[data][levelname][2]))
	p3=floor(Link(level,SKILLS[data][levelname][3]))
	return Param2String(p1,p2,p3)
end;


function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;

