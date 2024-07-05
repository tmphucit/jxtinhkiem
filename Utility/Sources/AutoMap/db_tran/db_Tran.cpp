// db_Tran.cpp : Defines the entry point for the console application.
//
#include "DBTable.h"
#include "stdafx.h"
#include <STDIO.H>

using namespace std;

#pragma pack(push, 1)

struct TRoleBaseInfo {
  // RoleBaseInfo
  unsigned long dwId;
  char szName[32];
  bool bSex;
  char szAlias[32];
  char caccname[32];
  unsigned char nFirstSect;
  unsigned char nSect;
  unsigned char cFightMode;
  unsigned char cUseRevive;
  unsigned char cIsExchange;
  // --------------------- add by spe 2003/07/19 -----------------------
  // unsigned char	cPkStatus;
  // -------------------------------------------------------------------
  int ijoincount;
  int isectrole;
  int igroupcode;
  int igrouprole;
  int irevivalid;
  int irevivalx;
  int irevivaly;
  int ientergameid;
  int ientergamex;
  int ientergamey;
  char cpartnercode[32];
  int isavemoney;
  int imoney;
  int ifiveprop;
  int iteam;
  int ifightlevel;
  int fightexp;
  int ileadlevel;
  int ileadexp;
  int iliveexp;
  int ipower;
  int iagility;
  int iouter;
  int iinside;
  int iluck;
  int imaxlife;
  int imaxstamina;
  int imaxinner;
  // --------------------- add by spe 2003/07/19 -----------------------
  // int		icurlife;
  // int		icurstamina;
  // int		icurinner;
  // int		ipkvalue;
  // -------------------------------------------------------------------
  int ileftprop;
  int ileftfight;
  int ileftlife;
  int ifinishgame;
  short iarmorres;
  short iweaponres;
  short ihelmres;
};

struct TRoleData {
  TRoleBaseInfo BaseInfo;
  bool bBaseNeedUpdate; // ֪ͨ�Ƿ���Ҫ����
  // ����ȡʱ���Offset����-1����ʾ�����¸�����
  // Additional Info
  short nFightSkillCount;
  short nLiveSkillCount;
  unsigned char nTaskCount;
  short nItemCount;
  short nFriendCount;
  int dwTaskOffset;
  int dwLSkillOffset;
  int dwFSkillOffset;
  int dwItemOffset;
  int dwFriendOffset;
  int dwDataLen;
  unsigned char pBuffer[1];
};

struct TRoleBaseInfoNew {
  // RoleBaseInfo
  unsigned long dwId;
  char szName[32];
  bool bSex;
  char szAlias[32];
  char caccname[32];
  unsigned char nFirstSect;
  unsigned char nSect;
  unsigned char cFightMode;
  unsigned char cUseRevive;
  unsigned char cIsExchange;
  // --------------------- add by spe 2003/07/19 -----------------------
  unsigned char cPkStatus;
  // -------------------------------------------------------------------
  int ijoincount;
  int isectrole;
  int igroupcode;
  int igrouprole;
  int irevivalid;
  int irevivalx;
  int irevivaly;
  int ientergameid;
  int ientergamex;
  int ientergamey;
  char cpartnercode[32];
  int isavemoney;
  int imoney;
  int ifiveprop; // ��������
  int iteam;
  int ifightlevel; // �ȼ�
  int fightexp;
  int ileadlevel;
  int ileadexp;
  int iliveexp;
  int ipower;
  int iagility;
  int iouter;
  int iinside;
  int iluck;
  int imaxlife;    // ����
  int imaxstamina; // ����
  int imaxinner;   // ����
  // --------------------- add by spe 2003/07/19 -----------------------
  int icurlife;
  int icurstamina;
  int icurinner;
  int ipkvalue;
  // -------------------------------------------------------------------
  int ileftprop;
  int ileftfight;
  int ileftlife;
  int ifinishgame;
  short iarmorres;
  short iweaponres;
  short ihelmres;
};

struct TRoleDataNew {
  TRoleBaseInfoNew BaseInfo;
  bool bBaseNeedUpdate; // ֪ͨ�Ƿ���Ҫ����
  // ����ȡʱ���Offset����-1����ʾ�����¸�����
  // Additional Info
  short nFightSkillCount;
  short nLiveSkillCount;
  unsigned char nTaskCount;
  short nItemCount;
  short nFriendCount;
  int dwTaskOffset;
  int dwLSkillOffset;
  int dwFSkillOffset;
  int dwItemOffset;
  int dwFriendOffset;
  int dwDataLen;
  unsigned char pBuffer[1];
};

