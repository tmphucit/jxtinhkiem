SOSkillLevelUp={}
MESSAGES={
	"�����㡺%s���Ļ�����Ϊ̫�ͣ������ˡ�%s����������",
	"�����㡺%s������Ϊ̫�ͣ������ˡ�%s����������",
	"�㡺%s������Ϊ�Ѿ��ﵽ�����ˣ��޷��ٵõ����ߵ�������"
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

--�����ն�������������
function SOSkillLevelUp.Pudu_zhongsheng()
	local perSkills={{93,"�Ⱥ��ն�"},{89,"�ε�"},{86,"��ˮ"},{92,"���Ĵ���"}}
	local mainSkill = {291,"�ն�����"}
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

--�����һ�����������
function SOSkillLevelUp.Luanhuan_ji()
	local perSkills={{395,"�����"},{303,"���̹�"},{391,"���Ĵ�"},{393,"������"},{397,"�׻���"}}
	local mainSkill = {399,"�һ���"}
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

--�嶾�Ͻ����������
function SOSkillLevelUp.Duanjin_fugu()
	local perSkills={{67,"�������"},{70,"����ʴ��"},{64,"��������"},{336,"�����Ƽ�"},{72,"���Ķ���"}}
	local mainSkill = {327,"�Ͻ��"}
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

--�������������������
function SOSkillLevelUp.Shehun_luanxin()
	local perSkills={{136,"�������"},{137,"��Ӱ�ɺ�"},{140,"�ɺ��޼�"},{364,"�������"},{143,"��ħ���"}}
	local mainSkill = {328,"�������"}
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

--�������ɴ����������
function SOSkillLevelUp.Zuixian_cuogu()
	local perSkills={{338,"������"},{174,"��"},{339,"��ڤ����"},{175,"�ۺ���ѩ"},{90,"���ٻ�Ӱ"}}
	local mainSkill = {329,"���ɴ��"}
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




















--����׷��������������
function SOSkillLevelUp.zhuixing_zhuyue()
	local mainSkill = {347,"׷������"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--����׷�����������
function SOSkillLevelUp.zhuifeng_jue()
	local perSkills={{29,"ն����"},{31,"���ƾ�"},{325,"������"}}
	local mainSkill = {345,"׷���"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--��������ն��������
function SOSkillLevelUp.potian_zhan()
	local perSkills={{34,"����ն"},{37,"�÷�ն"},{32,"����ն"}}
	local mainSkill = {342,"����ն"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���ִ�Ħ�ɽ���������
function SOSkillLevelUp.damo_dujiang()
	local perSkills={{14,"��������"},{271,"��צ��ץ"}}
	local mainSkill = {350,"��Ħ�ɽ�"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--��������ն��������
function SOSkillLevelUp.wuxiang_zhan()
	local perSkills={{10,"��շ�ħ"},{19,"Ħڭ����"}}
	local mainSkill = {353,"����ն"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���ֺ�ɨǧ����������
function SOSkillLevelUp.hengsao_qianjun()
	local perSkills={{10,"��շ�ħ"},{11,"��ɨ����"}}
	local mainSkill = {351,"��ɨǧ��"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���ű����滨��������
function SOSkillLevelUp.baoyu_lihua()
	local perSkills={{45,"������"},{54,"���컨��"},{58,"���޵���"}}
	local mainSkill = {302,"�����滨"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���������Ӱ��������
function SOSkillLevelUp.shehun_yueying()
	local perSkills={{45,"������"},{50,"׷�ļ�"},{249,"С��ɵ�"}}
	local mainSkill = {355,"�����Ӱ"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���žŹ�������������
function SOSkillLevelUp.jiugong_feixing()
	local perSkills={{45,"������"},{47,"�����"},{357,"ɢ����"}}
	local mainSkill = {358,"�Ź�����"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--�嶾����ն��������
function SOSkillLevelUp.xuanyin_zhan()
	local perSkills={{65,"Ѫ����ɱ"},{333,"�ٶ�����"},{74,"�����ڤ"}}
	local mainSkill = {361,"����ն"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--�嶾����ʴ����������
function SOSkillLevelUp.yinfeng_shigu()
	local perSkills={{63,"��ɰ��"},{68,"��ڤ����"},{71,"���ɷ"}}
	local mainSkill = {359,"����ʴ��"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--��ü������ѩ��������
function SOSkillLevelUp.sane_jixue()
	local perSkills={{85,"һҶ֪��"},{334,"�ƴ�����"},{88,"���𲻾�"}}
	local mainSkill = {374,"������ѩ"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--��ü��˪��Ӱ��������
function SOSkillLevelUp.fengshuang_suiying()
	local perSkills={{80,"Ʈѩ����"},{82,"����ͬ��"},{91,"�������"}}
	local mainSkill = {376,"��˪��Ӱ"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���̱�����Ӱ��������
function SOSkillLevelUp.bingzong_wuying()
	local perSkills={{99,"�绨ѩ��"},{105,"����滨"},{108,"��Ұ����"}}
	local mainSkill = {377,"������Ӱ"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���̱���������������
function SOSkillLevelUp.bingxin_xianzi()
	local perSkills={{102,"����ѩ"},{113,"����ɢѩ"},{111,"�̺�����"}}
	local mainSkill = {378,"��������"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end



--������������������
function SOSkillLevelUp.yunlong_ji()
	local perSkills={{135,"������Ѫ"},{141,"�һ�����"},{142,"͵�컻��"}}
	local mainSkill = {365,"������"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--��������������������
function SOSkillLevelUp.tianwai_liuxing()
	local perSkills={{145,"��ָ����"},{138,"��ɽ�"},{148,"ħ����ɱ"}}
	local mainSkill = {367,"��������"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--ؤ�������޹���������
function SOSkillLevelUp.tianxia_wugou()
	local perSkills={{119,"�����в�"},{125,"�����"}}
	local mainSkill = {389,"�����޹�"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--ؤ�����������������
function SOSkillLevelUp.feilong_zaitian()
	local perSkills={{122,"��������"},{128,"�����л�"}}
	local mainSkill = {362,"��������"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--�䵱�˽���һ��������
function SOSkillLevelUp.renjian_heyi()
	local perSkills={{155,"�׺�����"},{158,"���ɾ���"},{267,"��������"}}
	local mainSkill = {380,"�˽���һ"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--�䵱����޼���������
function SOSkillLevelUp.tiandi_wuji()
	local perSkills={{153,"ŭ��ָ"},{164,"��������"},{165,"�����޽�"}}
	local mainSkill = {382,"����޼�"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--���ذ�ѩХ����������
function SOSkillLevelUp.aoxue_xiaofeng()
	local perSkills={{169,"���編"},{176,"������"}}
	local mainSkill = {385,"��ѩХ��"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
	end;
end

--�����׶�������������
function SOSkillLevelUp.leidong_jiutian()
	local perSkills={{179,"�������"},{172,"���Ѹ��"},{182,"��������"}}
	local mainSkill = {384,"�׶�����"}
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
		Msg2Player("90����������Ҫ�󣺵ȼ���ﵽ90��.")
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

--����120������������
function SOSkillLevelUp.tw120()
	local mainSkill = {411,"������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("����������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end


--����120������������
function SOSkillLevelUp.sl120()
	local mainSkill = {413,"���������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("�������������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--����120������������
function SOSkillLevelUp.tm120()
	local mainSkill = {415,"��Ӱ��"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("��Ӱ������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--�嶾120������������
function SOSkillLevelUp.wd120()
	local mainSkill = {417,"������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("����������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--EM120������������
function SOSkillLevelUp.em120()
	local mainSkill = {419,"���·���"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("���·�������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--CY120������������
function SOSkillLevelUp.cy120()
	local mainSkill = {421,"��ѩ��"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("��ѩ������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--ؤ��120������������
function SOSkillLevelUp.gb120()
	local mainSkill = {423,"��������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("������������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end


--����120������������
function SOSkillLevelUp.tr120()
	local mainSkill = {425,"ħ������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("ħ����������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--�䵱120������������
function SOSkillLevelUp.wud120()
	local mainSkill = {427,"���ٲ�Ⱦ"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("���ٲ�Ⱦ����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
	end


end

--����120������������
function SOSkillLevelUp.kl120()
	local mainSkill = {429,"��������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=120) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("������������1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("120����������Ҫ�󣺵ȼ���ﵽ120������1����Ҫ2�����ܵ㡣")
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
--�������ɼ�����������
function SOSkillLevelUp.tianwang_zhanyi()
	local mainSkill = {36,"����ս��"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end


--�������ɼ�����������
function SOSkillLevelUp.rulai_qianye()
	local mainSkill = {273,"����ǧҶ"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--�������ɼ�����������
function SOSkillLevelUp.xinyan()
	local mainSkill = {48,"����"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--�嶾���ɼ�����������
function SOSkillLevelUp.wudu_qijing()
	local mainSkill = {75,"�嶾�澭"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--EM���ɼ�����������
function SOSkillLevelUp.fofa_wubian()
	local mainSkill = {252,"���ޱ�"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--CY���ɼ�����������
function SOSkillLevelUp.binggu_xuexin()
	local mainSkill = {114,"����ѩ��"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--ؤ�����ɼ�����������
function SOSkillLevelUp.zuidie_kuangwu()
	local mainSkill = {130,"�������"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end


--�������ɼ�����������
function SOSkillLevelUp.tianmo_jieti()
	local mainSkill = {150,"��ħ����"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--�䵱���ɼ�����������
function SOSkillLevelUp.taiji_shengong()
	local mainSkill = {166,"̫����"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
	end;
end

--�������ɼ�����������
function SOSkillLevelUp.shuangao_kunlun()
	local mainSkill = {275,"˪������"}
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
		Msg2Player("���ɼ�������Ҫ�󣺵ȼ���ﵽ60��.")
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

--����150������������
function SOSkillLevelUp.tw150()
	local mainSkill = {412,"��������"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[��������]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end


--����150������������
function SOSkillLevelUp.sl150()
	local mainSkill = {414,"���޺���"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[���޺���]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--����150������������
function SOSkillLevelUp.tm150()
	local mainSkill = {416,"�貨΢��"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[�貨΢��]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--�嶾150������������
function SOSkillLevelUp.wd150()
	local mainSkill = {418,"����֮��"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[����֮��]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--EM150������������
function SOSkillLevelUp.em150()
	local mainSkill = {420,"�����ľ�"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[�����ľ�]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--CY150������������
function SOSkillLevelUp.cy150()
	local mainSkill = {422,"������Ϣ"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[������Ϣ]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--ؤ��150������������
function SOSkillLevelUp.gb150()
	local mainSkill = {424,"Ǳ����Ԩ"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[Ǳ����Ԩ]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end


--����150������������
function SOSkillLevelUp.tr150()
	local mainSkill = {426,"��ζ���"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[��ζ���]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--�䵱150������������
function SOSkillLevelUp.wud150()
	local mainSkill = {428,"�����޼�"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[�����޼�]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end

--����150������������
function SOSkillLevelUp.kl150()
	local mainSkill = {430,"Ǭ����Ų��"}
	local mlvl = HaveMagic(mainSkill[1]),plvl

	if (GetMagicPoint()>=2) and (GetLevel()>=150) then
		if (mlvl>19) then
		Msg2Player(format(MESSAGES[3],mainSkill[2]))
		return 0
		end
		AddMagic(mainSkill[1],mlvl+1)
		AddMagicPoint(-2)
		Msg2Player("[Ǭ����Ų��]����1�����۳�2�㼼�ܣ�")
		return 1
	else
		Msg2Player("150����������Ҫ�󣺵ȼ���ﵽ150������1����Ҫ2�����ܵ㡣")
	end


end
