
#pragma once

enum LineEnum{LINE_POINT,LINE_SEAM,};
struct stLine
{	
	cPlaneVerList listVer;	//��һ��ֱ���ϵ�plane
	float k,b;				//ֱ�߷���,û��x=c����,����������Ч
	cPoint ptStart,ptEnd;	//�߶εĳ���
	float GetLengthSquare(){return (ptStart.x-ptEnd.x)*(ptStart.x-ptEnd.x)+(ptStart.y-ptEnd.y)*(ptStart.y-ptEnd.y);}
	bool operator < (stLine& line)
	{
		return GetLengthSquare() < line.GetLengthSquare();
	}
};
