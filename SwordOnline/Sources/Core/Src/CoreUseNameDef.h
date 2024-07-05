
#ifndef COREUSENAMEDEF_H
#define COREUSENAMEDEF_H

#define NPCNAME_KEY "<npc>"
#define PLAYERNAME_KEY "<player>"
#define SEXNAME_KEY "<sex>"
#define MAX_PLAYER_IN_ACCOUNT 3

#define SETTING_PATH "\\settings"

//---------------------------- npc res ��� ------------------------------
#define RES_INI_FILE_PATH "\\settings\\npcres"
#define RES_NPC_STYLE_PATH "\\spr\\npcres\\style"
#define RES_SOUND_FILE_PATH "sound"

#define NPC_RES_KIND_FILE_NAME "\\settings\\npcres\\��������.txt"
#define NPC_NORMAL_RES_FILE "\\settings\\npcres\\��ͨnpc��Դ.txt"
#define NPC_NORMAL_SPRINFO_FILE "\\settings\\npcres\\��ͨnpc��Դ��Ϣ.txt"
#define STATE_MAGIC_TABLE_NAME "\\settings\\npcres\\״̬ͼ�ζ��ձ�.txt"
#define PLAYER_RES_SHADOW_FILE "\\settings\\npcres\\���Ƕ�����Ӱ��Ӧ��.txt"
#define NPC_RES_SHADOW_FILE "��ͨnpc������Ӱ��Ӧ��.txt"
#define PLAYER_SOUND_FILE "\\settings\\npcres\\���Ƕ���������.txt"
#define NPC_SOUND_FILE "\\settings\\npcres\\npc����������.txt"

#define NPC_ACTION_NAME "npc������.txt"
#define ACTION_FILE_NAME "������ű�.txt"

#define PLAYER_MENU_STATE_RES_FILE                                             \
  "\\settings\\npcres\\����״̬��ͼ�ζ��ձ�.txt"
#define PLAYER_INSTANT_SPECIAL_FILE "\\settings\\npcres\\˲����Ч.txt"

#define SPR_INFO_NAME "��Ϣ"
#define KIND_NAME_SECT "��������"
#define KIND_NAME_SPECIAL "����npc"
#define KIND_NAME_NORMAL "��ͨnpc"
#define KIND_FILE_SECT1 "����˵���ļ���"
#define KIND_FILE_SECT2 "������Ϊ������1"
#define KIND_FILE_SECT3 "������Ϊ������2"
#define KIND_FILE_SECT4 "������ͼ˳���"
#define KIND_FILE_SECT5 "��Դ�ļ�·��"

//--------------------------- player ������� ------------------------------
// ע����������趨�ļ����밴 �� �� ľ ľ ˮ ˮ �� �� �� �� ��˳������
#define FACTION_FILE "\\settings\\faction\\�����趨.ini"

//--------------------------- player PK��� ------------------------------
#define defPK_PUNISH_FILE "\\settings\\npc\\player\\PKPunish.txt"

//--------------------------- player ������ ------------------------------
#define defPLAYER_TONG_PARAM_FILE "\\settings\\tong\\TongSet.ini"

//----------------------------- ������� ------------------------------
#define CHAT_PATH "\\chat"
#define CHAT_TEAM_INFO_FILE_NAME "Team.cht"
#define CHAT_CHANNEL_INFO_FILE_NAME "Channel.cht"

#define CHAT_CHANNEL_NAME_ALL "Th� gi�i "
#define CHAT_CHANNEL_NAME_SCREEN "G�n �� "
#define CHAT_CHANNEL_NAME_SINGLE "M�t "
#define CHAT_CHANNEL_NAME_TEAM "T� ��i"
#define CHAT_CHANNEL_NAME_FACTION "M�n ph�i "
#define CHAT_CHANNEL_NAME_TONG "Bang h�i "
#define CHAT_CHANNEL_NAME_SCREENSINGLE ""
#define CHAT_CHANNEL_NAME_SYSTEM "H� th�ng"

