// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin PlayerFieldsMixin {
  late String id;
  late String name;
}
mixin RoomFieldsMixin {
  late String id;
  late List<RoomFieldsMixin$CommonPlayer> players;
  late RoomFieldsMixin$RoomState state;
}

@JsonSerializable(explicitToJson: true)
class CreateLobby$MutationRoot extends JsonSerializable with EquatableMixin {
  CreateLobby$MutationRoot();

  factory CreateLobby$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$CreateLobby$MutationRootFromJson(json);

  late String createLobby;

  @override
  List<Object?> get props => [createLobby];
  @override
  Map<String, dynamic> toJson() => _$CreateLobby$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StartGame$QueryRoot$PlayerHandler extends JsonSerializable
    with EquatableMixin {
  StartGame$QueryRoot$PlayerHandler();

  factory StartGame$QueryRoot$PlayerHandler.fromJson(
          Map<String, dynamic> json) =>
      _$StartGame$QueryRoot$PlayerHandlerFromJson(json);

  late bool startGame;

  @override
  List<Object?> get props => [startGame];
  @override
  Map<String, dynamic> toJson() =>
      _$StartGame$QueryRoot$PlayerHandlerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StartGame$QueryRoot extends JsonSerializable with EquatableMixin {
  StartGame$QueryRoot();

  factory StartGame$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$StartGame$QueryRootFromJson(json);

  late StartGame$QueryRoot$PlayerHandler gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$StartGame$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadyBoard$QueryRoot$PlayerHandler extends JsonSerializable
    with EquatableMixin {
  ReadyBoard$QueryRoot$PlayerHandler();

  factory ReadyBoard$QueryRoot$PlayerHandler.fromJson(
          Map<String, dynamic> json) =>
      _$ReadyBoard$QueryRoot$PlayerHandlerFromJson(json);

  late bool readyBoard;

  @override
  List<Object?> get props => [readyBoard];
  @override
  Map<String, dynamic> toJson() =>
      _$ReadyBoard$QueryRoot$PlayerHandlerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadyBoard$QueryRoot extends JsonSerializable with EquatableMixin {
  ReadyBoard$QueryRoot();

  factory ReadyBoard$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$ReadyBoard$QueryRootFromJson(json);

  late ReadyBoard$QueryRoot$PlayerHandler gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$ReadyBoard$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlayerMove$QueryRoot$PlayerHandler extends JsonSerializable
    with EquatableMixin {
  PlayerMove$QueryRoot$PlayerHandler();

  factory PlayerMove$QueryRoot$PlayerHandler.fromJson(
          Map<String, dynamic> json) =>
      _$PlayerMove$QueryRoot$PlayerHandlerFromJson(json);

  late bool playerMove;

  @override
  List<Object?> get props => [playerMove];
  @override
  Map<String, dynamic> toJson() =>
      _$PlayerMove$QueryRoot$PlayerHandlerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlayerMove$QueryRoot extends JsonSerializable with EquatableMixin {
  PlayerMove$QueryRoot();

  factory PlayerMove$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$PlayerMove$QueryRootFromJson(json);

  late PlayerMove$QueryRoot$PlayerHandler gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$PlayerMove$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JoinLobby$MutationRoot extends JsonSerializable with EquatableMixin {
  JoinLobby$MutationRoot();

  factory JoinLobby$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$JoinLobby$MutationRootFromJson(json);

  late String joinLobby;

  @override
  List<Object?> get props => [joinLobby];
  @override
  Map<String, dynamic> toJson() => _$JoinLobby$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ping$QueryRoot extends JsonSerializable with EquatableMixin {
  Ping$QueryRoot();

  factory Ping$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Ping$QueryRootFromJson(json);

  late String ping;

  @override
  List<Object?> get props => [ping];
  @override
  Map<String, dynamic> toJson() => _$Ping$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$GamePlayer$Board extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer$Board();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer$Board.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$BoardFromJson(json);

  late List<List<int>> numbers;

  late int score;

  @override
  List<Object?> get props => [numbers, score];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$BoardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$GamePlayer$Player extends JsonSerializable
    with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer$Player();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$GamePlayer
    extends RoomFieldsMixin$CommonPlayer with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayerFromJson(json);

  RoomFieldsMixin$CommonPlayer$GamePlayer$Board? board;

  late RoomFieldsMixin$CommonPlayer$GamePlayer$Player player;

  @override
  List<Object?> get props => [board, player];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player extends JsonSerializable
    with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player();

  factory RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$LobbyPlayer$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$LobbyPlayer$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$LobbyPlayer
    extends RoomFieldsMixin$CommonPlayer with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$LobbyPlayer();

  factory RoomFieldsMixin$CommonPlayer$LobbyPlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$LobbyPlayerFromJson(json);

  late RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player player;

  @override
  List<Object?> get props => [player];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$LobbyPlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$CommonPlayer();

  factory RoomFieldsMixin$CommonPlayer.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'GamePlayer':
        return RoomFieldsMixin$CommonPlayer$GamePlayer.fromJson(json);
      case r'LobbyPlayer':
        return RoomFieldsMixin$CommonPlayer$LobbyPlayer.fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$CommonPlayerFromJson(json);
  }

  late bool isConnected;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [isConnected, $$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'GamePlayer':
        return (this as RoomFieldsMixin$CommonPlayer$GamePlayer).toJson();
      case r'LobbyPlayer':
        return (this as RoomFieldsMixin$CommonPlayer$LobbyPlayer).toJson();
      default:
    }
    return _$RoomFieldsMixin$CommonPlayerToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player();

  factory RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer();

  factory RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerFromJson(json);

  late RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player player;

  @override
  List<Object?> get props => [player];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player();

  factory RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank();

  factory RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$RankFromJson(
          json);

  late int rank;

  late RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player player;

  @override
  List<Object?> get props => [rank, player];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$RankToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData();

  factory RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameDataFromJson(json);

  late List<RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank>
      leaderboard;

  @override
  List<Object?> get props => [leaderboard];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LastGame extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData$LastGame();

  factory RoomFieldsMixin$RoomState$LobbyData$LastGame.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGameFromJson(json);

  late RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData lastGame;

  @override
  List<Object?> get props => [lastGame];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LastGameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData extends RoomFieldsMixin$RoomState
    with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData();

  factory RoomFieldsMixin$RoomState$LobbyData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyDataFromJson(json);

  late List<RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer> players;

  RoomFieldsMixin$RoomState$LobbyData$LastGame? lastGame;

  @override
  List<Object?> get props => [players, lastGame];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Rank$Player extends JsonSerializable
    with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$RoomState$GameData$Rank$Player();

  factory RoomFieldsMixin$RoomState$GameData$Rank$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Rank$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Rank$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Rank extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Rank();

  factory RoomFieldsMixin$RoomState$GameData$Rank.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$RankFromJson(json);

  late int rank;

  late RoomFieldsMixin$RoomState$GameData$Rank$Player player;

  @override
  List<Object?> get props => [rank, player];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$RankToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$Player();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$Board
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$Board();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$Board.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$BoardFromJson(json);

  late List<List<int>> numbers;

  @override
  List<Object?> get props => [numbers];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$BoardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayerFromJson(json);

  late RoomFieldsMixin$RoomState$GameData$GamePlayer$Player player;

  RoomFieldsMixin$RoomState$GameData$GamePlayer$Board? board;

  @override
  List<Object?> get props => [player, board];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation
    extends RoomFieldsMixin$RoomState$GameData$GameState with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation();

  factory RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$BoardCreationFromJson(
          json);

  late List<String> ready;

  @override
  List<Object?> get props => [ready];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$BoardCreationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell();

  factory RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCellFromJson(
          json);

  late String selectedBy;

  late int cellValue;

  @override
  List<Object?> get props => [selectedBy, cellValue];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCellToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState$GameRunning
    extends RoomFieldsMixin$RoomState$GameData$GameState with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState$GameRunning();

  factory RoomFieldsMixin$RoomState$GameData$GameState$GameRunning.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunningFromJson(json);

  late String turn;

  late List<
          RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell>
      selectedNumbers;

  @override
  List<Object?> get props => [turn, selectedNumbers];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunningToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState();

  factory RoomFieldsMixin$RoomState$GameData$GameState.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BoardCreation':
        return RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation
            .fromJson(json);
      case r'GameRunning':
        return RoomFieldsMixin$RoomState$GameData$GameState$GameRunning
            .fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GameStateFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'BoardCreation':
        return (this
                as RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation)
            .toJson();
      case r'GameRunning':
        return (this
                as RoomFieldsMixin$RoomState$GameData$GameState$GameRunning)
            .toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GameStateToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData extends RoomFieldsMixin$RoomState
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData();

  factory RoomFieldsMixin$RoomState$GameData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameDataFromJson(json);

  late List<RoomFieldsMixin$RoomState$GameData$Rank> leaderboard;

  late List<RoomFieldsMixin$RoomState$GameData$GamePlayer> players;

  late int boardSize;

  late RoomFieldsMixin$RoomState$GameData$GameState gameState;

  @override
  List<Object?> get props => [leaderboard, players, boardSize, gameState];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState();

  factory RoomFieldsMixin$RoomState.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'LobbyData':
        return RoomFieldsMixin$RoomState$LobbyData.fromJson(json);
      case r'GameData':
        return RoomFieldsMixin$RoomState$GameData.fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomStateFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'LobbyData':
        return (this as RoomFieldsMixin$RoomState$LobbyData).toJson();
      case r'GameData':
        return (this as RoomFieldsMixin$RoomState$GameData).toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomStateToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerJoined$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerJoined$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerJoined$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerJoined$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerJoined$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerJoined$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerJoined
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerJoined();

  factory GameMessages$Subscription$ServerResponse$PlayerJoined.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoinedFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerJoined$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerJoined$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoinedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerConnected$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerConnected$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerConnected$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerConnected$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerConnected$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerConnected$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerConnected
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerConnected();

  factory GameMessages$Subscription$ServerResponse$PlayerConnected.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnectedFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerConnected$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerConnected$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnectedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerLeft$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerLeft$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerLeft$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerLeft$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerLeft$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerLeft$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomFromJson(json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerLeft
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerLeft();

  factory GameMessages$Subscription$ServerResponse$PlayerLeft.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeftFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerLeft$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerLeft$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeftToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$Room();

  factory GameMessages$Subscription$ServerResponse$GameMessage$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$RoomFromJson(json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreationFromJson(
          json);

  late List<String> ready;

  @override
  List<Object?> get props => [ready];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreationToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunningFromJson(
          json);

  late String turn;

  @override
  List<Object?> get props => [turn];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunningToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BoardCreation':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation
            .fromJson(json);
      case r'GameRunning':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning
            .fromJson(json);
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameStateFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'BoardCreation':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation)
            .toJson();
      case r'GameRunning':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning)
            .toJson();
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameStateToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedFromJson(
          json);

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
      gameState;

  @override
  List<Object?> get props => [gameState];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateFromJson(
          json);

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
      room;

  @override
  List<Object?> get props => [room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'GameStarted':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
            .fromJson(json);
      case r'RoomUpdate':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
            .fromJson(json);
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'GameStarted':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted)
            .toJson();
      case r'RoomUpdate':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate)
            .toJson();
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage();

  factory GameMessages$Subscription$ServerResponse$GameMessage.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessageFromJson(json);

  late GameMessages$Subscription$ServerResponse$GameMessage$Room room;

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents event;

  @override
  List<Object?> get props => [room, event];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse extends JsonSerializable
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse();

  factory GameMessages$Subscription$ServerResponse.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'PlayerJoined':
        return GameMessages$Subscription$ServerResponse$PlayerJoined.fromJson(
            json);
      case r'PlayerConnected':
        return GameMessages$Subscription$ServerResponse$PlayerConnected
            .fromJson(json);
      case r'PlayerLeft':
        return GameMessages$Subscription$ServerResponse$PlayerLeft.fromJson(
            json);
      case r'GameMessage':
        return GameMessages$Subscription$ServerResponse$GameMessage.fromJson(
            json);
      default:
    }
    return _$GameMessages$Subscription$ServerResponseFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'PlayerJoined':
        return (this as GameMessages$Subscription$ServerResponse$PlayerJoined)
            .toJson();
      case r'PlayerConnected':
        return (this
                as GameMessages$Subscription$ServerResponse$PlayerConnected)
            .toJson();
      case r'PlayerLeft':
        return (this as GameMessages$Subscription$ServerResponse$PlayerLeft)
            .toJson();
      case r'GameMessage':
        return (this as GameMessages$Subscription$ServerResponse$GameMessage)
            .toJson();
      default:
    }
    return _$GameMessages$Subscription$ServerResponseToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription();

  factory GameMessages$Subscription.fromJson(Map<String, dynamic> json) =>
      _$GameMessages$SubscriptionFromJson(json);

  late GameMessages$Subscription$ServerResponse serverMessages;

  @override
  List<Object?> get props => [serverMessages];
  @override
  Map<String, dynamic> toJson() => _$GameMessages$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateLobbyArguments extends JsonSerializable with EquatableMixin {
  CreateLobbyArguments({this.playerId, this.playerName});

  @override
  factory CreateLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateLobbyArgumentsFromJson(json);

  final String? playerId;

  final String? playerName;

  @override
  List<Object?> get props => [playerId, playerName];
  @override
  Map<String, dynamic> toJson() => _$CreateLobbyArgumentsToJson(this);
}

final CREATE_LOBBY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createLobby'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerName')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createLobby'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'playerName'),
                  value: VariableNode(name: NameNode(value: 'playerName')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class CreateLobbyMutation
    extends GraphQLQuery<CreateLobby$MutationRoot, CreateLobbyArguments> {
  CreateLobbyMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_LOBBY_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createLobby';

  @override
  final CreateLobbyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateLobby$MutationRoot parse(Map<String, dynamic> json) =>
      CreateLobby$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class StartGameArguments extends JsonSerializable with EquatableMixin {
  StartGameArguments({this.playerId, this.roomId, this.boardSize});

  @override
  factory StartGameArguments.fromJson(Map<String, dynamic> json) =>
      _$StartGameArgumentsFromJson(json);

  final String? playerId;

  final String? roomId;

  final int? boardSize;

  @override
  List<Object?> get props => [playerId, roomId, boardSize];
  @override
  Map<String, dynamic> toJson() => _$StartGameArgumentsToJson(this);
}

final START_GAME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'startGame'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'boardSize')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'gameEvent'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'startGame'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'boardSize'),
                        value: VariableNode(name: NameNode(value: 'boardSize')))
                  ],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class StartGameQuery
    extends GraphQLQuery<StartGame$QueryRoot, StartGameArguments> {
  StartGameQuery({required this.variables});

  @override
  final DocumentNode document = START_GAME_QUERY_DOCUMENT;

  @override
  final String operationName = 'startGame';

  @override
  final StartGameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  StartGame$QueryRoot parse(Map<String, dynamic> json) =>
      StartGame$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadyBoardArguments extends JsonSerializable with EquatableMixin {
  ReadyBoardArguments({this.playerId, this.roomId, this.board});

  @override
  factory ReadyBoardArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadyBoardArgumentsFromJson(json);

  final String? playerId;

  final String? roomId;

  final List<List<int>>? board;

  @override
  List<Object?> get props => [playerId, roomId, board];
  @override
  Map<String, dynamic> toJson() => _$ReadyBoardArgumentsToJson(this);
}

final READY_BOARD_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'readyBoard'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'board')),
            type: ListTypeNode(
                type: ListTypeNode(
                    type: NamedTypeNode(
                        name: NameNode(value: 'Int'), isNonNull: true),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'gameEvent'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'readyBoard'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'board'),
                        value: VariableNode(name: NameNode(value: 'board')))
                  ],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class ReadyBoardQuery
    extends GraphQLQuery<ReadyBoard$QueryRoot, ReadyBoardArguments> {
  ReadyBoardQuery({required this.variables});

  @override
  final DocumentNode document = READY_BOARD_QUERY_DOCUMENT;

  @override
  final String operationName = 'readyBoard';

  @override
  final ReadyBoardArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ReadyBoard$QueryRoot parse(Map<String, dynamic> json) =>
      ReadyBoard$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PlayerMoveArguments extends JsonSerializable with EquatableMixin {
  PlayerMoveArguments({this.playerId, this.roomId, this.number});

  @override
  factory PlayerMoveArguments.fromJson(Map<String, dynamic> json) =>
      _$PlayerMoveArgumentsFromJson(json);

  final String? playerId;

  final String? roomId;

  final int? number;

  @override
  List<Object?> get props => [playerId, roomId, number];
  @override
  Map<String, dynamic> toJson() => _$PlayerMoveArgumentsToJson(this);
}

final PLAYER_MOVE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'playerMove'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'number')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'gameEvent'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'playerMove'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'number'),
                        value: VariableNode(name: NameNode(value: 'number')))
                  ],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PlayerMoveQuery
    extends GraphQLQuery<PlayerMove$QueryRoot, PlayerMoveArguments> {
  PlayerMoveQuery({required this.variables});

  @override
  final DocumentNode document = PLAYER_MOVE_QUERY_DOCUMENT;

  @override
  final String operationName = 'playerMove';

  @override
  final PlayerMoveArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PlayerMove$QueryRoot parse(Map<String, dynamic> json) =>
      PlayerMove$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class JoinLobbyArguments extends JsonSerializable with EquatableMixin {
  JoinLobbyArguments({this.playerId, this.playerName, this.roomId});

  @override
  factory JoinLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$JoinLobbyArgumentsFromJson(json);

  final String? playerId;

  final String? playerName;

  final String? roomId;

  @override
  List<Object?> get props => [playerId, playerName, roomId];
  @override
  Map<String, dynamic> toJson() => _$JoinLobbyArgumentsToJson(this);
}

final JOIN_LOBBY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'joinLobby'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerName')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'joinLobby'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'playerName'),
                  value: VariableNode(name: NameNode(value: 'playerName'))),
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class JoinLobbyMutation
    extends GraphQLQuery<JoinLobby$MutationRoot, JoinLobbyArguments> {
  JoinLobbyMutation({required this.variables});

  @override
  final DocumentNode document = JOIN_LOBBY_MUTATION_DOCUMENT;

  @override
  final String operationName = 'joinLobby';

  @override
  final JoinLobbyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  JoinLobby$MutationRoot parse(Map<String, dynamic> json) =>
      JoinLobby$MutationRoot.fromJson(json);
}

