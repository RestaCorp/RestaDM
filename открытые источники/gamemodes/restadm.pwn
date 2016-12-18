

// ==================================================[INCLUDE's]==================================================


#include <a_samp>
#include <mxINI>
#include <streamer>
#include <sscanf2>
#include <dc_cmd>
#include <foreach>


// ==================================================[Forward's]==================================================


forward reklama();
forward kicknoaut1(playerid);
forward spawnplayer1(deathhh);
forward saveccse();


// ==================================================[ПЕРЕМЕНЫЕ]==================================================

new ahelp_1[] = "{FF0D0D}/setskin {FFFFFF}-{EBEBEB} Выдать скин игроку\n";
new ahelp_2[] = "{FF0D0D}/respawnme {FFFFFF}-{EBEBEB} Респавнить себя\n";
new ahelp_3[] = "{FF0D0D}/respawn {FFFFFF}-{EBEBEB} Респавнить игрока\n";
new ahelp_4[] = "{FF0D0D}/restart {FFFFFF}-{EBEBEB} Перезапуск сервера\n";
new ahelp_5[] = "{FF0D0D}/clearchat {FFFFFF}-{EBEBEB} Очистить чат\n";
new ahelp_6[] = "{FF0D0D}/goto {FFFFFF}-{EBEBEB} Телепорт к игроку\n";
new ahelp_7[] = "{FF0D0D}/setteam {FFFFFF}-{EBEBEB} Смена команды\n";
new ahelp_8[] = "{FF0D0D}/adminhelp {FFFFFF}-{EBEBEB} Админ помощь\n";
new ahelp_9[] = "{FF0D0D}/adminlogin {FFFFFF}-{EBEBEB} Авторизация администраторам\n";
new ahelp_10[] = "{FF0D0D}/teleport {FFFFFF}-{EBEBEB} Телепорт игрока к игроку\n";
new ahelp_11[] = "{FF0D0D}/gethere {FFFFFF}-{EBEBEB} Телепорт к игрока к себе\n";
new ahelp_12[] = "{FF0D0D}/tp {FFFFFF}-{EBEBEB} Телепорты\n";
new ahelp_13[] = "{FF0D0D}/tpall {FFFFFF}-{EBEBEB} Телепорт всех игроков к себе\n";
new ahelp_14[] = "{FF0D0D}/ggun {FFFFFF}-{EBEBEB} Выдача оружия\n";
new ahelp_15[] = "{FF0D0D}/ugun {FFFFFF}-{EBEBEB} Забрать оружие\n";
new ahelp_16[] = "{FF0D0D}/msg {FFFFFF}-{EBEBEB} Сообщение от лица администратора\n";
new ahelp_17[] = "{FF0D0D}/kick {FFFFFF}-{EBEBEB} Кикнуть игрока\n";
new ahelp_18[] = "{FF0D0D}/ban {FFFFFF}-{EBEBEB} Забанить игрока\n";
new ahelp_19[] = "{FF0D0D}/sethp {FFFFFF}-{EBEBEB} Установить HP\n";
new ahelp_20[] = "{FF0D0D}/gm {FFFFFF}-{EBEBEB} GodMode для администраций";
new ahelp_21[] = "{FF0D0D}/ad {FFFFFF}-{EBEBEB} Реклама";
new ahelp_22[] = "{FF0D0D}/setcolor {FFFFFF}-{EBEBEB} Смена цвета игрока";
new ahelp_23[] = "{FF0D0D}/achat {FFFFFF}-{EBEBEB} Админ чат";
new ahelp_24[] = "{FF0D0D}/getcord {FFFFFF}-{EBEBEB} Узнать кординаты";
new ahelp_25[] = "{FF0D0D}/otvet {FFFFFF}-{EBEBEB} Ответить игроку";
new ahelp_26[] = "{FF0D0D}/tpcord {FFFFFF}-{EBEBEB} Телепорт на кординаты";

new GZ_ZONE1;
new GZ_ZONE2;
new GZ_ZONE3;
new GZ_ZONE4;
new GZ_ZONE5;
new GZ_ZONE6;
new GZ_ZONE7;
new GZ_ZONE8;
new GZ_ZONE9;
new GZ_ZONE10;
new GZ_ZONE11;
new GZ_ZONE12;
new GZ_ZONE13;
new GZ_ZONE14;
new GZ_ZONE15;
new GZ_ZONE16;
new GZ_ZONE17;
new GZ_ZONE18;
new GZ_ZONE19;
new GZ_ZONE20;
new GZ_ZONE21;
new GZ_ZONE22;
new GZ_ZONE23;
new GZ_ZONE24;
new GZ_ZONE25;
new GZ_ZONE26;
new GZ_ZONE27;
new GZ_ZONE28;
new GZ_ZONE29;
new GZ_ZONE30;
new GZ_ZONE31;
new GZ_ZONE32;
new GZ_ZONEBLUE;
new GZ_ZONEGREEN;


enum accounts { 
pLogged[3], 
padmin_logged[3],
pPlayerTeam1[3],
pPlayerFile[32],
padmin_acc[3],
pScore[16],
pPlayerName[MAX_PLAYER_NAME]
}

new database[MAX_PLAYERS][accounts];

new DIG_TEXT_REG[1000];
new DIG_TEXT_AUT[1000];

new Text:WebTextDraw[2];

new kicknoaut;


// ==================================================[DEFINES]==================================================


#define 				SRV_VERSION 			"0.1.9А"

#define 				SRV_HOSTNAME			"Resta DeatchMatch | Сервер "SVR_NUMBER" | Русский :)"
#define 				SRV_GAMEMODE			"Resta DM / "SRV_VERSION""
#define 				SRV_MAPNAME				"Mapping by _Resta_"
#define 				SRV_LANG				"Русский"
#define 				SRV_URL					"RestaDM.ru"
#define 				SVR_NUMBER				"01"

#define 				SCM 					SendClientMessage
#define 				SRC 					SendRconCommand
#define 				SCMTA  					SendClientMessageToAll
#define 				GZC						GangZoneCreate
#define 				CV 						CreateVehicle
#define 				CO 						CreateObject
#define 				SPD 					ShowPlayerDialog
#define 				GZSFA 					GangZoneShowForAll

#define 				COLOR_YELLOW 			0xEEFF4FFF

#define 				DIG_REG					1
#define 				DIG_AUT 				2
#define 				DIG_WEAPONS 			69


// ==================================================[MAIN]==================================================


main()
{
	printf("\t\t\t\t"SRV_HOSTNAME"\n\n");
	printf("\t\t\t\tЗащита от взлома RCON пароля. V 0.1");
	printf("\t\t\t\tСделал _Resta_");
	printf("\t\t\t\tЛегкая защита ,это всегда безопасная защита...");
	printf("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
}


// ==================================================[КАСТОМНЫЕ ПАБЛИКИ]==================================================


public kicknoaut1(playerid) 
{ 
	Kick(playerid);
	return 1; 
}


public saveccse()
{
    for(new f; f < GetMaxPlayers(); f++)
    {
        if(!IsPlayerConnected(f))continue;
        saveaccs(f);
    }
}


public reklama() 
{ 
    SCMTA(COLOR_YELLOW,"{FF0D0D}[AD]{FFFFFF}Уже 0.1.9А версия мода!");
    SCMTA(COLOR_YELLOW,"{FF0D0D}[AD]{FFFFFF}_Resta_ ,старается делать его лучше :O");
    SCMTA(COLOR_YELLOW,"{FF0D0D}[AD]{FFFFFF}Наш сайт : RestaDM.ru ,на нем будут новости :)");
}


public spawnplayer1(deathhh)
{
	ResetPlayerMoney(deathhh);
	if (database[deathhh][pScore] <= 0)
	{
		GivePlayerMoney(deathhh, database[deathhh][pScore]-1);
	}
	switch(strval(database[deathhh][pPlayerTeam1]))
	{
		case 1:
		{
			switch(random(5))
			{
				case 0: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 114);
					SetPlayerPos(deathhh, 1483.3824,-1688.6217,14.0469);
				}
				case 1:
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 115);
					SetPlayerPos(deathhh, 1483.3278,-1697.5630,14.0469);
				}
				case 2: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 116);
					SetPlayerPos(deathhh, 1483.2755,-1708.1353,14.0469);
				}
				case 3: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 174);
					SetPlayerPos(deathhh, 1475.3973,-1708.5630,14.0469);
				}
				case 4: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 175);
					SetPlayerPos(deathhh, 1474.7097,-1702.8682,14.0469);
				}
				case 5: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 173);
					SetPlayerPos(deathhh, 1473.9222,-1697.2137,14.0469);
				}
			}
		}
		case 2:
		{
			switch(random(5))
			{
				case 0: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 269);
					SetPlayerPos(deathhh, 1252.1062,-1262.4525,13.2773);
				}
				case 1: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 270);
					SetPlayerPos(deathhh, 1252.9330,-1253.9785,13.5474);
				}
				case 2: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 271);
					SetPlayerPos(deathhh, 1264.4341,-1254.4519,13.2530);
				}
				case 3: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 105);
					SetPlayerPos(deathhh, 1263.2460,-1262.2981,13.2687);
				}
				case 4: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 107);
					SetPlayerPos(deathhh, 1271.2838,-1262.5474,13.4903);
				}
				case 5: 
				{
					SpawnPlayer(deathhh);
					SetPlayerSkin(deathhh, 106);
					SetPlayerPos(deathhh, 1245.2670,-1264.4727,13.3498);
				}
			}
		}
		default:
		{
			Kick(deathhh);
		}
	} 
	return 0;
}


