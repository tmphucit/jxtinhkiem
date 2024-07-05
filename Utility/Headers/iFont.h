/*****************************************************************************
                                        ������ʾϵͳ֮����ӿ�

Ӧ�ã�
        ����ϵͳ����ӿڣ�iKFont��
        �ⲿ�ͻ����ô�ϵͳҪ����ͷ�ļ�iKFont.h��

�ӿڹ��ܣ�
        ������ʾ�ַ�����

ʹ�ã�
        1 �ӿ�ʹ�õ��ֿ��ļ���Դ��
                ���ʽ�淶���ɽ��ɽ�ӽ���������ֿ��ļ��ĸ�ʽ�淶��ͬ��
                �����ʽ�淶�ɲο�KFontRes.h�ļ���
        2 �ӿ�ʹ��ǰ�ĳ�ʼ����
                ʹ�ýӿ�ǰ���ȵ�����ӿڷ���Init�������ʹ��Direct3D
Device�����ʼ��ʱ ����Direct3D Device�ӿڵ�ʵ����ָ�롣����ʱ���������Direct3D
Device�� ��ʼ��֮�������ʹ��DirectGraph����...
                ��ʼ����ʹ�Ѿ������ֿ����ݶ�ʧ��
    3 �����ֿ�
                �����ֿ���Ҫ�ڳɹ��ĳ�ʼ������֮�󣬷��������ֿ�ʧ�ܡ����Ѿ������ֿ�
                ֮�����ֱ���ظ����ô˽ӿں������Ը����ֿ⣬����Ҫ�ڵ��ó�ʼ��������
        4 ʹ�ú�ӿڵĹرգ�
                ������ʹ�ô˽ӿ�ʵ��ʱ������ӿڷ���Terminate�ر�����
                �ر�֮�������±���ʼ�������ֿ��Ա�ʹ�á�

        5
��������ƣ��ַ���������ʱ�����ַ������俪ʼ���Ƶ�λ�ã�������ָ���ַ���
          ����ɫ�����û��ָ����ɫ����Ĭ��Ϊ��ɫ�����ṩ��һ���ر��ܣ����ַ�����
          ���������ǰһ��������ַ����ĺ��棬����Ҫ�˹��ܰ��ַ�����ʼ����λ�õ�
          X��Y������ΪKFL_FOLLOW�����ˡ�
          TextOut�����Ĳ���nLineWidth(�����)�������ֵΪ���ڵ���һ��ȫ���ַ����
          �Ŀ�ȣ�����ʾ�ַ���ʱ���������п��Զ����С�
        6 ��ģ�������˵Ļ�ͼ�豸Ҫ��lost state����ָ�Ϊoperational
state֮ǰ��Ҫ��
          ��iKFont�Ľӿں���InvalidateDeviceObjectsʹDevice״̬�л�����Ӱ��Ļ�ͼ��
          ���������ʧЧ������֮��Ҫ����iKFont�ӿڵ�RestoreDeviceObjects������һЩ
          �豸������ݵĻָ�������

/*******************************************************************************
// FileName			:	KFont.h
// FileAuthor		:	Wooy
// FileCreateDate	:	2002-9-5
// FileDescription	:	����ӿ�
// Revision Count	:
*******************************************************************************/

#define pure = 0
#define KF_FOLLOW (-2147483647 - 1)
#define KF_ZERO_END -1

struct iKFont {
  // ��ʼ��
  virtual bool Init(void *pDrawDevice) pure;
  // �����ֿ�
  virtual bool Load(const char *pszFontFile) pure;
  // �������������
  virtual void Terminate() pure;
  // ��ʾ�ַ���
  virtual void TextOut(const char *pszText, int nCount = KF_ZERO_END,
                       int nX = KF_FOLLOW, int nY = KF_FOLLOW,
                       unsigned int nColor = 0xff000000,
                       int nLineWidth = 0) pure;
  // ʹDevice�豸���/��������ʧЧ
  virtual void InvalidateDeviceObjects() pure;
  // �ڻ�ͼ�豸��lost state�ָ�Ϊoperational
  // state��iKFont���豸������ݵĻָ�������
  virtual bool RestoreDeviceObjects() pure;
  // �ͷŽӿ�ʵ������
  virtual void Release() pure;
};
