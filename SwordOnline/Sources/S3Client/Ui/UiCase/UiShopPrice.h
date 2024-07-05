// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __UiShopPrice_H__
#define __UiShopPrice_H__

#include "../../../core/src/gamedatadef.h"
#include "../Elem/WndButton.h"
#include "../Elem/WndEdit.h"
#include "../Elem/WndText.h"

class KUiShopPrice : protected KWndImage {
public:
  static KUiShopPrice *OpenWindow(
      KUiObjAtContRegion *pObj,
      KUiItemBuySelInfo *pPriceInfo);     // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiShopPrice *GetIfVisible();    // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow(bool bDestroy); // �رմ���
private:
  KUiShopPrice();
  ~KUiShopPrice() {}
  int Initialize(); // ��ʼ��
  void Show();
  void Hide();
  void LoadScheme(const char *pScheme); // ������淽��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void OnCancel();

private:
  static KUiShopPrice *m_pSelf;
  KWndText32 m_ItemName;
  KWndEdit32 m_ItemPrice;
  KWndButton m_OkBtn;
  KWndButton m_CancelBtn;

  KUiObjAtContRegion m_ItemInfo;
  KUiItemBuySelInfo m_PriceInfo;
};

#endif // __UiTradeConfirm_H__