// ==================================================[ПАБЛИКИ]==================================================


public OnGameModeInit()
{
	rcon_generate();
	SRC("hostname "SRV_HOSTNAME"");
	SRC("gamemodetext "SRV_GAMEMODE"");
	SRC("mapname "SRV_MAPNAME"");
	SRC("weburl "SRV_URL"");
	SRC("Language "SRV_LANG"");
	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0);
	gz_create();
	objects();
	SetTimer("reklama",350000,1);
    WebTextDraw[1] = TextDrawCreate(559.500000, 9.625000, "Resta"); 
    TextDrawLetterSize(WebTextDraw[1], 0.321000, 1.109999); 
    TextDrawAlignment(WebTextDraw[1], 1); 
    TextDrawColor(WebTextDraw[1], -1); 
    TextDrawSetShadow(WebTextDraw[1], 1); 
    TextDrawSetOutline(WebTextDraw[1], 0); 
    TextDrawBackgroundColor(WebTextDraw[1], 51); 
    TextDrawFont(WebTextDraw[1], 2); 
    TextDrawSetProportional(WebTextDraw[1], 1); 
    WebTextDraw[0] = TextDrawCreate(559.500000, 20.562500, "DeatchMatch"); 
    TextDrawLetterSize(WebTextDraw[0], 0.235999, 0.773125); 
    TextDrawAlignment(WebTextDraw[0], 1); 
    TextDrawColor(WebTextDraw[0], -5963521); 
    TextDrawUseBox(WebTextDraw[0], true); 
    TextDrawBoxColor(WebTextDraw[0], 0); 
    TextDrawSetShadow(WebTextDraw[0], 2); 
    TextDrawSetOutline(WebTextDraw[0], 0); 
    TextDrawBackgroundColor(WebTextDraw[0], 51); 
    TextDrawFont(WebTextDraw[0], 2); 
    TextDrawSetProportional(WebTextDraw[0], 1); 
	return 1;
}

public OnGameModeExit()
{
	SetTimer("saveccse",1000,0);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	setcameras(playerid);
	new msg1[128];
    format(database[playerid][pPlayerFile], 32, "users/%s.ini", database[playerid][pPlayerName]);
    format(DIG_TEXT_REG, sizeof(DIG_TEXT_REG), "\n\n{F5FF6B}Resta DeatchMatch\n\n{FFFFFF}Регистрация аккаунта...\nАккаунт : {FF0000}%s ,не существует!\n\n\t\t{00FF66}<1>Макс длина пароля 16 символов!\n\t\t<2>За защиту аккаунта вы несете ответственность!\n\t\t<3>Желательно прочитать правила сервера ,перед игрой!\n\n", database[playerid][pPlayerName]);
   	format(DIG_TEXT_AUT, sizeof(DIG_TEXT_AUT), "\n\n{F5FF6B}Resta DeatchMatch\n\n{FFFFFF}Авторизация аккаунта...\nАккаунт : {2BFF00}%s ,уже зарегистрирован!\n\n\t\t{FF1F1F}<1>У вас есть 1 попытка чтоб войди в аккаунт!\n\t\t<2>Если ваш аккаунт взломали,то обратитесь администраторам!\n\t\t<3>У вас есть 40 секунд на авторизацию!\n\n", database[playerid][pPlayerName]);
    if (fexist(database[playerid][pPlayerFile]))
    {
		for(new i = 0; i < 100; i++)
		{
			SCM(playerid, COLOR_YELLOW, " ");
		}
		kicknoaut = SetTimer("kicknoaut1", 40000, 0); 
    	format(msg1, sizeof(msg1), "{FF0D0D}[Resta DM]{FFFFFF}Привет {FF0D0D}%s{FFFFFF},чтоб играть надо авторизироватся!", database[playerid][pPlayerName]);
		SCM(playerid, COLOR_YELLOW, msg1);
    	SPD(playerid,DIG_AUT,DIALOG_STYLE_PASSWORD,"Resta DeatchMatch",DIG_TEXT_AUT,"Авторизация","Выход");
    }
    else
    {
		for(new i = 0; i < 100; i++)
		{
			SCM(playerid, COLOR_YELLOW, " ");
		}
    	format(msg1, sizeof(msg1), "{FF0D0D}[Resta DM]{FFFFFF}Привет {FF0D0D}%s{FFFFFF},чтоб играть на сере тебе нужно зарегистрироватся!", database[playerid][pPlayerName]);
		SCM(playerid, COLOR_YELLOW, msg1);
    	SPD(playerid,DIG_REG,DIALOG_STYLE_INPUT,"Resta DeatchMatch",DIG_TEXT_REG,"Регистрация","Выход");
    }
	return 1;
}

