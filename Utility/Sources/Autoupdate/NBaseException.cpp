
#include "nbaseexception.h"

NBaseException::NBaseException(int WhichError,const char * ErrorMessage,const char * ThrowFileName,int ThrowLineNumber)
:ErrorType(WhichError)
,ErrorInfo(ErrorMessage)
,FileName(ThrowFileName)
,LineNumber(ThrowLineNumber)
{
	
	


}

NBaseException::~NBaseException(void)
{

}



// ȡ�ô�������
int NBaseException::GetErrorType(void) const
{
	return ErrorType;
}

// ȡ�ô�����Ϣ
string NBaseException::GetErrorMessage(void)
{
	return ErrorInfo;
}

// ȡ���׳��쳣�Ĵ����ļ�
string NBaseException::GetThrowFileName(void)
{
	return FileName;
}

// ȡ���׳��쳣�Ĵ�����
int NBaseException::GetThrowLineNumber(void)
{
	return LineNumber;
}

// �����쳣����ʼ�� FileName��LineNumber
NBaseException::NBaseException(const char * ThrowFileName , int ThrowLineNumber)
:FileName(ThrowFileName)
,LineNumber(ThrowLineNumber)
{
	ErrorInfo = "δ֪����";
	ErrorInfo = -1;


}
