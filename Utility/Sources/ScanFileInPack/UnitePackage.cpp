// UnitePackage.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

#include"Package.h"
#include<string>
#include<vector>
#include<iostream>
#include<windows.h>
#include <iomanip>


#include"odingMethod.h"

using namespace std;
using namespace PackageCQ;

DataSource AddDataSource(vector<Package * > PackArray)
{
	if(PackArray.size()   >0 )
	{
		
		DataSource ResultSource = PackArray[0]->GetDataSource()  ;
		
		int PackCount = PackArray.size();
		
		for(int i=1;i<PackCount;i++)
		{
			
			ResultSource = ResultSource + PackArray[i]->GetDataSource();
		}
		return ResultSource;
	}
	else
	{
		throw exception ("no source to add");
	}
	
	
	
	
}

void CreatePackFile(const char *FileName ,DataSource& Source)
{
	Package  * Package3 = new Package(Source,FileName);
		
	delete Package3;
		
	



}

void FreePackArray(vector<Package * >& PackArray)
{
	for(int i = 0; i < PackArray.size() ; i++)
	{
		if (PackArray[i])
			delete PackArray[i];
	}
	PackArray.clear();
}

void ConstructionPackArray(vector<Package*>& PackArray,int Count,char * FileName[])
{
	cout << "���ļ��ɼ�:"<<endl;
	for (int j=0;j<Count;j++)
	{
		Package  * PackFile = new Package(FileName[j]);
		
		cout <<"���ļ�"<< j<<":"<< FileName[j]<<endl;
		PackArray.push_back (PackFile); 
		

		
		
	}

	cout << endl;
	
	
}
void DisplayErrorInfo(string& ErrorInfo)
{
	LPVOID lpMsgBuf;
	FormatMessage( 
		FORMAT_MESSAGE_ALLOCATE_BUFFER | 
		FORMAT_MESSAGE_FROM_SYSTEM | 
		FORMAT_MESSAGE_IGNORE_INSERTS,
		NULL,
		GetLastError(),
		MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
		(LPTSTR) &lpMsgBuf,
		0,
		NULL 
		);
	// Process any inserts in lpMsgBuf.
	// ...
	// Display the string.
	MessageBox( NULL, ErrorInfo.c_str(),(LPCTSTR)lpMsgBuf , MB_OK |MB_ICONWARNING );
	// Free the buffer.
	LocalFree( lpMsgBuf );
	
	
	
}


void  ReplaceAFileToOtherFile(const char * SourceFileName,char * DestFileName)
{
	
	if(!DeleteFile(DestFileName))
	{
		string ErrorInfo = string("DeleteFile(") +  string(DestFileName)+string(")");
		DisplayErrorInfo(ErrorInfo);
		throw exception("error when delete old File" );
	}
	

	if(!MoveFile(SourceFileName,DestFileName))
	{
		string ErrorInfo = string("MoveFile(") +  string(SourceFileName)+string(",") + string(DestFileName) + string(")");
		DisplayErrorInfo(ErrorInfo);
		throw exception("error when rename file");
	}




}

string GetCurrentTempFileName()
{
	char DirectoryName [MAX_PATH];
	if (GetTempPath(MAX_PATH,DirectoryName) == 0)
	{
		string ErrorInfo = "GetTempPath(" +string("MAX_PATH") +",DirectoryName)";
		DisplayErrorInfo(ErrorInfo);
		throw exception("Error when Get Temp Path");
	}

	char TempFileName[MAX_PATH];
	
	if(!GetTempFileName(DirectoryName,"CQ",0,TempFileName))
	{
		string ErrorInfo = "GetTempFileName('" +string(DirectoryName) +"','CQ',0,TempFileName)";
		DisplayErrorInfo(ErrorInfo);
       	throw exception("Error when Get Temp File Name ");
	}
	
	return TempFileName;
}



void DisplaySource(DataSource& File1Source)
{
	
	cout<<"���ݿ�����:"<<File1Source.GetBlockCount()<<endl; 
	
	
	
	
	const Width = 12;
	for(int i=0;i<File1Source.GetBlockCount();i++)
	{
		cout<<"ID :"<<hex<<setw(Width)<<File1Source[i].GetID()<<"    Length:"<<dec<<File1Source[i].GetLength()<<"     CompressMethod:"<<(int)File1Source[i].GetCompressMethod() ;
		
		
		
		
		cout <<endl;
		
		
	}
	
	
}
void DisplayPackFile(char * filename)
{
	Package   DisplayedPackage(filename);
	
	
	
	DataSource File1Source  = DisplayedPackage.GetDataSource() ;
	
	
	
	DisplaySource(File1Source);
	

}

