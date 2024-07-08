SOSkillLevelUp={}
MESSAGES={
	"由于你『%s』的基础修为太低，限制了『%s』的修炼。",
	"由于你『%s』的修为太低，限制了『%s』的提升。",
	"你『%s』的修为已经达到顶级了，无法再得到更高的提升。"
}

function up60()
	g = GetTask(197)
		if     (g == 0) then return 29
		elseif (g == 20) then return 30
		elseif (g == 40) then return 31
		elseif (g == 60) then return 32
		elseif (g == 80) then return 33
		elseif (g == 100) then return 34
		elseif (g == 120) then return 35
		elseif (g == 140) then return 36
		elseif (g == 160) then return 37
		elseif (g == 180) then return 38
		elseif (g == 200) then return 39
		end
end;

function up90()
	g = GetTask(197)
		if     (g == 0) then return 24
		elseif (g == 20) then return 26
		elseif (g == 40) then return 28
		elseif (g == 60) then return 30
		elseif (g == 80) then return 32
		elseif (g == 100) then return 34
		elseif (g == 120) then return 36
		elseif (g == 140) then return 38
		elseif (g == 160) then return 40
		elseif (g == 180) then return 42
		elseif (g == 200) then return 44
		end
end;

--峨嵋普渡众生升级限制
function SOSkillLevelUp.Pudu_zhongsheng()
	local perSkills={{93,"慈航普渡"},{89,"梦蝶"},{86,"流水"},{92,"佛心慈佑"}}
	local mainSkill = {291,"普渡众生"}
	local mlvl = HaveMagic(mainSkill[1]),plvl
	local i
	if(mlvl>up90()) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
	end
	for i=1,getn(perSkills) do
		plvl = HaveMagic(perSkills[i][1])
		if(plvl < 5) then
			Msg2Player(format(MESSAGES[1],perSkills[i][2],mainSkill[2]))
			return 0
		end
		if(mlvl > 15) then
			AddMagic(mainSkill[1],mlvl+1)
			AddMagicPoint(-1)
			return 1
		end
		if(plvl<mlvl+5) then
			Msg2Player(format(MESSAGES[2],perSkills[i][2],mainSkill[2]))
			return 0
		end
	end
	AddMagic(mainSkill[1],mlvl+1)
	AddMagicPoint(-1)
	return 1
end

--唐门乱环击升级限制
function SOSkillLevelUp.Luanhuan_ji()
	local perSkills={{395,"地焰火"},{303,"毒刺骨"},{391,"穿心刺"},{393,"寒冰刺"},{397,"雷击术"}}
	local mainSkill = {399,"乱环击"}
	local mlvl = HaveMagic(mainSkill[1]),plvl
	local i
	if(mlvl>up90()) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
	end
	for i=1,getn(perSkills) do
		plvl = HaveMagic(perSkills[i][1])
		if(plvl < 5) then
			Msg2Player(format(MESSAGES[1],perSkills[i][2],mainSkill[2]))
			return 0
		end
		if(mlvl > 15) then
			AddMagic(mainSkill[1],mlvl+1)
			AddMagicPoint(-1)
			return 1
		end
		if(plvl<mlvl+5) then
			Msg2Player(format(MESSAGES[2],perSkills[i][2],mainSkill[2]))
			return 0
		end
	end
	AddMagic(mainSkill[1],mlvl+1)
	AddMagicPoint(-1)
	return 1
end

--五毒断筋腐骨升级限制
function SOSkillLevelUp.Duanjin_fugu()
	local perSkills={{67,"九天狂雷"},{70,"赤焰蚀天"},{64,"冰蓝玄晶"},{336,"穿衣破甲"},{72,"穿心毒刺"}}
	local mainSkill = {327,"断筋腐骨"}
	local mlvl = HaveMagic(mainSkill[1]),plvl
	local i
	if(mlvl>up90()) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
	end
	for i=1,getn(perSkills) do
		plvl = HaveMagic(perSkills[i][1])
		if(plvl < 5) then
			Msg2Player(format(MESSAGES[1],perSkills[i][2],mainSkill[2]))
			return 0
		end
		if(mlvl > 15) then
			AddMagic(mainSkill[1],mlvl+1)
			AddMagicPoint(-1)
			return 1
		end
		if(plvl<mlvl+5) then
			Msg2Player(format(MESSAGES[2],perSkills[i][2],mainSkill[2]))
			return 0
		end
	end
	AddMagic(mainSkill[1],mlvl+1)
	AddMagicPoint(-1)
	return 1
