// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLobby$MutationRoot _$CreateLobby$MutationRootFromJson(
    Map<String, dynamic> json) {
  return CreateLobby$MutationRoot()
    ..createLobby = json['createLobby'] as String;
}

Map<String, dynamic> _$CreateLobby$MutationRootToJson(
        CreateLobby$MutationRoot instance) =>
    <String, dynamic>{
      'createLobby': instance.createLobby,
    };

StartGame$QueryRoot$PlayerHandler _$StartGame$QueryRoot$PlayerHandlerFromJson(
    Map<String, dynamic> json) {
  return StartGame$QueryRoot$PlayerHandler()
    ..startGame = json['startGame'] as bool;
}

Map<String, dynamic> _$StartGame$QueryRoot$PlayerHandlerToJson(
        StartGame$QueryRoot$PlayerHandler instance) =>
    <String, dynamic>{
      'startGame': instance.startGame,
    };

StartGame$QueryRoot _$StartGame$QueryRootFromJson(Map<String, dynamic> json) {
  return StartGame$QueryRoot()
    ..gameEvent = StartGame$QueryRoot$PlayerHandler.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StartGame$QueryRootToJson(
        StartGame$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

ReadyBoard$QueryRoot$PlayerHandler _$ReadyBoard$QueryRoot$PlayerHandlerFromJson(
    Map<String, dynamic> json) {
  return ReadyBoard$QueryRoot$PlayerHandler()
    ..readyBoard = json['readyBoard'] as bool;
}

Map<String, dynamic> _$ReadyBoard$QueryRoot$PlayerHandlerToJson(
        ReadyBoard$QueryRoot$PlayerHandler instance) =>
    <String, dynamic>{
      'readyBoard': instance.readyBoard,
    };

ReadyBoard$QueryRoot _$ReadyBoard$QueryRootFromJson(Map<String, dynamic> json) {
  return ReadyBoard$QueryRoot()
    ..gameEvent = ReadyBoard$QueryRoot$PlayerHandler.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadyBoard$QueryRootToJson(
        ReadyBoard$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

PlayerMove$QueryRoot$PlayerHandler _$PlayerMove$QueryRoot$PlayerHandlerFromJson(
    Map<String, dynamic> json) {
  return PlayerMove$QueryRoot$PlayerHandler()
    ..playerMove = json['playerMove'] as bool;
}

Map<String, dynamic> _$PlayerMove$QueryRoot$PlayerHandlerToJson(
        PlayerMove$QueryRoot$PlayerHandler instance) =>
    <String, dynamic>{
      'playerMove': instance.playerMove,
    };

PlayerMove$QueryRoot _$PlayerMove$QueryRootFromJson(Map<String, dynamic> json) {
  return PlayerMove$QueryRoot()
    ..gameEvent = PlayerMove$QueryRoot$PlayerHandler.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlayerMove$QueryRootToJson(
        PlayerMove$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

JoinLobby$MutationRoot _$JoinLobby$MutationRootFromJson(
    Map<String, dynamic> json) {
  return JoinLobby$MutationRoot()..joinLobby = json['joinLobby'] as String;
}

Map<String, dynamic> _$JoinLobby$MutationRootToJson(
        JoinLobby$MutationRoot instance) =>
    <String, dynamic>{
      'joinLobby': instance.joinLobby,
    };

Ping$QueryRoot _$Ping$QueryRootFromJson(Map<String, dynamic> json) {
  return Ping$QueryRoot()..ping = json['ping'] as String;
}

Map<String, dynamic> _$Ping$QueryRootToJson(Ping$QueryRoot instance) =>
    <String, dynamic>{
      'ping': instance.ping,
    };

RoomFieldsMixin$CommonPlayer$GamePlayer$Board
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$BoardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$Board()
    ..numbers = (json['numbers'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
        .toList()
    ..score = json['score'] as int;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$GamePlayer$BoardToJson(
        RoomFieldsMixin$CommonPlayer$GamePlayer$Board instance) =>
    <String, dynamic>{
      'numbers': instance.numbers,
      'score': instance.score,
    };

RoomFieldsMixin$CommonPlayer$GamePlayer$Player
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerToJson(
        RoomFieldsMixin$CommonPlayer$GamePlayer$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RoomFieldsMixin$CommonPlayer$GamePlayer
    _$RoomFieldsMixin$CommonPlayer$GamePlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer()
    ..isConnected = json['isConnected'] as bool
    ..$$typename = json['__typename'] as String?
    ..board = json['board'] == null
        ? null
        : RoomFieldsMixin$CommonPlayer$GamePlayer$Board.fromJson(
            json['board'] as Map<String, dynamic>)
    ..player = RoomFieldsMixin$CommonPlayer$GamePlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$GamePlayerToJson(
        RoomFieldsMixin$CommonPlayer$GamePlayer instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      '__typename': instance.$$typename,
      'board': instance.board?.toJson(),
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player
    _$RoomFieldsMixin$CommonPlayer$LobbyPlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$LobbyPlayer$PlayerToJson(
        RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RoomFieldsMixin$CommonPlayer$LobbyPlayer
    _$RoomFieldsMixin$CommonPlayer$LobbyPlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$LobbyPlayer()
    ..isConnected = json['isConnected'] as bool
    ..$$typename = json['__typename'] as String?
    ..player = RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$LobbyPlayerToJson(
        RoomFieldsMixin$CommonPlayer$LobbyPlayer instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      '__typename': instance.$$typename,
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$CommonPlayer _$RoomFieldsMixin$CommonPlayerFromJson(
    Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer()
    ..isConnected = json['isConnected'] as bool
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayerToJson(
        RoomFieldsMixin$CommonPlayer instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      '__typename': instance.$$typename,
    };

RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player
    _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerToJson(
            RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer
    _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer()
    ..player = RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerToJson(
        RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer instance) =>
    <String, dynamic>{
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$PlayerToJson(
            RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$RankFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank()
    ..rank = json['rank'] as int
    ..player = RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
        .fromJson(json['player'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$RankToJson(
        RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData()
    ..leaderboard = (json['leaderboard'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameDataToJson(
            RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData instance) =>
        <String, dynamic>{
          'leaderboard': instance.leaderboard.map((e) => e.toJson()).toList(),
        };

RoomFieldsMixin$RoomState$LobbyData$LastGame
    _$RoomFieldsMixin$RoomState$LobbyData$LastGameFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame()
    ..lastGame = RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData.fromJson(
        json['lastGame'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$LobbyData$LastGameToJson(
        RoomFieldsMixin$RoomState$LobbyData$LastGame instance) =>
    <String, dynamic>{
      'lastGame': instance.lastGame.toJson(),
    };

RoomFieldsMixin$RoomState$LobbyData
    _$RoomFieldsMixin$RoomState$LobbyDataFromJson(Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData()
    ..$$typename = json['__typename'] as String?
    ..players = (json['players'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..lastGame = json['lastGame'] == null
        ? null
        : RoomFieldsMixin$RoomState$LobbyData$LastGame.fromJson(
            json['lastGame'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$LobbyDataToJson(
        RoomFieldsMixin$RoomState$LobbyData instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'lastGame': instance.lastGame?.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$Rank$Player
    _$RoomFieldsMixin$RoomState$GameData$Rank$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Rank$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Rank$PlayerToJson(
        RoomFieldsMixin$RoomState$GameData$Rank$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RoomFieldsMixin$RoomState$GameData$Rank
    _$RoomFieldsMixin$RoomState$GameData$RankFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Rank()
    ..rank = json['rank'] as int
    ..player = RoomFieldsMixin$RoomState$GameData$Rank$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$RankToJson(
        RoomFieldsMixin$RoomState$GameData$Rank instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$GamePlayer$Player
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$Player instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$Board
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$BoardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$Board()
    ..numbers = (json['numbers'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
        .toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$BoardToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$Board instance) =>
        <String, dynamic>{
          'numbers': instance.numbers,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer
    _$RoomFieldsMixin$RoomState$GameData$GamePlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer()
    ..player = RoomFieldsMixin$RoomState$GameData$GamePlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>)
    ..board = json['board'] == null
        ? null
        : RoomFieldsMixin$RoomState$GameData$GamePlayer$Board.fromJson(
            json['board'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$GamePlayerToJson(
        RoomFieldsMixin$RoomState$GameData$GamePlayer instance) =>
    <String, dynamic>{
      'player': instance.player.toJson(),
      'board': instance.board?.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation
    _$RoomFieldsMixin$RoomState$GameData$GameState$BoardCreationFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation()
    ..$$typename = json['__typename'] as String?
    ..ready = (json['ready'] as List<dynamic>).map((e) => e as String).toList();
}

Map<String,
    dynamic> _$RoomFieldsMixin$RoomState$GameData$GameState$BoardCreationToJson(
        RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ready': instance.ready,
    };

RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell
    _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCellFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell()
    ..selectedBy = json['selectedBy'] as String
    ..cellValue = json['cellValue'] as int;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCellToJson(
            RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell
                instance) =>
        <String, dynamic>{
          'selectedBy': instance.selectedBy,
          'cellValue': instance.cellValue,
        };

RoomFieldsMixin$RoomState$GameData$GameState$GameRunning
    _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunningFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GameState$GameRunning()
    ..$$typename = json['__typename'] as String?
    ..turn = json['turn'] as String
    ..selectedNumbers = (json['selectedNumbers'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String,
    dynamic> _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunningToJson(
        RoomFieldsMixin$RoomState$GameData$GameState$GameRunning instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'turn': instance.turn,
      'selectedNumbers':
          instance.selectedNumbers.map((e) => e.toJson()).toList(),
    };

RoomFieldsMixin$RoomState$GameData$GameState
    _$RoomFieldsMixin$RoomState$GameData$GameStateFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GameState()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$GameStateToJson(
        RoomFieldsMixin$RoomState$GameData$GameState instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

RoomFieldsMixin$RoomState$GameData _$RoomFieldsMixin$RoomState$GameDataFromJson(
    Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData()
    ..$$typename = json['__typename'] as String?
    ..leaderboard = (json['leaderboard'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$GameData$Rank.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..players = (json['players'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$GameData$GamePlayer.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..boardSize = json['boardSize'] as int
    ..gameState = RoomFieldsMixin$RoomState$GameData$GameState.fromJson(
        json['gameState'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameDataToJson(
        RoomFieldsMixin$RoomState$GameData instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'leaderboard': instance.leaderboard.map((e) => e.toJson()).toList(),
      'players': instance.players.map((e) => e.toJson()).toList(),
      'boardSize': instance.boardSize,
      'gameState': instance.gameState.toJson(),
    };

RoomFieldsMixin$RoomState _$RoomFieldsMixin$RoomStateFromJson(
    Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomStateToJson(
        RoomFieldsMixin$RoomState instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

GameMessages$Subscription$ServerResponse$PlayerJoined$Player
    _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerJoined$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerToJson(
            GameMessages$Subscription$ServerResponse$PlayerJoined$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

GameMessages$Subscription$ServerResponse$PlayerJoined$Room
    _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerJoined$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomToJson(
        GameMessages$Subscription$ServerResponse$PlayerJoined$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'state': instance.state.toJson(),
    };

GameMessages$Subscription$ServerResponse$PlayerJoined
    _$GameMessages$Subscription$ServerResponse$PlayerJoinedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerJoined()
    ..$$typename = json['__typename'] as String?
    ..player =
        GameMessages$Subscription$ServerResponse$PlayerJoined$Player.fromJson(
            json['player'] as Map<String, dynamic>)
    ..room =
        GameMessages$Subscription$ServerResponse$PlayerJoined$Room.fromJson(
            json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerJoinedToJson(
            GameMessages$Subscription$ServerResponse$PlayerJoined instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$PlayerConnected$Player
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerConnected$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerToJson(
            GameMessages$Subscription$ServerResponse$PlayerConnected$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

GameMessages$Subscription$ServerResponse$PlayerConnected$Room
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerConnected$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomToJson(
            GameMessages$Subscription$ServerResponse$PlayerConnected$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'players': instance.players.map((e) => e.toJson()).toList(),
          'state': instance.state.toJson(),
        };

GameMessages$Subscription$ServerResponse$PlayerConnected
    _$GameMessages$Subscription$ServerResponse$PlayerConnectedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerConnected()
    ..$$typename = json['__typename'] as String?
    ..player = GameMessages$Subscription$ServerResponse$PlayerConnected$Player
        .fromJson(json['player'] as Map<String, dynamic>)
    ..room =
        GameMessages$Subscription$ServerResponse$PlayerConnected$Room.fromJson(
            json['room'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerConnectedToJson(
        GameMessages$Subscription$ServerResponse$PlayerConnected instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'player': instance.player.toJson(),
      'room': instance.room.toJson(),
    };

GameMessages$Subscription$ServerResponse$PlayerLeft$Player
    _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerLeft$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerToJson(
        GameMessages$Subscription$ServerResponse$PlayerLeft$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GameMessages$Subscription$ServerResponse$PlayerLeft$Room
    _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerLeft$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomToJson(
        GameMessages$Subscription$ServerResponse$PlayerLeft$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'state': instance.state.toJson(),
    };

GameMessages$Subscription$ServerResponse$PlayerLeft
    _$GameMessages$Subscription$ServerResponse$PlayerLeftFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerLeft()
    ..$$typename = json['__typename'] as String?
    ..player =
        GameMessages$Subscription$ServerResponse$PlayerLeft$Player.fromJson(
            json['player'] as Map<String, dynamic>)
    ..room = GameMessages$Subscription$ServerResponse$PlayerLeft$Room.fromJson(
        json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerLeftToJson(
            GameMessages$Subscription$ServerResponse$PlayerLeft instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$Room
    _$GameMessages$Subscription$ServerResponse$GameMessage$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$GameMessage$RoomToJson(
        GameMessages$Subscription$ServerResponse$GameMessage$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'state': instance.state.toJson(),
    };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreationFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation()
    ..$$typename = json['__typename'] as String?
    ..ready = (json['ready'] as List<dynamic>).map((e) => e as String).toList();
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreationToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'ready': instance.ready,
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunningFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning()
    ..$$typename = json['__typename'] as String?
    ..turn = json['turn'] as String;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunningToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'turn': instance.turn,
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameStateFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameStateToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted()
    ..$$typename = json['__typename'] as String?
    ..gameState =
        GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
            .fromJson(json['gameState'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'gameState': instance.gameState.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'players': instance.players.map((e) => e.toJson()).toList(),
          'state': instance.state.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate()
    ..$$typename = json['__typename'] as String?
    ..room =
        GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
            .fromJson(json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

GameMessages$Subscription$ServerResponse$GameMessage
    _$GameMessages$Subscription$ServerResponse$GameMessageFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage()
    ..$$typename = json['__typename'] as String?
    ..room = GameMessages$Subscription$ServerResponse$GameMessage$Room.fromJson(
        json['room'] as Map<String, dynamic>)
    ..event = GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
        .fromJson(json['event'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessageToJson(
            GameMessages$Subscription$ServerResponse$GameMessage instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'room': instance.room.toJson(),
          'event': instance.event.toJson(),
        };

GameMessages$Subscription$ServerResponse
    _$GameMessages$Subscription$ServerResponseFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GameMessages$Subscription$ServerResponseToJson(
        GameMessages$Subscription$ServerResponse instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

GameMessages$Subscription _$GameMessages$SubscriptionFromJson(
    Map<String, dynamic> json) {
  return GameMessages$Subscription()
    ..serverMessages = GameMessages$Subscription$ServerResponse.fromJson(
        json['serverMessages'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GameMessages$SubscriptionToJson(
        GameMessages$Subscription instance) =>
    <String, dynamic>{
      'serverMessages': instance.serverMessages.toJson(),
    };

CreateLobbyArguments _$CreateLobbyArgumentsFromJson(Map<String, dynamic> json) {
  return CreateLobbyArguments(
    playerId: json['playerId'] as String?,
    playerName: json['playerName'] as String?,
  );
}

Map<String, dynamic> _$CreateLobbyArgumentsToJson(
        CreateLobbyArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'playerName': instance.playerName,
    };

StartGameArguments _$StartGameArgumentsFromJson(Map<String, dynamic> json) {
  return StartGameArguments(
    playerId: json['playerId'] as String?,
    roomId: json['roomId'] as String?,
    boardSize: json['boardSize'] as int?,
  );
}

Map<String, dynamic> _$StartGameArgumentsToJson(StartGameArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'boardSize': instance.boardSize,
    };

ReadyBoardArguments _$ReadyBoardArgumentsFromJson(Map<String, dynamic> json) {
  return ReadyBoardArguments(
    playerId: json['playerId'] as String?,
    roomId: json['roomId'] as String?,
    board: (json['board'] as List<dynamic>?)
        ?.map((e) => (e as List<dynamic>).map((e) => e as int).toList())
        .toList(),
  );
}

Map<String, dynamic> _$ReadyBoardArgumentsToJson(
        ReadyBoardArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'board': instance.board,
    };

PlayerMoveArguments _$PlayerMoveArgumentsFromJson(Map<String, dynamic> json) {
  return PlayerMoveArguments(
    playerId: json['playerId'] as String?,
    roomId: json['roomId'] as String?,
    number: json['number'] as int?,
  );
}

Map<String, dynamic> _$PlayerMoveArgumentsToJson(
        PlayerMoveArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'number': instance.number,
    };

JoinLobbyArguments _$JoinLobbyArgumentsFromJson(Map<String, dynamic> json) {
  return JoinLobbyArguments(
    playerId: json['playerId'] as String?,
    playerName: json['playerName'] as String?,
    roomId: json['roomId'] as String?,
  );
}

Map<String, dynamic> _$JoinLobbyArgumentsToJson(JoinLobbyArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'playerName': instance.playerName,
      'roomId': instance.roomId,
    };

GameMessagesArguments _$GameMessagesArgumentsFromJson(
    Map<String, dynamic> json) {
  return GameMessagesArguments(
    roomId: json['roomId'] as String?,
    playerId: json['playerId'] as String?,
  );
}

Map<String, dynamic> _$GameMessagesArgumentsToJson(
        GameMessagesArguments instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'playerId': instance.playerId,
    };
