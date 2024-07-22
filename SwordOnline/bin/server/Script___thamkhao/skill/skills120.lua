--迭代函数，用于计算技能熟练度
--具体方法：
--根据1级熟练度，升级加速度，级数，重复伤害次数，范围，计算出相应等级熟练度
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
--根据2个点，求线形函数f(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--当x2=x1, 有x=c,该直线是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--根据2个点，求2次形函数f(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--当x1或者x2 < 0 ,y =0
--当x2=x1, 有x=c,是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：extrac
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
--根据2个点，求-2次形函数f(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--当x2或者x1<0, y=0,
--当x1=x2,有x=c,是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：extrac
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
--描绘连接线:Link(x,points)
--根据points提供的一系列点，用相邻的两个点描绘曲线
--return y值
--x 输入值
--points 点集合
--形如：points是形如{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}的映射
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
--技能设定格式如下：
--SKILLS={
--	技能名称=	{
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		。。。。。
--	}，
--	技能名称=	{
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		。。。。。
--	}，
--	。。。。。
--}
--如：
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--魔法属性physicsenhance_p参数1，1级时为35，20级时为335，曲线不填，默认线形
--			[2]={{1,0},{20,0}},
--		},--没有[3]，表示魔法属性physicsenhance_p参数2，默认为任何时候都是0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--以上描述技能“三环套月”的魔法属性和数值
-----------------------------------------------------------
--函数GetSkillLevelData(levelname, data, level)
--levelname：魔法属性名称
--data：技能名称
--level：技能等级
--return：当技能名称为data，技能等级为level
--			时的魔法属性levelname所需求的三个参数的具体值
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

