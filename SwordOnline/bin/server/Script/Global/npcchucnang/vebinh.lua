Include("\\script\\header\\map_helper.lua")
Include("\\script\\header\\repute_head.lua")

DEFAULT_TALK = {
"D�o n�y t�nh h�nh kh�ng ���c b�nh th��ng, ch�ng ta c�n ph�i c�n th�n c�nh gi�c, n�u kh�ng c� m��i c�i ��u c�ng kh�ng �� ��n t�i.",
"Nh� ta b� m� �ang ch� ta tr� v� �n c�m d�m, ta kh�ng d�m c�i l�i, l�m con ph�i th� ",
"T�i h�m qua u�ng nhi�u qu� r��u, ��n b�y gi� ��u v�n c�n �au...",
"L�o t� �� ��ng r�t l�u m�i c� th� c�u ���c nhi�u c�, th�t l� nh� b�nh r��u hoa y�u",
"Nh� l�o v�n c�n � ch� n�y m�, huhu! Ch�c ��u l�o b�t ��u h�n m� ",
};

TANGAU = 
{
	[1] = {
	"V� binh Th�nh m�n: Ph��ng T��ng ph� n�y n�m � T�y B�c tr�ng tr�n, m�c d� kh�ng th� so v�i Giang Nam ph�n hoa tr�ng l�, nh�ng l� n�i th� t� ph�n th�nh, l� n�i lui t�i c�a ��m d�n th��ng.",
	"V� binh Th�nh m�n: �� t�i Ph��ng T��ng th� ��ng qu�n �i Li�u L�m t�u ph��ng n�m th� m�t ch�t r��u � n�i ��y",
	"V� binh Th�nh m�n: Ng��i t�i l�m �n hay ch� ��n �� du ngo�n?",
	"V� binh Th�nh m�n: Xem d�ng v� phong tr�n c�a nh� ng��i ... T� xa t�i ��y ph�i kh�ng?",
	},
	[78] = {
	"V� binh Th�nh m�n: N�m �� Nh�c t��ng qu�n t�ng ��nh h� ng��i Kim tr�n th� T��ng D��ng, t� �� v� sau, T��ng D��ng l� y�u ��a c�a ��i T�ng. T��ng D��ng m�t, ��i T�ng �t l�m nguy.",
	"V� binh Th�nh m�n: Nh� ta ng� � ph�a th�nh Nam, ta �� h�n m�t th�ng ch�a c� tr� v� nh�.",
	"V� binh Th�nh m�n: Ng�y ng�y ph�i ��ng canh nghi�m ch�nh � ��y, th�t l� m�t ch�t �i ���c !",
	"V� binh Th�nh m�n: Th�nh T��ng D��ng x�a nay binh gia t�t tranh ��t, tri�u ��nh h�ng n�m ��u ph�i tr�ng binh ��ng � n�i n�y, c� th� g�i l� 'Nam T�ng y�t h�u' .",
	},
	[37] = {
	"V� binh Th�nh m�n: Th�nh �� Hoa l� L�m An n�y s�m mu�n g� c�ng thu�c v� Kim qu�c ch�ng ta th�i! Ha! Ha! Ha!",
	"V� binh Th�nh m�n: Th��ng ty c� l�nh! Ph�t hi�n gian t�, ti�n tr�m h�u t�u!",
	"V� binh Th�nh m�n: Ng��i m�t l�m la l�m lo�t! C� ph�i gian t� kh�ng?",
	"V� binh Th�nh m�n: B�n ng��i Kim kh�ng gi�ng ng��i H�n ch�ng ta! Ch�ng ch�ng bi�t g� ��n chuy�n li�n s�",
	},
};

function main(NpcIndex)
	if(nvthanhmon() == 1) then
	return end;
	local TALK_MORE = "T�n g�u/tangau";
	local END_TALK = "R�i kh�i/no";
	SayNew("LINK:<npc>",0,10833,5,
		"Tham gia chi�n tr��ng T�ng Kim/baodanh",
		"T�m hi�u khu v�c luy�n c�ng/map_help",
		"T�m hi�u v� ngh� b�n m�n/skill_help",
		--"T�m hi�u tinh hoa v� h�c c�c m�n ph�i/Uworld1000_knowmagic",
		TALK_MORE,
		END_TALK)
