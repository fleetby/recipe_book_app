// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      id: (json['id'] as num).toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
    };
