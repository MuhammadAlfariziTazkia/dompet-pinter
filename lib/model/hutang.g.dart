// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hutang.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HutangAdapter extends TypeAdapter<Hutang> {
  @override
  final int typeId = 1;

  @override
  Hutang read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hutang(
      fields[4] as String,
      fields[3] as int,
      fields[0] as String,
      fields[2] as String,
      fields[1] as String,
      fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Hutang obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.pemberi)
      ..writeByte(1)
      ..write(obj.tanggal)
      ..writeByte(2)
      ..write(obj.penerima)
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
      other is HutangAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
