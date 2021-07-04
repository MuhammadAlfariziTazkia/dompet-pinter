// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daftar-hutang.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DaftarHutangAdapter extends TypeAdapter<DaftarHutang> {
  @override
  final int typeId = 1;

  @override
  DaftarHutang read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DaftarHutang(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as int,
      fields[4] as String,
      fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DaftarHutang obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.penghutang)
      ..writeByte(1)
      ..write(obj.tanggal)
      ..writeByte(2)
      ..write(obj.dihutang)
      ..writeByte(3)
      ..write(obj.nominal)
      ..writeByte(4)
      ..write(obj.keperluan)
      ..writeByte(5)
      ..write(obj.waktuLunas);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DaftarHutangAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