#define CHAT_TAKE_CHANNEL_NAME_TEAM "T� ��i "
#define CHAT_TAKE_CHANNEL_NAME_FACTION "M�n ph�i "
#define CHAT_TAKE_CHANNEL_NAME_TONG "Bang h�i "
#define CHAT_TAKE_CHANNEL_NAME_SCREENSINGLE "M�t "

//---------------------------- player ��ֵ��� ------------------------------
#define PLAYER_LEVEL_EXP_FILE "\\settings\\npc\\player\\level_exp.txt"
#define PLAYER_LEVEL_ADD_FILE "\\settings\\npc\\player\\level_add.txt"
#define PLAYER_LEVEL_LEAD_EXP_FILE "\\settings\\npc\\player\\level_lead_exp.txt"
#define BASE_ATTRIBUTE_FILE_NAME                                               \
  "\\settings\\npc\\player\\NewPlayerBaseAttribute.ini"
#define PLAYER_PK_RATE_FILE "\\settings\\npc\\PKRate.ini"
#define PLAYER_BASE_VALUE "\\settings\\npc\\player\\BaseValue.ini"

// 00�н� 01Ů�� 02��ľ 03Ůľ 04��ˮ 05Ůˮ 06�л� 07Ů�� 08���� 09Ů��
#define NEW_PLAYER_INI_FILE_NAME "\\settings\\npc\\player\\NewPlayerIni%02d.ini"

//---------------------------- player ������� ------------------------------
#define BUYSELL_FILE "\\settings\\buysell.txt"
#define GOODS_FILE "\\settings\\goods.txt"

//----------------------------- ��Ʒ��� ------------------------------
#define CHANGERES_MELEE_FILE "\\settings\\item\\MeleeRes.txt"
#define CHANGERES_RANGE_FILE "\\settings\\item\\RangeRes.txt"
#define CHANGERES_ARMOR_FILE "\\settings\\item\\ArmorRes.txt"
#define CHANGERES_HELM_FILE "\\settings\\item\\HelmRes.txt"
#define CHANGERES_HORSE_FILE "\\settings\\item\\HorseRes.txt"
#define ITEM_ABRADE_FILE "\\settings\\item\\AbradeRate.ini"

//--------------- npc skill missles �趨�ļ�����������ģ�� -------------
#define SKILL_SETTING_FILE "\\settings\\Skills.txt"
#define MISSLES_SETTING_FILE "\\settings\\Missles.txt"
#define NPC_SETTING_FILE "\\settings\\NpcS.txt"
#define NPC_NAME_FILE "\\settings\\NpcName.txt"
#define NPC_GOLD_TEMPLATE_FILE "\\settings\\npc\\NpcGoldTemplate.txt"

//---------------------------- object ��� ------------------------------
#define OBJ_DATA_FILE_NAME "\\settings\\obj\\ObjData.txt"
#define MONEY_OBJ_FILE_NAME "\\settings\\obj\\MoneyObj.txt"
#define OBJ_NAME_COLOR_FILE "\\settings\\obj\\ObjNameColor.ini"

//---------------------------- С��ͼ��� -------------------------------
#define defLITTLE_MAP_SET_FILE "\\Ui\\Default\\С��ͼ��ɫ.ini"

//----------------------------- ������� --------------------------------
#define defINSTANT_SOUND_FILE "\\settings\\SoundList.txt"
#define defMUSIC_SET_FILE "\\settings\\music\\MusicSet.txt"
#define defMUSIC_FIGHT_SET_FILE "\\settings\\music\\MusicFightSet.ini"

