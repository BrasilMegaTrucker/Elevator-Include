/*
    Example Elevator
*/
#pragma warning disable 239 //pawn 3.10.10
#include a_samp
#include streamer
#include elevator

#define FILTERSCRIPT

#define DIALOG_ELEVADOR 2000

stock PlaySoundForPlayersInRange(soundid, Float:range, Float:x, Float:y, Float:z)
{
    for(new i=0; i<=GetPlayerPoolSize(); i++)
    {
        if(IsPlayerConnected(i) && IsPlayerInRangeOfPoint(i,range,x,y,z))
        {
            PlayerPlaySound(i, soundid, x, y, z);
        }
    }
}


new Elevator1; // Downtown Los Santos
new Elevator2; // Beachside Los Santos
new Elevator3; // Market Los Santos
new Elevator4; // ZomboTech San Fierro

public OnFilterScriptInit()
{   
    // Downtown Los Santos
    Elevator1 = AddElevator(1786.6781, -1303.45948, 14.5710, 270.0, "Downtown Los Santos", 0, 0);
    AddFloorToElevator(Elevator1, 14.5709, "Térreo", true);
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479), "1º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 1.0)), "2º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 2.0)), "3º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 3.0)), "4º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 4.0)), "5º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 5.0)), "6º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 6.0)), "7º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 7.0)), "8º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 8.0)), "9º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 9.0)), "10º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 10.0)), "11º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 11.0)), "12º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 12.0)), "13º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 13.0)), "14º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 14.0)), "15º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 15.0)), "16º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 16.0)), "17º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 17.0)), "18º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 18.0)), "19º Andar");
    AddFloorToElevator(Elevator1, (14.5709 + 8.5479 + (5.45155 * 19.0)), "20º Andar");

    // Beachside
    Elevator2 = AddElevator(287.942413, -1609.341064, 18.755348, 80.0, "Beachside Los Santos", 0, 0);
    AddFloorToElevator(Elevator2, 18.75, "Estacionamento");
    AddFloorToElevator(Elevator2, 33.826, "Térreo", true);
    AddFloorToElevator(Elevator2, 47.886, "1º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 1))), "2º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 2))), "3º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 3))), "4º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 4))), "5º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 5))), "6º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 6))), "7º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 7))), "8º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 8))), "9º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 9))), "10º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 10))), "11º Andar");
    AddFloorToElevator(Elevator2, (47.886 + (29.130733 + (4.5 * 11))), "12º Andar");

    // Portas nos apartamentos
    CreateDynamicObject(1536, 275.71625, -1621.05615, 46.00830,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.73999, -1621.06470, 95.51733,   0.00000, 0.00000, 79.88779);
    CreateDynamicObject(1536, 295.07391, -1624.46301, 95.51733,   0.00000, 0.00000, 79.88779);
    CreateDynamicObject(1536, 295.07391, -1624.46301, 91.02124,   0.00000, 0.00000, 79.88779);
    CreateDynamicObject(1536, 275.76733, -1621.02380, 91.02124,   0.00000, 0.00000, 79.88779);
    CreateDynamicObject(1536, 275.74573, -1621.04224, 86.52446,   0.00000, 0.00000, 79.88779);
    CreateDynamicObject(1536, 295.07285, -1624.44983, 86.52446,   0.00000, 0.00000, 79.88779);
    CreateDynamicObject(1536, 295.07281, -1624.44983, 82.00750,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.79099, -1621.04138, 82.00750,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.82355, -1621.07202, 77.52800,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.09464, -1624.48511, 77.52800,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.10526, -1624.42615, 73.00648,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.70840, -1621.05469, 73.00648,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.70840, -1621.05469, 68.50540,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.12576, -1624.46777, 68.50540,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.20419, -1624.48340, 64.00517,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.71280, -1621.05200, 63.98520,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.67557, -1621.02722, 59.48780,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.13309, -1624.44238, 59.50780,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.13062, -1624.46228, 54.99290,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.71942, -1621.03137, 54.99290,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 275.71796, -1621.07141, 50.51244,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.12808, -1624.46216, 50.51244,   0.00000, 0.00000, 79.88780);
    CreateDynamicObject(1536, 295.12811, -1624.46216, 46.00830,   0.00000, 0.00000, 79.88780);

    //Market Los Santos
    CreateDynamicObject(19595, 1160.96, -1180.58, 70.4141, 0.0, 0.0, 0.0);
    CreateDynamicObject(19798, 1160.96, -1180.58, 20.4141, 0.0, 0.0, 0.0);

    Elevator3 = AddElevator(1181.622924, -1180.554687, 20.879316, 0.0, "Market Los Santos", 0, 0);
    AddFloorToElevator(Elevator3, 20.879, "Estacionamento");
    AddFloorToElevator(Elevator3, 34.485, "Recepção", true);
    AddFloorToElevator(Elevator3, 39.688, "1º Andar");
    AddFloorToElevator(Elevator3, 44.892, "2º Andar");
    AddFloorToElevator(Elevator3, 50.10, "3º Andar");
    AddFloorToElevator(Elevator3, 55.30, "4º Andar");
    AddFloorToElevator(Elevator3, 60.504, "5º Andar");
    AddFloorToElevator(Elevator3, 65.707, "6º Andar");
    AddFloorToElevator(Elevator3, 70.911, "7º Andar");
    AddFloorToElevator(Elevator3, 76.115, "8º Andar");
    AddFloorToElevator(Elevator3, 81.319, "9º Andar");

    // ZomboTech San Fierro
    CreateDynamicObject(19593, -1951.687500, 660.023986, 89.507797, 0, 0, 0);
    CreateDynamicObject(19594, -1951.687500, 660.023986, 29.507797, 0, 0, 0);

    Elevator4 = AddElevator(-1951.603027, 636.418334, 47.45149, 270.0, "Laboratório ZomboTech", 0, 0);
    AddFloorToElevator(Elevator4, 47.45149, "Recepção", true);
    AddFloorToElevator(Elevator4, 25.82348, "Laboratório");

    // Remoção de objetos em jogadores online
    for(new playerid; playerid <= GetPlayerPoolSize(); playerid++)
    {
        if(IsPlayerConnected(playerid))
        {
            RemovesForPlayer(playerid);
        }
    }
    return 1;
}

