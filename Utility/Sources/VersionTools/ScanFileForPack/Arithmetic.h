// GetDiffrent.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

#include<algorithm>
#include<vector>
#include<iostream>
using namespace std;

//
template <class  InputIterator ,class OutputIterator> 
inline OutputIterator SelectElemCountNotOne( InputIterator _First, 
											InputIterator _Last, 
											OutputIterator _DestBeg)
{
	const	ConditionCount = 1;
	//������ʹͬ��Ԫ�ۺ�
	
	if(_DestBeg == NULL)
	{
		throw exception("OutputIterator must not be null when SelectElemCountNotOne");
		
	}
	
	try
	{
		sort(_First,_Last);
	}
	catch(exception& Error)
	{
		string ErrorString = string("sort Error when SelectElemCountNotOne .system info:") +Error.what() ;
		throw exception(ErrorString.c_str());
		
	}
	
	
	InputIterator Pointer,UnitFirst,UnitEnd;
	
	
	UnitFirst = _First; 
	
    
	OutputIterator OutputPoint = _DestBeg;
	
	int UnitElemCount = 0;
	
	for(Pointer = _First;Pointer != _Last;Pointer++)
	{
		
		//ͬ��Ԫ������ֵ��ͬ��Ϊһ����Ԫ��
		try
		{
			
			if((* Pointer) == (* UnitFirst))
			{
				
				
				
				UnitElemCount ++;
				
				
			}
			else
			{    //һ����Ԫ����
				//��һ����Ԫ�Ĳ�������Ԫ��Ԫ�ظ�������һ�Ͱѵ�Ԫ���Ƹ������
				UnitEnd = Pointer;
				
				if(UnitElemCount > ConditionCount)
				{
					OutputPoint = copy(UnitFirst,UnitEnd,OutputPoint);
					
				}
				
				//�µ�Ԫ��ʼ
				UnitFirst = UnitEnd = Pointer;
				
				
				UnitElemCount = 1;
				
			}
		}
		catch(exception& Error)
		{
			string ErrorString = string("Error when SelectElemCountNotOne Get gather system info:") + Error.what();
            throw  exception(ErrorString.c_str());		
			
		}
		
		
		
	}
	//ѭ�����δ�����һ����Ԫ������
	
	//���һ����Ԫ�Ĳ���
	UnitEnd = Pointer;
    
	if(UnitElemCount >ConditionCount)
	{
		
		OutputPoint = copy(UnitFirst,UnitEnd,OutputPoint);
	}
	
	
	
	
	return OutputPoint;
	
	
}