//------------------------------------------------------------------------
#define NPC_LEVELSCRIPT_FILENAME "\\script\\npclevelscript\\npclevelscript.lua"
#define NPC_TEMPLATE_BINFILEPATH "\\settings"
#define NPC_TEMPLATE_BINFILE "NpcTemplate.Bin"
#define WEAPON_PHYSICSSKILLFILE "\\settings\\�������������ձ�.txt"
#define WEAPON_PARTICULARTYPE "��ϸ���"
#define WEAPON_DETAILTYPE "�������"
#define WEAPON_SKILLID "��Ӧ�����ܱ��"
//-----------------------------------------------------------------------
#define WORLD_WAYPOINT_TABFILE "\\settings\\WayPoint.txt"
#define WORLD_STATION_TABFILE "\\settings\\Station.txt"
#define WORLD_STATIONPRICE_TABFILE "\\settings\\StationPrice.txt"
#define WORLD_WAYPOINTPRICE_TABFILE "\\settings\\WayPointPrice.txt"
#define WORLD_DOCK_TABFILE "\\settings\\Wharf.txt"
#define WORLD_DOCKPRICE_TABFILE "\\settings\\WharfPrice.txt"
#define STRINGRESOURSE_TABFILE "\\settings\\StringResource.txt"
#define PLAYER_RANK_SETTING_TABFILE "\\settings\\RankSetting.txt"
#define QUESTITEM_TABFILE "\\settings\\item\\questkey.txt"

//---------------------------------����--------------------------
#define TASK_MISSION_SETTING_TABFILE "\\settings\\task\\missions.txt"

//---------------------------- ��Ϣ��� ------------------------------
// �ر�ע�⣺�����ַ������Ȳ��ܳ���32�ֽڣ����� %d %s �Ƚ��վ��������Ժ�ĳ���
#define MSG_GET_EXP "B�n nh�n ���c <color=green>%d <color>�i�m kinh nghi�m"
#define MSG_GET_EXP_CS "B�n nh�n ���c <color=green>%d00 <color>�i�m kinh nghi�m"
#define MSG_DEC_EXP "B�n t�n th�t <color=green>%d <color>�i�m kinh nghi�m"
#define MSG_LEVEL_UP "Th�ng c�p nh�n v�t, ��ng c�p hi�n t�i %d !"
#define MSG_LEADER_LEVEL_UP "Th�ng c�p l�nh ��o, ��ng c�p hi�n t�i %d !"
#define MSG_GET_ATTRIBUTE_POINT "Nh�n ���c %d �i�m ti�m n�ng !"
#define MSG_GET_SKILL_POINT "Nh�n ���c %d �i�m k� n�ng !"
#define MSG_GET_ATTRIBUTE_SKILL_POINT                                          \
  "Nh�n ���c %d �i�m ti�m n�ng v� %d �i�m k� n�ng !"

#define MSG_TEAM_IS_FULL "Nh�m m� b�n xin ph�p gia nh�p �� �� s� l��ng"
#define MSG_TEAM_OPEN "Nh�m c�a b�n hi�n t�i c� th� ti�p nh�n th�nh vi�n m�i"
#define MSG_TEAM_CLOSE                                                         \
  "Nh�m c�a b�n hi�n t�i kh�ng th� ti�p nh�n th�nh vi�n m�i"