void DisplayAppInfo()
{
	cout << "ScanForPackage 1.0"<<endl;
	cout << "��;: �����ļ��Ĳ���."<<endl;
	cout << "��������: 30����."<<endl;
    cout << "������ 2003��6��10��"<<endl;
	cout << "������ : ������ ���� ����"<<endl;


	




}
void DisplayMyInfo()
{
	cout << "���ߣ�doctor C.Q"<<endl;
	cout << "��Ȩ���С�������ɽ������ɽ��"<<endl;
	cout << "MY MSN: changxy@msn.com"<<endl;
	cout << "MY TELE: 603";
    		

}

void find_file_in_package(Package & container,vector<string>& FileList,DataSource& Result,CodingMethod& Coder,ostream& out)
{

	vector<string>::iterator Pointer;

	DataSource& PackData = container.GetDataSource();
    DataSource  FindResult;

	for(Pointer = FileList.begin();Pointer != FileList.end();Pointer ++)
	{
		string FileName = * Pointer;
		int FID = Coder.Coding(FileName);
		
		
		BlockSource File(FID,0,0,0,DataPointFromStream());
		
		BlockSource * fResult = PackData.FindBlock(File) ;

		if(fResult == NULL)
		{
			cout << * Pointer << "������"<<endl;
			out << * Pointer << "������"<<endl;


		}
		else
		{
			cout <<"�ҵ��ļ�: "<<FileName.c_str()<<hex<<"  ID: "<<fResult->GetID()<<"     �ļ�����:"<<dec<<fResult->GetUnCompressBlockLength()<<"   �ļ�ѹ������:"<< fResult->GetLength()<<endl; 
			out <<"�ҵ��ļ�: "<<FileName.c_str()<<hex<<"  ID: "<<fResult->GetID()<<"     �ļ�����:"<<dec<<fResult->GetUnCompressBlockLength()<<"   �ļ�ѹ������:"<< fResult->GetLength()<<endl; 
			
			Result.InsertBlock(* fResult);

		}

	}

	cout << endl;
    cout << endl;

	




}

void ConstructionFileList(vector<string >& FileList,int Count,char * FileName[])
{
	cout << "�ļ����ɼ�:"<<endl;
	for (int j=0;j<Count;j++)
	{
		
		cout <<"�ļ���"<< j<<":"<< FileName[j]<<endl;
		FileList.push_back (string(FileName[j])); 
		

		
		
	}

	cout << endl;
	
	
}
int main(int argc, char* argv[])
{
	clock_t g_start, g_finish;
    int   g_Second;

	g_start = clock(); 

	try
	{
		DisplayAppInfo();
		
		cout << "��ʼ������������....10,9,8,7,6,5,4,3,2,1 ����!!!"<<endl<<endl;
		vector<Package *> PackageArray;
		DataSource ResultSource;
		
		ConstructionPackArray(PackageArray,1 ,&argv[1]);

		vector<string> FileNames;
		ConstructionFileList(FileNames,argc - 3 ,&argv[3]);


		DataSource Result;
		CodingMethod Coder;

		cout << "��Ʒ�������:"<< endl<<endl;

		ofstream OutFile(argv[2]);

		find_file_in_package((*PackageArray[0]),FileNames,Result,Coder,OutFile);


		 
	//	DisplaySource(Result);

		
		cout << "����Դ��Ʒ�ɼ����:"<<endl<<endl;



		
		FreePackArray(PackageArray);
		
		
		//DisplayPackFile(argv[1]);
        cout <<"........................................................"<<endl<<endl;

	    DisplayAppInfo();

		DisplayMyInfo();
       
		g_finish = clock();
  
		g_Second = (double)(g_finish - g_start) / CLOCKS_PER_SEC;


		int g_minute = g_Second/60;

		g_Second     =  g_Second - g_minute *60;
		
		int g_hour   = g_minute/60;

		g_minute = g_minute - g_hour * 60;

		








		cout <<"�������к�ʱ:" <<g_hour<<"Сʱ"<<g_minute<<"����"<<g_Second<<"��"<< endl;

		cout << "�밴���⽡���س��˳�"<<endl;
		
	


		
		
		
		
		
	}
	catch(exception& error)
	{
		cout << error.what()<< endl; 
	}
	
	
	char t;
	cin >> t;
	return 0;
}