public OnPlayerConnect(playerid)
{
	SetSpawnInfo(playerid, 0, 3, 314.0633,-1523.3092,41.0391,236.4447, 0, 0, 0, 0, 0, 0);
	SetPlayerColor(playerid,0x878787FF);
	gz_show();
	rem_objects(playerid);
	format(database[playerid][padmin_logged], 3, "0");
	format(database[playerid][pLogged], 3, "0");
	format(database[playerid][padmin_logged], 3, "0");
	GetPlayerName(playerid, database[playerid][pPlayerName], 24);
	TextDrawShowForPlayer(playerid,WebTextDraw[0]);
	TextDrawShowForPlayer(playerid,WebTextDraw[1]);
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DIG_REG:
		{
			if(response)
			{
				if(strlen(inputtext) < 6 || strlen(inputtext) > 16)
				{
			    	SCM(playerid, COLOR_YELLOW, "{FF0D0D}[Resta DM]{FFFFFF}Пароль от 6 до 16 символо!");
			    }
			    else
			    {
					if (fexist(database[playerid][pPlayerFile]))
					{
	    				SPD(playerid,DIG_AUT,DIALOG_STYLE_PASSWORD,"Resta DeatchMatch",DIG_TEXT_AUT,"Авторизация","Выход");
					}
					else
					{
						new iniFile = ini_createFile(database[playerid][pPlayerFile]);
						if(iniFile < 0) ini_openFile(database[playerid][pPlayerFile]);
	            		{
	               			ini_setString(iniFile,"Pass", inputtext);
	               			ini_setString(iniFile,"Admin", "0");
	               			ini_setString(iniFile,"AdminPass", "NULL");
	               			ini_setString(iniFile,"score", "0");
			                ini_closeFile(iniFile);
			                SPD(playerid,DIG_AUT,DIALOG_STYLE_PASSWORD,"Resta DeatchMatch",DIG_TEXT_AUT,"Авторизация","Выход");
			            }
			        }
			    }
			}
			else
			{
				SCM(playerid, COLOR_YELLOW, "{FF0D0D}[Resta DM]{FFFFFF}Вы нажали кнопку'Выход'.ЧТоб выйди напишите (/q)uit");
				SetTimer("kicknoaut1", 1000, 0); 
			}
		}
		case DIG_AUT:
		{
			if(!strlen(inputtext)) return Kick(playerid);
			if(response)
			{
				new password[17];
				new acc_admin[2];
				if(IsPlayerNPC(playerid))return 1;
				new iniFile = ini_openFile(database[playerid][pPlayerFile]);
				ini_getString(iniFile, "Pass",password);
				if(!strcmp(inputtext, password, true))
				{
					for(new i = 0; i < 100; i++)
					{
						SCM(playerid, COLOR_YELLOW, " ");
					}
					KillTimer(kicknoaut);
					SetPlayerColor(playerid,0xFFFFFFFF);
					ini_getString(iniFile, "Admin",acc_admin);
					if (strval(acc_admin) == 1)
					{
						printf("Player : %s admin!", database[playerid][pPlayerName]);
						format(database[playerid][padmin_acc], 3, "1");
					}
	                ini_closeFile(iniFile);
	                SPD(playerid,4,DIALOG_STYLE_LIST,"Выбор команды","{001AFF}Blue Team\n{27FF00}Green Team","Выбрать","Выход");
	                return 1;
				}
				else
				{
	                SCM(playerid, COLOR_YELLOW, "{FF0D0D}[Resta DM]{FFFFFF}Не верный пароль!");
					SetTimer("kicknoaut1", 1000, 0); 
	                return 1;
				}
			}
			else
			{
				SCM(playerid, COLOR_YELLOW, "{FF0D0D}[Resta DM]{FFFFFF}Вы нажали кнопку'Выход'.ЧТоб выйди напишите (/q)uit");
				SetTimer("kicknoaut1", 1000, 0); 
			}
		}
		case 3:
		{
			if(!strlen(inputtext)) return Kick(playerid);
			if(response)
			{
				new admin_pass[64];
				if(IsPlayerNPC(playerid))return 1;
				new iniFile = ini_openFile(database[playerid][pPlayerFile]);
				ini_getString(iniFile, "AdminPass",admin_pass);
				if(!strcmp(inputtext, admin_pass, true))
				{
					new massage_login[128];
					format(database[playerid][padmin_logged], 3, "1");
	                ini_closeFile(iniFile);
	                format(massage_login, sizeof(massage_login), "{FF0D0D}[A]{FFFFFF}Администратор %s,зашел на сервер!", database[playerid][pPlayerName]);
	                SCMTA(COLOR_YELLOW, massage_login);
	                return 1;
				}
				else
				{
					printf("WARNING!!! Player : %s led not the correct password!", database[playerid][pPlayerName]);
					Kick(playerid);
	                return 1;
				}
			}
			else
			{

			}
		}
		case 4:
		{
			if(response)
			{
				if(listitem == 0)
				{
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[ТУТОРИАЛ]{FFFFFF}Чтоб взять оружие нужно написать /menu");
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[ТУТОРИАЛ]{FFFFFF}Машины респавнятся когда они поломаются!");
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[ТУТОРИАЛ]{FFFFFF}Основатель - _Resta_ ,его вк vk.com/restadm");
					format(database[playerid][pPlayerTeam1], 3, "1");
					SetPlayerColor(playerid,0x001AFFFF);
					format(database[playerid][pLogged], 3, "1");
	                SpawnPlayer(playerid);
	                SetPlayerTeam(playerid, 1);
	                loadccs(playerid);
					switch(random(5))
					{
						case 0: 
						{
							SetPlayerSkin(playerid, 114);
							SetPlayerPos(playerid, 1483.3824,-1688.6217,14.0469);
						}
						case 1:
						{
							SetPlayerSkin(playerid, 115);
							SetPlayerPos(playerid, 1483.3278,-1697.5630,14.0469);
						}
						case 2: 
						{
							SetPlayerSkin(playerid, 116);
							SetPlayerPos(playerid, 1483.2755,-1708.1353,14.0469);
						}
						case 3: 
						{
							SetPlayerSkin(playerid, 174);
							SetPlayerPos(playerid, 1475.3973,-1708.5630,14.0469);
						}
						case 4: 
						{
							SetPlayerSkin(playerid, 175);
							SetPlayerPos(playerid, 1474.7097,-1702.8682,14.0469);
						}
						case 5: 
						{
							SetPlayerSkin(playerid, 173);
							SetPlayerPos(playerid, 1473.9222,-1697.2137,14.0469);
						}
					}
				}
                if(listitem == 1)
                {
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[ТУТОРИАЛ]{FFFFFF}Чтоб взять оружие нужно написать /menu");
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[ТУТОРИАЛ]{FFFFFF}Машины респавнятся когда они поломаются!");
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[ТУТОРИАЛ]{FFFFFF}Основатель - _Resta_ ,его вк vk.com/restadm");
                	format(database[playerid][pPlayerTeam1], 3, "2");
                	SetPlayerColor(playerid,0x27FF00FF);
					format(database[playerid][pLogged], 3, "1");
	                SpawnPlayer(playerid);
	                SetPlayerTeam(playerid, 2);
	                loadccs(playerid);
					switch(random(5))
					{
						case 0: 
						{
							SetPlayerSkin(playerid, 269);
							SetPlayerPos(playerid, 1252.1062,-1262.4525,13.2773);
						}
						case 1: 
						{
							SetPlayerSkin(playerid, 270);
							SetPlayerPos(playerid, 1252.9330,-1253.9785,13.5474);
						}
						case 2: 
						{
							SetPlayerSkin(playerid, 271);
							SetPlayerPos(playerid, 1264.4341,-1254.4519,13.2530);
						}
						case 3: 
						{
							SetPlayerSkin(playerid, 105);
							SetPlayerPos(playerid, 1263.2460,-1262.2981,13.2687);
						}
						case 4: 
						{
							SetPlayerSkin(playerid, 107);
							SetPlayerPos(playerid, 1271.2838,-1262.5474,13.4903);
						}
						case 5: 
						{
							SetPlayerSkin(playerid, 106);
							SetPlayerPos(playerid, 1245.2670,-1264.4727,13.3498);
						}
					}
                }
                return 1;
			}
			else
			{
				Kick(playerid);
			}
		}

		case 5:
		{
			if(response)
			{
				if(listitem == 0)
				{
					SPD(playerid, 69, DIALOG_STYLE_TABLIST_HEADERS, !"Покупка оружия",
				    !"Название оружия\tЦена\tКол-во патронов\n\
				    Нож\t$5\t1\n\
				    9mm\tБесплатно\t10\n\
				    9mm (Глушитель)\t$20\t20\n\
				    Дигл\t$25\t20\n\
				    Дробовик\t$30\t25\n\
				    Обрезы\t$30\t20\n\
				    Боевой дробовик\t$35\t15\n\
				    Микро узи\t$38\t30\n\
				    MP5\t$45\t35\n\
				    AK-47\t$55\t40\n\
				    M4A1\t$55\t40\n\
				    Tec-9\t$60\t50\n\
				    Винтовка\t$70\t40\n\
				    Снайперская винтовка\t$80\t45\n\
				    Огнемет\t$130\t100\n\
				    C4\t$200\t30\n\
				    Дымофуха\t$300\t100\n\
				    Молотов\t$350\t100\n\
				    RPG\t$500\t1", //и т. д.
				    !"Купить", !"Отмена");
				}
				if(listitem == 1)
				{
					new dialogtext[720];
					format(dialogtext, sizeof(dialogtext), "\n\n{F5FF6B}Resta DeatchMatch\n\n{FFFFFF}Правила при общений с администрацией\n\n\t\t{00FF66}<1>Макс длина запроса 64 символов!\n\t\t<2>%s,запрещено просить (Хп,машину,скин и админку)!\n\t\t<3>Запрещена цензурная лексика!\n\n", database[playerid][pPlayerName]);
					SPD(playerid, 70, DIALOG_STYLE_INPUT, "Связь с администрацией", dialogtext, "Отправить", "Назад");
				}
                return 1;
			}
			else
			{
				
			}
		}

		case 70:
		{
			if(response)
			{
				new string[128];
				if(gettime()-GetPVarInt(playerid,"report")<60) return SCM(playerid,COLOR_YELLOW,"{FF0D0D}[АДМИНИСТРАЦИЯ]{FFFFFF} Вопрос/жалобу можно отправлять 1 раз в 60 секунд.");
   				SetPVarInt(playerid,"report",gettime());
   				SCM(playerid,COLOR_YELLOW,"{FF0D0D}[АДМИНИСТРАЦИЯ]{FFFFFF} Ожидаете ответа от администраций!");
			    format(string, sizeof(string),"{FF0D0D}[ВОПРОС]{FFFFFF}От игрока %s >> %s", database[playerid][pPlayerName], inputtext);
			    admscm(string);
			    return 1;
			}
			else
			{
				SPD(playerid,5,DIALOG_STYLE_LIST,"Меню сервера","Покупка оружия\nСвязь с администрацией","Выбрать","Закрыть");
			}
		}

		case 10:
		{
			if(response)
			{
				if(listitem == 0)
				{
					switch(random(3))
					{
						case 0: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 22, 50);
						}
						case 1:
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 23, 20);
						}
						case 2: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							ResetPlayerWeapons(playerid);
							GivePlayerWeapon(playerid, 24, 20);
						}
					}
				}
				if(listitem == 1)
				{
					switch(random(3))
					{
						case 0: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 25, 20);
						}
						case 1:
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							ResetPlayerWeapons(playerid);
							GivePlayerWeapon(playerid, 26, 15);
						}
						case 2: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 27, 20);
						}
					}
				}
				if(listitem == 2)
				{
					switch(random(5))
					{
						case 0: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 28, 40);
						}
						case 1:
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							ResetPlayerWeapons(playerid);
							GivePlayerWeapon(playerid, 29, 30);
						}
						case 2: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 30, 25);
						}
						case 3: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							GivePlayerWeapon(playerid, 31, 30);
						}
						case 4: 
						{
							SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Рандомное оружие выдано...");
							ResetPlayerWeapons(playerid);
							GivePlayerWeapon(playerid, 32, 35);
						}
					}
				}
				if(listitem == 3)
				{
					SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружия пропали 0_o...");
					ResetPlayerWeapons(playerid);
				}
                return 1;
			}
			else
			{
				
			}
		}

		case 6:
		{
			if(response)
			{
				if(listitem == 0)
				{
					SetPlayerPos(playerid, 1481.5964,-1769.9546,21.9107);
				}
                if(listitem == 1)
                {
                	//meruakwuswa
                	SetPlayerPos(playerid, 1481.2214,-1790.3585,156.7533);
                }
                if(listitem == 2)
                {
                	//green
                	SetPlayerPos(playerid, 1264.4341,-1254.4519,13.2530);
                }
                if(listitem == 3)
                {
                	//blue
                	SetPlayerPos(playerid, 1473.9222,-1697.2137,14.0469);
                }
                if(listitem == 4)
                {
                	//vusotka
                	SetPlayerPos(playerid, 1549.3580,-1364.7190,326.2183);
                }
                return 1;
			}
			else
			{
				
			}
		}
		case DIG_WEAPONS:
		{
			if(response)
			{
				if(listitem == 0)
				{
					if(GetPlayerMoney(playerid) >= 5)
					{
						GivePlayerMoney(playerid, -5);
						GivePlayerWeapon(playerid, 4, 1);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 1)
				{
					if(GetPlayerMoney(playerid) <= 0 || GetPlayerMoney(playerid) >= 25)
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас хватает денег на нормальное оружие!");
					}
					else
					{
						GivePlayerWeapon(playerid, 22, 10);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
				}
				if(listitem == 2)
				{
					if(GetPlayerMoney(playerid) >= 20)
					{
						GivePlayerMoney(playerid, -20);
						GivePlayerWeapon(playerid, 23, 20);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 3)
				{
					if(GetPlayerMoney(playerid) >= 25)
					{
						GivePlayerMoney(playerid, -25);
						GivePlayerWeapon(playerid, 24, 20);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 4)
				{
					if(GetPlayerMoney(playerid) >= 30)
					{
						GivePlayerMoney(playerid, -30);
						GivePlayerWeapon(playerid, 25, 25);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 5)
				{
					if(GetPlayerMoney(playerid) >= 30)
					{
						GivePlayerMoney(playerid, -30);
						GivePlayerWeapon(playerid, 26, 20);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 6)
				{
					if(GetPlayerMoney(playerid) >= 35)
					{
						GivePlayerMoney(playerid, -35);
						GivePlayerWeapon(playerid, 27, 15);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 7)
				{
					if(GetPlayerMoney(playerid) >= 38)
					{
						GivePlayerMoney(playerid, -38);
						GivePlayerWeapon(playerid, 28, 30);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 8)
				{
					if(GetPlayerMoney(playerid) >= 45)
					{
						GivePlayerMoney(playerid, -56);
						GivePlayerWeapon(playerid, 29, 35);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 9)
				{
					if(GetPlayerMoney(playerid) >= 55)
					{
						GivePlayerMoney(playerid, -55);
						GivePlayerWeapon(playerid, 30, 40);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 10)
				{
					if(GetPlayerMoney(playerid) >= 55)
					{
						GivePlayerMoney(playerid, -55);
						GivePlayerWeapon(playerid, 31, 40);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 11)
				{
					if(GetPlayerMoney(playerid) >= 60)
					{
						GivePlayerMoney(playerid, -60);
						GivePlayerWeapon(playerid, 32, 50);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 12)
				{
					if(GetPlayerMoney(playerid) >= 70)
					{
						GivePlayerMoney(playerid, -70);
						GivePlayerWeapon(playerid, 33, 40);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 13)
				{
					if(GetPlayerMoney(playerid) >= 80)
					{
						GivePlayerMoney(playerid, -80);
						GivePlayerWeapon(playerid, 34, 45);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 14)
				{
					if(GetPlayerMoney(playerid) >= 130)
					{
						GivePlayerMoney(playerid, -130);
						GivePlayerWeapon(playerid, 37, 100);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 15)
				{
					if(GetPlayerMoney(playerid) >= 200)
					{
						GivePlayerMoney(playerid, -200);
						GivePlayerWeapon(playerid, 39, 30);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 16)
				{
					if(GetPlayerMoney(playerid) >= 300)
					{
						GivePlayerMoney(playerid, -300);
						GivePlayerWeapon(playerid, 17, 100);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 17)
				{
					if(GetPlayerMoney(playerid) >= 350)
					{
						GivePlayerMoney(playerid, -350);
						GivePlayerWeapon(playerid, 18, 100);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
				if(listitem == 18)
				{
					if(GetPlayerMoney(playerid) >= 500)
					{
						GivePlayerMoney(playerid, -500);
						GivePlayerWeapon(playerid, 35, 1);
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}Оружие куплено...");
					}
					else
					{
						SCM(playerid, COLOR_YELLOW, "{FF0D0D}[WEAPONS]{FFFFFF}У вас недостаточно денег!");
					}
				}
			}
		}
	}
	return 1;
}

public OnPlayerText(playerid, text[])
{
	if(strval(database[playerid][pLogged]) == 0)
	{
		SendClientMessage(playerid, COLOR_YELLOW, "{FF0D0D}[Resta DM]{FFFFFF}Вы не авторизированы!");
	}
	else
	{
		new chatmsg[128];
		if (strval(database[playerid][pPlayerTeam1]) == 1)
		{
		format(chatmsg, sizeof(chatmsg), "{FF0D0D}[CHAT]{001AFF}%s(%d) : {FFFFFF}%s", database[playerid][pPlayerName], playerid, text);
		SCMTA(COLOR_YELLOW, chatmsg);
		}
		else
		{
		format(chatmsg, sizeof(chatmsg), "{FF0D0D}[CHAT]{27FF00}%s(%d) : {FFFFFF}%s", database[playerid][pPlayerName], playerid, text);
		SCMTA(COLOR_YELLOW, chatmsg);
		}
		return 0;
	}
	return 0;
}  

public OnPlayerDisconnect(playerid, reason)
{
	KillTimer(kicknoaut);
	if (strval(database[playerid][pLogged]) == 1)
	{
		saveaccs(playerid);
	}
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if (strval(database[playerid][pLogged]) == 1)
	{
		SetPlayerWorldBounds(playerid,2965.5251, 154.4951, -1029.6002, -3052.7549); //------------------------
	}
	else
	{
		Kick(playerid);
	}
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	database[playerid][pScore] = GetPlayerMoney(playerid);
	SendDeathMessage(killerid, playerid, reason);
    if(killerid != INVALID_PLAYER_ID)
    {
    	//format(database[killerid][pScore], 16, database[killerid][pScore]+1);
        GivePlayerMoney(killerid, 1);
    }
    //format(database[playerid][pScore], 16, database[playerid][pScore]-1);
    //GivePlayerMoney(playerid, database[playerid][pScore]);
	SetTimerEx("spawnplayer1", 5000, 0, "d", playerid); 
	return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
    	SetPlayerPosFindZ(playerid, fX, fY, fZ); 
	}
    return 1;
}


// ==================================================[Стоки]==================================================


stock isnums(const string[])
{
    for(new i, j = strlen(string); i < j; i++)
    {
        if(!('0' <= string[i] <= '9')) return 0;
    }
    return 1;
}  


stock saveaccs(playerid)
{
	new iniFile = ini_openFile(database[playerid][pPlayerFile]);
	ini_setInteger(iniFile,"score", GetPlayerMoney(playerid));
	ini_closeFile(iniFile);
    return 1;
}  


stock admscm(string[])
{
    for(new i; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i))
        {
            if(strval(database[i][padmin_logged]) == 1) 
            {
            	SCM(i, COLOR_YELLOW, string);
            }
        }
    }
	return 1;
}


stock loadccs(playerid)
{
	new scoree;
	new iniFile = ini_openFile(database[playerid][pPlayerFile]);
	ini_getInteger(iniFile,"score", scoree);
	ini_closeFile(iniFile);
	format(database[playerid][pScore], 16, "%d",scoree);
    ResetPlayerMoney(playerid); 
    GivePlayerMoney(playerid, scoree);
    return 1;
}  


stock objects()
{
	CreateObject(6959,1246.2,-1254,13.7,4,0,0);
	CreateObject(6959,1287.5,-1254,13.7,3.999,0,0);
	CreateObject(6959,1254.8,-1214.4,15.1,0,0,0);
	CreateObject(6959,1296.1,-1214.4,15.1,0,0,0);
	CreateObject(8657,1307.9,-1239.5,13.7,1.999,2.001,1.93);
	CreateObject(8657,1231.3,-1290.6,11.3,359.249,353.998,269.919);
	CreateObject(8150,1304.5,-1385,15.5,0,0,359.996);
	CreateObject(8150,1253.4,-1385,15.5,0,0,359.995);
	CreateObject(8150,1191,-1321.8,15.5,0,0,89.995);
	CreateObject(8150,1191,-1182.4,18.5,0,0,89.995);
	CreateObject(8657,1307.9,-1239.5,14.9,1.994,2,1.928);
	CreateObject(8657,1307.9,-1239.5,16.1,1.994,2,1.928);
	CreateObject(8657,1307.9,-1239.5,17.4,1.994,2,1.928);
	CreateObject(1227,1306.2,-1241.2,15.5,15.909,6.24,244.283);
	CreateObject(987,1246.9,-1193.7,21.4,320,0,0);
	CreateObject(987,1258.8,-1193.7,21.4,319.999,0,0);
	CreateObject(987,1245.2,-1180,22.5,0,0,78);
	CreateObject(987,1259.2,-1170.3,22.5,0,0,179.997);
	CreateObject(987,1273,-1170.4,22.5,38,0,259.995);
	CreateObject(987,1372.2,-1229.9,12.5,0,0,310);
	CreateObject(987,1370,-1246.2,12.5,0,0,37.996);
	CreateObject(987,1370.5,-1258,12.5,0,0,91.991);
	CreateObject(987,1204.4,-1193.1,18.8,0,0,0);
	CreateObject(987,1216.3,-1193.1,18.8,0,0,0);
	CreateObject(6959,1227.2,-1306.9,12.1,0,0,0);
	CreateObject(6959,1227.2,-1346.9,12.1,0,0,0);
	CreateObject(6959,1226.2,-1386.2,11.4,2,0,0);
	CreateVehicle(488,1448.3,-1711.3,13.6,0,-1,-1,30);
	CreateVehicle(488,1448.3,-1699.5,13.6,0,-1,-1,30);
	CreateVehicle(489,1521,-1716.7,13.7,0,-1,-1,30);
	CreateVehicle(489,1521,-1709.5,13.7,0,-1,-1,30);
	CreateVehicle(489,1521,-1703.5,13.7,0,-1,-1,30);
	CreateVehicle(489,1521,-1696.8,13.7,0,-1,-1,30);
	CreateVehicle(489,1521,-1690.1,13.7,0,-1,-1,30);
	CreateVehicle(463,1516.2,-1716.4,12.9,0,-1,-1,30);
	CreateVehicle(463,1516.2,-1711.2,12.9,0,-1,-1,30);
	CreateVehicle(463,1516.2,-1705,12.9,0,-1,-1,30);
	CreateVehicle(463,1516.2,-1699,12.9,0,-1,-1,30);
	CreateVehicle(463,1516.2,-1693,12.9,0,-1,-1,30);
	CreateVehicle(525,1488.1,-1647.7,13.3,0,-1,-1,30);
	CreateVehicle(525,1484.8,-1647.7,13.3,0,-1,-1,30);
	CreateVehicle(525,1481.3,-1647.7,13.3,0,-1,-1,30);
	CreateVehicle(525,1477.5,-1647.7,13.3,0,-1,-1,30);
	CreateVehicle(525,1473.5,-1647.7,13.3,0,-1,-1,30);
	CreateVehicle(509,1521.2,-1681.2,12.9,0,-1,-1,30);
	CreateObject(4241,1443.2,-1690.3,12.3,0,0,0);
	CreateVehicle(509,1519.5,-1681.2,12.9,0,-1,-1,30);
	CreateVehicle(509,1517.3,-1681.2,12.9,0,-1,-1,30);
	CreateVehicle(509,1517.3,-1676.7,12.9,0,-1,-1,30);
	CreateVehicle(509,1519.5,-1676.7,12.9,0,-1,-1,30);
	CreateVehicle(509,1521.5,-1676.7,12.9,0,-1,-1,30);
	CreateObject(8210,1540.7,-1608.8,15.5,0,0,90);
	CreateObject(8210,1540.7,-1662.4,15.5,0,0,90);
	CreateObject(8210,1527.6,-1754.9,15.5,0,0,62);
	CreateObject(987,1545.1,-1701.9,13.6,276.324,71.632,183.686);
	CreateObject(987,1410.4,-1721.4,5.4,0,0,86);
	CreateObject(987,1358.3,-1681.6,5.4,0,0,167.996);
	CreateObject(987,1369,-1683.8,5.4,0,0,167.992);
	CreateObject(8150,1394.5,-1731.6,15.5,0,0,328);
	CreateObject(8150,1336.4,-1615.4,15.5,0,0,261.997);
	CreateObject(8150,1405.3,-1575.2,15.5,0,0,353.997);
	CreateVehicle(509,1217.1,-1341,13.4,0,-1,-1,30);
	CreateVehicle(509,1217.1,-1337.8,13.2,0,-1,-1,30);
	CreateVehicle(509,1217.1,-1334.3,13.2,0,-1,-1,30);
	CreateVehicle(509,1217.1,-1330.8,13.2,0,-1,-1,30);
	CreateVehicle(509,1217.1,-1327.1,13.4,0,-1,-1,30);
	CreateVehicle(525,1241.5,-1377.5,12.9,0,-1,-1,30);
	CreateVehicle(525,1234.5,-1377.5,12.9,0,-1,-1,30);
	CreateVehicle(525,1229.3,-1377.5,13.2,0,-1,-1,30);
	CreateVehicle(525,1223.3,-1377.5,13.2,0,-1,-1,30);
	CreateVehicle(525,1232,-1367.3,12.9,0,-1,-1,30);
	CreateVehicle(463,1242.6,-1338.3,13.4,0,-1,-1,30);
	CreateVehicle(463,1242.6,-1334.8,13.4,0,-1,-1,30);
	CreateVehicle(463,1242.6,-1331.3,13.4,0,-1,-1,30);
	CreateVehicle(463,1242.6,-1341.5,13.2,0,-1,-1,30);
	CreateVehicle(463,1242.6,-1327.4,12.9,0,-1,-1,30);
	CreateVehicle(489,1221.2,-1321.2,13.7,0,-1,-1,30);
	CreateVehicle(489,1221.2,-1314,13.7,0,-1,-1,30);
	CreateVehicle(489,1221.2,-1306.8,13.7,0,-1,-1,30);
	CreateVehicle(489,1221.2,-1300.4,13.7,0,-1,-1,30);
	CreateVehicle(489,1226,-1309.9,13.7,0,-1,-1,30);
	CreateVehicle(488,1237.6,-1299,13.8,0,-1,-1,30);
	CreateVehicle(488,1237.6,-1311.8,13.8,0,-1,-1,30);
}


stock rem_objects(playerid)
{
	RemoveBuildingForPlayer(playerid,713,1457.938,-1620.695,13.45313,27.49649);
	RemoveBuildingForPlayer(playerid,1232,1466.02,-1630.208,13.99176,4.900698);
	RemoveBuildingForPlayer(playerid,4186,1479.555,-1693.141,19.57813,57.53593);
	RemoveBuildingForPlayer(playerid,620,1461.656,-1707.687,11.83594,22.65704);
	RemoveBuildingForPlayer(playerid,673,1457.727,-1710.062,12.39844,8.848555);
	RemoveBuildingForPlayer(playerid,700,1463.063,-1701.57,13.72656,11.08452);
	RemoveBuildingForPlayer(playerid,673,1457.555,-1697.289,12.39844,8.848555);
	RemoveBuildingForPlayer(playerid,3985,1479.563,-1631.453,12.07813,56.60823);
	RemoveBuildingForPlayer(playerid,713,1496.867,-1707.82,13.40625,27.49649);
	RemoveBuildingForPlayer(playerid,700,1494.211,-1694.437,13.72656,11.08452);
	RemoveBuildingForPlayer(playerid,620,1496.977,-1686.852,11.83594,22.65704);
	RemoveBuildingForPlayer(playerid,673,1498.961,-1684.609,12.39844,8.848555);
	RemoveBuildingForPlayer(playerid,712,1488.227,-1666.18,22.25781,14.10051);
	RemoveBuildingForPlayer(playerid,712,1471.406,-1666.18,22.25781,14.10051);
	RemoveBuildingForPlayer(playerid,712,1508.445,-1668.742,22.25781,14.10051);
	RemoveBuildingForPlayer(playerid,712,1449.852,-1655.937,22.25781,14.10051);
	RemoveBuildingForPlayer(playerid,4206,1479.555,-1639.609,13.64844,14.76438);
	RemoveBuildingForPlayer(playerid,620,1503.188,-1621.125,11.83594,22.65704);
	RemoveBuildingForPlayer(playerid,673,1501.281,-1624.578,12.39844,8.848555);
	RemoveBuildingForPlayer(playerid,1232,1494.396,-1630.254,13.3776,4.900698);
	RemoveBuildingForPlayer(playerid,1280,1491.192,-1633.24,13.82615,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1486.19,-1628.121,13.66865,3.626257);
	RemoveBuildingForPlayer(playerid,1283,1524.258,-1605.577,14.32026,11.08576);
	RemoveBuildingForPlayer(playerid,1283,1524.237,-1605.577,13.27316,11.08576);
	RemoveBuildingForPlayer(playerid,1283,1524.549,-1605.493,18.50016,11.08576);
	RemoveBuildingForPlayer(playerid,1226,1524.424,-1611.156,14.10716,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.714,-1621.842,13.58809,6.614927);
	RemoveBuildingForPlayer(playerid,1258,1511.292,-1607.396,13.99705,2.807899);
	RemoveBuildingForPlayer(playerid,625,1511.76,-1641.851,13.48128,5.837572);
	RemoveBuildingForPlayer(playerid,1226,1523.893,-1647.603,12.98355,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1505.216,-1597.861,12.80961,6.614927);
	RemoveBuildingForPlayer(playerid,1229,1498.129,-1598.094,13.53427,3.581371);
	RemoveBuildingForPlayer(playerid,1226,1488.901,-1597.845,13.3547,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1471.782,-1597.885,13.54151,6.614927);
	RemoveBuildingForPlayer(playerid,1229,1466.559,-1598.073,14.24972,3.581371);
	RemoveBuildingForPlayer(playerid,1226,1451.661,-1597.836,14.19399,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1434.782,-1618.73,14.44591,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1434.866,-1635.812,12.97216,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1434.705,-1655.925,12.79374,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1434.825,-1676.252,13.06928,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1434.781,-1702.034,12.81239,6.614927);
	RemoveBuildingForPlayer(playerid,1258,1445.374,-1704.591,13.91096,2.807899);
	RemoveBuildingForPlayer(playerid,1258,1445.171,-1692.511,13.53864,2.807899);
	RemoveBuildingForPlayer(playerid,1280,1468.681,-1712.722,13.59615,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1468.681,-1704.616,13.77765,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1488.961,-1713.427,13.51381,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1488.443,-1705.2,13.44046,3.626257);
	RemoveBuildingForPlayer(playerid,1289,1504.508,-1711.984,13.46593,2.659485);
	RemoveBuildingForPlayer(playerid,1288,1504.508,-1705.474,13.88581,2.659485);
	RemoveBuildingForPlayer(playerid,1286,1504.508,-1694.933,14.14683,2.659485);
	RemoveBuildingForPlayer(playerid,1287,1504.513,-1704.677,14.14699,2.659485);
	RemoveBuildingForPlayer(playerid,1285,1504.508,-1694.019,13.55863,2.659485);
	RemoveBuildingForPlayer(playerid,641,1494.141,-1689.234,11.10156,7.192091);
	RemoveBuildingForPlayer(playerid,1280,1479.653,-1653.136,13.47315,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1486.129,-1651.326,13.51035,3.626257);
	RemoveBuildingForPlayer(playerid,1231,1477.952,-1652.979,13.49588,4.951889);
	RemoveBuildingForPlayer(playerid,1231,1466.62,-1638.254,13.48167,4.951889);
	RemoveBuildingForPlayer(playerid,1280,1472.825,-1651.474,13.47315,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1467.697,-1646.817,13.47315,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1491.78,-1646.213,13.47315,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1492.83,-1639.709,13.44249,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1479.277,-1626.327,13.48651,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1472.421,-1628.373,13.80876,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1467.698,-1633.52,13.64384,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1466.241,-1639.531,13.69296,3.626257);
	RemoveBuildingForPlayer(playerid,1232,1494.579,-1608.39,13.55279,4.900698);
	RemoveBuildingForPlayer(playerid,1232,1466.065,-1608.524,13.14374,4.900698);
	RemoveBuildingForPlayer(playerid,625,1507.302,-1647.686,13.45244,5.837572);
	RemoveBuildingForPlayer(playerid,625,1504.416,-1654.588,13.72208,5.837572);
	RemoveBuildingForPlayer(playerid,625,1502.636,-1661.372,13.25258,5.837572);
	RemoveBuildingForPlayer(playerid,625,1503.276,-1670.338,13.47908,5.837572);
	RemoveBuildingForPlayer(playerid,625,1455.941,-1666.007,13.04126,5.837572);
	RemoveBuildingForPlayer(playerid,625,1456.87,-1659.712,13.31977,5.837572);
	RemoveBuildingForPlayer(playerid,625,1455.907,-1651.076,13.28023,5.837572);
	RemoveBuildingForPlayer(playerid,625,1452.793,-1643.131,13.36404,5.837572);
	RemoveBuildingForPlayer(playerid,625,1447.622,-1635.743,13.52471,5.837572);
	RemoveBuildingForPlayer(playerid,1231,1479.552,-1682.237,13.11433,4.951889);
	RemoveBuildingForPlayer(playerid,1231,1479.37,-1692.126,13.86542,4.951889);
	RemoveBuildingForPlayer(playerid,1231,1479.657,-1702.289,13.97813,4.951889);
	RemoveBuildingForPlayer(playerid,1231,1479.81,-1716.628,14.41871,4.951889);
	RemoveBuildingForPlayer(playerid,1280,1489.054,-1682.189,13.84557,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1488.961,-1693.114,13.69618,3.626257);
	RemoveBuildingForPlayer(playerid,641,1458.617,-1684.133,11.10156,7.192091);
	RemoveBuildingForPlayer(playerid,1280,1469.107,-1693.202,13.4801,3.626257);
	RemoveBuildingForPlayer(playerid,1280,1469.307,-1682.587,13.35761,3.626257);
	RemoveBuildingForPlayer(playerid,1226,1523.531,-1668.018,13.00767,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.603,-1668.003,13.41353,6.614927);
	RemoveBuildingForPlayer(playerid,1229,1524.192,-1673.631,14.56313,3.581371);
	RemoveBuildingForPlayer(playerid,1226,1523.73,-1668.021,12.87319,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.696,-1668.066,16.14607,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.81,-1688.073,15.20498,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1524.179,-1668.118,18.58731,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.895,-1705.537,13.70857,6.614927);
	RemoveBuildingForPlayer(playerid,1229,1524.252,-1694.029,14.45365,3.581371);
	RemoveBuildingForPlayer(playerid,1226,1523.921,-1721.665,13.17642,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1505.283,-1726.625,12.98393,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1485.233,-1726.582,13.22608,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1468.034,-1726.735,13.56118,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1451.685,-1726.681,13.4174,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.461,-1668.36,13.11604,6.614927);
	RemoveBuildingForPlayer(playerid,1226,1523.869,-1668.367,12.85416,6.614927);
	RemoveBuildingForPlayer(playerid,1391,1236.962,-1262.318,16.19035,28.89272);
	RemoveBuildingForPlayer(playerid,1388,1237.888,-1260.316,59.15513,29.48938);
	RemoveBuildingForPlayer(playerid,3684,1183.625,-1257.875,17.32813,21.20114);
	RemoveBuildingForPlayer(playerid,3684,1183.625,-1230.234,20.57031,21.20114);
	RemoveBuildingForPlayer(playerid,620,1240.922,-1300.922,12.29688,22.65704);
	RemoveBuildingForPlayer(playerid,739,1231.141,-1328.094,12.73438,40.47313);
	RemoveBuildingForPlayer(playerid,620,1240.922,-1335.055,12.29688,22.65704);
	RemoveBuildingForPlayer(playerid,620,1240.922,-1374.609,12.29688,22.65704);
	RemoveBuildingForPlayer(playerid,620,1222.664,-1317.742,12.29688,22.65704);
	RemoveBuildingForPlayer(playerid,620,1222.664,-1356.555,12.29688,22.65704);
	RemoveBuildingForPlayer(playerid,5812,1230.891,-1337.984,12.53906,51.44164);
	RemoveBuildingForPlayer(playerid,5857,1259.438,-1246.812,17.10938,43.25785);
}


stock gz_create()
{
	GZ_ZONEGREEN = GZC(1134.765625,-1382.8125,1380.859375,-1156.25);
	GZ_ZONEBLUE = GZC(1285.15625,-1894.53125,1613.28125,-1568.359375);
	GZ_ZONE1 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE6 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE7 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE8 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE2 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE3 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE4 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE5 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE21 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE22 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE23 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE24 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE25 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE26 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE27 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE28 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE29 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE30 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE31 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE32 = GZC(-2941.40625,-3058.59375,152.34375,-960.9375);
	GZ_ZONE9 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE10 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE11 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE12 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE13 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE14 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE15 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE16 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE17 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE18 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE19 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
	GZ_ZONE20 = GZC(-2953.125,-1031.25,2964.84375,2941.40625);
}


stock gz_show()
{
	GZSFA(GZ_ZONE1, 0x0000004A);
	GZSFA(GZ_ZONE2, 0x0000004A);
	GZSFA(GZ_ZONE3, 0x0000004A);
	GZSFA(GZ_ZONE4, 0x0000004A);
	GZSFA(GZ_ZONE5, 0x0000004A);
	GZSFA(GZ_ZONE6, 0x0000004A);
	GZSFA(GZ_ZONE7, 0x0000004A);
	GZSFA(GZ_ZONE8, 0x0000004A);
	GZSFA(GZ_ZONE9, 0x0000004A);
	GZSFA(GZ_ZONE10, 0x0000004A);
	GZSFA(GZ_ZONE11, 0x0000004A);
	GZSFA(GZ_ZONE12, 0x0000004A);
	GZSFA(GZ_ZONE13, 0x0000004A);
	GZSFA(GZ_ZONE14, 0x0000004A);
	GZSFA(GZ_ZONE15, 0x0000004A);
	GZSFA(GZ_ZONE16, 0x0000004A);
	GZSFA(GZ_ZONE17, 0x0000004A);
	GZSFA(GZ_ZONE18, 0x0000004A);
	GZSFA(GZ_ZONE19, 0x0000004A);
	GZSFA(GZ_ZONE20, 0x0000004A);
	GZSFA(GZ_ZONE21, 0x0000004A);
	GZSFA(GZ_ZONE22, 0x0000004A);
	GZSFA(GZ_ZONE23, 0x0000004A);
	GZSFA(GZ_ZONE24, 0x0000004A);
	GZSFA(GZ_ZONE25, 0x0000004A);
	GZSFA(GZ_ZONE26, 0x0000004A);
	GZSFA(GZ_ZONE27, 0x0000004A);
	GZSFA(GZ_ZONE28, 0x0000004A);
	GZSFA(GZ_ZONE29, 0x0000004A);
	GZSFA(GZ_ZONE30, 0x0000004A);
	GZSFA(GZ_ZONE31, 0x0000004A);
	GZSFA(GZ_ZONE32, 0x0000004A);
	GZSFA(GZ_ZONEGREEN, 0x00FF004A);
	GZSFA(GZ_ZONEBLUE, 0x00FFFF4A);
}


stock setcameras(playerid)
{
	switch(random(4))
	{
		case 0:
		{
			SetPlayerFacingAngle(playerid, 50.2203);
		    SetPlayerCameraPos(playerid,1561.4297,-1733.6558,84.7846); 
		    SetPlayerCameraLookAt(playerid,1467.2012,-1654.2003,24.8971);
		}
		case 1:
		{
			SetPlayerFacingAngle(playerid, 15.7648);
		    SetPlayerCameraPos(playerid,1279.7393,-1328.3226,71.0467); 
		    SetPlayerCameraLookAt(playerid,1270.3436,-1251.1912,22.6431);
		}
		case 2:
		{
			SetPlayerFacingAngle(playerid, 50.2203);
		    SetPlayerCameraPos(playerid,1561.4297,-1733.6558,84.7846); 
		    SetPlayerCameraLookAt(playerid,1467.2012,-1654.2003,24.8971);
		}
		case 3:
		{
			SetPlayerFacingAngle(playerid, 15.7648);
		    SetPlayerCameraPos(playerid,1279.7393,-1328.3226,71.0467); 
		    SetPlayerCameraLookAt(playerid,1270.3436,-1251.1912,22.6431);
		}
	}
}


stock rcon_generate()
{
	new File:handle = fopen("rcon_passwords_log.txt", io_append);
	new rconpass[64];
	new rcon_password[128];
	new rcon_log_pass[300];
	new year, month,day;
	new hour,minute,second;
	getdate(year, month, day);
	gettime(hour,minute,second);
	format(rconpass, sizeof(rconpass), "r%d%d%de%d%d%d%es%d-%d%d%dt%d%da%d%d%d%dd%d-%d%dm%d%d%d%d", random(3)+1, random(8)+1, random(10)+5, random(2)-1, random(7)+1, random(3)+1, random(3)+1, random(10)-6, random(5)+1, random(2)-1, random(7)+1, random(3)+1, random(3)+3, random(10)+1, random(5)+8, random(2)-3, random(7)-5, random(3)+1, random(4)+1, random(8)+6, random(5)-3, random(2)+1, random(6)+6, random(3)-1);
	format(rcon_password, sizeof(rcon_password), "rcon_password %s", rconpass);
	format(rcon_log_pass, sizeof(rcon_log_pass), "\r\n%d.%d.%d  %d:%d:%d  |  New RCON password : %s\r\n", year, month, day, hour, minute, second, rconpass);
	printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
	printf("\t\t\t\tСгенерированый RCON пароль : %s \n",rconpass);
	fwrite(handle, rcon_log_pass);
	fclose(handle);
	SRC(rcon_password);
}

// ==================================================[Команды]==================================================


CMD:adminlogin(playerid, params[])
{
	if (strval(database[playerid][padmin_acc]) == 1)
	{
		printf("Player : %s leads from the admin password", database[playerid][pPlayerName]);
		SPD(playerid,3,DIALOG_STYLE_INPUT,"Resta DeatchMatch","\n\n{F5FF6B}Resta DeatchMatch\n\n{FFFFFF}Админ авторизация!\nЧтоб авторизоватся нужен пароль!\n\n","Авторизация","Выход");
	}
	return 1;
}




CMD:restart(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		new msg11[128];
		printf("Player : %s restart server!", database[playerid][pPlayerName]);
		format(msg11, sizeof(msg11), "{FF0D0D}[A]{FFFFFF}Администратор %s,перезагрузил сервер!", database[playerid][pPlayerName]);
		SCMTA(COLOR_YELLOW, msg11);
		SendRconCommand("gmx");
	}
	return 1;
}




CMD:clearchat(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		printf("Player : %s clear chat!", database[playerid][pPlayerName]);
		for(new i = 0; i < 100; i++)
		{
			SendClientMessageToAll(COLOR_YELLOW, " ");
		}
		new msg11[128];
		format(msg11, sizeof(msg11), "{FF0D0D}[A]{FFFFFF}Администратор %s,очистил чат!", database[playerid][pPlayerName]);
		SCMTA(COLOR_YELLOW, msg11);
	}
	return 1;
} 




CMD:respawnme(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		SetPlayerHealth(playerid, 0.0);
	}
	return 1;
}




CMD:tp(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		SPD(playerid,6,DIALOG_STYLE_LIST,"Телепорты","Мерия ЛС\nКрыша мэрий ЛС\nСпавн Green Team\nСпавн Blue Team\nКрыша высотки","Выбрать","Закрыть");
	}
	return 1;
} 




CMD:menu(playerid, params[])
{
	if (strval(database[playerid][pLogged]) == 1)
	{
		SPD(playerid,5,DIALOG_STYLE_LIST,"Меню сервера","Покупка оружия\nСвязь с администрацией","Выбрать","Закрыть");
	}
	else
	{
		SendClientMessage(playerid, COLOR_YELLOW, "{FF0D0D}[Resta DM]{FFFFFF}Вы не авторизированы!");
		return 0;
	}
	return 1;
} 




CMD:teleport(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new Float:x, Float:y, Float:z,
	        tpid, targetid, tpid_str[4 char], targetid_str[4 char],
	        str[(60 + 6 + 6) char] = !"{FFFFFF}Админ права: Вы успешно телепортировали к ID "; // %d к ID %d
	    if(sscanf(params, "uu", tpid, targetid)) return SendClientMessage(playerid, 0xFF0000FF, !"{CCCCCC}Админ права: Использование /teleport [ID1] [ID2]");
	    GetPlayerPos(targetid, x, y, z);
	    SetPlayerPosFindZ(tpid, x+2, y, z);
	    SetPlayerInterior(tpid, GetPlayerInterior(targetid));
	    SetPlayerVirtualWorld(tpid, GetPlayerVirtualWorld(targetid));
	    valstr(tpid_str, tpid);
	    valstr(targetid_str, targetid);
	    strcat(str, tpid_str);
	    strcat(str, " к ID ");
	    strcat(str, targetid_str);
	    return SendClientMessage(playerid, 0xFF0000FF, str);
	}
	return 1;
} 




CMD:goto(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    if(isnull(params)) return SendClientMessage(playerid, 0xFF0000FF, !"{CCCCCC}Админ права: Использование /goto [ID]");
	    if(isnums(params) == 0) return SendClientMessage(playerid, 0xFF0000FF, !"{CCCCCC}Админ права: Неверный ID!");
	    new Float:x, Float:y, Float:z,
	        targetid = strval(params),
	        str[(60 + 3 + 1) char] = !"{FFFFFF}Админ права: Вы успешно телепортировались к ID ";
	    GetPlayerPos(targetid, x, y, z);
	    SetPlayerPosFindZ(playerid, x + 2, y, z);
	    SetPlayerInterior(playerid, GetPlayerInterior(targetid));
	    SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(targetid));
	    strcat(str, params);
	    return SendClientMessage(playerid, 0xFF0000FF, str);
	}
	return 1;
} 




CMD:gethere(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    if(isnull(params)) return SendClientMessage(playerid, 0xFF0000FF, !"{CCCCCC}Админ права: Использование /gethere [ID]");
	    if(isnums(params) == 0) return SendClientMessage(playerid, 0xFF0000FF, !"{CCCCCC}Админ права: Неверный ID!");
	    new Float:x, Float:y, Float:z,
	        targetid = strval(params),
	        str[(60 + 3 + 1) char] = !"{FFFFFF}Админ права: Вы успешно телепортировали к себе ID ";
	    GetPlayerPos(playerid, x, y, z);
	    SetPlayerPosFindZ(targetid, x+2, y, z);
	    SetPlayerInterior(targetid, GetPlayerInterior(playerid));
	    SetPlayerVirtualWorld(targetid, GetPlayerVirtualWorld(playerid));
	    strcat(str, params);
	    return SendClientMessage(playerid, 0xFF0000FF, str);
	}
	return 1;
} 




CMD:tpall(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new Float:x, Float:y, Float:z;
	    GetPlayerPos(playerid, x, y, z);
	    foreach(new i: Player)
	    {
	        SetPlayerPosFindZ(i, x+2, y, 0.0);
	        SetPlayerInterior(i, GetPlayerInterior(playerid));
	        SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	    }
	    return SendClientMessage(playerid, 0xFF0000FF, !"{FFFFFF}Админ права: Вы телепортировали к себе всех игроков");
	}
	return 1;
} 




CMD:kick(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		if(sscanf(params, "ds[52]", params[0], params[1])) return SendClientMessage(playerid, 0xB4B5B7FF, "{CCCCCC}Админ права: Использование /kick [ID] [REASON]");
		if(0 == IsPlayerConnected(params[0])) return SendClientMessage(playerid, 0xB4B5B7FF, "{CCCCCC}Админ права: Неверный ID!");
		static const fmt_str[] = "{FF0D0D}[A]{FFFFFF}Администратор %s кикнул игрока %s. Причина: %s";
		new str[sizeof(fmt_str) - 2 * 2 + MAX_PLAYER_NAME * 2 + 52],
		targetid[MAX_PLAYER_NAME + 1];

		GetPlayerName(playerid, str, sizeof(str));
		GetPlayerName(params[0], targetid, sizeof(targetid));

		format(str, sizeof(str), fmt_str, str, targetid, params[1]);
		SendClientMessageToAll(0xFF0000FF, str);
		Kick(params[0]);
		return 1;
	}
	return 1;
} 




CMD:msg(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		if(sscanf(params, "S[40]", params[0])) return SendClientMessage(playerid, 0xFF0000FF, "{CCCCCC}Админ права: Использование /msg [MSG]");
        new str[128];
        format(str,sizeof(str),"{FF0D0D}[A]{FFFFFF}Администратор %s : %s", database[playerid][pPlayerName], params[0]);
        SendClientMessageToAll(0x0080FFFF,str);
		return 1;
	}
	return 1;
} 




CMD:gm(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    if(GetPVarInt(playerid,"agm") == 0) 
	    { 
	        SetPVarInt(playerid,"agm", 1); 
	        SetPlayerHealth(playerid, 0x7F800000); 
	        SendClientMessage(playerid, -1, "{CCCCCC}Админ права: Вы в GODMODE!"); 
	    }
	    else 
	    { 
	        SetPVarInt(playerid,"agm", 0); 
	        SetPlayerHealth(playerid, 100.0); 
	        SendClientMessage(playerid, -1, "{CCCCCC}Админ права: Вы уже не GODMODE!"); 
	    }
		return 1;
	}
	return 1;
} 


