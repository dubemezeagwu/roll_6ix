// ignore_for_file: public_member_api_docs, sort_constructors_first
class Player {
  final String? dice;
  final num numberPlayed;

  Player({
    this.dice,
    required this.numberPlayed,
  });

  Player copyWith({
    String? dice,
    num? numberPlayed,
  }) {
    return Player(
      dice: dice ?? this.dice,
      numberPlayed: numberPlayed ?? this.numberPlayed,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Player &&
        other.dice == dice &&
        other.numberPlayed == numberPlayed;
  }

  @override
  int get hashCode => dice.hashCode ^ numberPlayed.hashCode;
}

//  final playerOne = Player(null, title: "Player One");
//  final playerTwo = Player(null, title: "Player Two");