#define MSG_TEAM_MODEPICK_SELF "T� nh�t"
#define MSG_TEAM_MODEPICK_FREE "T� do nh�t"
#define MSG_TEAM_MODEPICK_CAPTAIN "��i tr��ng nh�t"
#define MSG_TEAM_MODEPICK_ALTERNATE "Lu�n phi�n nh�t"
#define MSG_TEAM_PKFOLLOW_OPEN "B�n m� ch� �� PK theo nh�m"
#define MSG_TEAM_PKFOLLOW_CLOSE "B�n ��ng ch� �� PK theo nh�m"
#define MSG_TEAM_AUTO_REFUSE_INVITE "T� ch�i t� ��ng m�i nh�m "
#define MSG_TEAM_NOT_AUTO_REFUSE_INVITE "Kh�ng t� ch�i m�i nh�m"
#define MSG_TEAM_SEND_INVITE "G�i l�i m�i t�i %s v�o nh�m !"
#define MSG_TEAM_GET_INVITE "%s m�i v�o nh�m !"
#define MSG_TEAM_REFUSE_INVITE "%s t� ch�i l�i m�i nh�m !"
#define MSG_TEAM_CREATE "T�o t� ��i m�i !"
#define MSG_TEAM_CREATE_FAIL "T�o t� ��i m�i th�t b�i !"
#define MSG_TEAM_CANNOT_CREATE "Kh�ng th� l�p t� ��i !"
#define MSG_TEAM_TARGET_CANNOT_ADD_TEAM "Kh�ng th� th�m th�nh vi�n !"
#define MSG_TEAM_ADD_MEMBER "%s gia nh�p t� ��i !"
#define MSG_TEAM_SELF_ADD "Tham gia nh�m %s !"
#define MSG_TEAM_DISMISS_CAPTAIN "Gi� t�n nh�m !"
#define MSG_TEAM_DISMISS_MEMBER "%s tho�t ra kh�i t� ��i !"
#define MSG_TEAM_KICK_ONE "%s b� tr�c xu�t ra kh�i t� ��i !"
#define MSG_TEAM_BE_KICKEN "B� tr�c xu�t ra kh�i t� ��i !"
#define MSG_TEAM_APPLY_ADD "Xin ra nh�p t� ��i %s !"
#define MSG_TEAM_APPLY_ADD_SELF_MSG "Ng��i ch�i %s mu�n gia nh�p nh�m !"
#define MSG_TEAM_LEAVE "%s r�i ��i !"
#define MSG_TEAM_LEAVE_SELF_MSG "R�i kh�i t� ��i %s !"
#define MSG_TEAM_CHANGE_CAPTAIN_FAIL1 "B� nhi�m ��i tr��ng kh�ng th�nh c�ng !"
#define MSG_TEAM_CHANGE_CAPTAIN_FAIL2 "%s kh�ng �� t�i l�nh ��o !"
#define MSG_TEAM_CHANGE_CAPTAIN_FAIL3 "T� ��i c� tr��ng nh�m m�i !"
#define MSG_TEAM_CHANGE_CAPTAIN "%s ch� th�nh tr��ng nh�m !"
#define MSG_TEAM_CHANGE_CAPTAIN_SELF "%s ���c b� nhi�m th�nh ��i tr��ng !"

#define MSG_CHAT_APPLY_ADD_FRIEND "Th�m %s v�o danh s�ch b�n b� !"
#define MSG_CHAT_FRIEND_HAD_IN "%s �� ���c th�m v�o nh� l� b�n b� !"
#define MSG_CHAT_GET_FRIEND_APPLY "%s ��ng � th�nh b�n b� !"
#define MSG_CHAT_REFUSE_FRIEND "%s t� ch�i tr� th�nh b�n b� !"
#define MSG_CHAT_ADD_FRIEND_FAIL "Th�m %s l�m h�o h�u th�t b�i"
#define MSG_CHAT_ADD_FRIEND_SUCCESS "B�n v� %s tr� th�nh h�o h�u!"
#define MSG_CHAT_CREATE_TEAM_FAIL1 "Th�nh l�p chia t� h�o h�u th�t b�i."
#define MSG_CHAT_CREATE_TEAM_FAIL2 "�� t�n t�i t� ��i c�ng t�n."
#define MSG_CHAT_CREATE_TEAM_FAIL3 "�� ��t ��n s� t�i �a c�a t� ��i."
#define MSG_CHAT_RENAME_TEAM_FAIL "Thay ��i t�n t� ��i th�t b�i."
#define MSG_CHAT_DELETE_TEAM_FAIL1 "X�a t� ��i th�t b�i."
#define MSG_CHAT_DELETE_TEAM_FAIL2 "T� ��i n�y kh�ng ���c ph�p x�a."
#define MSG_CHAT_FRIEND_ONLINE "%s tr�n m�ng."
#define MSG_CHAT_FRIEND_OFFLINE "%s r�i m�ng"
#define MSG_CHAT_DELETE_FRIEND "B�n v� %s h�y b� quan h� h�o h�u!"
#define MSG_CHAT_DELETED_FRIEND "%s v� b�n h�y b� quan h� h�o h�u!"
#define MSG_CHAT_MSG_FROM_FRIEND "%s g�i m�t tin t�c!"
#define MSG_CHAT_FRIEND_NOT_NEAR "%s kh�ng � g�n ��y!"
#define MSG_CHAT_FRIEND_NOT_ONLINE "%s kh�ng c� tr�n m�ng"
#define MSG_CHAT_TAR_REFUSE_SINGLE_TALK                                        \
  "%s ch�a ��ng k� v�o k�nh tr� chuy�n ri�ng!"