struct TDBSkillData {
  short m_nSkillId;
  short m_nSkillLevel;
};

#pragma pack(pop)

int ExpTable[101] = {
    0,          50,         450,        1350,       2550,       4550,
    7050,       10050,      14050,      19050,      49050,      115050,
    190650,     276550,     373750,     483050,     605550,     742150,
    894050,     1062450,    1248550,    1419550,    1607650,    1814150,
    2040350,    2287750,    2557950,    2852550,    3173350,    3522250,
    3847050,    4199550,    4581550,    4995250,    5442750,    5926450,
    6448850,    7012650,    7620650,    8275850,    8981450,    9645850,
    10360550,   11128850,   11954350,   12840850,   13792350,   14813150,
    15907750,   17081050,   18338150,   19684450,   21125850,   22668450,
    24318750,   26083650,   27970450,   29986950,   32141450,   34442650,
    36730850,   39289850,   42150950,   45348850,   48922450,   52914850,
    57374050,   62353450,   67912550,   74117450,   81041850,   89118650,
    98537750,   109520150,  122322950,  137245150,  154634550,  174895450,
    198498150,  225989250,  254802650,  288352250,  327410650,  372875550,
    425790150,  487366450,  559012250,  642362950,  739318050,  852083450,
    983220750,  1135704350, 1312987450, 1519079050, 1758632850, 2037050450,
    2360601050, 2736560050, 3173370150, 3658764250, 4198091050};
int LevelCount[100] = {0};
int get_account(DB *db, const DBT *pkey, const DBT *pdata, DBT *ikey) {
  // ����һ��������buffer���õ�account��Ϊ����
  memset(ikey, 0, sizeof(DBT));
  TRoleDataNew *pRoleData = (TRoleDataNew *)pdata->data;

  ikey->data = pRoleData->BaseInfo.caccname;
  ikey->size = strlen(pRoleData->BaseInfo.caccname) + 1;

  return 0;
}

