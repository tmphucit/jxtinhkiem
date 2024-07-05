#include "planedoodad.h"
#include "stdafx.h"

///////////////////////////////////////////////////////////////////////////////////////
// table of the plane
///////////////////////////////////////////////////////////////////////////////////////

CString g_aStrTablePlaneName[TP_NUM + 1] = {
    "planetype",
    "planelightingtype",
    "planelightedtype",
    "planelightedradius",
    "sorttype",
    "anglexy",
    "anglez",
    "centerx",
    "centery",
    "height",
    "obstacletype",
    "dynamictype",
    "textureuse",
    "kind",
    "versort",
    "anispeed",
    "aniloop",
    "sprwidth",
    "sprheight",
    "sprcenterx",
    "sprcentery",
    "obstaclenum",
    "",
};

CString g_aaStrTablePlaneValue[TP_NUM + 1][MAX_VALUE_ITEM] = {
    {
        "ƽ���ڵر�",
        "ƽ�����з�",
        "��ֱ���з�",
        "��ֱ�ڵر�",
        "",
    },
    {
        "���ܹ�",
        "�����з��ܹ�",
        "���������ܹ�",
        "ƽ���ܹ�",
        "",
    },
    {
        "������",
        "���յױߵ���",
        "����һ��Բ����",
        "",
    },
    {
        "0.2",
        "0.3",
        "0.4",
        "0.5",
    },

    {"���ڵر�", "�ر�", "����ver", "ver", "����ver", "���", ""},
    {"00", "45", "135", ""},
    {"00", "30", "60", "90", ""},

    {"00", ""},
    {"00", ""},
    {"00", ""},
    {"���赲", "һ���赲", "�赲���ǿ��Է���", "�赲���ǿ�����Ծ",
     "�赲������Ծ�ͷ���", ""},
    {"��̬����", "npc", "box", "trap", "clientonlynpc", "clientonlybox",
     "clientonlytrap", "player", "nosave", ""},
    {"ʹ�þֲ���ͼ", "ʹ��ȫ����ͼ", ""},
    {
        "һ������",
        "���ڵر�",
        "�����·",
        "ǽ��",
        "��ľ",
        "ɽ������", // ��ֱ��plane
        "ɭ��",
        "����",
        "ƽ̨",
        "����",
        "ɽ��", // ƽ�е�obstacle
        "����Ĵ�ֱ����",
        "�������Ӱ", // ���
        // ����洢�Ĳ���
        "����",
        "����",
    },
    {"���յ�����", "���ձ�����", "����������"},
    {"20", "30", "40", "50"},
    {"1", "0"},
    {"00", ""},
    {"00", ""},
    {"00", ""},
    {"00", ""},
    {"00", ""},
    {""},
};

_declspec(dllexport) int StringToPlaneTableValue(int table,
                                                 const CString &strValue) {
  return NameToID(g_aaStrTablePlaneValue[table], strValue);
}

_declspec(dllexport) CString GetTablePlaneName(int table) {
  return g_aStrTablePlaneName[table];
}

_declspec(dllexport) LPCSTR GetTablePlaneValue(int table, int index) {
  return g_aaStrTablePlaneValue[table][index];
}

_declspec(dllexport) CString *GetTablePlaneValue(int e) {
  return g_aaStrTablePlaneValue[e];
}

CString g_aStrTableDoodadName[TD_NUM + 1] = {
    "doodadtype", "geometry", "height", "obstacletype", "",
};

CString g_aaStrTableDoodadValue[TD_NUM + 1][MAX_VALUE_ITEM] = {
    {"ֻ�зֳɴ�ֱ����", "�зֳɴ�ֱ�����ˮƽ����", "�ȷ�ƽ�е���",
     "�ȷִ�ֱ����", ""},
    {"45�Ƚ�ת��", "����ת��", ""},
    {"400", "350", "300", "250"},
    {"���赲", "һ���赲", "�赲���ǿ��Է���", "�赲���ǿ�����Ծ",
     "�赲������Ծ�ͷ���", ""},
    {
        "",
    },
};

CString g_aStrTableDoodadDefaultValue[TD_NUM + 1] = {
    "ֻ�зֳɴ�ֱ����", "45�Ƚ�ת��", "300", "һ���赲", "",
};

_declspec(dllexport) int StringToDoodadTableValue(int table,
                                                  const CString &strValue) {
  return NameToID(g_aaStrTableDoodadValue[table], strValue);
}

_declspec(dllexport) CString GetTableDoodadName(int table) {
  return g_aStrTableDoodadName[table];
}

_declspec(dllexport) CString *GetTableDoodadValue(int e) {
  return g_aaStrTableDoodadValue[e];
}

_declspec(dllexport) CString GetTableDoodadDefaultValue(int e) {
  return g_aStrTableDoodadDefaultValue[e];
}

////////////--add--start--///////////////////////////////
// yujiang add 2003 2 15
// ���ܣ���spr����Ϣ��ӵ�ģ���ļ���,���ҽ�ģ��ת���ɶ�����
// �������ʹ��winzip
/*
 */