#define MSG_SHOP_NO_ROOM "Kh�ng �� kho�ng tr�ng !"
#define MSG_SHOP_NO_MONEY "Kh�ng �� ng�n l��ng !"

#define MSG_NPC_NO_MANA "Kh�ng �� n�i l�c !"
#define MSG_NPC_NO_STAMINA "Kh�ng �� th� l�c !"
#define MSG_NPC_NO_LIFE "Kh�ng �� sinh l�c !"
#define MSG_NPC_DEATH "%s �� ch�t !"

#define MSG_OBJ_CANNOT_PICKUP "Kh�ng th� nh�t trang b� c�a ng��i kh�c !"
#define MSG_MONEY_CANNOT_PICKUP "Kh�ng th� nh�t ti�n c�a ng��i kh�c !"
#define MSG_OBJ_TOO_FAR "V�t ph�m qu� xa kh�ng th� l�y"
#define MSG_DEC_MONEY "B�n b� m�t <color=yellow>%d <color>l��ng b�c"
#define MSG_EARN_MONEY "B�n nh�n ���c <color=yellow>%d <color>l��ng b�c"
#define MSG_DEATH_LOSE_ITEM "B�n �� b� m�t <color=blue>%s<color>"
#define MSG_ADD_ITEM "B�n nh�n ���c m�t c�i <color=blue>%s"
#define MSG_ITEM_SAME_DETAIL_IN_IMMEDIATE                                      \
  "Thanh ph�m t�t c� c�ng m�t lo�i v�t ph�m!"
#define MSG_CAN_NOT_VIEW_ITEM "Hi�n t�i kh�ng th� coi trang b� ng��i kh�c!"
#define MSG_ITEM_DAMAGED                                                       \
  "Trang b� c�a b�n %s m�c qu� l�u, �� b� h� h�i ho�n to�n!"
#define MSG_ITEM_NEARLY_DAMAGED                                                \
  "Trang b� c�a b�n %s �� g�n h� h�ng, c�n s�a ch�a k�p th�i!"

#define MSG_TRADE_STATE_OPEN "B�t tr�ng th�i giao d�ch !"
#define MSG_TRADE_STATE_CLOSE "��ng tr�ng th�i giao d�ch !"
#define MSG_TRADE_SELF_LOCK "Kh� giao d�ch !"
#define MSG_TRADE_SELF_UNLOCK "M� kho� giao d�ch !"
#define MSG_TRADE_DEST_LOCK "%s �� kho� !"
#define MSG_TRADE_DEST_UNLOCK "%s m� kho� !"
#define MSG_TRADE_SUCCESS "Giao d�ch v�i %s th�nh c�ng !"
#define MSG_TRADE_FAIL "Giao d�ch v�i %s th�t b�i !"
#define MSG_TRADE_SELF_ROOM_FULL "Kh�ng c� �� kho�ng tr�ng !"
#define MSG_TRADE_DEST_ROOM_FULL "%s kh�ng c� �� kho�ng tr�ng !"
#define MSG_TRADE_SEND_APPLY "M�i %s giao d�ch !"
#define MSG_TRADE_GET_APPLY "%s ��ng � giao d�ch !"
#define MSG_TRADE_REFUSE_APPLY "%s t� ch�i giao d�ch !"
#define MSG_TRADE_TASK_ITEM "Kh�ng th� giao d�ch v�t ph�m nhi�m v� !"