end

--天忍摄魂乱心升级限制
function SOSkillLevelUp.Shehun_luanxin()
	local perSkills={{136,"火焚莲华"},{137,"幻影飞狐"},{140,"飞鸿无迹"},{364,"悲酥清风"},{143,"厉魔夺魂"}}
	local mainSkill = {328,"摄魂乱心"}
	local mlvl = HaveMagic(mainSkill[1]),plvl
	local i
	if(mlvl>up90()) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
	end
	for i=1,getn(perSkills) do
		plvl = HaveMagic(perSkills[i][1])
		if(plvl < 5) then
			Msg2Player(format(MESSAGES[1],perSkills[i][2],mainSkill[2]))
			return 0
		end
		if(mlvl > 15) then
			AddMagic(mainSkill[1],mlvl+1)
			AddMagicPoint(-1)
			return 1
		end
		if(plvl<mlvl+5) then
			Msg2Player(format(MESSAGES[2],perSkills[i][2],mainSkill[2]))
			return 0
		end
	end
	AddMagic(mainSkill[1],mlvl+1)
	AddMagicPoint(-1)
	return 1
end

--昆仑醉仙错骨升级限制
function SOSkillLevelUp.Zuixian_cuogu()
	local perSkills={{338,"束缚咒"},{174,"羁绊符"},{339,"北冥到海"},{175,"欺寒傲雪"},{90,"迷踪幻影"}}
	local mainSkill = {329,"醉仙错骨"}
	local mlvl = HaveMagic(mainSkill[1]),plvl
	local i
	if(mlvl>up90()) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
	end
	for i=1,getn(perSkills) do
		plvl = HaveMagic(perSkills[i][1])
		if(plvl < 5) then
			Msg2Player(format(MESSAGES[1],perSkills[i][2],mainSkill[2]))
			return 0
		end
		if(mlvl > 15) then
			AddMagic(mainSkill[1],mlvl+1)
			AddMagicPoint(-1)
			return 1
		end
		if(plvl<mlvl+5) then
			Msg2Player(format(MESSAGES[2],perSkills[i][2],mainSkill[2]))
			return 0
		end
	end
	AddMagic(mainSkill[1],mlvl+1)
	AddMagicPoint(-1)
	return 1
end




















