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
mixin OccupiedMixin {
  late int id;
  late String occupiedBy;
  late int movNo;
}
mixin UnoccupiedMixin {
  late int id;
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
class Disconnect$MutationRoot extends JsonSerializable with EquatableMixin {
  Disconnect$MutationRoot();

  factory Disconnect$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Disconnect$MutationRootFromJson(json);

  late String disconnect;

  @override
  List<Object?> get props => [disconnect];
  @override
  Map<String, dynamic> toJson() => _$Disconnect$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoStartGame$QueryRoot$GameInputs$BingoInputs extends JsonSerializable
    with EquatableMixin {
  BingoStartGame$QueryRoot$GameInputs$BingoInputs();

  factory BingoStartGame$QueryRoot$GameInputs$BingoInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BingoStartGame$QueryRoot$GameInputs$BingoInputsFromJson(json);

  late bool startGame;

  @override
  List<Object?> get props => [startGame];
  @override
  Map<String, dynamic> toJson() =>
      _$BingoStartGame$QueryRoot$GameInputs$BingoInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoStartGame$QueryRoot$GameInputs extends JsonSerializable
    with EquatableMixin {
  BingoStartGame$QueryRoot$GameInputs();

  factory BingoStartGame$QueryRoot$GameInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BingoStartGame$QueryRoot$GameInputsFromJson(json);

  late BingoStartGame$QueryRoot$GameInputs$BingoInputs bingoInputs;

  @override
  List<Object?> get props => [bingoInputs];
  @override
  Map<String, dynamic> toJson() =>
      _$BingoStartGame$QueryRoot$GameInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoStartGame$QueryRoot extends JsonSerializable with EquatableMixin {
  BingoStartGame$QueryRoot();

  factory BingoStartGame$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$BingoStartGame$QueryRootFromJson(json);

  late BingoStartGame$QueryRoot$GameInputs gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$BingoStartGame$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoReadyBoard$QueryRoot$GameInputs$BingoInputs extends JsonSerializable
    with EquatableMixin {
  BingoReadyBoard$QueryRoot$GameInputs$BingoInputs();

  factory BingoReadyBoard$QueryRoot$GameInputs$BingoInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BingoReadyBoard$QueryRoot$GameInputs$BingoInputsFromJson(json);

  late bool readyBoard;

  @override
  List<Object?> get props => [readyBoard];
  @override
  Map<String, dynamic> toJson() =>
      _$BingoReadyBoard$QueryRoot$GameInputs$BingoInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoReadyBoard$QueryRoot$GameInputs extends JsonSerializable
    with EquatableMixin {
  BingoReadyBoard$QueryRoot$GameInputs();

  factory BingoReadyBoard$QueryRoot$GameInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BingoReadyBoard$QueryRoot$GameInputsFromJson(json);

  late BingoReadyBoard$QueryRoot$GameInputs$BingoInputs bingoInputs;

  @override
  List<Object?> get props => [bingoInputs];
  @override
  Map<String, dynamic> toJson() =>
      _$BingoReadyBoard$QueryRoot$GameInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoReadyBoard$QueryRoot extends JsonSerializable with EquatableMixin {
  BingoReadyBoard$QueryRoot();

  factory BingoReadyBoard$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$BingoReadyBoard$QueryRootFromJson(json);

  late BingoReadyBoard$QueryRoot$GameInputs gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$BingoReadyBoard$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoPlayerMov$QueryRoot$GameInputs$BingoInputs extends JsonSerializable
    with EquatableMixin {
  BingoPlayerMov$QueryRoot$GameInputs$BingoInputs();

  factory BingoPlayerMov$QueryRoot$GameInputs$BingoInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BingoPlayerMov$QueryRoot$GameInputs$BingoInputsFromJson(json);

  late bool playerMove;

  @override
  List<Object?> get props => [playerMove];
  @override
  Map<String, dynamic> toJson() =>
      _$BingoPlayerMov$QueryRoot$GameInputs$BingoInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoPlayerMov$QueryRoot$GameInputs extends JsonSerializable
    with EquatableMixin {
  BingoPlayerMov$QueryRoot$GameInputs();

  factory BingoPlayerMov$QueryRoot$GameInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BingoPlayerMov$QueryRoot$GameInputsFromJson(json);

  late BingoPlayerMov$QueryRoot$GameInputs$BingoInputs bingoInputs;

  @override
  List<Object?> get props => [bingoInputs];
  @override
  Map<String, dynamic> toJson() =>
      _$BingoPlayerMov$QueryRoot$GameInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BingoPlayerMov$QueryRoot extends JsonSerializable with EquatableMixin {
  BingoPlayerMov$QueryRoot();

  factory BingoPlayerMov$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$BingoPlayerMov$QueryRootFromJson(json);

  late BingoPlayerMov$QueryRoot$GameInputs gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$BingoPlayerMov$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxesStartGame$QueryRoot$GameInputs$BoxesInputs extends JsonSerializable
    with EquatableMixin {
  BoxesStartGame$QueryRoot$GameInputs$BoxesInputs();

  factory BoxesStartGame$QueryRoot$GameInputs$BoxesInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BoxesStartGame$QueryRoot$GameInputs$BoxesInputsFromJson(json);

  late bool startGame;

  @override
  List<Object?> get props => [startGame];
  @override
  Map<String, dynamic> toJson() =>
      _$BoxesStartGame$QueryRoot$GameInputs$BoxesInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxesStartGame$QueryRoot$GameInputs extends JsonSerializable
    with EquatableMixin {
  BoxesStartGame$QueryRoot$GameInputs();

  factory BoxesStartGame$QueryRoot$GameInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BoxesStartGame$QueryRoot$GameInputsFromJson(json);

  late BoxesStartGame$QueryRoot$GameInputs$BoxesInputs boxesInputs;

  @override
  List<Object?> get props => [boxesInputs];
  @override
  Map<String, dynamic> toJson() =>
      _$BoxesStartGame$QueryRoot$GameInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxesStartGame$QueryRoot extends JsonSerializable with EquatableMixin {
  BoxesStartGame$QueryRoot();

  factory BoxesStartGame$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$BoxesStartGame$QueryRootFromJson(json);

  late BoxesStartGame$QueryRoot$GameInputs gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$BoxesStartGame$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs extends JsonSerializable
    with EquatableMixin {
  BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs();

  factory BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputsFromJson(json);

  late bool playerMove;

  @override
  List<Object?> get props => [playerMove];
  @override
  Map<String, dynamic> toJson() =>
      _$BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxesPlayerMov$QueryRoot$GameInputs extends JsonSerializable
    with EquatableMixin {
  BoxesPlayerMov$QueryRoot$GameInputs();

  factory BoxesPlayerMov$QueryRoot$GameInputs.fromJson(
          Map<String, dynamic> json) =>
      _$BoxesPlayerMov$QueryRoot$GameInputsFromJson(json);

  late BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs boxesInputs;

  @override
  List<Object?> get props => [boxesInputs];
  @override
  Map<String, dynamic> toJson() =>
      _$BoxesPlayerMov$QueryRoot$GameInputsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoxesPlayerMov$QueryRoot extends JsonSerializable with EquatableMixin {
  BoxesPlayerMov$QueryRoot();

  factory BoxesPlayerMov$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$BoxesPlayerMov$QueryRootFromJson(json);

  late BoxesPlayerMov$QueryRoot$GameInputs gameEvent;

  @override
  List<Object?> get props => [gameEvent];
  @override
  Map<String, dynamic> toJson() => _$BoxesPlayerMov$QueryRootToJson(this);
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
class RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$BoardFromJson(
          json);

  late List<List<int>> numbers;

  late int score;

  @override
  List<Object?> get props => [numbers, score];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$BoardToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData
    extends RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData
    with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerDataFromJson(
          json);

  RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board?
      board;

  @override
  List<Object?> get props => [board];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerDataToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData
    extends RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData
    with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerDataFromJson(
          json);

  late String color;

  late int score;

  @override
  List<Object?> get props => [color, score];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerDataToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData();

  factory RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BingoPlayerData':
        return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData
            .fromJson(json);
      case r'BoxesPlayerData':
        return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData
            .fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameDataFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'BingoPlayerData':
        return (this
                as RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData)
            .toJson();
      case r'BoxesPlayerData':
        return (this
                as RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData)
            .toJson();
      default:
    }
    return _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameDataToJson(this);
  }
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

  late RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData data;

  late RoomFieldsMixin$CommonPlayer$GamePlayer$Player player;

  @override
  List<Object?> get props => [data, player];
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
class RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$BoardFromJson(
          json);

  late List<List<int>> numbers;

  @override
  List<Object?> get props => [numbers];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$BoardToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData
    extends RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerDataFromJson(
          json);

  RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board?
      board;

  @override
  List<Object?> get props => [board];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerDataToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData
    extends RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerDataFromJson(
          json);

  late String color;

  @override
  List<Object?> get props => [color];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerDataToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BingoPlayerData':
        return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData
            .fromJson(json);
      case r'BoxesPlayerData':
        return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData
            .fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameDataFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'BingoPlayerData':
        return (this
                as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData)
            .toJson();
      case r'BoxesPlayerData':
        return (this
                as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData)
            .toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameDataToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayerFromJson(json);

  late RoomFieldsMixin$RoomState$GameData$GamePlayer$Player player;

  late RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData data;

  @override
  List<Object?> get props => [player, data];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation
    extends RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation();

  factory RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreationFromJson(
          json);

  late List<String> ready;

  @override
  List<Object?> get props => [ready];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreationToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell();

  factory RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCellFromJson(
          json);

  late String selectedBy;

  late int cellValue;

  @override
  List<Object?> get props => [selectedBy, cellValue];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCellToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning
    extends RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning();

  factory RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunningFromJson(
          json);

  late String turn;

  late List<
          RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell>
      selectedNumbers;

  @override
  List<Object?> get props => [turn, selectedNumbers];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunningToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState();

  factory RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BoardCreation':
        return RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation
            .fromJson(json);
      case r'GameRunning':
        return RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning
            .fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameStateFromJson(
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
                as RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation)
            .toJson();
      case r'GameRunning':
        return (this
                as RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning)
            .toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameStateToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Bingo
    extends RoomFieldsMixin$RoomState$GameData$Game with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Bingo();

  factory RoomFieldsMixin$RoomState$GameData$Game$Bingo.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$BingoFromJson(json);

  late int boardSize;

  late RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState gameState;

  @override
  List<Object?> get props => [boardSize, gameState];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$BingoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied
    extends RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType
    with EquatableMixin, OccupiedMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied();

  factory RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$OccupiedFromJson(
          json);

  @override
  List<Object?> get props => [id, occupiedBy, movNo];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$OccupiedToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied
    extends RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType
    with EquatableMixin, UnoccupiedMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied();

  factory RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$UnoccupiedFromJson(
          json);

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$UnoccupiedToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType();

  factory RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'Occupied':
        return RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied
            .fromJson(json);
      case r'Unoccupied':
        return RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied
            .fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeTypeFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'Occupied':
        return (this
                as RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied)
            .toJson();
      case r'Unoccupied':
        return (this
                as RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied)
            .toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeTypeToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell();

  factory RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$CellFromJson(json);

  String? occupiedBy;

  @override
  List<Object?> get props => [occupiedBy];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$CellToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game$Boxes
    extends RoomFieldsMixin$RoomState$GameData$Game with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game$Boxes();

  factory RoomFieldsMixin$RoomState$GameData$Game$Boxes.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$Game$BoxesFromJson(json);

  late String turn;

  late int width;

  late int height;

  late List<RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType>
      horizontalEdges;

  late List<RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType>
      verticalEdges;

  late List<RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell> cells;

  @override
  List<Object?> get props =>
      [turn, width, height, horizontalEdges, verticalEdges, cells];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$Game$BoxesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$Game extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$Game();

  factory RoomFieldsMixin$RoomState$GameData$Game.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'Bingo':
        return RoomFieldsMixin$RoomState$GameData$Game$Bingo.fromJson(json);
      case r'Boxes':
        return RoomFieldsMixin$RoomState$GameData$Game$Boxes.fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GameFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'Bingo':
        return (this as RoomFieldsMixin$RoomState$GameData$Game$Bingo).toJson();
      case r'Boxes':
        return (this as RoomFieldsMixin$RoomState$GameData$Game$Boxes).toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GameToJson(this);
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

  late RoomFieldsMixin$RoomState$GameData$Game game;

  @override
  List<Object?> get props => [leaderboard, players, game];
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
class GameMessages$Subscription$ServerResponse$PlayerRemoved$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerRemoved$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerRemoved$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerRemoved$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerRemoved$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerRemoved$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerRemoved$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerRemoved$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerRemoved$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerRemoved$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerRemoved
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerRemoved();

  factory GameMessages$Subscription$ServerResponse$PlayerRemoved.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerRemovedFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerRemoved$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerRemoved$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerRemovedToJson(this);
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
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game
    extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameFromJson(
          json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameToJson(
          this);
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

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game
      game;

  @override
  List<Object?> get props => [game];
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
      case r'PlayerRemoved':
        return GameMessages$Subscription$ServerResponse$PlayerRemoved.fromJson(
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
      case r'PlayerRemoved':
        return (this as GameMessages$Subscription$ServerResponse$PlayerRemoved)
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
  CreateLobbyArguments({required this.playerId, required this.playerName});

  @override
  factory CreateLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateLobbyArgumentsFromJson(json);

  late String playerId;

  late String playerName;

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
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerName')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
class DisconnectArguments extends JsonSerializable with EquatableMixin {
  DisconnectArguments({required this.playerId, required this.roomId});

  @override
  factory DisconnectArguments.fromJson(Map<String, dynamic> json) =>
      _$DisconnectArgumentsFromJson(json);

  late String playerId;

  late String roomId;

  @override
  List<Object?> get props => [playerId, roomId];
  @override
  Map<String, dynamic> toJson() => _$DisconnectArgumentsToJson(this);
}

final DISCONNECT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'disconnect'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'disconnect'),
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
            selectionSet: null)
      ]))
]);

class DisconnectMutation
    extends GraphQLQuery<Disconnect$MutationRoot, DisconnectArguments> {
  DisconnectMutation({required this.variables});

  @override
  final DocumentNode document = DISCONNECT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'disconnect';

  @override
  final DisconnectArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Disconnect$MutationRoot parse(Map<String, dynamic> json) =>
      Disconnect$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BingoStartGameArguments extends JsonSerializable with EquatableMixin {
  BingoStartGameArguments(
      {required this.playerId, required this.roomId, required this.boardSize});

  @override
  factory BingoStartGameArguments.fromJson(Map<String, dynamic> json) =>
      _$BingoStartGameArgumentsFromJson(json);

  late String playerId;

  late String roomId;

  late int boardSize;

  @override
  List<Object?> get props => [playerId, roomId, boardSize];
  @override
  Map<String, dynamic> toJson() => _$BingoStartGameArgumentsToJson(this);
}

final BINGO_START_GAME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'bingoStartGame'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'boardSize')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
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
                  name: NameNode(value: 'bingoInputs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'startGame'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'boardSize'),
                              value: VariableNode(
                                  name: NameNode(value: 'boardSize')))
                        ],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class BingoStartGameQuery
    extends GraphQLQuery<BingoStartGame$QueryRoot, BingoStartGameArguments> {
  BingoStartGameQuery({required this.variables});

  @override
  final DocumentNode document = BINGO_START_GAME_QUERY_DOCUMENT;

  @override
  final String operationName = 'bingoStartGame';

  @override
  final BingoStartGameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  BingoStartGame$QueryRoot parse(Map<String, dynamic> json) =>
      BingoStartGame$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BingoReadyBoardArguments extends JsonSerializable with EquatableMixin {
  BingoReadyBoardArguments(
      {required this.playerId, required this.roomId, required this.board});

  @override
  factory BingoReadyBoardArguments.fromJson(Map<String, dynamic> json) =>
      _$BingoReadyBoardArgumentsFromJson(json);

  late String playerId;

  late String roomId;

  late List<List<int>> board;

  @override
  List<Object?> get props => [playerId, roomId, board];
  @override
  Map<String, dynamic> toJson() => _$BingoReadyBoardArgumentsToJson(this);
}

final BINGO_READY_BOARD_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'bingoReadyBoard'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'board')),
            type: ListTypeNode(
                type: ListTypeNode(
                    type: NamedTypeNode(
                        name: NameNode(value: 'Int'), isNonNull: true),
                    isNonNull: true),
                isNonNull: true),
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
                  name: NameNode(value: 'bingoInputs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'readyBoard'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'board'),
                              value:
                                  VariableNode(name: NameNode(value: 'board')))
                        ],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class BingoReadyBoardQuery
    extends GraphQLQuery<BingoReadyBoard$QueryRoot, BingoReadyBoardArguments> {
  BingoReadyBoardQuery({required this.variables});

  @override
  final DocumentNode document = BINGO_READY_BOARD_QUERY_DOCUMENT;

  @override
  final String operationName = 'bingoReadyBoard';

  @override
  final BingoReadyBoardArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  BingoReadyBoard$QueryRoot parse(Map<String, dynamic> json) =>
      BingoReadyBoard$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BingoPlayerMovArguments extends JsonSerializable with EquatableMixin {
  BingoPlayerMovArguments(
      {required this.playerId, required this.roomId, required this.number});

  @override
  factory BingoPlayerMovArguments.fromJson(Map<String, dynamic> json) =>
      _$BingoPlayerMovArgumentsFromJson(json);

  late String playerId;

  late String roomId;

  late int number;

  @override
  List<Object?> get props => [playerId, roomId, number];
  @override
  Map<String, dynamic> toJson() => _$BingoPlayerMovArgumentsToJson(this);
}

final BINGO_PLAYER_MOV_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'bingoPlayerMov'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'number')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
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
                  name: NameNode(value: 'bingoInputs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'playerMove'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'number'),
                              value:
                                  VariableNode(name: NameNode(value: 'number')))
                        ],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class BingoPlayerMovQuery
    extends GraphQLQuery<BingoPlayerMov$QueryRoot, BingoPlayerMovArguments> {
  BingoPlayerMovQuery({required this.variables});

  @override
  final DocumentNode document = BINGO_PLAYER_MOV_QUERY_DOCUMENT;

  @override
  final String operationName = 'bingoPlayerMov';

  @override
  final BingoPlayerMovArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  BingoPlayerMov$QueryRoot parse(Map<String, dynamic> json) =>
      BingoPlayerMov$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BoxesStartGameArguments extends JsonSerializable with EquatableMixin {
  BoxesStartGameArguments(
      {required this.playerId,
      required this.roomId,
      required this.boardWidth,
      required this.boardHeight});

  @override
  factory BoxesStartGameArguments.fromJson(Map<String, dynamic> json) =>
      _$BoxesStartGameArgumentsFromJson(json);

  late String playerId;

  late String roomId;

  late int boardWidth;

  late int boardHeight;

  @override
  List<Object?> get props => [playerId, roomId, boardWidth, boardHeight];
  @override
  Map<String, dynamic> toJson() => _$BoxesStartGameArgumentsToJson(this);
}

final BOXES_START_GAME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'boxesStartGame'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'boardWidth')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'boardHeight')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
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
                  name: NameNode(value: 'boxesInputs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'startGame'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'boardWidth'),
                              value: VariableNode(
                                  name: NameNode(value: 'boardWidth'))),
                          ArgumentNode(
                              name: NameNode(value: 'boardHeight'),
                              value: VariableNode(
                                  name: NameNode(value: 'boardHeight')))
                        ],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class BoxesStartGameQuery
    extends GraphQLQuery<BoxesStartGame$QueryRoot, BoxesStartGameArguments> {
  BoxesStartGameQuery({required this.variables});

  @override
  final DocumentNode document = BOXES_START_GAME_QUERY_DOCUMENT;

  @override
  final String operationName = 'boxesStartGame';

  @override
  final BoxesStartGameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  BoxesStartGame$QueryRoot parse(Map<String, dynamic> json) =>
      BoxesStartGame$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BoxesPlayerMovArguments extends JsonSerializable with EquatableMixin {
  BoxesPlayerMovArguments(
      {required this.playerId, required this.roomId, required this.edgeId});

  @override
  factory BoxesPlayerMovArguments.fromJson(Map<String, dynamic> json) =>
      _$BoxesPlayerMovArgumentsFromJson(json);

  late String playerId;

  late String roomId;

  late int edgeId;

  @override
  List<Object?> get props => [playerId, roomId, edgeId];
  @override
  Map<String, dynamic> toJson() => _$BoxesPlayerMovArgumentsToJson(this);
}

final BOXES_PLAYER_MOV_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'boxesPlayerMov'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'edgeId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
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
                  name: NameNode(value: 'boxesInputs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'playerMove'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'edgeId'),
                              value:
                                  VariableNode(name: NameNode(value: 'edgeId')))
                        ],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class BoxesPlayerMovQuery
    extends GraphQLQuery<BoxesPlayerMov$QueryRoot, BoxesPlayerMovArguments> {
  BoxesPlayerMovQuery({required this.variables});

  @override
  final DocumentNode document = BOXES_PLAYER_MOV_QUERY_DOCUMENT;

  @override
  final String operationName = 'boxesPlayerMov';

  @override
  final BoxesPlayerMovArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  BoxesPlayerMov$QueryRoot parse(Map<String, dynamic> json) =>
      BoxesPlayerMov$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class JoinLobbyArguments extends JsonSerializable with EquatableMixin {
  JoinLobbyArguments(
      {required this.playerId, required this.playerName, required this.roomId});

  @override
  factory JoinLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$JoinLobbyArgumentsFromJson(json);

  late String playerId;

  late String playerName;

  late String roomId;

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
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerName')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
  GameMessagesArguments({required this.roomId, required this.playerId});

  @override
  factory GameMessagesArguments.fromJson(Map<String, dynamic> json) =>
      _$GameMessagesArgumentsFromJson(json);

  late String roomId;

  late String playerId;

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
      name: NameNode(value: 'occupied'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Occupied'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'occupiedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'movNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'unoccupied'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Unoccupied'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
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
                        name: NameNode(value: 'data'),
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
                                      name: NameNode(value: 'BingoPlayerData'),
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
                                                    name: NameNode(
                                                        value: 'roomId')))
                                          ],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'BoxesPlayerData'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'color'),
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
                              ]))
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
                              name: NameNode(value: 'data'),
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
                                                value: 'BingoPlayerData'),
                                            isNonNull: false)),
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'board'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name:
                                                    NameNode(value: 'numbers'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ])),
                                InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                        on: NamedTypeNode(
                                            name: NameNode(
                                                value: 'BoxesPlayerData'),
                                            isNonNull: false)),
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'color'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'game'),
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
                                      name: NameNode(value: 'Bingo'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
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
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(
                                                    value: 'selectedNumbers'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                    selections: [
                                                      FieldNode(
                                                          name: NameNode(
                                                              value:
                                                                  'selectedBy'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null),
                                                      FieldNode(
                                                          name: NameNode(
                                                              value:
                                                                  'cellValue'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null)
                                                    ]))
                                          ]))
                                    ]))
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'Boxes'),
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
                                    name: NameNode(value: 'width'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'height'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'horizontalEdges'),
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
                                                      value: 'Occupied'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FragmentSpreadNode(
                                                name:
                                                    NameNode(value: 'occupied'),
                                                directives: [])
                                          ])),
                                      InlineFragmentNode(
                                          typeCondition: TypeConditionNode(
                                              on: NamedTypeNode(
                                                  name: NameNode(
                                                      value: 'Unoccupied'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                              selections: [
                                                FragmentSpreadNode(
                                                    name: NameNode(
                                                        value: 'unoccupied'),
                                                    directives: [])
                                              ]))
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'verticalEdges'),
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
                                                      value: 'Occupied'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FragmentSpreadNode(
                                                name:
                                                    NameNode(value: 'occupied'),
                                                directives: [])
                                          ])),
                                      InlineFragmentNode(
                                          typeCondition: TypeConditionNode(
                                              on: NamedTypeNode(
                                                  name: NameNode(
                                                      value: 'Unoccupied'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                              selections: [
                                                FragmentSpreadNode(
                                                    name: NameNode(
                                                        value: 'unoccupied'),
                                                    directives: [])
                                              ]))
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'cells'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'occupiedBy'),
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
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
                          name: NameNode(value: 'PlayerRemoved'),
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
                                    name: NameNode(value: 'game'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
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