#define MSG_PK_NORMAL_FLAG_OPEN "Tr�ng th�i PK chi�n ��u !"
#define MSG_PK_NORMAL_FLAG_CLOSE "Tr�ng th�i PK luy�n c�ng !"
#define MSG_PK_NORMAL_FLAG_OPEN_NEXT "Tr�ng th�i PK �� s�t !"
#define MSG_PK_NORMAL_FLAG_UNKNOWN "Tr�ng th�i PK � d�ng th�c ch�a r�"
#define MSG_PK_HIGHT_LOCK_NOT_SWITCH                                           \
  "Hi�n gi� PK c�a b�n >= %d, tr��c khi PK xin h�y h�y b� tr�ng th�i kh�a "    \
  "b�o hi�m."
#define MSG_PKSTATE_NOT_OPEN "Tr�ng th�i PK n�y ch�a m�"
#define MSG_PK_VALUE "Tr� s� PK hi�n gi� l� %d !"
#define MSG_PK_ERROR_1 "Hi�n t�i b�n �ang � tr�ng th�i phi chi�n ��u!"
#define MSG_PK_ERROR_2 "T�n th� kh�ng th� c�u s�t!"
#define MSG_PK_ERROR_3 "B�n �ang c�ng ng��i kh�c b�n lu�n!"
#define MSG_PK_ERROR_4 "B�n �ang c�ng ng��i kh�c c�u s�t!"
#define MSG_PK_ERROR_5 "B�n kh�ng th� c�u s�t t�n th�!!"
#define MSG_PK_ERROR_6 "��i ph��ng �ang � tr�ng th�i phi chi�n ��u!"
#define MSG_PK_ERROR_7 "��i ph��ng �ang c�ng ng��i kh�c b�n lu�n!"
#define MSG_PK_ERROR_8 "B�n hi�n gi� kh�ng th� c�u s�t!"
#define MSG_PK_ERROR_9 "Ng��i n�y �ang trong tr�ng th�i ��ng c�u s�t"
#define MGS_PK_IS_LOCK                                                         \
  "PK t� phi chi�n ��u chuy�n sang luy�n c�ng ph�i m�t %d ph�t"
#define MGS_PK_IS_LOCK1 "Tr�ng th�i ��c bi�t kh�ng th� chuy�n ki�u chi�n ��u"
#define MGS_PK_IS_LOCK2 "Th�nh vi�n bang h�i m�i c� th� m� chi�n ��u bang h�i"
#define MGS_PK_IS_LOCK3                                                        \
  "Ch� ��i PK nh�m kh�ng th� t� � chuy�n tr�ng th�i chi�n ��u"
#define MGS_PK_IS_LOCK4 "Trong t� ��i kh�ng th� chuy�n PK m� h�nh bang chi�n"
#define MGS_PK_IS_LOCK5 "�i�m PK c�a b�n qu� nhi�u, kh�ng th� h� th� ���c!"
#define MGS_PK_IS_LOCK6                                                        \
  "�i�m kinh nghi�m �m c�a b�n qu� nhi�u, kh�ng th� h� th� ���c!"
#define MGS_PK_IS_LOCK7                                                        \
  "PK chuy�n gi�a c�c tr�ng th�i chi�n ��u ph�i m�t %d gi�y"

#define MSG_PK_ENMITY_SUCCESS_1 "%s c�ng v�i B�n ti�n h�nh c�u s�t"
#define MSG_PK_ENMITY_SUCCESS_2 "Sau 10 gi�y b�t ��u ti�n h�nh c�u s�t"
#define MSG_PK_ENMITY_CLOSE "Tr�ng th�i c�u s�t k�t th�c"
#define MSG_PK_ENMITY_OPEN "B�t ��u ti�n h�nh c�u s�t"

#define MSG_TONG_CREATE_ERROR01 "T�n bang h�i qu� d�i!"
#define MSG_TONG_CREATE_ERROR02 "Phe ph�i bang h�i sai!"
#define MSG_TONG_CREATE_ERROR03                                                \
  "Th�nh vi�n c�n trong bang h�i kh�ng th� t�o bang!"