CMD:setteam(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    if(sscanf(params, "d", params[0]))
	       	return SendClientMessage(playerid, -1, "{CCCCCC}Админ права: Использование /setteam [ID]");
	    if(0 == IsPlayerConnected(params[0]))
	        return SendClientMessage(playerid, -1, "{CCCCCC}Админ права: Неверный ID!");
		return SPD(params[0],4,DIALOG_STYLE_LIST,"Выбор команды","{001AFF}Blue Team\n{27FF00}Green Team","Выбрать","Выход");
	}
	return 1;
} 


CMD:sethp(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new
	        targetid,
	        amount;
	    if(sscanf(params, "ui", targetid, amount))
	        return SendClientMessage(playerid, -1, "{CCCCCC}Админ права: Использование /sethp [ID] [HP]");
	    if(0 == IsPlayerConnected(targetid))
	        return SendClientMessage(playerid, -1, "{CCCCCC}Админ права: Неверный ID!");
	    if(!(0 <= amount <= 100))
	        return SendClientMessage(playerid, -1, "{CCCCCC}Админ права: HP от 1 до 100!");
	    SetPlayerHealth(targetid, amount);
	    static const
	        fmt_str0[] = "{FF0D0D}[A]{FFFFFF}Администратор %s установил  %s (%d) {FF0D0D}%d HP.";
	    new
	        str[sizeof(fmt_str0) - 2 + MAX_PLAYER_NAME - 2 + 4 - 2 + MAX_PLAYER_NAME - 2 + 4 - 2 + 11],
	        targetname[MAX_PLAYER_NAME + 1];
	    GetPlayerName(playerid, str, sizeof(str));
	    GetPlayerName(targetid, targetname, sizeof(targetname));
	    format(str, sizeof(str), fmt_str0, str, targetname, targetid, amount);
	    return SendClientMessageToAll(-1, str);
	}
	return 1;
} 