final PING_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ping'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'ping'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class PingQuery extends GraphQLQuery<Ping$QueryRoot, JsonSerializable> {
  PingQuery();

  @override
  final DocumentNode document = PING_QUERY_DOCUMENT;

  @override
  final String operationName = 'ping';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Ping$QueryRoot parse(Map<String, dynamic> json) =>
      Ping$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GameMessagesArguments extends JsonSerializable with EquatableMixin {
  GameMessagesArguments({this.roomId, this.playerId});

  @override
  factory GameMessagesArguments.fromJson(Map<String, dynamic> json) =>
      _$GameMessagesArgumentsFromJson(json);

  final String? roomId;

  final String? playerId;

  @override
  List<Object?> get props => [roomId, playerId];
  @override
  Map<String, dynamic> toJson() => _$GameMessagesArgumentsToJson(this);
}

final GAME_MESSAGES_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  FragmentDefinitionNode(
      name: NameNode(value: 'playerFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Player'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'roomFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Room'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'players'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'isConnected'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'GamePlayer'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'board'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'numbers'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'score'),
                              alias: null,
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'roomId'),
                                    value: VariableNode(
                                        name: NameNode(value: 'roomId')))
                              ],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'LobbyPlayer'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ]))
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'LobbyData'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'players'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'player'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'playerFields'),
                                    directives: [])
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'lastGame'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'lastGame'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'leaderboard'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'rank'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'player'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                              selections: [
                                                FragmentSpreadNode(
                                                    name: NameNode(
                                                        value: 'playerFields'),
                                                    directives: [])
                                              ]))
                                    ]))
                              ]))
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'GameData'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'leaderboard'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'rank'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'player'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'playerFields'),
                                    directives: [])
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'players'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'player'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'playerFields'),
                                    directives: [])
                              ])),
                          FieldNode(
                              name: NameNode(value: 'board'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'numbers'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'boardSize'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'gameState'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'BoardCreation'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'ready'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'GameRunning'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'turn'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'selectedNumbers'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'selectedBy'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'cellValue'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ])),
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'gameMessages'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'serverMessages'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId'))),
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PlayerJoined'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PlayerConnected'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PlayerLeft'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'GameMessage'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'event'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'GameStarted'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'gameState'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      InlineFragmentNode(
                                          typeCondition: TypeConditionNode(
                                              on: NamedTypeNode(
                                                  name: NameNode(
                                                      value: 'BoardCreation'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'ready'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      InlineFragmentNode(
                                          typeCondition: TypeConditionNode(
                                              on: NamedTypeNode(
                                                  name: NameNode(
                                                      value: 'GameRunning'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'turn'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'RoomUpdate'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'room'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FragmentSpreadNode(
                                          name: NameNode(value: 'roomFields'),
                                          directives: [])
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class GameMessagesSubscription
    extends GraphQLQuery<GameMessages$Subscription, GameMessagesArguments> {
  GameMessagesSubscription({required this.variables});

  @override
  final DocumentNode document = GAME_MESSAGES_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'gameMessages';

  @override
  final GameMessagesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GameMessages$Subscription parse(Map<String, dynamic> json) =>
      GameMessages$Subscription.fromJson(json);
}