#define MSG_TONG_CREATE_ERROR04 "T�n ch� �� m�i c� th� th�nh l�p bang h�i!"
#define MSG_TONG_CREATE_ERROR05 "��ng c�p th�nh l�p bang h�i ch�a ��!"
#define MSG_TONG_CREATE_ERROR06                                                \
  "��ng c�p th�ng so�i th�nh l�p bang h�i ch�a ��!"
#define MSG_TONG_CREATE_ERROR07 "Th�nh l�p bang h�i c�n %d ti�n"
#define MSG_TONG_CREATE_ERROR08 "C�n trong t� ��i kh�ng th� th�nh l�p bang h�i!"
#define MSG_TONG_CREATE_ERROR09 "T�n bang h�i sai!"
#define MSG_TONG_CREATE_ERROR10 "Kh�ng �� ti�n �� thi�t l�p bang h�i!"
#define MSG_TONG_CREATE_ERROR11                                                \
  "T�n bang h�i kh�ng h�p l� ho�c tr�ng v�i t�n bang h�i kh�c!"
#define MSG_TONG_APPLY_CREATE "B�n xin th�nh l�p bang h�i!"
#define MSG_TONG_CREATE_SUCCESS "Th�nh l�p bang h�i th�nh c�ng!"
#define MSG_TONG_APPLY_ADD "B�n xin gia nh�p bang h�i!"
#define MSG_TONG_APPLY_ADD_ERROR1                                              \
  "Th�nh vi�n bang h�i n�y kh�ng th� gia nh�p bang h�i kh�c!"
#define MSG_TONG_APPLY_ADD_ERROR2 "T�n ch� �� m�i c� th� gia nh�p bang h�i!"
#define MSG_TONG_APPLY_ADD_ERROR3                                              \
  "C�n trong t� ��i kh�ng th� gia nh�p bang h�i!"
#define MSG_TONG_REFUSE_ADD "%s t� ch�i b�n gia nh�p bang h�i!"
#define MSG_TONG_ADD_SUCCESS "B�n gia nh�p bang h�i!"
#define MSG_TONG_CANNOT_LEAVE1 "Bang ch� kh�ng th� r�i kh�i bang h�i!"
#define MSG_TONG_CANNOT_LEAVE2 "Tr��ng l�o kh�ng th� r�i kh�i bang h�i!"
#define MSG_TONG_BE_KICKED "B�n b� �u�i kh�i bang h�i!"
#define MSG_TONG_LEAVE_SUCCESS "B�n ch� ��ng r�i kh�i bang h�i th�nh c�ng!"
#define MSG_TONG_LEAVE_FAIL "B�n ch� ��ng r�i kh�i bang h�i th�t b�i!"
#define MSG_TONG_CHANGE_AS_MASTER "B�n ���c b� nhi�m l�m bang ch�!!"
#define MSG_TONG_CHANGE_AS_MEMBER                                              \
  "Hi�n t�i b�n tr� th�nh bang ch�ng b�nh th��ng!"

#define MSG_NEW_BLOCK "B�n ch�a m� kh�a r��ng, kh�ng th� chuy�n tr�ng th�i!"
#define MSG_NEW_CHANGESTATEPK10                                                \
  "PK 10 kh�ng th� chuy�n tr�ng th�i khi � ngo�i th�nh"

#define MSG_FUNCTION_FOBIDDENED "Xin l�i, c�ng n�ng n�y t�m th�i �� b� ��ng!"
#define MESSAGE_SYSTEM_ANNOUCE_HEAD "C�ng b� "
#define MESSAGE_TEAM_ANNOUCE_HEAD "Tin ��i"
#define NORMAL_FUNCTION_NAME "main"

