// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist-db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WishlistDBAdapter extends TypeAdapter<WishlistDB> {
  @override
  final int typeId = 2;

  @override
  WishlistDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WishlistDB(
      fields[1] as int,
      fields[3] as String,
      fields[4] as String,
      fields[0] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WishlistDB obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.nama)
      ..writeByte(1)
      ..write(obj.harga)
      ..writeByte(2)
      ..write(obj.waktuBeli)
      ..writeByte(3)
      ..write(obj.keperluan)
      ..writeByte(4)
      ..write(obj.link);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishlistDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
