// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __UiSlectItemShop_H__
#define __UiSlectItemShop_H__

#include "../../../core/src/gamedatadef.h"
#include "../Elem/WndButton.h"
#include "../Elem/WndEdit.h"
#include "../Elem/WndText.h"

class KBuySelectItemShop : protected KWndImage {
public:
  static KBuySelectItemShop *OpenWindow(KUiObjAtContRegion *pObj,
                                        KUiItemBuySelInfo *pPriceInfon);
  static KBuySelectItemShop *GetIfVisible();
  static void CloseWindow(bool bDestroy);

private:
  KBuySelectItemShop();
  ~KBuySelectItemShop() {}
  int Initialize(); // ��ʼ��
  void Show();
  void Hide();
  void LoadScheme(const char *pScheme); // ������淽��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void OnCancel();

private:
  static KBuySelectItemShop *m_pSelf;
  KWndText32 m_ItemName;
  KWndText32 m_Money;

  KWndButton m_OkBtn;
  KWndButton m_CancelBtn;

  KUiObjAtContRegion m_ItemInfo;
  KUiItemBuySelInfo m_PriceInfo;
  KWndImage m_Image;

  unsigned int m_uNormalPriceColor;
  unsigned int m_uNotEnoughMoneyPriceColor;
};

#endif // __UiTradeConfirm_H__