CMD:ban(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerbanned[26];
	    if(sscanf(params,"ds[32]",params[0], params[1])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /banip [ID] [REASON].");
		if(0 == IsPlayerConnected(params[0]))return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный ID!");
	    GetPlayerName(params[0], playerbanned, sizeof(playerbanned));
	    format(string, sizeof(string),"{FF0D0D}[A]{FFFFFF}Администратор %s забанил: %s.Причина: %s",database[playerid][pPlayerName],playerbanned,params[1]);
	    SCMTA(0x0080FFFF,string);
	    format(string, sizeof(string),"ban %i",params[0]);
	    SRC(string);
	    SRC("reloadbans");
	    return 1;
	}
	return 1;
} 




CMD:respawn(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"d",params[0])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /respawn [ID].");
		if(0 == IsPlayerConnected(params[0]))return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный ID!");
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[A]{FFFFFF}Администратор %s респавнил %s.",database[playerid][pPlayerName],playerrespawned);
	    SetPlayerHealth(params[0], 0.0);
	    SCMTA(0x0080FFFF,string);
	    return 1;
	}
	return 1;
} 




CMD:ggun(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"ddd",params[0],params[1] ,params[2])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /ggun [ID] [WEAP ID] [AMMO].");
		if(0 == IsPlayerConnected(params[0]))return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный ID!");
		if(strval(params[1]) == 0 || strval(params[1]) == 19 || strval(params[1]) == 20 || strval(params[1]) == 21) return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный WEAP ID!");
		if(strval(params[2]) > 900 || strval(params[2]) < 1) return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Патроны от 1 до 900!");
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[A]{FFFFFF}Администратор %s выдал оружие игроку %s.",database[playerid][pPlayerName],playerrespawned);
	    GivePlayerWeapon(params[0], params[1], params[2]);
	    SCMTA(0x0080FFFF,string);
	    return 1;
	}
	return 1;
} 




