--���ϱ��� �ɶ��� ·��23�����ӵܵĶԻ� ��������
--author: yuanlan	
--date: 2003/3/19


function main(sel)

i = random(0,4)									--���������Ļ�����20%

if (i == 0) then  
Say("�����ӵܣ��ˣ�������ҵı�������һ����֪�����Ǹ�ʶ�����ˣ����ƣ�������ҵĴ���֮������Ҫ������ͷʵ�ڽ��úܣ��һ��᲻�����أ�", 2, "��/accept", "����/refuse")
return
end;

if (i == 1) or (i == 2) then  
Say("�����ӵܣ���ʲô�������ڸ���ת�˼�Ȧ�ˣ�����Ϊ�Ҳ�֪��������Ǵ������ϵı������⣡", 0)
return
end;

if (i == 3) or (i == 4) then  
Say("�����ӵܣ����Ҵ��ò���ô���������㣬�ҿ�������֮���뵱�ꡭ��", 0)
return
end;

end;


function accept()

if (GetCash() >= 5000) then					--�ο�ֵ
	j = random(0, 9)					--�������
	k = random(2, 8)					--�ȼ�������������ɵ�����Ʒ�ļ۸�ΧΪ500��50000
	m = random(0, 4)					--ϵ��
	if (j == 0) then 					--closeweapon
		n = random(0, 5)				--��ϸ���
		AddItem(0, 0, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 1) then 					--rangeweapon
		n = random(0, 2)				--��ϸ���
		AddItem(0, 1, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 2) then 					--armor
		n = random(0, 9)				--��ϸ���
		AddItem(0, 2, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 3) then 					--ring
		AddItem(0, 3, 0, k, m, 1)						
		Pay(5000)
	end
	if (j == 4) then 					--amulet
		n = random(0, 1)				--��ϸ���
		AddItem(0, 4, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 5) then 					--boots
		n = random(0, 3)				--��ϸ���
		AddItem(0, 5, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 6) then 					--belt
		n = random(0, 1)				--��ϸ���
		AddItem(0, 6, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 7) then 					--helm
		n = random(0, 8)				--��ϸ���
		AddItem(0, 7, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 8) then 					--cuff
		n = random(0, 1)				--��ϸ���
		AddItem(0, 8, n, k, m, 1)						
		Pay(5000)
	end
	if (j == 9) then 					--pendant
		n = random(0, 1)				--��ϸ���
		AddItem(0, 9, n, k, m, 1)						
		Pay(5000)
	end
else
	Say("�����ӵܣ�ԭ���Ǹ�û����ˮ�ģ�", 0)
end;

end;


function refuse()
Say("�㲻���Ǹ�ƭ�ӡ�", 0);
end;