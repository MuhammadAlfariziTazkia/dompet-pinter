import 'package:hive/hive.dart';
part 'data-saldo.g.dart';

@HiveType(typeId: 3)
class DataSaldo {
  @HiveField(0)
  int saldoDompet;
  @HiveField(1)
  int saldoCalengan;

  DataSaldo(this.saldoDompet, this.saldoCalengan);
}