public OnFilterScriptExit()
{
    DestroyElevator(Elevator1); // Downtown Los Santos
    DestroyElevator(Elevator2); // Beachside Los Santos
    DestroyElevator(Elevator3); // Market Los Santos
    DestroyElevator(Elevator4); // ZomboTech SF
    return 1;
}

public OnPlayerConnect(playerid)
{
    RemovesForPlayer(playerid);
    return 1;
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES)
    {
        if(IsPlayerInElevator(playerid, GetPVarInt(playerid, "elevator_id"))) return ShowDialogElevator(playerid);
        if(CallElevatorToFloor(GetPVarInt(playerid, "front_elevator_id"), GetPlayerFrontElevator(playerid, GetPVarInt(playerid, "front_elevator_id"))))
        {
            return SendClientMessage(playerid, 0xFFFF00FF, "* Elevador chamado!");
        }
    }
    return 1;
}

public OnElevatorStoped(elevatorid)
{
    new Float:x, Float:y, Float:z;
    GetElevatorPos(elevatorid, x, y, z);
    PlaySoundForPlayersInRange(6401, 50.0, x, y, z);
    return 1;
}
public OnPlayerEnterElevator(playerid, elevatorid)
{
    new Msg[144], ElevatorName[32];
    GetElevatorName(elevatorid, ElevatorName, sizeof ElevatorName);
    format(Msg, sizeof Msg, "* Você entrou no elevador %s!", ElevatorName);
    SendClientMessage(playerid, 0xFFFF00FF, Msg);
    SetPVarInt(playerid, "elevator_id", elevatorid);
    return 1;
}
public OnPlayerIsFrontElevator(playerid, elevatorid, floor)
{
    new Msg[144], floorname[32], ElevatorName[32];
    GetFloorNameForElevator(floor, elevatorid, floorname, 32);
    GetElevatorName(elevatorid, ElevatorName, sizeof ElevatorName);
    format(Msg, sizeof Msg, "* Você está no %s do elevador %s.", floorname, ElevatorName);
    SendClientMessage(playerid, 0xFFFF00FF, Msg);
    SetPVarInt(playerid, "front_elevator_id", elevatorid);
    return 1;
}
public OnPlayerLeaveFrontElevator(playerid, elevatorid, floor)
{
    DeletePVar(playerid, "front_elevator_id");
    return 1;
}
public OnPlayerLeaveElevator(playerid, elevatorid)
{
    DeletePVar(playerid, "elevator_id");
    return 1;
}

ShowDialogElevator(playerid)
{
    new eID = GetPVarInt(playerid, "elevator_id");
    //if(!IsPlayerInElevator(playerid, eID)) return SendClientMessage(playerid, 0xFF0000FF, "* Você não está em um elevador.");
    new Msg[400], Header[128], elevatorname[32];
    GetElevatorName(eID, elevatorname, sizeof elevatorname);
    format(Header, sizeof Header, "Elevador %s", elevatorname);
    for(new i; i < GetMaxFloorElevator(eID); i++)
    {
        new floorname[32];
        GetFloorNameForElevator(i, eID, floorname, sizeof floorname);
        format(Msg, sizeof Msg, "%s%s%s\n", Msg, (i == GetElevatorOnFloor(eID) ? ("{FFFF00}") : ("{FFFFFF}")), floorname);
    }
    ShowPlayerDialog(playerid, DIALOG_ELEVADOR, DIALOG_STYLE_LIST, Header, Msg, "Selecionar", "Cancelar");
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_ELEVADOR)
    {
        if(!response) return 1;
        SelectFloorOnElevator(GetPVarInt(playerid, "elevator_id"), listitem);
    }
    return 1;
}

RemovesForPlayer(playerid)
{
    // Beachside
    RemoveBuildingForPlayer(playerid, 1226, 265.481, -1581.1, 32.9311, 5.0);
    RemoveBuildingForPlayer(playerid, 6518, 280.297, -1606.2, 72.3984, 250.0);

    // Market
    RemoveBuildingForPlayer(playerid, 5766, 1160.96, -1180.58, 70.4141, 250.0); // Awning shadows
    RemoveBuildingForPlayer(playerid, 5767, 1160.96, -1180.58, 70.4141, 250.0); // Building
    RemoveBuildingForPlayer(playerid, 5964, 1160.96, -1180.58, 70.4141, 250.0); // LOD

    // ZomboTech
    RemoveBuildingForPlayer(playerid, 10027, -1951.687500, 660.023986, 89.507797, 250.0); // Building
    RemoveBuildingForPlayer(playerid, 9939, -1951.687500, 660.023986, 89.507797, 250.0); // LOD

}