CMD:setskin(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"dd",params[0],params[1])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /setskin [ID] [SKIN ID].");
		if(0 == IsPlayerConnected(params[0]))return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный ID!");
		if(strval(params[1]) >311) return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Скины от 0 до 311");
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[A]{FFFFFF}Администратор %s выдал скин %d,игроку %s.",database[playerid][pPlayerName],params[1],playerrespawned);
	    SetPlayerSkin(params[0], params[1]);
	    SCMTA(0x0080FFFF,string);
	    return 1;
	}
	return 1;
} 




CMD:ugan(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"d",params[0])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /ugan [ID].");
		if(0 == IsPlayerConnected(params[0]))return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный ID!");
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[A]{FFFFFF}Администратор %s забрал оружие у %s.", database[playerid][pPlayerName], playerrespawned);
	    ResetPlayerWeapons(params[0]);
	    SCMTA(0x0080FFFF,string);
	    return 1;
	}
	return 1;
} 



CMD:ad(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    if(sscanf(params,"s",params[0])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /ad [TEXT].");
	    format(string, sizeof(string),"{FF0D0D}[AD]{FFFFFF}%s", params[0]);
	    ResetPlayerWeapons(params[0]);
	    SCMTA(0x0080FFFF,string);
	    return 1;
	}
	return 1;
} 




