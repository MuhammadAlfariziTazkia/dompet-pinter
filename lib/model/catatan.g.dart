// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catatan.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatatanAdapter extends TypeAdapter<Catatan> {
  @override
  final int typeId = 0;

  @override
  Catatan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Catatan(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Catatan obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.nominal)
      ..writeByte(1)
      ..write(obj.keterangan)
      ..writeByte(2)
      ..write(obj.waktu);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatatanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
