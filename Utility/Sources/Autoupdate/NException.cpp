#include "nexception.h"

NException::NException(long ErrorDescription,const char * ThrowFileName,int ThrowLineNumber)
:NBaseException(ThrowFileName,ThrowLineNumber)
{
	ErrorType = ErrorDescription;
	ErrorInfo = ExplainError(ErrorDescription);
}

NException::~NException(void)
{



}




// ȡ�ô������ֽ���
string NException::ExplainError(long ErrorID)
{
	return ExplainErrorID(ErrorID);
}
