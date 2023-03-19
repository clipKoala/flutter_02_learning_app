import '../domain/subject.dart';
import '../persistence/entryData.dart';

class TimeProportion {

  TimeProportion();

  int proportion(int time) {
    List<Subject> subjects = Data().subjects();
    int i =((time / subjects.length) * 10).round();
    return i;
  }
}
