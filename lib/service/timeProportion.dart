import '../domain/subject.dart';
import '../persistence/entryData.dart';

class TimeProportion {

  TimeProportion();

  int allTime() {
    int time = 0;
    for (Subject subject in new Data().subjects) {
      if (subject.time >= time) time = subject.time;
    }
    return time;
  }

  int proportion(time) => time / allTime() * 1000 ~/ 100;
  // ich habe die Werte so ausprobiert und das ist die einzige Variante, die funktioniert
}
