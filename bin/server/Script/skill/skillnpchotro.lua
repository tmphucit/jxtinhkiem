--�������������ڼ��㼼��������
--���巽����
--����1�������ȣ��������ٶȣ��������ظ��˺���������Χ���������Ӧ�ȼ�������
-- SkillExp(i) = Exp1*a^(i-1)*time*range
function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end






SKILLS={

	sutucong={
physicsdamage_v={
			[1]={{1,40},{9,145}},
			[3]={{1,50},{9,155}}
		},
missle_speed_v={{{1,20},{2,20}}},
missle_lifetime_v={{{1,25},{2,25}}},
stun_p={{{1,5},{10,9}},{{1,18},{9,36}}},
		},

       lahanchuong={
physicsenhance_p={{{1,25},{9,200}}},
skill_eventskilllevel={{{1,0},{8,0},{9,9},{10,10}}},
colddamage_v={
			[1]={{1,30},{9,205}},
			[3]={{1,30},{9,205}}
},
missle_speed_v={{{1,30},{1,30}}},
missle_lifetime_v={{{1,10},{2,10}}},
},

dailucthanchuy={
		physicsenhance_p={{{1,15},{9,200}}},
		missle_speed_v={{{1,18},{2,18}}},
		missle_lifetime_v={{{1,4},{2,4}}},
		skill_eventskilllevel={{{1,0},{8,0},{9,9},{10,10}}},
	},


tanghaitvb={ 
		physicsenhance_p={{{1,7},{9,80}}},
		missle_speed_v={{{1,30},{2,30}}},
		missle_lifetime_v={{{1,15},{2,15}}},
		},

bangtamtuyettien={
		physicsdamage_v={
			[1]={{1,30},{9,200}},
			[3]={{1,30},{9,200}}
		},
		colddamage_v={{{1,40},{9,300}},{{1,7},{9,40}}},
missle_speed_v={{{1,20},{20,9}}},
skill_eventskilllevel={{{1,0},{8,0},{9,9},{10,10}}},
	},

tang3ty={
		physicsenhance_p={{{1,5},{9,70}}},
		colddamage_v={{{1,10},{9,70}},{{1,7},{9,40}}},
	},
tang2ty={
		colddamage_v={{{1,50},{9,300}},{{1,7},{9,40}}},
	},
ngoctamphathuu={
		colddamage_v={{{1,50},{9,200}},{{1,8},{9,45}}},
		skill_eventskilllevel={{{1,0},{2,0},{3,3},{4,4}}},
missle_lifetime_v={{{1,12},{2,12}}},
},
ngamitang4={
		colddamage_v={{{1,5},{9,50}},{{1,8},{9,45}}},
		physicsenhance_p={{{1,10},{9,50}}},
	        missle_lifetime_v={{{1,8},{2,8}}},
},
tang2ngami={
		lifereplenish_v={{{1,100},{9,500}},{{1,90},{2,90}}},
},
ngamitang3={
	missle_lifetime_v={{{1,3},{2,3}}},
skill_eventskilllevel={{{1,0},{8,0},{9,9},{10,10}}},
		},


luongcucloicong={
missle_lifetime_v={{{1,20},{2,20}}},
skill_eventskilllevel={{{1,1},{2,2}}}
	},

conlontang3={
		lightingdamage_v={
			[1]={{1,18},{9,180}},
			[3]={{1,18},{9,180}}
		},
stun_p={{{1,1},{9,9}},{{1,9},{9,36}}},
		
	},

docamhoacot={
physicsenhance_p={{{1,6},{9,50}}},
poisondamage_v={{{1,6},{9,50}},{{1,60},{20,60}},{{1,10},{20,10}}},
missle_speed_v={{{1,14},{2,14}}},
missle_lifetime_v={{{1,25},{2,25}}},
skill_eventskilllevel={{{1,1},{2,2}}},
	},
xingkong_po={
		poisondamage_v={{{1,5},{9,20}},{{1,60},{20,60}},{{1,10},{20,10}}},
	},
batkiemvocuc={ 
lightingdamage_v={
			[1]={{1,33},{9,280}},
			[3]={{1,33},{9,280}}
		},
stun_p={{{1,9},{9,50}},{{1,18},{9,18}}},
skill_eventskilllevel={{{1,1},{2,2}}}
},

tang4vd={
		magicenhance_p={{{1,150},{50,150}}},
		physicsenhance_p={{{1,1},{9,120}}},
		lightingdamage_v={
			[1]={{1,7},{9,80}},
			[3]={{1,7},{9,80}}
		},
},

tang3vd={
physicsenhance_p={{{1,3},{9,30}}},
skill_eventskilllevel={{{1,1},{2,2}}},
lightingdamage_v={
			[1]={{1,7},{9,80}},
			[3]={{1,7},{9,80}}
		},
missle_speed_v={{{1,26},{20,26}}},
missle_lifetime_v={{{1,4},{20,4}}},
},

tang2vd={
lightingdamage_v={
			[1]={{1,4},{9,30}},
			[3]={{1,4},{9,30}}
		},
},


cuonglongvocautran={
skill_eventskilllevel={{{1,1},{2,2}}},
physicsenhance_p={{{1,12},{9,200}}},
firedamage_v={
			[1]={{1,6},{9,50}},
			[3]={{1,6},{9,50}}
},
missle_speed_v={{{1,30},{20,30},{21,30}}},
missle_lifetime_v={{{1,7},{20,7}}},
},


cbtang3={
firedamage_v={
			[1]={{1,12},{9,120}},
			[3]={{1,12},{9,120}}
},

missle_speed_v={{{1,20},{2,20}}},
missle_lifetime_v={{{1,15},{2,15}}},


},

nhatthichdoanhon={
		physicsenhance_p={{{1,30},{9,200}}},
		poisondamage_v={{{1,3},{9,40}}},
		skill_eventskilllevel={{{1,1},{2,2}}},

	},
tang3dm={
		physicsenhance_p={{{1,10},{9,40}}},
		poisondamage_v={{{1,10},{8,50},{50,550}},{{1,60},{20,60}},{{1,10},{20,10}}},
		skill_eventskilllevel={{{1,1},{2,2}}},
missle_lifetime_v={{{1,5},{20,5}}},
		missle_speed_v={{{1,28},{20,32},{21,32}}},
	},
tang4dm={
skill_misslenum_v={{{1,1},{40,1},{49,5},{50,8},{51,8}}},
		poisondamage_v={{{1,10},{9,40}},{{1,60},{20,60}},{{1,10},{20,10}}},
		missle_speed_v={{{1,32},{9,32}}},
	},
tang2dm={
		physicsenhance_p={{{1,5},{25,150}}},
skill_eventskilllevel={{{1,1},{2,2}}}
	},
tang2dmm={
		physicsenhance_p={{{1,5},{9,50}}},
	},



nguchoatamvan={
		physicsenhance_p={{{1,25},{9,300}}},
skill_eventskilllevel={{{1,1},{2,2}}},
		missle_speed_v={{{1,30},{20,30}}},
		missle_lifetime_v={{{1,20},{2,20}}},
firedamage_v={
			[1]={{1,50},{9,320}},
			[3]={{1,50},{9,320}}
	},
},


tang2tn={
		firedamage_v={
			[1]={{1,20},{9,120}},
			[3]={{1,20},{9,120}}
		},
missle_speed_v={{{1,6},{2,6}}},
missle_lifetime_v={{{1,30},{2,30}}},
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
	if(type(SKILLS[data][levelname]) == "function") then
		return SKILLS[data][levelname](level)
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