--天王追星逐月升级限制
function SOSkillLevelUp.zhuixing_zhuyue()
	local mainSkill = {347,"追星逐月"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--天王追风诀升级限制
function SOSkillLevelUp.zhuifeng_jue()
	local perSkills={{29,"斩龙诀"},{31,"行云诀"},{325,"乘龙诀"}}
	local mainSkill = {345,"追风诀"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--天王破天斩升级限制
function SOSkillLevelUp.potian_zhan()
	local perSkills={{34,"惊雷斩"},{37,"泼风斩"},{32,"无心斩"}}
	local mainSkill = {342,"破天斩"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--少林达摩渡江升级限制
function SOSkillLevelUp.damo_dujiang()
	local perSkills={{14,"行龙不雨"},{271,"龙爪虎抓"}}
	local mainSkill = {350,"达摩渡江"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--少林无相斩升级限制
function SOSkillLevelUp.wuxiang_zhan()
	local perSkills={{10,"金刚伏魔"},{19,"摩诃无量"}}
	local mainSkill = {353,"无相斩"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--少林横扫千军升级限制
function SOSkillLevelUp.hengsao_qianjun()
	local perSkills={{10,"金刚伏魔"},{11,"横扫六合"}}
	local mainSkill = {351,"横扫千军"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--唐门暴雨梨花升级限制
function SOSkillLevelUp.baoyu_lihua()
	local perSkills={{45,"霹雳弹"},{54,"漫天花雨"},{58,"天罗地网"}}
	local mainSkill = {302,"暴雨梨花"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--唐门慑魂月影升级限制
function SOSkillLevelUp.shehun_yueying()
	local perSkills={{45,"霹雳弹"},{50,"追心箭"},{249,"小李飞刀"}}
	local mainSkill = {355,"慑魂月影"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--唐门九宫飞星升级限制
function SOSkillLevelUp.jiugong_feixing()
	local perSkills={{45,"霹雳弹"},{47,"夺魂镖"},{357,"散花镖"}}
	local mainSkill = {358,"九宫飞星"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--五毒玄阴斩升级限制
function SOSkillLevelUp.xuanyin_zhan()
	local perSkills={{65,"血刀毒杀"},{333,"百毒穿心"},{74,"朱蛤青冥"}}
	local mainSkill = {361,"玄阴斩"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--五毒阴风蚀骨升级限制
function SOSkillLevelUp.yinfeng_shigu()
	local perSkills={{63,"毒砂掌"},{68,"幽冥骷髅"},{71,"天罡地煞"}}
	local mainSkill = {359,"阴风蚀骨"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--娥眉三峨霁雪升级限制
function SOSkillLevelUp.sane_jixue()
	local perSkills={{85,"一叶知秋"},{334,"推窗望月"},{88,"不灭不绝"}}
	local mainSkill = {374,"三峨霁雪"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--娥眉风霜碎影升级限制
function SOSkillLevelUp.fengshuang_suiying()
	local perSkills={{80,"飘雪穿云"},{82,"四象同归"},{91,"佛光普照"}}
	local mainSkill = {376,"风霜碎影"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--翠烟冰踪无影升级限制
function SOSkillLevelUp.bingzong_wuying()
	local perSkills={{99,"风花雪月"},{105,"雨打梨花"},{108,"牧野流星"}}
	local mainSkill = {377,"冰踪无影"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--翠烟冰心仙子升级限制
function SOSkillLevelUp.bingxin_xianzi()
	local perSkills={{102,"风卷残雪"},{113,"浮云散雪"},{111,"碧海潮生"}}
	local mainSkill = {378,"冰心仙子"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end



--天忍云龙击升级限制
function SOSkillLevelUp.yunlong_ji()
	local perSkills={{135,"残阳如血"},{141,"烈火情天"},{142,"偷天换日"}}
	local mainSkill = {365,"云龙击"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--天忍天外流星升级限制
function SOSkillLevelUp.tianwai_liuxing()
	local perSkills={{145,"弹指烈焰"},{138,"推山填海"},{148,"魔焰七杀"}}
	local mainSkill = {367,"天外流星"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--丐帮天下无狗升级限制
function SOSkillLevelUp.tianxia_wugou()
	local perSkills={{119,"沿门托钵"},{125,"棒打恶狗"}}
	local mainSkill = {389,"天下无狗"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--丐帮飞龙在天升级限制
function SOSkillLevelUp.feilong_zaitian()
	local perSkills={{122,"见人伸手"},{128,"亢龙有悔"}}
	local mainSkill = {362,"飞龙在天"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--武当人剑合一升级限制
function SOSkillLevelUp.renjian_heyi()
	local perSkills={{155,"沧海明月"},{158,"剑飞惊天"},{267,"三环套月"}}
	local mainSkill = {380,"人剑合一"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--武当天地无极升级限制
function SOSkillLevelUp.tiandi_wuji()
	local perSkills={{153,"怒雷指"},{164,"剥及而复"},{165,"无我无剑"}}
	local mainSkill = {382,"天地无极"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--昆仑傲雪啸风升级限制
function SOSkillLevelUp.aoxue_xiaofeng()
	local perSkills={{169,"呼风法"},{176,"狂风骤电"}}
	local mainSkill = {385,"傲雪啸风"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

--昆仑雷动九天升级限制
function SOSkillLevelUp.leidong_jiutian()
	local perSkills={{179,"狂雷震地"},{172,"天际迅雷"},{182,"五雷正法"}}
	local mainSkill = {384,"雷动九天"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=90) then
		if(mlvl>up90()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("90级技能升级要求：等级需达到90级.")
	end;
end

---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------

--天王120技能升级限制
function SOSkillLevelUp.tw120()
	local mainSkill = {411,"倒虚天"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("倒虚天增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end


--少林120技能升级限制
function SOSkillLevelUp.sl120()
	local mainSkill = {413,"大乘如来咒"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("大乘如来咒增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--唐门120技能升级限制
function SOSkillLevelUp.tm120()
	local mainSkill = {415,"迷影纵"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("迷影纵增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--五毒120技能升级限制
function SOSkillLevelUp.wd120()
	local mainSkill = {417,"吸星魇"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("吸星魇增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--EM120技能升级限制
function SOSkillLevelUp.em120()
	local mainSkill = {419,"闭月拂尘"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("闭月拂尘增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--CY120技能升级限制
function SOSkillLevelUp.cy120()
	local mainSkill = {421,"御雪隐"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("御雪隐增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--丐帮120技能升级限制
function SOSkillLevelUp.gb120()
	local mainSkill = {423,"混天气功"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("混天气功增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end


--天忍120技能升级限制
function SOSkillLevelUp.tr120()
	local mainSkill = {425,"魔音噬魄"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("魔音噬魄增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--武当120技能升级限制
function SOSkillLevelUp.wud120()
	local mainSkill = {427,"出淤不染"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("出淤不染增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

--昆仑120技能升级限制
function SOSkillLevelUp.kl120()
	local mainSkill = {429,"两仪真气"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("两仪真气增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("120级技能升级要求：等级需达到120级，升1级需要2个技能点。")
	end


end

---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
--天王镇派技能升级限制
function SOSkillLevelUp.tianwang_zhanyi()
	local mainSkill = {36,"天王战意"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end


--少林镇派技能升级限制
function SOSkillLevelUp.rulai_qianye()
	local mainSkill = {273,"如来千叶"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--唐门镇派技能升级限制
function SOSkillLevelUp.xinyan()
	local mainSkill = {48,"心眼"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--五毒镇派技能升级限制
function SOSkillLevelUp.wudu_qijing()
	local mainSkill = {75,"五毒奇经"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--EM镇派技能升级限制
function SOSkillLevelUp.fofa_wubian()
	local mainSkill = {252,"佛法无边"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--CY镇派技能升级限制
function SOSkillLevelUp.binggu_xuexin()
	local mainSkill = {114,"冰骨雪心"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--丐帮镇派技能升级限制
function SOSkillLevelUp.zuidie_kuangwu()
	local mainSkill = {130,"醉蝶狂舞"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end


--天忍镇派技能升级限制
function SOSkillLevelUp.tianmo_jieti()
	local mainSkill = {150,"天魔解体"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--武当镇派技能升级限制
function SOSkillLevelUp.taiji_shengong()
	local mainSkill = {166,"太极神功"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

--昆仑镇派技能升级限制
function SOSkillLevelUp.shuangao_kunlun()
	local mainSkill = {275,"霜傲昆仑"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=1) and (GetLevel()>=60) then
		if(mlvl>up60()) then
			Msg2Player(format(MESSAGES[3],mainSkill[2]))
			return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-1)
		return 1
	else
		Msg2Player("镇派技能升级要求：等级需达到60级.")
	end;
end

---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------

--天王150技能升级限制
function SOSkillLevelUp.tw150()
	local mainSkill = {412,"惊雷破天"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[惊雷破天]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end


--少林150技能升级限制
function SOSkillLevelUp.sl150()
	local mainSkill = {414,"阿罗汉神功"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[阿罗汉神功]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--唐门150技能升级限制
function SOSkillLevelUp.tm150()
	local mainSkill = {416,"凌波微步"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[凌波微步]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--五毒150技能升级限制
function SOSkillLevelUp.wd150()
	local mainSkill = {418,"瘟蛊之气"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[瘟蛊之气]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--EM150技能升级限制
function SOSkillLevelUp.em150()
	local mainSkill = {420,"波罗心经"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[波罗心经]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--CY150技能升级限制
function SOSkillLevelUp.cy150()
	local mainSkill = {422,"玄冰无息"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[玄冰无息]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--丐帮150技能升级限制
function SOSkillLevelUp.gb150()
	local mainSkill = {424,"潜龙在渊"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[潜龙在渊]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end


--天忍150技能升级限制
function SOSkillLevelUp.tr150()
	local mainSkill = {426,"三味真火"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[三味真火]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--武当150技能升级限制
function SOSkillLevelUp.wud150()
	local mainSkill = {428,"纯阳无极"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[纯阳无极]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end

--昆仑150技能升级限制
function SOSkillLevelUp.kl150()
	local mainSkill = {430,"乾坤大挪移"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[乾坤大挪移]增加1级，扣除2点技能！")
		return 1
	else
		Msg2Player("150级技能升级要求：等级需达到150级，升1级需要2个技能点。")
	end


end
