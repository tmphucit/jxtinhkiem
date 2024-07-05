#pragma once
#include "nbaseexception.h"

class NException :
	public NBaseException
{
public:
	NException(long ErrorDescription,const char * ThrowFileName,int ThrowLineNumber);
	virtual ~NException(void);
protected:
	
	
	// �Դ���Ž���˵�������ضԴ���Ĵ���ŵ���ϸ���ֽ���
	virtual string ExplainErrorID(long ErrorID) const = 0;
private:
	// ȡ�ô������ֽ���
	string ExplainError(long ErrorID);
};