enum enumMSG_ID {
  enumMSG_ID_NONE = 0,
  enumMSG_ID_TEAM_KICK_One,
  enumMSG_ID_TEAM_DISMISS,
  enumMSG_ID_TEAM_LEAVE,
  enumMSG_ID_TEAM_REFUSE_INVITE,
  enumMSG_ID_TEAM_APPLY_INVITE_FAIL,
  enumMSG_ID_TEAM_APPLY_INVITE_FAIL2,
  enumMSG_ID_TEAM_SELF_ADD,
  enumMSG_ID_TEAM_ADDMEMBER_NOTVALID,
  enumMSG_ID_TEAM_CHANGE_CAPTAIN_FAIL,
  enumMSG_ID_TEAM_CHANGE_CAPTAIN_FAIL2,
  enumMSG_ID_OBJ_CANNOT_PICKUP,
  enumMSG_ID_OBJ_TOO_FAR,
  enumMSG_ID_DEC_MONEY,
  enumMSG_ID_TRADE_SELF_ROOM_FULL,
  enumMSG_ID_TRADE_DEST_ROOM_FULL,
  enumMSG_ID_TRADE_REFUSE_APPLY,
  enumMSG_ID_TRADE_TASK_ITEM,
  enumMSG_ID_GET_ITEM,
  enumMSG_ID_ITEM_DAMAGED,
  enumMSG_ID_MONEY_CANNOT_PICKUP,
  enumMSG_ID_CANNOT_ADD_TEAM,
  enumMSG_ID_TEAM_IS_FULL,
  enumMSG_ID_CANNOT_INVITE_TEAM,
  enumMSG_ID_TARGET_CANNOT_ADD_TEAM,
  enumMSG_ID_GET_INVITE_TEAM_REPLY,
  enumMSG_ID_PK_NORMAL_NOT_OPEN,
  enumMSG_ID_PK_HIGHT_LOCK_NOT_SWITCH,
  enumMSG_ID_PKSTATE_NOT_OPEN,
  enumMSG_ID_PK_ERROR_1,
  enumMSG_ID_PK_ERROR_2,
  enumMSG_ID_PK_ERROR_3,
  enumMSG_ID_PK_ERROR_4,
  enumMSG_ID_PK_ERROR_5,
  enumMSG_ID_PK_ERROR_6,
  enumMSG_ID_PK_ERROR_7,
  enumMSG_ID_PK_ERROR_8,
  enumMSG_ID_PK_ERROR_9,
  enumMSG_ID_PK_IS_LOCK,
  enumMSG_ID_PK_IS_LOCK1,
  enumMSG_ID_PK_IS_LOCK2,
  enumMSG_ID_PK_IS_LOCK3,
  enumMSG_ID_PK_IS_LOCK4,
  enumMSG_ID_PK_IS_LOCK5,
  enumMSG_ID_PK_IS_LOCK6,
  enumMSG_ID_PK_IS_LOCK7,
  enumMSG_ID_DEATH_LOSE_ITEM,
  enumMSG_ID_TONG_REFUSE_ADD,
  enumMSG_ID_TONG_BE_KICK,
  enumMSG_ID_TONG_LEAVE_SUCCESS,
  enumMSG_ID_TONG_LEAVE_FAIL,
  enumMSG_ID_TONG_CHANGE_AS_MASTER,
  enumMSG_ID_TONG_CHANGE_AS_MEMBER,

  enumMSG_ID_FIGHT_MODE_ERROR1,
  enumMSG_ID_FIGHT_MODE_ERROR2,
  enumMSG_ID_FIGHT_MODE_ERROR3,

  enumMSG_ID_ITEM_CANTREPAIR,

  enumMSG_ID_FUNCTION_FOBIDDENED,

  enumMSG_ID_ITEM_TOWNPORTAL,

  enumMSG_ID_NUM,
  enumMSG_ID_BLOCK_PK,
  enumMSG_ID_CHANGE_STATE_PK10,
};

//---------------------------- ���ָ����� ------------------------------
#define MOUSE_CURSOR_NORMAL 0
#define MOUSE_CURSOR_FIGHT 1
#define MOUSE_CURSOR_DIALOG 2
#define MOUSE_CURSOR_PICK 3
#define MOUSE_CURSOR_USE 8
#define MOUSE_CURSOR_SHOP_ITEM 9
#define MOUSE_CURSOR_TRADE 11
#endif