void DBTran() {
  ZDBTable DBOld("database", "roledb");
  if (!DBOld.open()) {
    cout << "�򿪾����ݿ����";
    return;
  };
  ZDBTable DBNew("datanew", "roledb");
  DBNew.addIndex(get_account);

  if (!DBNew.open()) {
    cout << "�������ݿ����";
    return;
  };
  cout << "�����ݿ�ɹ�����ʼת��..." << endl;

  int i = 0;
  int aCount = 0;
  // ���ݿ������ת��
  char *aBuffer;
  int size;
  char *aKey;
  int Keysize;

  aBuffer = DBOld.GetRecord(size, ZDBTable::cpFirst);
  aKey = DBOld.GetRecord_key(Keysize, ZDBTable::cpCurrent);
  while (aBuffer) {
    if (i > 100) {
      i = 0;
      cout << '.';
    } else {
      ++i;
    }
    ++aCount;

    TRoleData *aRoleBuf = (TRoleData *)aBuffer;
    char *aNewBuffer = new char[64 * 1024];
    int aNewSize =
        sizeof(TRoleDataNew) + sizeof(TDBSkillData) * 3 - 1; // �½�ɫ���ݵĴ�С
    TRoleDataNew *aRoleBufNew = (TRoleDataNew *)aNewBuffer;
    memset(aNewBuffer, 0, 64 * 1024);

    // ���������㣩�������Ŀ
    int aLevel = aRoleBuf->BaseInfo.ifightlevel;
    int aProp = aRoleBuf->BaseInfo.ifiveprop;

    if (aLevel > 80) // ����������80������Ϊ80��
    {
      cout << endl
           << aRoleBuf->BaseInfo.szName << " ������" << aLevel
           << "������Ϊ80����" << endl;
      aLevel = 80;
    }
    ++LevelCount[aLevel];

    memcpy(aRoleBufNew->BaseInfo.caccname, aRoleBuf->BaseInfo.caccname,
           32); // �˺���
    memcpy(aRoleBufNew->BaseInfo.szName, aRoleBuf->BaseInfo.szName,
           32); // ��ɫ��
    memcpy(aRoleBufNew->BaseInfo.szAlias, aRoleBuf->BaseInfo.szAlias,
           32);                                           // ����
    aRoleBufNew->BaseInfo.dwId = aRoleBuf->BaseInfo.dwId; // ID
    aRoleBufNew->BaseInfo.bSex = aRoleBuf->BaseInfo.bSex; // �Ա�
    aRoleBufNew->BaseInfo.ifightlevel = aLevel;           // �ȼ�
    aRoleBufNew->BaseInfo.ifiveprop = aProp;              // ��������

    aRoleBufNew->BaseInfo.fightexp = ExpTable[aLevel - 1];
    aRoleBufNew->BaseInfo.ileftprop = (aLevel - 1) * 5; // Ǳ��
    aRoleBufNew->BaseInfo.ileftfight = aLevel - 1;      // ����

    switch (aProp) {
    case 0: // ��
    {
      aRoleBufNew->BaseInfo.ipower = 35;   // ����
      aRoleBufNew->BaseInfo.iagility = 25; // ��
      aRoleBufNew->BaseInfo.iouter = 25;   // �⹦
      aRoleBufNew->BaseInfo.iinside = 15;  // �ڹ�

      aRoleBufNew->BaseInfo.imaxlife = 204 + 4 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxinner = 16 + 1 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxstamina = 100 + 1 * (aLevel - 1); // �������

      aRoleBufNew->BaseInfo.irevivalid = 20; // ������
      aRoleBufNew->BaseInfo.irevivalx = 10;
      aRoleBufNew->BaseInfo.irevivaly = 0;
      break;
    }
    case 1: // ľ
    {
      aRoleBufNew->BaseInfo.ipower = 20;   // ����
      aRoleBufNew->BaseInfo.iagility = 35; // ��
      aRoleBufNew->BaseInfo.iouter = 20;   // �⹦
      aRoleBufNew->BaseInfo.iinside = 25;  // �ڹ�

      aRoleBufNew->BaseInfo.imaxlife = 103 + 3 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxinner = 77 + 2 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxstamina = 100 + 1 * (aLevel - 1); // �������

      aRoleBufNew->BaseInfo.irevivalid = 53; // ������
      aRoleBufNew->BaseInfo.irevivalx = 19;
      aRoleBufNew->BaseInfo.irevivaly = 0;
      break;
    }
    case 2: // ˮ
    {
      aRoleBufNew->BaseInfo.ipower = 25;   // ����
      aRoleBufNew->BaseInfo.iagility = 25; // ��
      aRoleBufNew->BaseInfo.iouter = 25;   // �⹦
      aRoleBufNew->BaseInfo.iinside = 25;  // �ڹ�

      aRoleBufNew->BaseInfo.imaxlife = 153 + 3 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxinner = 77 + 2 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxstamina = 100 + 1 * (aLevel - 1); // �������

      aRoleBufNew->BaseInfo.irevivalid = 99; // ������
      aRoleBufNew->BaseInfo.irevivalx = 43;
      aRoleBufNew->BaseInfo.irevivaly = 0;
      break;
    }
    case 3: // ��
    {
      aRoleBufNew->BaseInfo.ipower = 30;   // ����
      aRoleBufNew->BaseInfo.iagility = 20; // ��
      aRoleBufNew->BaseInfo.iouter = 30;   // �⹦
      aRoleBufNew->BaseInfo.iinside = 20;  // �ڹ�

      aRoleBufNew->BaseInfo.imaxlife = 213 + 3 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxinner = 41 + 1 * (aLevel - 1);    // �������
      aRoleBufNew->BaseInfo.imaxstamina = 100 + 1 * (aLevel - 1); // �������

      aRoleBufNew->BaseInfo.irevivalid = 100; // ������
      aRoleBufNew->BaseInfo.irevivalx = 45;
      aRoleBufNew->BaseInfo.irevivaly = 0;
      break;
    }
    case 4: // ��
    {
      aRoleBufNew->BaseInfo.ipower = 20;   // ����
      aRoleBufNew->BaseInfo.iagility = 15; // ��
      aRoleBufNew->BaseInfo.iouter = 25;   // �⹦
      aRoleBufNew->BaseInfo.iinside = 40;  // �ڹ�

      aRoleBufNew->BaseInfo.imaxlife = 76 + 1 * (aLevel - 1);     // �������
      aRoleBufNew->BaseInfo.imaxinner = 163 + 1 * (aLevel - 1);   // �������
      aRoleBufNew->BaseInfo.imaxstamina = 100 + 3 * (aLevel - 1); // �������

      aRoleBufNew->BaseInfo.irevivalid = 101; // ������
      aRoleBufNew->BaseInfo.irevivalx = 47;
      aRoleBufNew->BaseInfo.irevivaly = 0;
      break;
    }
    }

    aRoleBufNew->BaseInfo.icurlife = aRoleBufNew->BaseInfo.imaxlife; // ��ǰ����
    aRoleBufNew->BaseInfo.icurinner =
        aRoleBufNew->BaseInfo.imaxinner; // ��ǰ����
    aRoleBufNew->BaseInfo.icurstamina =
        aRoleBufNew->BaseInfo.imaxstamina; // ��ǰ����

    // ������ÿ����ɫ��һ��
    aRoleBufNew->BaseInfo.ileadlevel = 1; // ͳ�����ȼ�
    aRoleBufNew->BaseInfo.cUseRevive = 1;
    aRoleBufNew->BaseInfo.cPkStatus = 1;
    aRoleBufNew->BaseInfo.nSect = -1;
    aRoleBufNew->BaseInfo.nFirstSect = -1;
    aRoleBufNew->BaseInfo.isectrole = 61;
    aRoleBufNew->BaseInfo.imoney = 50;

    aRoleBufNew->dwDataLen = aNewSize;
    aRoleBufNew->bBaseNeedUpdate = 1;
    // ��ʼ��ƫ��ֵ
    aRoleBufNew->dwTaskOffset = sizeof(TRoleDataNew) - 1;
    aRoleBufNew->dwLSkillOffset = sizeof(TRoleDataNew) - 1;
    aRoleBufNew->dwFSkillOffset = sizeof(TRoleDataNew) - 1;
    aRoleBufNew->dwItemOffset = sizeof(TRoleDataNew) - 1;
    aRoleBufNew->dwFriendOffset = sizeof(TRoleDataNew) - 1;

    // �½����ܵ�
    aRoleBufNew->nFightSkillCount = 3;
    TDBSkillData *SkillData;
    SkillData = (TDBSkillData *)aRoleBufNew->pBuffer;
    SkillData->m_nSkillId = 53;
    SkillData->m_nSkillLevel = 1;
    ++SkillData;
    SkillData->m_nSkillId = 1;
    SkillData->m_nSkillLevel = 1;
    ++SkillData;
    SkillData->m_nSkillId = 2;
    SkillData->m_nSkillLevel = 1;

    // �������µ����ݿ���
    if (!DBNew.add(aKey, Keysize, aNewBuffer, aNewSize)) {
      cout << endl << "���롰" << aKey << "��ʧ��" << endl;
      --aCount;
    }
    // �����ǰ���棬�α�ָ����һ����¼
    delete[] aNewBuffer;
    delete[] aBuffer;
    delete[] aKey;

    aBuffer = DBOld.GetRecord(size, ZDBTable::cpNext);
    aKey = DBOld.GetRecord_key(Keysize, ZDBTable::cpCurrent);
  }

  DBOld.close();
  DBNew.close();

  cout << endl << "���ݿ�ת���ɹ�~~" << endl;
  cout << "����" << aCount << "����¼ת��" << endl;

  cout << "�����ȼ�������";
  for (i = 0; i < 100; ++i) {
    cout << i << "����" << LevelCount[i] << "��" << endl;
  }
}

