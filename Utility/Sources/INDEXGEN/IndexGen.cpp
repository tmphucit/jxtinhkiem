// IndexGen.cpp : Defines the entry point for the console application.
//

#include "Data.h"
#include "stdafx.h"
#include "stdio.h"

int main(int argc, char *argv[]) {

  if (argc < 7) {
    printf("SourceFile_Path Index_FileName Version RemotePath CommentFileName "
           "InfoFileName\r\n");

    printf("SourceFile_Path: �����ļ�·��\r\n");
    printf("Index_FileName:  ���ɵ�Index.txtȫ·����\r\n");
    printf("RemotePath��     ָ����Ŀ¼�µ��ļ��ڷ������ϵ�Ŀ¼����\r\n");
    printf("Version:         1: ��׼��    2: OEM    8: DBUAII ...\r\n\\r\n");
    printf("CommonInfo_FileName:   �������ֵ�˵������\r\n");
    printf("FilesComment_FileName: �����ļ���˵������\r\n");
    printf("InfoFileName��   �ṩ�������õ�����Index�е��ļ�����Ϣ   \r\n");

    return false;
  }

  int nVersion = _StrToInt(argv[3]);

  IndexGen(argv[1],  // source path
           argv[2],  // destional file
           nVersion, // Version
           argv[4],  // Remote Path
           argv[5],  // Common inforamtion file name
           argv[6],  // File comment file name
           argv[7]   // file information file name
  );

  return 0;
}