CMD:setcolor(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"dd",params[0], params[1])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /setcolor [ID] [1-5].");
		if(0 == IsPlayerConnected(params[0]))return SendClientMessage(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный ID!");
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[A]{FFFFFF}Администратор %s изменил цвет,игроку %s.", database[playerid][pPlayerName], playerrespawned);
	    switch(params[1])
	    {
	    	case 1:
	    	{
	    		SetPlayerColor(params[0],0x878787FF);
	    		SCMTA(0x0080FFFF,string);
	    	}
	    	case 2:
	    	{
	    		SetPlayerColor(params[0],0xFFFFFFFF);
	    		SCMTA(0x0080FFFF,string);
	    	}
	    	case 3:
	    	{
	    		SetPlayerColor(params[0],0x001AFFFF);
	    		SCMTA(0x0080FFFF,string);
	    	}
	    	case 4:
	    	{
	    		SetPlayerColor(params[0],0x27FF00FF);
	    		SCMTA(0x0080FFFF,string);
	    	}
	    	case 5:
	    	{
	    		SetPlayerColor(params[0],0xFF0000FF);
	    		SCMTA(0x0080FFFF,string);
	    	}
			default:
	    	{
	    		SCM(playerid, 0x0080FFFF, "{CCCCCC}Админ права: Неверный цвет (От 1-5)");
	    	}
	    }
	    return 1;
	}
	return 1;
} 



