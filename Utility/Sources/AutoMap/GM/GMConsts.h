#ifndef __GMCONSTS_H__
#define __GMCONSTS_H__

#define MAX_PING 999999 // ping����ʧ��ʱ���ص���ֵ
#define PING_TIMEOUT                                                           \
  2000 // ping�������������ӳ�,������ GM_TIMER_INTERVAL ��������
#define SYSTEM_TIMEOUT 2000    // �˺ŷ�������ȡ��Ϣ�������ӳ�
#define GM_TIMER_INTERVAL 1000 // GM ��ʱ���Ƶĺ���
#define GM_PING_TIMEOUT_INTER (PING_TIMEOUT / GM_TIMER_INTERVAL)

#define GM_INTERCOUNT_PING 58     // GM ��ʱ Ping ���
#define GM_INTERCOUNT_SHUTUP 60   // ���Զ�ʱ������(һ����)
#define GM_INTERCOUNT_JAIL 60     // ���ζ�ʱ������(һ����)
#define GM_INTERCOUNT_ONLINE 10   // �����������¼��
#define GM_INTERCOUNT_REGISTER 30 // ע���������¼��

#define IS_GM_INTERCOUNT_REACHED(nTickCount, cInterval)                        \
  (((cInterval) / 2) == ((nTickCount) % (cInterval)))
#define IS_GM_INTERCOUNT_REACHED_ADD(nTickCount, cInterval, cAdd)              \
  (((((cInterval) / 2) + (cAdd)) % (cInterval)) == ((nTickCount) % (cInterval)))
#define IS_GM_INTERCOUNT_REACHED_EX(nTickCount, cInterval, cTest)              \
  (((cTest) % (cInterval)) == ((nTickCount) % (cInterval)))

#define GM_DB_NAME "GMPrivate.mdb"
#define PING_MAX_RETRY                                                         \
  3    // �������� ping ʧ�ܺ��Ϊ����
       // PING_MAX_RETRY * GM_PING_TIMEOUT_INTER ����
       // С�� GM_INTERCOUNT_PING
#endif //__GMCONSTS_H__
