#include "UiPlayerControlBar.h"
#include "../../../Engine/src/KDebug.h"
#include "../../../Engine/src/Text.h"
#include "../../../Represent/iRepresent/iRepresentShell.h"
#include "../../../core/src/CoreShell.h"
#include "../../Engine/Src/KSG_StringProcess.h"
#include "../Elem/WndMessage.h"
#include "../UiBase.h"
#include "../UiShell.h"
#include "../UiSoundSetting.h"
#include "../elem/MouseHover.h"
#include "../elem/PopupMenu.h"
#include "../elem/Wnds.h"
#include "CoreShell.h"
#include "CoreUseNameDef.h"
#include "GameDataDef.h"
#include "KIniFile.h"
#include "KWin32.h"
#include "UiTongManager.h"
#include <crtdbg.h>

#define SCHEME_INI "UiPlayerControlBar.ini"

KUiPlayerControlBar *KUiPlayerControlBar::m_pSelf = NULL;

extern iRepresentShell *g_pRepresentShell;
extern iCoreShell *g_pCoreShell;

KUiPlayerControlBar::KUiPlayerControlBar() {
  m_BuffListCount = 0;
  m_nListCount = 0;
  m_pStateSkill = NULL;
}

KUiPlayerControlBar::~KUiPlayerControlBar() {
  if (m_pStateSkill) {
    delete m_pStateSkill;
    m_pStateSkill = NULL;
  }
}

KUiPlayerControlBar *KUiPlayerControlBar::OpenWindow() {
  if (m_pSelf == NULL) {
    m_pSelf = new KUiPlayerControlBar;
    if (m_pSelf)
      m_pSelf->Initialize();
  }
  if (m_pSelf)
    m_pSelf->Show();
  return m_pSelf;
}

/*********************************************************************
**********************************************************************/
KUiPlayerControlBar *KUiPlayerControlBar::GetIfVisible() {
  if (m_pSelf && m_pSelf->IsVisible())
    return m_pSelf;
  return NULL;
}

/*********************************************************************
**********************************************************************/
void KUiPlayerControlBar::CloseWindow(bool bDestory) {
  if (m_pSelf) {
    m_pSelf->Hide();
    if (bDestory) {
      m_pSelf->Destroy();
      m_pSelf = NULL;
    }
  }
}

/*********************************************************************
**********************************************************************/
void KUiPlayerControlBar::Initialize() {
  for (int i = 0; i < MAX_BUFF_ROLE; i++) {
    AddChild(&m_BuffImage[i]);
    AddChild(&m_txtBuffTime[i]);
  }

  char Scheme[256];
  g_UiBase.GetCurSchemePath(Scheme, 256);
  LoadScheme(Scheme);

  Wnd_AddWindow(this, WL_LOWEST);
}

void KUiPlayerControlBar::LoadScheme(const char *pScheme) {
  if (m_pSelf) {
    char Buff[128];
    sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI);
    if (m_pSelf->Ini.Load(Buff)) {
      m_pSelf->KWndImage::Init(&m_pSelf->Ini, "Main");
      int nDiff, nStart, nBuffTop, ntxtBuffTop;
      m_pSelf->Ini.GetInteger2("BuffImage", "StartDiff", &nStart, &nDiff);
      m_pSelf->Ini.GetInteger("BuffImage", "BuffTop", 0, &nBuffTop);
      m_pSelf->Ini.GetInteger("BuffImage", "txtBuffTop", 0, &ntxtBuffTop);
      for (int i = 0; i < MAX_BUFF_ROLE; i++) {
        m_pSelf->m_BuffImage[i].Init(&m_pSelf->Ini, "BuffImage");
        m_pSelf->m_BuffImage[i].SetPosition(nStart, nBuffTop);
        m_pSelf->m_txtBuffTime[i].Init(&m_pSelf->Ini, "txtBuffTime");
        m_pSelf->m_txtBuffTime[i].SetPosition(nStart, ntxtBuffTop);
        nStart += nDiff;
      }
      m_pSelf->Ini.GetInteger("BuffList", "BuffCount", 0,
                              &m_pSelf->m_BuffListCount);
    }
  }
}
/*********************************************************************
**********************************************************************/

void KUiPlayerControlBar::Breathe() {
  if (g_pCoreShell) {
    if (m_BuffListCount) {
      Release();
      int nCount = g_pCoreShell->GetGameData(GDI_NPC_STATE_SKILL, 0, 0);
      if (nCount) {
        if (m_pStateSkill =
                (KStateControl *)malloc(sizeof(KStateControl) * nCount)) {
          g_pCoreShell->GetGameData(GDI_NPC_STATE_SKILL,
                                    (unsigned int)m_pStateSkill,
                                    nCount); // ���߳�ִ�У�nCountֵ����
          int nSkillID;
          for (int i = 0; i < nCount; i++) {
            char szKey[16];
            for (int j = 0; j < m_BuffListCount; j++) {
              sprintf(szKey, "Buff_%d_ID", j);
              Ini.GetInteger("BuffList", szKey, 0, &nSkillID);
              if (nSkillID == m_pStateSkill[i].nSkillId) {
                Add(j, &m_pStateSkill[i]);
                break;
              }
            }
          }
        }
      }
    }
  }
}

