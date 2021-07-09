import 'package:hive/hive.dart';
part 'data.g.dart';

@HiveType(typeId: 3)
class Data {
  @HiveField(0)
  String username;
  @HiveField(1)
  int saldoDompet;
  @HiveField(2)
  int saldoCalengan;

  Data(this.saldoCalengan, this.saldoDompet, this.username);
}
