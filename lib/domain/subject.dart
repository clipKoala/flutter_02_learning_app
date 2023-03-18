class Subject {
  final String name;
  int time;

  Subject(this.name, {this.time = 0});

  String get timeString => time.toString();

  @override
  String toString() {
    return 'Subject{name: $name, time: $time}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subject &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          time == other.time;

  @override
  int get hashCode => name.hashCode ^ time.hashCode;
}