int main(int argc, char **argv) {
  cout << "-=��ɫ���ݿ�ת������=-" << endl;
  cout << endl;
  cout << "����ȷ�����ɾݿ����databaseĿ¼�ڣ�������Ϊroledb" << endl;
  cout << "�����ݿ⽫������datanewĿ¼�ڣ�����Ϊroledb" << endl;
  cout << "��ʼת���밲y���������˳���";
  char charin;
  cin >> charin;
  cout << endl;
  if (charin != 'y')
    return 0;

  DBTran();
  /*

          ZDBTable DBNew("datanew", "roledb");
          int size;
          if(!DBNew.open()){cout<<"�������ݿ����";return 1;};
          char* aBuffer = DBNew.GetRecord(size, ZDBTable::cpFirst);
          while(aBuffer)
          {
                  TRoleDataNew* pRoleData = (TRoleDataNew*)aBuffer;
                  cout<<pRoleData->BaseInfo.ifightlevel<<"||"<<pRoleData->BaseInfo.szName<<"||"<<pRoleData->BaseInfo.fightexp<<"||"<<pRoleData->BaseInfo.imaxlife<<endl;
                  TDBSkillData* aSkillData;
                  aSkillData = (TDBSkillData*)pRoleData->pBuffer;
                  cout<<aSkillData->m_nSkillId<<"_"<<aSkillData->m_nSkillLevel<<"||";
                  ++aSkillData;
                  cout<<aSkillData->m_nSkillId<<"_"<<aSkillData->m_nSkillLevel<<"||";
                  ++aSkillData;
                  cout<<aSkillData->m_nSkillId<<"_"<<aSkillData->m_nSkillLevel<<endl;
                  delete[]aBuffer;
                  aBuffer = DBNew.GetRecord(size, ZDBTable::cpNext);
          }
          DBNew.close();

  */

  int a;
  cin >> a;
  return 0;
}