void KUiPlayerControlBar::Add(int nSkillPos, KStateControl *pStateSkill) {
  if (m_nListCount >= MAX_BUFF_ROLE)
    return;

  char szKeyName[16], szTemp[128], pszDesc[MAX_MESSAGE_LENGTH];
  ;
  memset(pszDesc, 0, sizeof(pszDesc));

  sprintf(szKeyName, "Buff_%d_Image", nSkillPos);
  Ini.GetString("BuffList", szKeyName, "", szTemp, sizeof(szTemp));

  m_BuffImage[m_nListCount].Show();
  m_BuffImage[m_nListCount].SetImage(ISI_T_SPR, szTemp, true);

  sprintf(szKeyName, "Buff_%d_Name", nSkillPos);
  Ini.GetString("BuffList", szKeyName, "", pszDesc, sizeof(pszDesc));
  strcat(pszDesc, "\n");

  sprintf(szKeyName, "Buff_%d_Desc", nSkillPos);
  Ini.GetString("BuffList", szKeyName, "", szTemp, sizeof(szTemp));
  if (szTemp[0]) {
    int offset = 0, nL = 0;
    int nStrL = strlen(szTemp);
    while (szTemp[offset] != 0) {
      if (szTemp[offset] == '<') {
        if (szTemp[offset + 1] == 'e' && szTemp[offset + 2] == 'n' &&
            szTemp[offset + 3] == 't' && szTemp[offset + 4] == 'e' &&
            szTemp[offset + 5] == 'r' && szTemp[offset + 6] == '>')
          nL = 0;
        if (szTemp[offset + 1] == 'c' && szTemp[offset + 2] == 'o' &&
            szTemp[offset + 3] == 'l' && szTemp[offset + 4] == 'o' &&
            szTemp[offset + 5] == 'r') {
          if (szTemp[offset + 6] == '>')
            nL -= 6;
          else {
            int k;
            for (k = 0; k < 12; k++) {
              if (szTemp[offset + 6 + k] == '>')
                break;
            }
            nL -= 6 + k;
          }
        }
        if (szTemp[offset + 1] == 'b' && szTemp[offset + 2] == 'c' &&
            szTemp[offset + 3] == 'l' && szTemp[offset + 4] == 'r') {
          if (szTemp[offset + 5] == '>')
            nL -= 5;
          else {
            if (szTemp[offset + 5] == '=') {
              int k;
              for (k = 0; k < 12; k++) {
                if (szTemp[offset + 5 + k] == '>')
                  break;
              }
              nL -= 5 + k;
            }
          }
        }
      }

      if (nL == 32) {
        memmove(&szTemp[offset + 7], &szTemp[offset], nStrL - offset + 1);
        memcpy(&szTemp[offset], "<enter>", 7);
        offset += 7;
        nStrL += 7;
        nL = 0;
      }
      offset++;
      nL++;
    }
    if (strlen(szTemp) > 127)
      szTemp[127] = 0;

    strcat(pszDesc, szTemp);
  }
  strcat(pszDesc, "\n");

  if (pStateSkill->nLeftTime <= GAME_FPS) {
    strcpy(szTemp, "0:01");
    strcat(pszDesc, "Duy tr� v�nh vi�n");
  } else {
    sprintf(szTemp, "\n%02dh:%02dm:%02ds",
            pStateSkill->nLeftTime / 18 / 60 / 60,
            pStateSkill->nLeftTime / 18 / 60 % 60,
            pStateSkill->nLeftTime / 18 % 60);
    strcat(pszDesc, szTemp);

    if (pStateSkill->nLeftTime >= 24 * 64800) {
      int nDay = pStateSkill->nLeftTime / 18 / 60 / 60 / 24;
      int nHour = (pStateSkill->nLeftTime / 18 / 60 / 60) % 24;
      int nMin = (pStateSkill->nLeftTime / 18 / 60) % 24;
      if (nDay >= 10)
        sprintf(szTemp, "%02dD", nDay);
      else if (nHour >= 10)
        sprintf(szTemp, "%dD%02dH", nDay, nHour);
      else
        sprintf(szTemp, "%dD%02dM", nDay, nMin);
    } else if (pStateSkill->nLeftTime >= 64800) {
      int nHour = pStateSkill->nLeftTime / 18 / 60 / 60;
      int nMin = pStateSkill->nLeftTime / 18 / 60;
      if (pStateSkill->nLeftTime >= 10 * 64800) {
        sprintf(szTemp, "%dH", nHour);
      } else {
        sprintf(szTemp, "%dM", nMin);
      }
    } else if (pStateSkill->nLeftTime >= 10800) {
      int nMin = pStateSkill->nLeftTime / 18 / 60;
      sprintf(szTemp, "%02dM", nMin);
    } else if (pStateSkill->nLeftTime >= 1080) {
      int nMin = pStateSkill->nLeftTime / 18 / 60;
      int nSec = (pStateSkill->nLeftTime / 18) % 60;
      sprintf(szTemp, "%d:%02d", nMin, nSec);
    } else
      sprintf(szTemp, "0:%02d", pStateSkill->nLeftTime / 18);
  }

  m_BuffImage[m_nListCount].SetToolTipInfo(pszDesc, strlen(pszDesc));
  m_txtBuffTime[m_nListCount].Show();
  m_txtBuffTime[m_nListCount].SetText(szTemp);
  m_nListCount++;
}

void KUiPlayerControlBar::Release() {
  for (int i = m_nListCount; i < MAX_BUFF_ROLE; i++) {
    m_BuffImage[i].Hide();
    m_txtBuffTime[i].Hide();
  }
  m_nListCount = 0;
}