CMD:achat(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    if(sscanf(params,"s",params[0])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /achat [TEXT].");
	    format(string, sizeof(string),"{FF0D0D}[ACHAT]{FFFFFF}%s >> %s", database[playerid][pPlayerName], params[0]);
	    admscm(string);
	    return 1;
	}
	return 1;
} 



CMD:getcord(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new Float:x, Float:y, Float:z;
	    new playerrespawned[26];
	    if(sscanf(params,"d", params[0])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /getcord [ID].");
	    GetPlayerPos(params[0], x, y, z);
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[GETCORD]{FFFFFF}Кординаты %s : %f , %f , %f", playerrespawned, x, y, z);
	    SCM(playerid, COLOR_YELLOW, string);
	    return 1;
	}
	return 1;
} 



CMD:tpcord(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"dfff", params[0], params[1], params[2], params[3])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /tpcord [ID] [X] [Y] [Z].");
	    SetPlayerPos(params[0], params[1], params[2], params[3]);
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[GETCORD]{FFFFFF}Администратор %s телепортировал %s на кординаты %f , %f , %f", database[playerid][pPlayerName], playerrespawned, params[1], params[2], params[3]);
	    SCM(playerid, COLOR_YELLOW, string);
	    return 1;
	}
	return 1;
} 



CMD:otvet(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
	    new string[128];
	    new playerrespawned[26];
	    if(sscanf(params,"ds",params[0], params[1])) return SendClientMessage(playerid,0x0080FFFF,"{CCCCCC}Админ права: Использование /otvet [ID] [TEXT].");
	    GetPlayerName(params[0], playerrespawned, sizeof(playerrespawned));
	    format(string, sizeof(string),"{FF0D0D}[ОТВЕТ]{FFFFFF}От администратора %s >> %s : %s", database[playerid][pPlayerName], playerrespawned, params[1]);
	    SCM(params[0], COLOR_YELLOW, string);
	    return 1;
	}
	return 1;
} 



CMD:adminhelp(playerid, params[])
{
	if (strval(database[playerid][padmin_logged]) == 1)
	{
		SCM(playerid, COLOR_YELLOW, "{FF0D0D}========================================");
		SCM(playerid, COLOR_YELLOW, ahelp_1);
		SCM(playerid, COLOR_YELLOW, ahelp_2);
		SCM(playerid, COLOR_YELLOW, ahelp_3);
		SCM(playerid, COLOR_YELLOW, ahelp_4);
		SCM(playerid, COLOR_YELLOW, ahelp_5);
		SCM(playerid, COLOR_YELLOW, ahelp_6);
		SCM(playerid, COLOR_YELLOW, ahelp_7);
		SCM(playerid, COLOR_YELLOW, ahelp_8);
		SCM(playerid, COLOR_YELLOW, ahelp_9);
		SCM(playerid, COLOR_YELLOW, ahelp_10);
		SCM(playerid, COLOR_YELLOW, ahelp_11);
		SCM(playerid, COLOR_YELLOW, ahelp_12);
		SCM(playerid, COLOR_YELLOW, ahelp_13);
		SCM(playerid, COLOR_YELLOW, ahelp_14);
		SCM(playerid, COLOR_YELLOW, ahelp_15);
		SCM(playerid, COLOR_YELLOW, ahelp_16);
		SCM(playerid, COLOR_YELLOW, ahelp_17);
		SCM(playerid, COLOR_YELLOW, ahelp_18);
		SCM(playerid, COLOR_YELLOW, ahelp_19);
		SCM(playerid, COLOR_YELLOW, ahelp_20);
		SCM(playerid, COLOR_YELLOW, ahelp_21);
		SCM(playerid, COLOR_YELLOW, ahelp_22);
		SCM(playerid, COLOR_YELLOW, ahelp_23);
		SCM(playerid, COLOR_YELLOW, ahelp_24);
		SCM(playerid, COLOR_YELLOW, ahelp_25);
		SCM(playerid, COLOR_YELLOW, ahelp_26);
		SCM(playerid, COLOR_YELLOW, "{FF0D0D}========================================");
	    return 1;
	}
	return 1;
} 



// ==================================================[Не используемые паблики]==================================================





public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}