#pragma once
#include<string>
using namespace std;
class NBaseException
{
public:
	NBaseException(int WhichError,const char * ErrorMessage,const char * ThrowFileName,int ThrowLineNumber);
	virtual ~NBaseException(void);
	
	
	// ȡ�ô�������
	virtual int GetErrorType(void) const;
protected:
	// ��������
	long ErrorType;
	// �ַ���ʽ�Ĵ�����Ϣ
	string  ErrorInfo;
private:
	string  FileName; 
	int     LineNumber;
public:
	// ���ش�����Ϣ
	virtual string GetErrorMessage(void);
	// qude
	string GetThrowFileName(void);
	// ȡ���׳���
	int GetThrowLineNumber(void);
	// �����쳣����ʼ��
	NBaseException(const char * ThrowFileName , int ThrowLineNumber);
};