end;

function baodanh()
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	return end;
	SayNew("<npc>: Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?",3,
	"V�o �i�m b�o danh b�n T�ng/baodanhtong",
	"V�o �i�m b�o danh b�n Kim/baodanhkim",
	"Ch�a mu�n �i/no")
end;

function baodanhtong()
if GetCash() < 5000 then
Talk(1,"","Ng��i kh�ng mang �� 5000 l��ng, kh�ng th� v�o b�n �� t�ng kim")
return
end
SetTask(12,0) -- Reset Tong Kim
SetTask(19,0) -- Reset Danh Hieu
SetTask(128,0) -- Xoa Tham gia TK

-- Reset Task Xep Hang
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)

SetPunish(0)
SetFightState(0)
SetDeathScript("");
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(1)
BlockPKState(0)
NewWorld(60,1528,3195) 
Pay(5000)
end;

function baodanhkim()
if GetCash() < 5000 then
Talk(1,"","Ng��i kh�ng mang �� 5000 l��ng, kh�ng th� v�o b�n �� t�ng kim")
return
end
SetTask(12,0) -- Reset Tong Kim
SetTask(19,0) -- Reset Danh Hieu
SetTask(128,0) -- Xoa Tham gia TK

-- Reset Task Xep Hang
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)
SetPunish(0)
SetFightState(0)
SetDeathScript("");
SetLogoutRV(0)
SetCreateTeam(1);
SetRevPos(2)
NewWorld(60,1593,3075)
BlockPKState(0)
Pay(5000);

end;

function tangau()
	local W,X,Y = GetWorldPos();
	if(TANGAU[W]) then
		Talk(1,"",TANGAU[W][random(1,getn(TANGAU[W]))]);
	else
		Talk(1,"",DEFAULT_TALK[random(1,getn(DEFAULT_TALK))]);
	end;
end;

function nvthanhmon()
--	UTask_world42 = GetTask(42)
--	if ((UTask_world42 == 0) and (GetLevel() >= 80) and (GetReputeLevel(GetRepute()) >= 7)) then		-- ���������������ȼ�������ֵ�Ĺ�ϵ���Ǻܷ�ȷ��Ҫ�ʷ���
--		Talk(6,"nhannvthanhmon","�Ƿ�ε���ף���˵�ǵ��������С���޹�ʧ�","�Ƿ�ε���ң��ǰ�����ԭ�����ݷҶ��������С��Ҳ�����ˣ�����������Ұ����Ҷ��ӡ�","��ң���λ������������ʢ��","�Ƿ�ε���ף��Ǻǣ���λ��ϵ�Ǳ�̷̷��Ӣ�����䣬��������ܹ��⵵��ʢ����","��ң�������������ƽ�ε�ϵ�����ұ����֡�","�Ƿ�ε���ң���ѽ������ľ�Ǯ���󷻴�������")
--		return 1;
--	end;
	return 0;
end;

function nhannvthanhmon()
	SayNew("��ng r�i, l� 5 v�n l��ng.",2,"Hai v� ��i hi�p th�t th� v�/yes1","G�t ���c ng��i kh�c, l�m sao g�t ���c ta!/no")
end;

function yes1()
	if (GetCash()>=50000) then 
		Pay(50000)
		Talk(1,"","C�c h� th�t h�o ph�ng. Nhanh �i D��c v��ng c�c h�i Qu�i nh�n ch�n nh�n. H�n bi�t b� m�t n�y.")
		--SetTask(42, 10)
		Msg2Player("Nh�n nhi�m v�: �i D��c V��ng C�c t�m qu�i ch�n ��o nh�n h�i th�m tin t�c ��a tr�.")
	else
		Talk(1,"","�i �i, kh�ng c� ti�n th� ��i l�m c�i g�, tr� v� l�m n�ng �i!")
	end
end;

function no()
	Talk(1,"","�i �i, kh�ng c� ti�n th� ��i l�m c�i g�, tr� v� l�m n�ng �i!")
end;

function no()
end;
