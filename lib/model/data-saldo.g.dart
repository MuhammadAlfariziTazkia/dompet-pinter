// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data-saldo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DataSaldoAdapter extends TypeAdapter<DataSaldo> {
  @override
  final int typeId = 3;

  @override
  DataSaldo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataSaldo(
      fields[0] as int,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DataSaldo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.saldoDompet)
      ..writeByte(1)
      ..write(obj.saldoCalengan);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataSaldoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
