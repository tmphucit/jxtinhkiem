--���ϱ��� ����� ·��4����Ի�
--������������񣺻��ӵĵ���
--suyu
-------------------------------------------
function UTaskMain()

if(UTask_world18 == 0) then
	UTask_world18_0()
end;

if(UTask_world8 == 1) then
	UTask_world18_1()
end;

if(UTask_world18 == 2) then
	UTask_world18_2()
end;

if(UTask_world18 == 3) then
	UTask_world18_3()
end;

end;

-------------------------------------------
function Default()
	Say("���죺���Ӹ������۸��ң���Ҫ��������ȥ��",0)
end;

-------------------------------------------
function UTask_world18_0()
	Say("���죺���Ӹ������۸��ң���Ҫ��������ȥ��",0)
end;

-------------------------------------------
function UTask_world18_1()
	Say("���죺���Ӹ�˵�������˵����ʹ���ȥ���񣬿������أ�",0)
end;

-------------------------------------------
function UTask_world18_2()
	Say("���죺���Ӹ�ĵ�����û������ô��",0)
end;

-------------------------------------------
function UTask_world18_3()
	Say("���죺̫���ˣ�һ������Ӹ�͸��������ˡ�",0)
end;

-------------------------------------------
function main(sel)

UTask_world18 = GetTask(46);

if ((GetCamp() == 0) and (UTask_world18 <= 3)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------